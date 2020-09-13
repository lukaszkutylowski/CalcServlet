# **CalcServlet**

This is a web application which is a simple version of calculator executed in web browser.
Calculations are performed on the server side, data input and output is performed in a web browser.

## Used technologies:
* Java SE
* Servlet
* OOP
* JSP
* JSTL
* XML
* HTML
* CSS
* Eclipse 2020-06-R Java EE IDE

## Description

*web.xml* it is a configuration file, where we can set parameters of Servlets, Java Server Pages, Filters etc.
In this example we have configure welcome file and jsp config. Most configurations are implemented by annotations.

*Image shows web.xml file*
![alt text](/.readmeimages/image1.jpg)

*executeCalculation()* method send data to private method in order to calculate result value.
Method assumes two BigDecimal numbers and operator sign (+, -, /, *).
After calculation this method returns BigDecimal result.

*Image shows CalcService class*
![alt text](/.readmeimages/image2.jpg)

*executeCalculation()* method contains four private methods:
*add()*, *subtract()*, *divide()*, *multiply()*.
This private methods use methods from BigDecimal class to execute operations on two numbers.
*divide()* method additionaly contains setting according to rounding last digit and 10 significant digits after the decimal point setting.

*Image shows private methods of CalcService class*
![alt text](/.readmeimages/image3.jpg)

*index.jsp* it is a frontend side of this web application.
This Java Server Page contains settings according to UTF-8 charset, import PrintWriter class and import Java Standard Tag Library file. 
In *<style>* section is declared a CSS styles configurations. It is contains some CSS classes e.g. *.container{}*.

*Image shows index.jsp page*
![alt text](/.readmeimages/image4.jpg)

This servlet use post HTTP method to communicate with backend side of web application.
URI of controller servlet is */calc-servlet*.
This form contains inputs: two numbers and operator (sign) from predefined list. This set of information is sent to the CalcServlet.

*Image shows <form> implementation in index.jsp file*
![alt text](/.readmeimages/image5.jpg)

*CalcServlet* returns set of data: number 1, number 2, sign, result and flag.
If flag is not null, then value from request attribute is saved in int flag.
If flag equals 0 then result is printed. This mechanism is implemented due to printing null values in first executed of application. Flag allows to turn off display of null values.
Last section is footer with informations about author and date.

*Image shows code with scriptlet which implements presenting of results*
![alt text](/.readmeimages/image6.jpg)

*CalcServlet* class is a controller of web application. In first step controller get values from request object with using name of parameters.
In second step *service.executeCalculation()* calculate and return value. This value is saved in BigDecimal result variable.
In third step, request object assumes values which are necessary to show result. Save operation is implemented with *setAttribute()* method.
*RequestDispatcher* object redirect request object do *index.jsp* file to print result.

*Image shows CalcServlet controller*
![alt text](/.readmeimages/image7.jpg)

*Image shows start page of CalcServlet web application.*
*We can input two numbers and operator sign. Result is printed below.*

![alt text](/.readmeimages/image8.jpg)

*Sign input contains predefined list. We should input one sign from list.*

![alt text](/.readmeimages/image9.jpg)

*JSP page contains functionality "This field is required" for all inputs.*

![alt text](/.readmeimages/image10.jpg)

*Example execution of CalcServlet application:*
*input two numbers and set "+" operator and click "Calculate".*

![alt text](/.readmeimages/image11.jpg)

*Result is printed below. We can input next values.*

![alt text](/.readmeimages/image12.jpg)

*Result of subtraction.*

![alt text](/.readmeimages/image13.jpg)
*Result of dividing.*

![alt text](/.readmeimages/image14.jpg)

*Result of multiplying.*

![alt text](/.readmeimages/image15.jpg)
