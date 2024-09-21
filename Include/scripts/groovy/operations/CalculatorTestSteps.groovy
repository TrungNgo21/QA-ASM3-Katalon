package operations
import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject

import calculator.Calculator
import com.kms.katalon.core.annotation.Keyword
import com.kms.katalon.core.checkpoint.Checkpoint
import com.kms.katalon.core.checkpoint.CheckpointFactory
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.testcase.TestCase
import com.kms.katalon.core.testcase.TestCaseFactory
import com.kms.katalon.core.testdata.TestData
import com.kms.katalon.core.testdata.TestDataFactory
import com.kms.katalon.core.testobject.ObjectRepository
import com.kms.katalon.core.testobject.TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI

import internal.GlobalVariable

import org.openqa.selenium.WebElement
import org.openqa.selenium.WebDriver
import org.openqa.selenium.By

import com.kms.katalon.core.mobile.keyword.internal.MobileDriverFactory
import com.kms.katalon.core.webui.driver.DriverFactory

import com.kms.katalon.core.testobject.RequestObject
import com.kms.katalon.core.testobject.ResponseObject
import com.kms.katalon.core.testobject.ConditionType
import com.kms.katalon.core.testobject.TestObjectProperty

import com.kms.katalon.core.mobile.helper.MobileElementCommonHelper
import com.kms.katalon.core.util.KeywordUtil

import com.kms.katalon.core.webui.exception.WebElementNotFoundException

import cucumber.api.java.en.And
import cucumber.api.java.en.Given
import cucumber.api.java.en.Then
import cucumber.api.java.en.When
import static org.junit.Assert.*

class CalculatorTestSteps {
	protected Calculator calculator;
	protected String result;
	protected Exception thrownException;

	@Given("I have a calculator")
	def i_have_a_calculator() {
		calculator = new Calculator();
	}

	@When("I add {int} and {int}")
	def i_add_and(Integer a, Integer b) {
		result = calculator.add(a, b);
	}

	@When("I add {string} and {string}")
	def i_add_and(String a, String b) {
		try {
			result = calculator.add(Integer.parseInt(a), Integer.parseInt(b));
		} catch (NumberFormatException e) {
			thrownException = new NumberFormatException("Cannot calculate string value!");
		}
	}

	@When("I subtract {int} from {int}")
	def i_subtract_from(Integer b, Integer a) {
		result = calculator.subtract(a, b);
	}

	@When("I subtract {string} from {string}")
	def i_subtract_from(String a, String b) {
		try {
			result = calculator.subtract(Integer.parseInt(a), Integer.parseInt(b));
		} catch (NumberFormatException e) {
			thrownException = new NumberFormatException("Cannot calculate string value!");
		}
	}

	@When("I divide {int} by {int}")
	def i_divide_by(Integer a, Integer b) {
		result = calculator.divide(a, b);
	}

	@When("I divide {string} by {string}")
	def i_divide_by(String a, String b) {
		try {
			result = calculator.divide(Integer.parseInt(a), Integer.parseInt(b));
		} catch (NumberFormatException e) {
			thrownException = new NumberFormatException("Cannot calculate string value!");
		} catch (ArithmeticException e) {
			thrownException = e;
		}
	}

	@When("I try to divide {int} by {int}")
	def i_try_to_divide_by(Integer a, Integer b) {
		try {
			result = calculator.divide(a, b);
		} catch (ArithmeticException e) {
			thrownException = e;
		}
	}

	@When("I multiply {int} and {int}")
	def i_multiply_and(Integer a, Integer b) {
		try{
			result = calculator.multiply(a, b);
		} catch (Exception e){
			thrownException = e;
		}
	}

	@When("I multiply {string} and {string}")
	def i_multiply_and(String a, String b) {
		try {
			result = calculator.multiply(Integer.parseInt(a), Integer.parseInt(b));
		} catch (NumberFormatException e) {
			thrownException = new NumberFormatException("Cannot calculate string value!");
		}
	}

	@When("I calculate the Fibonacci number at position {int}")
	def i_calculate_the_fibonacci_number_at_position(Integer position) {
		try {
			result = calculator.fibonacci(position);
		} catch (Exception e) {
			thrownException = e;
		}
	}

	@When("I calculate the Fibonacci number at position {string}")
	def i_calculate_the_fibonacci_number_at_position(String position) {
		try {
			result = calculator.fibonacci(Integer.parseInt(position));
		} catch (NumberFormatException e) {
			thrownException = new NumberFormatException("Cannot calculate string value!");
		} catch (Exception e) {
			thrownException = e;
		}
	}

	@When("I try to calculate the Fibonacci number at position {int}")
	def i_try_to_calculate_the_fibonacci_number_at_position(Integer position) {
		try {
			result = calculator.fibonacci(position);
		} catch (Exception e) {
			thrownException = e;
		}
	}

	@When("I calculate the GCD of {long} and {long}")
	def i_calculate_the_gcd_of_and(Long a, Long b) {
		result = calculator.gcd(a.intValue(), b.intValue());
	}

	@When("I calculate the GCD of {string} and {string}")
	def i_calculate_the_gcd_of_and(String a, String b) {
		try {
			result = calculator.gcd(Integer.parseInt(a), Integer.parseInt(b));
		} catch (NumberFormatException e) {
			thrownException = new NumberFormatException("Cannot calculate string value!");
		}
	}

	@When("I calculate the LCM of {int} and {int}")
	def i_calculate_the_lcm_of_and(Integer a, Integer b) {
		try {
			result = calculator.lcm(a, b);
		}  catch (Exception e) {
			thrownException = e;
		}
	}

	@When("I calculate the LCM of {string} and {string}")
	def i_calculate_the_lcm_of_and(String a, String b) {
		try {
			result = calculator.lcm(Integer.parseInt(a), Integer.parseInt(b));
		} catch (NumberFormatException e) {
			thrownException = new NumberFormatException("Cannot calculate string value!");
		} catch (Exception e) {
			thrownException = new ArithmeticException("Integer overflow");
		}
	}

	@When("I calculate {int} modulo {int}")
	def i_calculate_modulo(Integer a, Integer b) {
		result = calculator.modulo(a, b);
	}

	@When("I calculate {string} modulo {string}")
	def i_calculate_modulo(String a, String b) {
		try {
			result = calculator.modulo(Integer.parseInt(a), Integer.parseInt(b));
		} catch (NumberFormatException e) {
			thrownException = new NumberFormatException("Cannot calculate string value!");
		} catch (ArithmeticException e) {
			thrownException = e;
		}
	}

	@When("I try to calculate {int} modulo {int}")
	def i_try_to_calculate_modulo(Integer a, Integer b) {
		try {
			result = calculator.modulo(a, b);
		} catch (ArithmeticException e) {
			thrownException = e;
		}
	}

	@When("I calculate {int} to the power of {int}")
	def i_calculate_to_the_power_of(Integer base, Integer exponent) {
		result = calculator.power(base, exponent);
	}

	@When("I calculate {string} to the power of {string}")
	def i_calculate_to_the_power_of(String base, String exponent) {
		try {
			result = calculator.power(Integer.parseInt(base), Integer.parseInt(exponent));
		} catch (NumberFormatException e) {
			thrownException = new NumberFormatException("Cannot calculate string value!");
		} catch (Exception e) {
			thrownException = e;
		}
	}

	@When("I try to calculate {int} to the power of {int}")
	def i_try_to_calculate_to_the_power_of(Integer base, Integer exponent) {
		try {
			result = calculator.power(base, exponent);
		} catch (Exception e) {
			thrownException = e;
		}
	}

	@Then("the result should be (.*)")
	def the_result_should_be(String expected) {
		assertEquals(expected, result);
	}

	@Then("it should throw an {string} with message {string}")
	def it_should_throw_an_exception_with_message(
			String exceptionType, String expectedMessage) {
		assertEquals(exceptionType, thrownException.getClass().getSimpleName());
		assertEquals(expectedMessage, thrownException.getMessage());
	}
}
