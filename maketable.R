sig = readr::read_csv("sigs.csv")

x = "<table class=\"signature_table\">"
for (i in 1:nrow(sig)){
  x = paste(x, "<tr>", sep = "\n")
  x = paste(x, "\n<th class=\"name\">",sig$name[i],"</th>", sep = "")
  x = paste(x, "\n<td class=\"title\">",sig$expertise[i],"</td>", sep = "")
  x = paste(x, "\n<td class=\"quals\">",sig$qualifications[i],"</td>", sep = "")
  x = paste(x, "</tr>", sep = "\n")
}
x = paste(x, "</table>", sep = "\n")

write(x, file = "_includes/site-table.html")
