public class apexCallout {
@future(callout=true)
    public static void getMethod(){
        httpRequest hreq = new httpRequest();
        hreq.setEndpoint('https://postman-echo.com/get?foo1=bar1&foo2=bar2');
        hreq.setMethod('Get');
        
        http httpInstance = new http();
        httpResponse hRes = httpInstance.send(hreq);
        
        if(hRes.getStatusCode() == 200) {
            system.debug(hRes.getBody());
        }
        
    }
}
