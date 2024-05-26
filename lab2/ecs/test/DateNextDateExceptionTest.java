import java.util.LinkedList;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

@RunWith(Parameterized.class)
public class DateNextDateExceptionTest
{

  private int myyear;
  private int mymonth;
  private int myday;

  public DateNextDateExceptionTest(int myyear, int mymonth, int myday)
  {
    this.myyear = myyear;
    this.mymonth = mymonth;
    this.myday = myday;
  }

  @Parameters
  public static List<Integer[]> data( )
  {
    List<Integer[]> params = new LinkedList<Integer[]>( );
    params.add(new Integer[] { 1500, 02, 31 });
    params.add(new Integer[] { 1500, 02, 29 });
    params.add(new Integer[] { -1, 10, 20 });
    params.add(new Integer[] { 1458, 15, 12 });
    params.add(new Integer[] { 1975, 6, -50 }); //these are the invalid years
    return params;
  }

  @Test(expected = IllegalArgumentException.class)
  public void testNextDate()
  {
    new Date(myyear, mymonth, myday);
  }

}