package ro.siit.calculator.model;

public class ExpressionRequest {
    private String expression;

    public ExpressionRequest(String expression){
        this.expression = expression;
    }

    public String getExpression() {
        return expression;
    }
}
