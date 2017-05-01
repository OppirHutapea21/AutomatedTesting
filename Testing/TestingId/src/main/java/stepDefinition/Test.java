package stepDefinition;

import org.openqa.selenium.WebDriver;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class Test {
	
	WebDriver driver;
	
	@Given("^Mengklik gambar img-problem$")
	public void mengklik_gambar_img_problem() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
		
		driver = new klikGambar();
		driver.manage().window().maximize();
		driver.get("https://www.tokopedia.com/contact-us");
	}

	@When("^Setelah menekan button gambar img-problem$")
	public void setelah_menekan_button_gambar_img_problem() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
	}

	@When("^Menampilkan (\\d+) pilihan$")
	public void menampilkan_pilihan(int arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
	}
}
