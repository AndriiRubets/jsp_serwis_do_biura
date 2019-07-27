<%!
    public String wypiszPasekNawigacyjny(String... dodatkoweLinki) { // url, nazwa
        StringBuilder builder = new StringBuilder("<table>\n " +
                "<tr>\n" +
                "<td width=\"170px\">\n " +
                "<a href=\"/index\">Index</a>\n" +
                "</td>\n" +
                "<td width=\"170px\">\n " +
                "<a href=\"/country/list\">Country</a>\n" +
                "</td>\n" +
                "<td width=\"170px\">\n " +
                "<a href=\"/city/list\">City</a>\n" +
                "</td>\n" +
                "<td width=\"170px\">\n " +
                "<a href=\"/hotel/list\">Hostel</a>\n" +
                "</td>\n");
        for (int i = 0; i < dodatkoweLinki.length; i += 2) {
            builder.append("<td width=\"170px\">\n " +
                    "<a href=\"" + dodatkoweLinki[i] + "\">" + dodatkoweLinki[i + 1] + "</a>\n" +
                    "</td>\n");
        }
        builder.append(" </tr>\n" +
                "</table>");
        return builder.toString();
    }
%>