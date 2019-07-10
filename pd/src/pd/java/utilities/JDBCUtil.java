package pd.java.utilities;

import java.io.IOException;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class JDBCUtil
{
    /*
     * Create xml string - fastest, but may have encoding issues
     */
    public static String toXML(ResultSet rs) throws SQLException
    {
        ResultSetMetaData rsmd = rs.getMetaData();
        int colCount = rsmd.getColumnCount();
        StringBuffer xml = new StringBuffer();
        xml.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        xml.append("<result>");

        while (rs.next())
        {
            xml.append("<row>");

            for (int i = 1; i <= colCount; i++)
            {
                String columnName = rsmd.getColumnName(i);
                Object value = rs.getObject(i);
                xml.append("<" + columnName + ">");

                if (value != null)
                {
                    xml.append(value.toString().trim());
                }
                xml.append("</" + columnName + ">");
            }
            xml.append("</row>");
        }

        xml.append("</result>");

        return xml.toString();
    }
    
    
    public static String toXMLWithBase64(ResultSet rs) throws SQLException, IOException
    {
        ResultSetMetaData rsmd = rs.getMetaData();
        int colCount = rsmd.getColumnCount();
        StringBuffer xml = new StringBuffer();
        xml.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        xml.append("<result>");

        while (rs.next())
        {
            xml.append("<row>");

            for (int i = 1; i <= colCount; i++)
            {
                String columnName = rsmd.getColumnName(i);
                Blob blob = rs.getBlob(i);
                xml.append("<" + columnName + ">");

                if (blob != null)
                {
                    xml.append(CusConversion.toBase64Image(blob));
                }
                xml.append("</" + columnName + ">");
            }
            xml.append("</row>");
        }

        xml.append("</result>");

        return xml.toString();
    }
    
}
