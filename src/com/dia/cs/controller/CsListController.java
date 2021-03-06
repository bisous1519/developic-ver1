package com.dia.cs.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dia.cs.model.service.CsService;
import com.dia.cs.model.vo.Faqs;
import com.dia.cs.model.vo.Notices;

/**
 * Servlet implementation class NoticeListController
 */
@WebServlet("/about.cs")
public class CsListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CsListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Notices> noticesList = new CsService().selectNoticesList();
		
		ArrayList<Faqs> faqsList = new CsService().selectFaqsList();
		
		request.setAttribute("noticesList", noticesList);
		request.setAttribute("faqsList", faqsList);		
		
		System.out.println(faqsList);
		System.out.println(noticesList);

		RequestDispatcher view = request.getRequestDispatcher("/views/cs/cs.jsp");
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
