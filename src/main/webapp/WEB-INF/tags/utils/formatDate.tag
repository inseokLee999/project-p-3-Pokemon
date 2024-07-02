<%@ tag body-content="scriptless" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ tag import="java.time.*" %>
<%@ tag import="java.time.format.DateTimeFormatter" %>
<%@attribute name="value" type="java.time.temporal.TemporalAccessor" required="true" %>
<%@attribute name="pattern" %>
<%
    pattern = pattern == null || pattern.isBlank() ? "yyyy-MM-dd" : pattern;
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
    out.write(formatter.format(value));
%>
