/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BillDAO;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import tools.CreateExcelDemo;

/**
 *
 * @author diepv
 */
public class Thongke extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HSSFWorkbook workbook = new HSSFWorkbook();
            HSSFSheet sheet = workbook.createSheet("Thong ke top san pham ban chay");
            BillDAO bill = new BillDAO();
            HashMap<Product,Long> list = bill.getProductByTopWeek();
            HashMap<Product,Long> list2 = bill.getProductByTopMonth();
            int rownum = 0;
            Cell cell;
            Row row;
            HSSFCellStyle style = CreateExcelDemo.createStyleForTitle(workbook);
            
            row = sheet.createRow(rownum);
            cell = (Cell) row.createCell(0, CellType.STRING);
            cell.setCellValue("Top 10 sản phẩm bán chạy nhất tuần");
            
            rownum++;
            row = sheet.createRow(rownum);
            cell = (Cell) row.createCell(0, CellType.STRING);
            cell.setCellValue("Tên sản phẩm");
            cell.setCellStyle(style);
            
            cell = row.createCell(1, CellType.STRING);
            cell.setCellValue("Số lượng");
            cell.setCellStyle(style);
            for (Map.Entry<Product, Long> entry : list.entrySet()) {
                rownum++;
                row = sheet.createRow(rownum);
                cell = row.createCell(0, CellType.STRING);
                cell.setCellValue(entry.getKey().getName());
                cell = row.createCell(1, CellType.STRING);
                cell.setCellValue(entry.getValue());
            }
            rownum++;
            row = sheet.createRow(rownum);
            cell = (Cell) row.createCell(0, CellType.STRING);
            cell.setCellValue("Top 10 sản phẩm bán chạy nhất thang");
            for (Map.Entry<Product, Long> entry : list2.entrySet()) {
                rownum++;
                row = sheet.createRow(rownum);
                cell = row.createCell(0, CellType.STRING);
                cell.setCellValue(entry.getKey().getName());
                cell = row.createCell(1, CellType.STRING);
                cell.setCellValue(entry.getValue());
            }
            
            
            File file = new File("E:/demo/employee1.xls");
            file.getParentFile().mkdirs();
            FileOutputStream outFile = new FileOutputStream(file);
            workbook.write(outFile);
            System.out.println("Created file: " + file.getAbsolutePath());
            
        } catch (SQLException ex) {
            Logger.getLogger(Thongke.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("/Ban_Hang/index.jsp");
    }


}
