package pages;

import javax.swing.*;

import database.users.*;

import java.awt.*;
import main.Main;
import pages.forms.Login;
import pages.forms.Signup;

public class Banner extends JPanel{
    private JPanel navContent;
    private JPanel accountContent;
    private Color COLOR_BACKGROUND = new Color(40, 44, 52);

    public Banner(String title) {
        super(new BorderLayout()); 
        this.setBackground(COLOR_BACKGROUND);
        this.setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20));

        navContent = new JPanel(new GridBagLayout());
        accountContent = new JPanel(new GridBagLayout());

        // Create the back and home buttons in top left corner
        navContent.setPreferredSize(new Dimension(Main.getFrame().getWidth() / 4, 0));
        navContent.setOpaque(false);
        JButton backButton = UIUtils.createButton("Back", e -> Main.goBack(), UIUtils.BUTTON_GRAY, new Dimension(100, 40));
        JButton homeButton = UIUtils.createButton("Home", e -> Main.goBack(), UIUtils.BUTTON_GRAY, new Dimension(100, 40));
        UIUtils.addToGrid(navContent, backButton, UIUtils.createGBC(0, 0, 1, 1, GridBagConstraints.BOTH));
        UIUtils.addToGrid(navContent, homeButton, UIUtils.createGBC(1, 0, 1, 1, GridBagConstraints.BOTH));
        this.add(navContent, BorderLayout.WEST);

        // Create the title label with large font and white color
        JLabel titleLabel = new JLabel(title, SwingConstants.CENTER);
        titleLabel.setFont(new Font("Serif", Font.BOLD, 40));
        titleLabel.setForeground(new Color(190, 199, 208)); // Light gray
        this.add(titleLabel, BorderLayout.CENTER); // Add to the center

        updateBanner();
    }

    public void updateBanner() {
        // Remove the old accountContent
        if (accountContent != null) {
            this.remove(accountContent);
        }

        // Add the new accountContent
        this.add(createAccountContent(), BorderLayout.EAST);
        this.revalidate();
        this.repaint();
    }

    private JPanel createAccountContent() {
        accountContent = new JPanel(new GridBagLayout());
        accountContent.setBackground(COLOR_BACKGROUND);
        accountContent.setPreferredSize(new Dimension(Main.getFrame().getWidth() / 4, 0));
        accountContent.setOpaque(false); 
        
        if (Main.user instanceof Customer) {
            Customer customer = (Customer) Main.user;

            JLabel welcomeLabel = new JLabel("Welcome,");
            JLabel nameLabel = new JLabel(customer.getName()+ "!");

            welcomeLabel.setFont(new Font("Serif", Font.BOLD, 15));
            nameLabel.setFont(new Font("Serif", Font.ITALIC, 15));

            UIUtils.addToGrid(accountContent, welcomeLabel, UIUtils.createGBC(0, 0, 1, 1, GridBagConstraints.BOTH));
            UIUtils.addToGrid(accountContent, nameLabel, UIUtils.createGBC(0, 1, 1, 1, GridBagConstraints.BOTH));

    
            JButton logoutButton = UIUtils.createButton("Logout", e -> customer.logout(), Color.RED, new Dimension(50, 20));
            UIUtils.addToGrid(accountContent, logoutButton, UIUtils.createGBC(0, 2, 1, 1, GridBagConstraints.BOTH) );

        } else {
            JButton loginButton = UIUtils.createButton("Login", e -> Main.goPage(new Login()), UIUtils.BUTTON_BLUE, new Dimension(100, 40));
            JButton signupButton = UIUtils.createButton("Sign up", e -> Main.goPage(new Signup()), UIUtils.BUTTON_GREEN, new Dimension(100, 40));
            UIUtils.addToGrid(accountContent, loginButton, UIUtils.createGBC(0, 0, 1, 1, GridBagConstraints.BOTH));
            UIUtils.addToGrid(accountContent, signupButton, UIUtils.createGBC(1, 0, 1, 1, GridBagConstraints.BOTH));
        }
        return accountContent;
    }
}