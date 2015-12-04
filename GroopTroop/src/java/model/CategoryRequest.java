package model;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;
import model.DBQueryHandler;

/**
 * This class handles requests for pet information.
 *
 * @author R. Grove
 * @version 2014-10-06
 */
public class CategoryRequest {

    /**
     * Returns an ArrayList, the first element of which is an Integer containing
     * the count of columns in the table. The remaining vector elements are Pet
     * objects.
     *
     * @return an ArrayList of Pet objects
     */
    public ArrayList<Category> getCategoryTable() {
        String query = "select * from `grooptrauxmmorhp`.categories";
        ArrayList<Category> result = new ArrayList<Category>();

        // open a connection to the database and a Statement object
        try {
            DBQueryHandler dbQueHand = new DBQueryHandler();
            ResultSet rs = dbQueHand.doQuery(query);
            ResultSetMetaData rsmd = rs.getMetaData();

            int numberOfColumns = rsmd.getColumnCount();
            //result.add(numberOfColumns);

            
            while (rs.next()) {
                int i = 1; // 1st column
                String name = rs.getString(i++);
                String id = rs.getString(i++);
                Category cat = new Category(name, id);
                result.add(cat);
            }

            dbQueHand.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        // return the result
        return result;
    }
}