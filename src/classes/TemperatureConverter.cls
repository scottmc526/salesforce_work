public class TemperatureConverter {
	
    public static Decimal FToC (Decimal fh) {
        Decimal cel = (fh - 32) * 5/9;
        return cel.setScale(2);
    }
}