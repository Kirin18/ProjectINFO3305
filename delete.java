import java.io.*; 
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.util.Arrays; 
  
class delete { 
  
    // Function to remove the element 
    public static int[] removeTheElement(int[] arr, 
                                          int index) 
    { 
  
    	int id = Integer.parseInt(request.getParameter("username"));  
        // If the array is empty 
        // or the index is not in array range 
        // return the original array 
        if (arr == null
            || index < 0
            || index >= arr.length) { 
  
            return arr; 
        } 
  
        // Create another array of size one less 
        int[] anotherArray = new int[arr.length - 1]; 
  
        // Copy the elements except the index 
        // from original array to the other array 
        for (int i = 0, k = 0; i < arr.length; i++) { 
  
            // if the index is 
            // the removal element index 
            if (i == index) { 
                continue; 
            } 
  
            // if the index is not 
            // the removal element index 
            anotherArray[k++] = arr[i]; 
        } 
  
        // return the resultant array 
        return anotherArray; 
    } 
  
  
    public static void main(String[] args) 
    { 
  
        // Get the array 
        /* int[] arr = { array }; 
  
        // Print the resultant array 
        System.out.println("Original Array: "
                           + Arrays.toString(arr)); 
  
        // Get the specific index 
        int index = 2; 
  
        // Print the index 
        System.out.println("Index to be removed: "
                           + index); 
  
        // Remove the element 
        arr = removeTheElement(arr, index); 
  
        // Print the resultant array 
        System.out.println("Resultant Array: "
                           + Arrays.toString(arr)); */
    } 
} 