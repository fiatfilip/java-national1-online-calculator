package ro.siit.calculator.servlet;

import com.google.gson.Gson;
import ro.siit.calculator.model.CalculationResponse;
import ro.siit.calculator.model.CalculatorService;
import ro.siit.calculator.model.ExpressionRequest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

@WebServlet(urlPatterns = {"/calculate"})
public class Calculator extends HttpServlet {
    private CalculatorService calculatorService;
    @Override
    public void init() throws ServletException {
       this.calculatorService = new CalculatorService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BufferedReader br =
                new BufferedReader(new InputStreamReader(req.getInputStream()));
        String json = null;
        if(br != null){
            json = br.readLine();
        }
        System.out.println(json);

        Gson gson = new Gson();
        ExpressionRequest expressionRequest = gson.fromJson(json, ExpressionRequest.class);
        Double result = calculatorService.evaluate(expressionRequest.getExpression());
        CalculationResponse calculationResponse = new CalculationResponse(result);

        resp.setContentType("application/json");
        // Gson gson = new Gson();
        resp.getWriter().write(gson.toJson(calculationResponse));

    }

}
