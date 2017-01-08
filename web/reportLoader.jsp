<%-- 
    Document   : reportLoader
    Created on : Aug 30, 2016, 1:47:46 PM
    Author     : flagship
--%>

<%@page import="com.flagship.erp.service.impl.OPsServiceImpl"%>
<%@page import="com.flagship.erp.service.POsService"%>
<%@page import="com.flagship.erp.connection.factory.DatabaseResourceFactory"%>
<%@page import="net.sf.jasperreports.engine.JRResultSetDataSource"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="application/pdf"%>
<%@page trimDirectiveWhitespaces = "true"%>
<%@page import="net.sf.jasperreports.engine.JasperExportManager"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="net.sf.jasperreports.engine.JasperPrint"%>
<%@page import="net.sf.jasperreports.engine.JasperCompileManager"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
 
            
            String name = request.getParameter("name");

            String off = request.getParameter("off");

            Connection conn = null;

            try {

                ServletOutputStream outputStream = response.getOutputStream();

                DatabaseResourceFactory factory = new DatabaseResourceFactory();

                conn = factory.getFactoryConnection().getConnection();

                POsService service = new OPsServiceImpl();

                String jrxmlFile = session.getServletContext().getRealPath("/report/purchaseOrder.jrxml");

                InputStream input = new FileInputStream(new File(jrxmlFile));

                JasperReport jasperReport = JasperCompileManager.compileReport(input);

                ResultSet rst = service.readyToPrint(conn, name, off);

                JRResultSetDataSource dataSource = new JRResultSetDataSource(rst);

                JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null, dataSource);

                JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);

                outputStream.flush();

                outputStream.close();

            } catch (Exception e) {

                e.printStackTrace();

            } finally {

                conn.close();

            }

        %>
    </body>
</html>
