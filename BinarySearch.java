public class BinarySearch {
  public static int searchElement(int element, int[] allElements) {
    int n = allElements.length;
    int ub, lb;
    lb = 0;
    ub = n - 1;
    int mid = (lb + ub) / 2;
    int midValue = allElements[mid];
    while (lb <= ub) {
      if (midValue < element) {
        lb = mid + 1;
        midValue = allElements[mid];
      } else if (midValue > element) {
        ub = mid - 1;
        midValue = allElements[mid];
      } else if (midValue == element) {
        return mid;
      }
      mid = (lb + ub) / 2;
    }
    return -1;
  }

  public static void main(String args[]) {
    int[] array = { 1, 2, 3, 4, 5, 8, 9, 10, 20, 25 };
    System.out.println(searchElement(1000, array));
  }
}
