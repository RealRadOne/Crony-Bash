import java.util.*;
public class kslots
{
	public static int emoty(int[] blooms,int k)
	{
		int days[]=new int[blooms.length];
		for(int i=0;i<days.length;i++)
		{
			days[blooms[i]-1]=i+1;
		}
		int left  =0;
		int right =k+1;
		int min   =Integer.MAX_VALUE;
		for(int i=1;right<days.length;i++)
		{
			if(days[i]>days[left] && days[i]>days[right])
				continue;
			if(i==right)
				min=Math.min(min,Math.max(days[left],days[right]));
			left  =i;
			right =left+k+1;
		}
		if(min==Integer.MAX_VALUE)
			return -1;
		else
			return min;
	}
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		int blooms[]=new int[n];
		for(int i=0;i<n;i++)
			blooms[i]=sc.nextInt();
		int k=sc.nextInt();
		int num=emoty(blooms,k);
		System.out.println(num);
	}
}
/*
0 1 2
-Blom-
1,3,2
------
-Days-
1 3 2
----------
0 1 2 3 4
5 3 1 4 2
----------
3 5 2 4 1
*/