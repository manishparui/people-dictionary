package pd.java.utilities;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Base64;

public class CusConversion {
	
	public static String ToNA(String x) {
		if(x == null) {
			return "NA";
		} else if(x == "NULL") {
			return "NA";
		} else if(x == "") {
			return "NA";
		} else {
			return x;
		}
	}
	
	public static String toBase64Image(Blob blob) throws SQLException, IOException {
		InputStream inputStream = blob.getBinaryStream();
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		byte[] buffer = new byte[4096];
		int bytesRead = -1;
		while((bytesRead = inputStream.read(buffer)) != -1) {
			outputStream.write(buffer, 0, bytesRead);
		}
		byte[] imageBytes = outputStream.toByteArray();
        String base64Image = Base64.getEncoder().encodeToString(imageBytes);
        return base64Image;
	}
}
