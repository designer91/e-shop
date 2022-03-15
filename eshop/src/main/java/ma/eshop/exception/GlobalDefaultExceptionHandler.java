package ma.eshop.exception;

import java.io.PrintWriter;
import java.io.StringWriter;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public String handlerNohandlerFoundException(Model model) {
		model.addAttribute("errorTitle", "The page is not constructed yet!");
		model.addAttribute("errorDescription", "The page you are looking for is not available for now!");
		model.addAttribute("title", "404 Error Page");
		return "error";
	}
	
	@ExceptionHandler(ProductNotFoundException.class)
	public String handlerProductNotFoundException(Model model) {
		model.addAttribute("errorTitle", "Product Not Found!");
		model.addAttribute("errorDescription", "The page you are looking for is not available for now!");
		model.addAttribute("title", "Product Unavailable");
		return "error";
	}
	
	@ExceptionHandler(Exception.class)
	public String handlerException(Model model, Exception ex) {
		
		model.addAttribute("errorTitle", "Error! Contact Your Administrator for additional informations!");
		
		//only for debugging your application
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		
		ex.printStackTrace(pw);
						
		model.addAttribute("errorDescription", sw.toString());
		
		model.addAttribute("title", "Error");
		
		return "error";
	}	
	
}
