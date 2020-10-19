
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 816076
 */
public class ShoppingListServlet extends HttpServlet {

    ArrayList<String> items = new ArrayList<>();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (request.getParameter("action").equals("logout")) 
        {
            items.clear();
            session.setAttribute("username", null);
            session.invalidate();
        }
        getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String radio = (String) request.getParameter("radio");
        
        String writtenItem = (String) request.getParameter("addNewItem");
        
        if (request.getParameter("action").equals("register")) 
        {
            String username = (String) request.getParameter("user");
            session.setAttribute("username", username);
        }
        if (request.getParameter("action").equals("add")) 
        {
            items.add(writtenItem);
            request.setAttribute("item", items);
        }
        if (request.getParameter("action").equals("delete")) 
        {
            items.remove(radio);
            session.setAttribute("item", items);
            session.setAttribute("username", radio);
        }
        if (request.getParameter("action").equals("logout")) 
        {
            items.clear();
            session.setAttribute("username", null);
            session.invalidate();
        }
        getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
    }
}
