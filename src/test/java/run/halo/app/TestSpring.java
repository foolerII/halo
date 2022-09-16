package run.halo.app;

public class TestSpring {
    public static void main(String[] args) throws Exception {
        System.setProperty(
            "loader.main", "run.halo.app.Application");

        System.setProperty(
            "loader.path",
            "file:///c/Users/ZQ091606/Documents/PROGRAM/GitHub/halo/src/main/resources" +
                "/application-dudu.yaml");
        org.springframework.boot.loader.PropertiesLauncher.main(new String[] {});
    }
}
