package Dal;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import Models.Images;
import Models.ProductFilter;
import Models.ProductList;
import Models.Product;
import Models.StatisticCB;
import Models.StatisticProducts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Vu Van Tuyen
 */
public class ProductDAO extends DBContext {

    ImageDAO Idao = new ImageDAO();
    
    public List<Product> getRelatedProducts(int productId) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select top(9)* from Products p where p.SubCategoryID = (select SubCategoryID from Products where ProductId = ?) and p.Status = 'activate' ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product products = new Product(rs.getInt("ProductId"), rs.getString("ProductName"),
                        rs.getInt("SubCategoryID"), rs.getInt("BrandID"), rs.getString("Description"),
                        rs.getDouble("ImportPrice"), rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"), rs.getString("CreatedAt"), rs.getString("ModifiedAt"));
                products.setImages(Idao.getImagesByProductId(rs.getInt("ProductId")));
                products.setDetails(new ProductDetailsDAO().getProductDetails(rs.getInt("ProductId")));
                list.add(products);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public List<Product> getListProducts() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Products where Status='activate'\n";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product products = new Product(rs.getInt("ProductId"), rs.getString("ProductName"),
                        rs.getInt("SubCategoryID"), rs.getInt("BrandID"), rs.getString("Description"),
                        rs.getDouble("ImportPrice"), rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"), rs.getString("CreatedAt"), rs.getString("ModifiedAt"));
                products.setImages(Idao.getImagesByProductId(rs.getInt("ProductId")));
                products.setDetails(new ProductDetailsDAO().getProductDetails(rs.getInt("ProductId")));
                list.add(products);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getListProducts(String type, int top) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select top (" + top
                    + ")* from Products \n"
                    + " where Status = 'activate' "
                    + "order by " + type + " desc";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product products = new Product(rs.getInt("ProductId"), rs.getString("ProductName"),
                        rs.getInt("SubCategoryID"), rs.getInt("BrandID"), rs.getString("Description"),
                        rs.getDouble("ImportPrice"), rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"), rs.getString("CreatedAt"), rs.getString("ModifiedAt"));
                products.setImages(Idao.getImagesByProductId(rs.getInt("ProductId")));
                products.setDetails(new ProductDetailsDAO().getProductDetails(rs.getInt("ProductId")));
                list.add(products);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public double getMaxPrice() {
        double maxPrice = 0;
        try {
            String sql = "select max(UnitPrice)\n"
                    + "from Products where Status = 'activate'";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                maxPrice = rs.getDouble(1);
            }
        } catch (Exception e) {
        }
        return maxPrice;
    }

    public double getMinPrice() {
        double minPrice = 0;
        try {
            String sql = "select mn(UnitPrice)\n"
                    + "from Products where Status = 'activate'";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                minPrice = rs.getDouble(1);
            }
        } catch (Exception e) {
        }
        return minPrice;
    }

    /**
     *
     * @param productFilter
     * @return
     */
    public ProductList getProductListByFilter(ProductFilter productFilter) {
        ProductList productList = new ProductList();
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select COUNT (*) OVER () AS ROW_COUNT, * from Products p\n";
            if (!productFilter.getSubcategoryId().isEmpty()) {
                sql += sql.contains("where") ? "and" : "where";
                sql += " p.SubCategoryID in (" + productFilter.getSubcategoryId() + ")";
            }
            if (!productFilter.getBrandId().isEmpty()) {
                sql += sql.contains("where") ? "and" : "where";
                sql += " p.BrandID in (" + productFilter.getBrandId() + ")";
            }
            if (!productFilter.getSize().isEmpty() || !productFilter.getColor().isEmpty()) {
                sql += sql.contains("where") ? "and" : "where";
                sql += " p.ProductId in (select ProductId from ProductDetails where ";
                if (!productFilter.getSize().isEmpty()) {
                    sql += "Size like '%" + productFilter.getSize() + "%'";
                    if (!productFilter.getColor().isEmpty()) {
                        sql += " and ";
                    }
                }
                if (!productFilter.getColor().isEmpty()) {
                    sql += "Color like '%" + productFilter.getColor() + "%'";
                }
                sql += ")";
            }
            sql += productFilter.getSortBy().equals("price") ? " order by p.UnitPrice " : " order by p.CreatedAt ";
            sql += productFilter.isIsAsc() ? "asc" : "desc";
            sql += " OFFSET " + (productFilter.getCurrentPage() - 1) * productFilter.getRecordPerPage()
                    + " ROWS FETCH NEXT "
                    + productFilter.getRecordPerPage() + " ROWS ONLY";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            int rowCount = 0;
            while (rs.next()) {
                //int productId, String productName, int subCategoryId, int brandId, String desscription, 
                //double importPrice, double unitPrice, double discount, String createdAt, String modifiedAt
                Product products = new Product(rs.getInt("ProductId"), rs.getString("ProductName"),
                        rs.getInt("SubCategoryID"), rs.getInt("BrandID"), rs.getString("Description"),
                        rs.getDouble("ImportPrice"), rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"), rs.getString("CreatedAt"), rs.getString("ModifiedAt"));
                products.setImages(Idao.getImagesByProductId(rs.getInt("ProductId")));
                products.setDetails(new ProductDetailsDAO().getProductDetails(rs.getInt("ProductId")));
                list.add(products);
                rowCount = rs.getInt(1);
            }
            productList = new ProductList(list, rowCount);
        } catch (SQLException e) {
        }
        return productList;
    }

    public ArrayList<String> getTypesByProductId(String type, int productId) {
        ArrayList<String> list = new ArrayList<>();
        try {
            String sql = "select distinct " + type + " from ProductDetails where ProductId = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, productId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(rs.getString(1));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Product getProductByProductId(int productId) {
        try {
            String sql = "select * from Products where ProductId = ? and Status = 'activate'";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, productId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = new Product(rs.getInt("ProductId"), rs.getString("ProductName"),
                        rs.getInt("SubCategoryID"), rs.getInt("BrandID"), rs.getString("Description"),
                        rs.getDouble("ImportPrice"), rs.getDouble("UnitPrice"),
                        rs.getDouble("Discount"), rs.getString("CreatedAt"), rs.getString("ModifiedAt"));
                product.setImages(Idao.getImagesByProductId(rs.getInt("ProductId")));
                product.setColors(getTypesByProductId("color", rs.getInt("ProductId")));
                product.setSizes(getTypesByProductId("size", rs.getInt("ProductId")));
                return product;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public int addProduct(String name, String scid, String bid, String des, double iprice, double uprice) {
        try {
            String sql = "INSERT INTO Products(ProductName, SubCategoryID, BrandID, Description, ImportPrice, UnitPrice, Discount , Status )\n" +
                        "VALUES (?, ?, ?, ?, ?, ?, 0 , 'activate')";
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, name);
            stm.setString(2, scid);
            stm.setString(3, bid);
            stm.setString(4, des);
            stm.setDouble(5, iprice);
            stm.setDouble(6, uprice);
            stm.executeUpdate();
            ResultSet rs = stm.getGeneratedKeys();
            if (rs.next()) {
                int pid = Integer.parseInt(rs.getString(1));
                return pid;
            }
        } catch (Exception ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
    public int updateProduct(int pid, String name, String scid, String bid, String des, double iprice, double uprice) {
        try {
            String sql = "Update Products(ProductName, SubCategoryID, BrandID, Description, ImportPrice, UnitPrice, Discount)\n" +
                        "set (?, ?, ?, ?, ?, ?, 0) where ProductId = ?";
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setString(1, name);
            stm.setString(2, scid);
            stm.setString(3, bid);
            stm.setString(4, des);
            stm.setDouble(5, iprice);
            stm.setDouble(6, uprice);
            stm.setInt(7, pid);
            stm.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
    public void deleteProduct(int productId) {
        try {
            String sql = "Update Products\n"
                    + " set Status = convert(varchar, getdate(), 105) where ProductId = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, productId);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    //Get statistics
    public ArrayList<StatisticCB> getTopProducts() {
        ArrayList<StatisticCB> list = new ArrayList<>();
        try {
            String sql = "Select top 5 p.ProductId, count(p.ProductId) as num from OrderDetails od, ProductDetails pd, Products p \n"
                    + "where od.ProductDetailID = pd.ProductDetailID and pd.ProductId = p.ProductId \n"
                    + "group by p.ProductId order by num desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product product = (new ProductDAO()).getProductByProductId(rs.getInt(1));
                list.add(new StatisticCB(product.getProductName(), rs.getInt(2)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public ArrayList<StatisticCB> getTopRatedProducts() {
        ArrayList<StatisticCB> list = new ArrayList<>();
        try {
            String sql = "Select top 5 p.ProductId, avg(f.Rating) as rate from Products p, Feedbacks f, ProductDetails pd, OrderDetails od \n"
                    + "where f.OrderDetailId = od.OrderDetailId and od.ProductDetailID = pd.ProductDetailId and pd.ProductId = p.ProductId\n"
                    + "group by p.ProductId order by avg(f.Rating) desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Product products = (new ProductDAO()).getProductByProductId(rs.getInt(1));
                list.add(new StatisticCB(products.getProductName(), rs.getInt(2)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public int getPurchasedProducts() {
        try {
            String sql = "Select count(pd.ProductDetailID) from OrderDetails od, ProductDetails pd where od.ProductDetailID = pd.ProductDetailID";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return -1;
    }

    public ArrayList<StatisticCB> getNumberProductsByCate() {
        ArrayList<StatisticCB> cs = new ArrayList();
        try {
            String sql = "Select c.CategoryName, count(p.ProductID) from Products p, SubCategories sc, Categories c\n"
                    + "where p.SubCategoryId = sc.SubCategoryId and sc.CategoryId = c.CategoryId\n"
                    + "group by c.CategoryName";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String name = rs.getString(1);
                int count = rs.getInt(2);
                cs.add(new StatisticCB(name, count));
            }
        } catch (Exception e) {
        }
        return cs;
    }

    public ArrayList<StatisticCB> getNumberProductsByBrand() {
        ArrayList<StatisticCB> cs = new ArrayList();
        try {
            String sql = "Select b.BrandName, count(p.ProductID) from Products p, Brands b\n"
                    + "where b.BrandId = p.BrandID\n"
                    + "group by b.BrandName";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String name = rs.getString(1);
                int count = rs.getInt(2);
                cs.add(new StatisticCB(name, count));
            }
        } catch (Exception e) {
        }
        return cs;
    }

    public ArrayList<StatisticProducts> getOutOfStocks() {
        ArrayList<StatisticProducts> cs = new ArrayList();
        try {
            String sql = "Select p.ProductId, p.ProductName, count(pd.ProductDetailId) as sl from Products p, ProductDetails pd where p.ProductId = pd.ProductId\n"
                    + "group by p.ProductId, p.ProductName having count(p.ProductId) = 0";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int count = rs.getInt(3);
                cs.add(new StatisticProducts(id, name, count));
            }
        } catch (Exception e) {
        }
        return cs;
    }

    public ArrayList<StatisticProducts> getLowStocks() {
        ArrayList<StatisticProducts> cs = new ArrayList();
        try {
            String sql = "Select p.ProductId, p.ProductName, count(pd.ProductDetailId) as sl from Products p, ProductDetails pd where p.ProductId = pd.ProductId\n"
                    + "group by p.ProductId, p.ProductName having count(p.ProductId) <= 5";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int count = rs.getInt(3);
                cs.add(new StatisticProducts(id, name, count));
            }
        } catch (Exception e) {
        }
        return cs;
    }
   
}
