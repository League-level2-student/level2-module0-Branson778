package arrays;

import java.util.Random;

import javax.swing.JOptionPane;

import org.jointheleague.graphical.robot.Robot;

public class _01_RobotRace {
	//1. make a main method
public static void main(String[] args) {
	//2. create an array of 5 robots.
Robot[] rob = new Robot[9];
Random ran = new Random();
int ranint = ran.nextInt(50);
boolean noWinner = true;
int[] laps = new int[9];
	//3. use a for loop to initialize the robots.
for (int i = 0; i < rob.length; i++) {
	rob[i]= new Robot();
	System.out.println("testing script");
	rob[i].setX(50 + i*100);
	rob[i].setY(530);
	rob[i].setSpeed(10);
}
		//4. make each robot start at the bottom of the screen, side by side, facing up
//In FOR LOOP.
	//5. use another for loop to iterate through the array and make each robot move 
	//   a random amount less than 50.
while (noWinner) {
for (int i = 0; i < rob.length; i++) {
	rob[i].move(ranint);
	ranint = ran.nextInt(50);
	if (rob[i].getY() <=0 && laps[i]<3) {
		laps[i]++;
		rob[i].setY(530);
	}
	if(rob[i].getY()<=0 && laps[i]==3) {
		JOptionPane.showMessageDialog(null, "Robot Number "+ (i+1)+ " Has Won! Hooray!");
		noWinner=false;
		break;
	}
}
}
	//6. use a while loop to repeat step 5 until a robot has reached the top of the screen.
//done
	//7. declare that robot the winner and throw it a party!
//done
	//8. try different races with different amounts of robots.
//done
	//9. make the robots race around a circular track.
//done differently
}
}