import csv

CSV_PATH = "../data/login_data.csv"
ROBOT_PATH = "../testsuites/generated_login_tests_csv.robot"

def read_csv_data(filepath):
    data = []
    with open(filepath, mode='r', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        for row in reader:
            data.append(row)
    return data

def generate_robot_tests(csv_path, robot_path):
    test_cases = read_csv_data(csv_path)

    with open(robot_path, mode="w", encoding="utf-8") as robot_file:
        # Header
        robot_file.write("* Settings ***\n")
        robot_file.write("Library    SeleniumLibrary\n")
        robot_file.write("Resource   ../resources/common_keywords.robot\n\n")

        robot_file.write("* Test Cases ***\n")

        for idx, row in enumerate(test_cases, start=1):
            test_name = f"Login With User {idx}"
            robot_file.write(f"{test_name}\n")
            robot_file.write(f"    Open Chrome Browser\n")
            robot_file.write(f"    common_keywords.getUrl    https://cms.anhtester.com/users/login\n")
            robot_file.write(f"    common_keywords.clickButton    xpath=//button[@class=\"absolute-top-right bg-white shadow-lg btn btn-circle btn-icon mr-n3 mt-n3 set-session\"]\n")
            robot_file.write(f"    common_keywords.enterText      xpath=//input[@id=\"email\"]    {row['username']}\n")
            robot_file.write(f"    common_keywords.enterText      xpath=//input[@id=\"password\"]    {row['password']}\n")
            robot_file.write(f"    common_keywords.clickButton    xpath=//button[normalize-space()=\"Login\"]\n")
            if row['expected_url']:
                robot_file.write(f"    verifyCurrentUrl    {row['expected_url']}\n")
            if row['logout_url']:
                robot_file.write(f"    getUrl    {row['logout_url']}\n")
            robot_file.write(f"    Sleep After Test\n")
            robot_file.write(f"    Close Browser\n\n")

    print(f"✅ Đã tạo file: {robot_path}")

if __name__ == "_main_":
    generate_robot_tests(CSV_PATH, ROBOT_PATH)