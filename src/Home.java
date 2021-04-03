
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.swing.JOptionPane;
import javax.swing.UIManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author nisal
 */
public class Home extends javax.swing.JFrame {

    Books bk = new Books();
    Returns rt = new Returns();
    Members mem = new Members();  
    Issues is = new Issues();
    Reading rd = new Reading();
    Resources rs = new Resources();
    
    public Home() {
        initComponents();
        clock();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    
  public void clock(){
  
      Thread clock = new Thread(){
          
          public void run(){
              try{
                  
                  while(true){
                  
                      Calendar cal = new GregorianCalendar();
                      
                      int day = cal.get(Calendar.DAY_OF_MONTH);
                      int month = cal.get(Calendar.MONTH)+1;
                      int year = cal.get(Calendar.YEAR);
                        
                      int second = cal.get(Calendar.SECOND);
                      int minute = cal.get(Calendar.MINUTE);
                      int hour = cal.get(Calendar.HOUR);
                      
                      time.setText(hour + ":" + minute + ":" + second);
                      date.setText(day + "-" + month + "-" + year );
                      
                      sleep(1000);
                  
                  }
              
              
              }catch(Exception e){
                  
                  JOptionPane.showMessageDialog(null, e);
              
              
              }
                  
          
          }
      
      };
        clock.start();
  
  }
    
    
    
    
    
    
    
    
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnbook = new javax.swing.JButton();
        btnissue = new javax.swing.JButton();
        btnreturn = new javax.swing.JButton();
        btnmember = new javax.swing.JButton();
        homedesktop = new javax.swing.JDesktopPane();
        time = new javax.swing.JLabel();
        date = new javax.swing.JLabel();
        btnread = new javax.swing.JButton();
        btnres = new javax.swing.JButton();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenu1 = new javax.swing.JMenu();
        menulogout = new javax.swing.JMenuItem();
        jMenuItem3 = new javax.swing.JMenuItem();
        jMenu2 = new javax.swing.JMenu();
        jMenuItem2 = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(0, 204, 0));

        btnbook.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/book.png"))); // NOI18N
        btnbook.setBorder(null);
        btnbook.setBorderPainted(false);
        btnbook.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnbookActionPerformed(evt);
            }
        });

        btnissue.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/issue.png"))); // NOI18N
        btnissue.setBorder(null);
        btnissue.setBorderPainted(false);
        btnissue.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnissueActionPerformed(evt);
            }
        });

        btnreturn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/return.png"))); // NOI18N
        btnreturn.setBorder(null);
        btnreturn.setBorderPainted(false);
        btnreturn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnreturnActionPerformed(evt);
            }
        });

        btnmember.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/user.png"))); // NOI18N
        btnmember.setBorderPainted(false);
        btnmember.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnmemberActionPerformed(evt);
            }
        });

        homedesktop.addComponentListener(new java.awt.event.ComponentAdapter() {
            public void componentResized(java.awt.event.ComponentEvent evt) {
                homedesktopComponentResized(evt);
            }
        });

        javax.swing.GroupLayout homedesktopLayout = new javax.swing.GroupLayout(homedesktop);
        homedesktop.setLayout(homedesktopLayout);
        homedesktopLayout.setHorizontalGroup(
            homedesktopLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        homedesktopLayout.setVerticalGroup(
            homedesktopLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        time.setText("Time");

        date.setText("Date");

        btnread.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/read.png"))); // NOI18N
        btnread.setBorderPainted(false);
        btnread.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnreadActionPerformed(evt);
            }
        });

        btnres.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/resources.png"))); // NOI18N
        btnres.setBorderPainted(false);
        btnres.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnresActionPerformed(evt);
            }
        });

        jMenu1.setText("File");

        menulogout.setText("Exit");
        menulogout.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menulogoutActionPerformed(evt);
            }
        });
        jMenu1.add(menulogout);

        jMenuItem3.setText("Logout");
        jMenuItem3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem3ActionPerformed(evt);
            }
        });
        jMenu1.add(jMenuItem3);

        jMenuBar1.add(jMenu1);

        jMenu2.setText("Edit");

        jMenuItem2.setText("About");
        jMenuItem2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuItem2ActionPerformed(evt);
            }
        });
        jMenu2.add(jMenuItem2);

        jMenuBar1.add(jMenu2);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(0, 805, Short.MAX_VALUE)
                        .addComponent(date, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(52, 52, 52)
                        .addComponent(time, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(112, 112, 112))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addComponent(btnbook, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 122, Short.MAX_VALUE)
                                .addComponent(btnissue, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addComponent(btnreturn, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnmember, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnread, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnres, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(homedesktop)
                        .addContainerGap())))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(time)
                    .addComponent(date))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(homedesktop)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(btnbook, javax.swing.GroupLayout.DEFAULT_SIZE, 78, Short.MAX_VALUE)
                        .addGap(18, 18, 18)
                        .addComponent(btnissue, javax.swing.GroupLayout.DEFAULT_SIZE, 82, Short.MAX_VALUE)
                        .addGap(18, 18, 18)
                        .addComponent(btnreturn, javax.swing.GroupLayout.DEFAULT_SIZE, 79, Short.MAX_VALUE)
                        .addGap(18, 18, 18)
                        .addComponent(btnmember, javax.swing.GroupLayout.DEFAULT_SIZE, 86, Short.MAX_VALUE)
                        .addGap(18, 18, 18)
                        .addComponent(btnread, javax.swing.GroupLayout.DEFAULT_SIZE, 86, Short.MAX_VALUE)
                        .addGap(18, 18, 18)
                        .addComponent(btnres, javax.swing.GroupLayout.DEFAULT_SIZE, 86, Short.MAX_VALUE)
                        .addGap(32, 32, 32)))
                .addContainerGap())
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnbookActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnbookActionPerformed
        // TODO add your handling code here:
       homedesktop.removeAll();  
       homedesktop.add(bk).setVisible(true);
     //  bk.setSize(homedesktop.getWidth(), homedesktop.getHeight());
       
    }//GEN-LAST:event_btnbookActionPerformed

   
    private void btnreturnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnreturnActionPerformed
        // TODO add your handling code here:
         homedesktop.removeAll();
        homedesktop.add(rt).setVisible(true);
       // rt.setSize(homedesktop.getWidth(), homedesktop.getHeight());
              
    }//GEN-LAST:event_btnreturnActionPerformed

    private void btnmemberActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnmemberActionPerformed
        // TODO add your handling code here:
       homedesktop.removeAll();
       homedesktop.add(mem).setVisible(true);
      // mem.setSize(homedesktop.getWidth(), homedesktop.getHeight());
               
    }//GEN-LAST:event_btnmemberActionPerformed

    private void btnissueActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnissueActionPerformed
        // TODO add your handling code here:
        homedesktop.removeAll();
        homedesktop.add(is).setVisible(true);
        // is.setSize(homedesktop.getWidth(), homedesktop.getHeight());
        
    }//GEN-LAST:event_btnissueActionPerformed

    private void homedesktopComponentResized(java.awt.event.ComponentEvent evt) {//GEN-FIRST:event_homedesktopComponentResized

        // TODO add your handling code here:
    
    if (evt.getSource() == homedesktop) {
    is.setBounds(0, 0, homedesktop.getWidth(), homedesktop.getHeight());
    bk.setBounds(0, 0, homedesktop.getWidth(), homedesktop.getHeight());
    rt.setBounds(0, 0, homedesktop.getWidth(), homedesktop.getHeight());
    mem.setBounds(0, 0, homedesktop.getWidth(), homedesktop.getHeight());
    rd.setBounds(0, 0, homedesktop.getWidth(), homedesktop.getHeight());
    rs.setBounds(0, 0, homedesktop.getWidth(), homedesktop.getHeight());
}

        
    }//GEN-LAST:event_homedesktopComponentResized

    private void btnreadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnreadActionPerformed
        // TODO add your handling code here:
        
       homedesktop.removeAll();  
       homedesktop.add(rd).setVisible(true);
      // rd.setSize(homedesktop.getWidth(), homedesktop.getHeight());
    }//GEN-LAST:event_btnreadActionPerformed

    private void jMenuItem2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuItem2ActionPerformed

    private void jMenuItem3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuItem3ActionPerformed
        // TODO add your handling code here:
        setVisible(false);
        Login ob = new Login();
        ob.setVisible(true);
    }//GEN-LAST:event_jMenuItem3ActionPerformed

    private void menulogoutActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menulogoutActionPerformed
        // TODO add your handling code here:
        System.exit(0);
    }//GEN-LAST:event_menulogoutActionPerformed

    private void btnresActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnresActionPerformed
        // TODO add your handling code here:
        
       homedesktop.removeAll();  
       homedesktop.add(rs).setVisible(true);
    }//GEN-LAST:event_btnresActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
               /* if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;*/
               UIManager.setLookAndFeel("com.jtattoo.plaf.acryl.AcrylLookAndFeel");
                }
            
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Home.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Home().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnbook;
    private javax.swing.JButton btnissue;
    private javax.swing.JButton btnmember;
    private javax.swing.JButton btnread;
    private javax.swing.JButton btnres;
    private javax.swing.JButton btnreturn;
    private javax.swing.JLabel date;
    private javax.swing.JDesktopPane homedesktop;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JMenuItem jMenuItem3;
    private javax.swing.JMenuItem menulogout;
    private javax.swing.JLabel time;
    // End of variables declaration//GEN-END:variables
}
