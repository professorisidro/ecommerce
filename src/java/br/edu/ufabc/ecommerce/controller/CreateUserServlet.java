/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ufabc.ecommerce.controller;

import br.edu.ufabc.ecommerce.dao.ClienteDAO;
import br.edu.ufabc.ecommerce.dao.DataSource;
import br.edu.ufabc.ecommerce.dao.GenericDAO;
import br.edu.ufabc.ecommerce.model.Cliente;
import br.edu.ufabc.ecommerce.model.Endereco;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author francisco.massetto
 */
public class CreateUserServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String paginaDestino = "/erro.jsp";
        try {
            String cliNome = request.getParameter("txtNome");
            String cliEmail = request.getParameter("txtEmail");
            String cliSenha = request.getParameter("txtSenha");
            Cliente cliente = new Cliente();
            cliente.setEnderecos(new ArrayList<Endereco>());            
            cliente.setNome(cliNome);
            cliente.setEmail(cliEmail);
            cliente.setSenha(cliSenha);
            
            // tratar endereços
            Endereco endC = new Endereco();
            endC.setCep(request.getParameter("txtCep"));
            endC.setTipo(0);
            endC.setTipoLogradouro(request.getParameter("txtTipo"));
            endC.setLogradouro(request.getParameter("txtLogradouro"));
            endC.setNumero(request.getParameter("txtNumero"));
            endC.setComplemento(request.getParameter("txtComplemento"));
            endC.setBairro(request.getParameter("txtBairro"));
            endC.setCidade(request.getParameter("txtCidade"));
            endC.setEstado(request.getParameter("txtEstado"));
            
            cliente.getEnderecos().add(endC);
            

            DataSource dataSource = new DataSource();
            GenericDAO cliDao = new ClienteDAO(dataSource);
            cliDao.create(cliente);          
            dataSource.getConnection().close();
            paginaDestino = "/sucesso.jsp";
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(paginaDestino);
            dispatcher.forward(request, response);
        }
        
    }

}
