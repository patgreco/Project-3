package main;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;

import pages.banner.*;
import pages.utils.Page;
import database.users.*;

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.Stack;

public class Main {
    private static JFrame frame;
    public static User user;
    public static Banner banner;
    public static JPanel contentArea;
    public static CardLayout pages;
    public static Stack<String> pageHistory = new Stack<>();

    public static void main(String[] args) {
        SwingUtilities.invokeLater(Main::createAndShowGUI);
    }

    private static void createAndShowGUI() {
        // Setting defaults for the GUI
        UIManager.put("Panel.background", Color.DARK_GRAY);
        UIManager.put("Button.background", Color.LIGHT_GRAY);
        UIManager.put("Button.foreground", Color.BLACK);
        UIManager.put("Label.foreground", Color.WHITE);

        // Initialize the application window
        frame = new JFrame("421 Marketplace");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(new BorderLayout());
        frame.setSize(1200,800);
        frame.setMinimumSize(new Dimension(800, 600));

        // Change the default close operation
        frame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                // Delete the user from the database if they are a guest
                if (!(user instanceof Customer)){
                    user.delete();
                }
                // Disconnect from the database and exit the application
                System.exit(0);
            }
        });

        user = new User();

        pages = new CardLayout();
        contentArea = new JPanel(pages);
        frame.add(contentArea, BorderLayout.CENTER);
        
        contentArea.add(new Menu(), "Menu");
        contentArea.add(new Login(), "Login");
        contentArea.add(new Signup(), "Signup");

        banner = new Banner("421 Marketplace");
        frame.add(banner, BorderLayout.NORTH);

        go("Menu");
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }

    public static void setUser(User u) {
        user = u;
        frame.remove(banner);
        banner = new Banner("421 Marketplace");
        frame.add(banner, BorderLayout.NORTH);
        frame.revalidate();
        frame.repaint();
    }

    public static JFrame getFrame() { return frame; }

    public static void goBack() {
        if (pageHistory.size() > 1) {
            pageHistory.pop();
            pages.show(contentArea, pageHistory.peek());
        }
    }

    public static void go(String page){
        if (!pageHistory.isEmpty() && pageHistory.peek().equals(page)) {
            goBack();
        } else {
            if ("Menu".equals(page)) {
                pageHistory.clear();
            }
            pageHistory.push(page);
            pages.show(contentArea, page);
            frame.revalidate();
            frame.repaint();
        }
    }
    public static void goNew(Page page, String title){
        for (Component comp : contentArea.getComponents()) {
            if (title.equals(comp.getName())) {
                contentArea.remove(comp);
            }
        }

        contentArea.add(page, title);
        go(title);
    }
}
