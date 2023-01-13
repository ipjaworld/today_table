package com.ezenb1.recipe.controller.action.homepage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenb1.recipe.controller.action.Action;

public class AnnouncementAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "homepage/announcement.jsp";
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
