
class ProjectModel {
  final String projectTitle;
  final String projectDescription;
  final String shortDescription;
  final List<String> bannerList;
  final String projectIcon;
  final String projectGithubLink;
  final String projectLiveLink;
  final List<String> techStackIconList;

  ProjectModel({
    required this.projectTitle,
    required this.projectDescription,
    required this.shortDescription,
    required this.bannerList,
    required this.projectIcon,
    required this.projectGithubLink,
    required this.projectLiveLink,
    required this.techStackIconList,
  });
}

List projectList = [
  ProjectModel(
    projectTitle: 'UnivBuddy App',
    projectDescription: 'Project Overview:\n\n'
        'UnivBuddy is a comprehensive mobile application developed to facilitate students in locating and applying for scholarships, both domestically and internationally. '
        'I contributed to this project as a junior Flutter developer at Bhabha Technologies, collaborating with a backend developer. '
        'It is built using the Flutter framework, utilizing the '
        'Stacked Model-View-ViewModel (MVVM) architecture for a robust, scalable, and maintainable '
        'code structure. The application is managed through an admin panel website developed '
        'with Python Flask, ensuring seamless administration and updates.\n\n'
        'Key Features:\n\n'
        '1. Scholarship Search:\n\n'
        '   - Local and International Scholarships: UnivBuddy provides an extensive database '
        'of scholarships available for students in their home country and abroad.\n\n'
        '   - Advanced Filters: Users can filter scholarships based on criteria such as location, '
        'field of study, level of education, and eligibility requirements.\n\n'
        '2. University Details:\n\n'
        '   - Comprehensive Database: Detailed information about universities around the world, '
        'including programs offered, entry requirements, and campus facilities.\n\n'
        '   - Comparison Tool: Students can compare different universities and their scholarship '
        'offerings to make informed decisions.\n\n'
        '3. Scholarship Application:\n\n'
        '   - Registration and Submission: Students can register and submit their scholarship '
        'applications directly through the app.\n\n'
        '   - Document Upload: Easy and secure upload of required documents such as transcripts, '
        'recommendation letters, and personal statements.\n\n'
        '4. Application Management:\n\n'
        '   - Saved Scholarships: Users can save important scholarships for future reference and set '
        'reminders for deadlines.\n\n'
        '   - Status Tracking: Track the status of submitted scholarship applications in real-time, '
        'from submission to approval or rejection.\n\n'
        '5. User-Friendly Interface:\n\n'
        '   - Intuitive Design: Clean, modern interface designed with students in mind, ensuring ease '
        'of use and a seamless experience.\n\n'
        'Technical Specifications:\n\n'
        '- Frontend: Built using Flutter, ensuring a high-performance, cross-platform application '
        'experience on both iOS and Android devices.\n\n'
        '- Architecture: Implements the Stacked MVVM architecture to separate the business logic from the UI, '
        'enhancing code maintainability and testability.\n\n'
        '- Backend Administration: Managed through a web-based admin panel developed with Python Flask, '
        'enabling efficient data management and application monitoring by administrators.\n\n',
    shortDescription:
        'A Flutter mobile application designed to assist students in finding and applying for scholarships both within their own country and internationally.',
    bannerList: [
      'assets/project_banners/univbuddy_banner_1.png',
      'assets/project_banners/univbuddy_banner_2.png'
    ],
    projectIcon: 'assets/project_banners/univbuddy_logo.png',
    projectGithubLink:
        '',
    projectLiveLink:
        'https://youtu.be/tMj2K57zxE8',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/postman-icon.png',
      'assets/images/api-interface.png',
    ],
  ),
  ProjectModel(
    projectTitle: 'Salon Booking App',
    projectDescription:'Project Overview:\n\n'
    'The following project was completed during my internship at Bhabha Technologies in collaboration with a backend developer. It encompasses a comprehensive Salon Booking and Review App designed to enhance customer interactions with hairdressers. The platform aims to streamline the booking process and introduce a clear review and rating system. The interface offers a seamless user experience by enabling customers to conveniently filter and select available time slots and book appointments with their preferred hairdressers. Additionally, the app allows users to provide feedback and rate services based on their experiences. Data security and privacy have been prioritized in the storage and management of all information.\n\n'
        'On the provider’s end, the application empowers hairdressers by furnishing them with a personalized dashboard for effectively managing their profiles, schedules, bookings, and client interactions. Through the integration of geolocation features, the application ensures that hairdressers and beauty establishments can optimize their local visibility and effectively reach potential customers.\n\n'
        'App Features:\n\n'
        '1. User Authentication:\n'
        '   - A robust authentication system allowing users to register and manage their accounts securely.\n\n'
        '2. Hairdresser Profiles:\n'
        '   - Hairdressers can create and manage detailed profiles with essential information such as name, image, and specialties.\n\n'
        '3. Booking System:\n'
        '   - Customers can view available time slots of multiple hairdressers and make reservations based on their choice of hairdresser, service, date, and time.\n\n'
        '4. Calendar View:\n'
        '   - An integrated calendar displaying availability, helping users identify free slots easily.\n\n'
        '5. Hairdresser Ranking:\n'
        '   - A ranking system based on customer reviews and ratings to promote top-rated hairdressers.\n\n'
        '6. Reviews & Ratings:\n'
        '   - Customers can review their overall experience and give ratings post-appointment, aiding other users in making informed choices.\n\n'
        '7. Customer Dashboard:\n'
        '   - A comprehensive view of users\' upcoming reservations, past appointments, submitted feedback, and reviews.\n\n'
        '8. Hairdresser Dashboard:\n'
        '   - A control center for hairdressers to manage their schedules, view and respond to bookings, and communicate with clients.\n\n'
        '9. Time Slot Filtering:\n'
        '   - Users can filter their search for available time slots, enabling bookings at their most convenient times.\n\n'
        '10. Dynamic Schedule Management:\n'
        '   - Hairdressers can manage their schedules, indicating their available times and days with a visual schedule.\n\n'
        '11. Real-Time Updates:\n'
        '   - The app updates booking schedules in real-time to ensure accurate and up-to-date available time slots.\n\n'
        'The app is built using the Flutter framework with MVVM architecture, ensuring a robust, scalable, and maintainable code structure, providing an exceptional user experience for both customers and service providers.',
    shortDescription:
        'A comprehensive Salon Booking and Review App designed to enhance customer interactions with hairdressers, streamlining the booking process and introducing a clear review and rating system.',
    bannerList: [
      'assets/project_banners/salon_banner_1.png',
      'assets/project_banners/salon_banner_2.png'
    ],
    projectIcon: 'assets/images/flutter.png',
    projectGithubLink: '',
    projectLiveLink: 'https://youtu.be/PDWT_iRj4uU',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/postman-icon.png',
      'assets/images/api-interface.png',
    ],
  ),
  ProjectModel(
    projectTitle: 'BigCart App',
    projectDescription:'Project Overview:\n\n'
        'BigCartApp is a sophisticated mobile application designed as part of the Flutter assignment for the Diploma in Flutter App Development at Sir Syed University. This E-Commerce application aims to provide users with a seamless shopping experience, featuring a pixel-perfect UI and robust data management.\n\n'
        'Key Features:\n\n'
        '1. Pixel Perfect UI:\n'
        '   - Figma Integration: The user interface is meticulously crafted to match the provided Figma designs, ensuring a visually appealing and intuitive experience.\n'
        '   - Responsive Design: Optimized for various screen sizes, delivering a consistent experience across all devices.\n\n'
        '2. Data Fetching:\n'
        '   - REST API Integration: The app fetches product data, user information, and other relevant details using REST APIs, ensuring real-time updates and smooth data flow.\n'
        '   - Efficient Data Handling: Utilizes asynchronous programming to handle data fetching efficiently, providing a fast and responsive user experience.\n\n'
        '3. State Management:\n'
        '   - Provider Architecture: Maintains app state using Providers, enabling scalable and maintainable state management. This approach ensures that the app remains responsive and performs well, even with complex state interactions.\n'
        '   - Reactive Updates: Ensures that UI components react to state changes seamlessly, providing a dynamic and interactive shopping experience.\n\n'
        '4. User Session Management:\n'
        '   - SharedPreferences: Saves user session data using SharedPreferences, allowing users to stay logged in and maintain their preferences across app restarts.\n'
        '   - Secure Storage: Ensures that user data is stored securely, protecting user information and maintaining privacy.\n\n'
        '5. Core E-Commerce Features:\n'
        '   - Product Listings: Browse a wide range of products with detailed descriptions, images, and prices.\n'
        '   - Search and Filter: Advanced search and filtering options to help users find exactly what they need.\n'
        '   - Shopping Cart: Add products to the cart, manage quantities, and proceed to checkout with ease.\n\n'
        '6. User-Friendly Interface:\n'
        '   - Intuitive Navigation: Easy-to-use navigation ensures users can browse and shop effortlessly.\n'
        '   - Smooth Animations: Enhances user experience with fluid animations and transitions.\n\n'
        'Technical Specifications:\n\n'
        ' - Frontend: Developed using Flutter, ensuring a high-performance, cross-platform application experience on both iOS and Android devices.\n\n'
        ' - State Management: Utilizes the Provider package for efficient state management and to ensure a reactive UI.\n\n'
        ' - Backend Communication: Communicates with backend services through REST APIs for real-time data fetching and updates.\n\n'
        ' - Storage: Manages user sessions and preferences using SharedPreferences for persistent storage.\n\n',
    shortDescription:
        'A Flutter mobile application designed to provide users with a seamless shopping experience, featuring a pixel-perfect UI and robust data management.',
    bannerList: ['assets/project_banners/bigcart_banner_1.png'],
    projectIcon: 'assets/project_banners/bigcart_logo.png',
    projectGithubLink: 'https://github.com/MuhammadDaniyal32/Bigcart_E-commerce_FlutterApp',
    projectLiveLink: 'https://youtube.com/shorts/G4TWori1kqU',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/figma.png',
      'assets/images/postman-icon.png',
      'assets/images/api-interface.png',
    ],
  ),
  ProjectModel(
    projectTitle: 'Weather Forecast App',
    projectDescription:
    'Project Overview:\n\n'
        'The Weather Forecast App is a mobile application developed as a Hackathon task during the Flutter App Development Diploma at Sir Syed University, guided by Sir Ishaq Hassan. The app provides users with real-time weather information, utilizing a sleek and user-friendly interface. The UI design was implemented based on the provided Figma URL, and the app integrates the WeatherAPI with geolocation to deliver accurate and up-to-date weather data.\n\n'
        'Key Features:\n\n'
        '1. User Interface:\n'
        '   - Figma Integration: The app’s UI is designed to be pixel-perfect, matching the provided Figma designs precisely.\n'
        '   - Modern Design: A clean, intuitive interface that makes it easy for users to access weather information quickly.\n\n'
        '2. Weather Data:\n'
        '   - Real-Time Updates: Provides current weather conditions, including temperature, humidity, wind speed, and more.\n'
        '   - Forecast Information: Offers detailed weather forecasts for the upcoming days, helping users plan ahead.\n\n'
        '3. Geolocation Integration:\n'
        '   - Automatic Location Detection: Uses geolocation to automatically detect the user’s current location and provide relevant weather data.\n'
        '   - Manual Location Entry: Allows users to enter a location manually if they want to check the weather for a different area.\n\n'
        '4. Interactive Features:\n'
        '   - Dynamic Backgrounds: Changes the app background based on the current weather conditions for a more immersive experience.\n'
        '   - Weather Alerts: Notifies users of severe weather alerts in their area to ensure they stay safe and prepared.\n\n'
        'Technical Specifications:\n\n'
        ' - Frontend: Developed using Flutter, providing a high-performance, cross-platform application experience on both iOS and Android devices.\n'
        ' - API Integration: Integrates with the WeatherAPI to fetch real-time weather data and forecasts.\n'
        ' - Geolocation: Utilizes device geolocation services to provide accurate weather information based on the user\'s current location.\n\n',
    shortDescription:
        'A mobile application that provides users with real-time weather information, utilizing a sleek and user-friendly interface with geolocation integration.',
    bannerList: ['assets/project_banners/weather_banner_1.png'],
    projectIcon: 'assets/project_banners/weather_logo.png',
    projectGithubLink: 'https://github.com/MuhammadDaniyal32/Weather_Forecast_FlutterApp',
    projectLiveLink: 'https://youtube.com/shorts/ecpmoYbY6jw',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/figma.png',
      'assets/images/postman-icon.png',
      'assets/images/api-interface.png',
      'assets/images/weather_api_logo.jpg',
    ],
  ),
  ProjectModel(
    projectTitle: 'TicTacToe Game App',
    projectDescription: 'Project Overview:\n\n'
        'The Tic Tac Toe Game is a classic two-player game developed using the Flutter framework. This project is designed to offer a fun and interactive experience, with a sleek and modern user interface built from provided Figma designs. The game keeps track of all game results, saving them in a list for players to review.\n\n'
        'Key Features:\n\n'
        '1. Two-Player Mode:\n'
        '   - Local Multiplayer: Play against a friend on the same device, taking turns to place Xs and Os on the grid.\n'
        '   - Real-Time Interaction: Instant feedback and updates for each move, ensuring a smooth and engaging gameplay experience.\n\n'
        '2. User Interface:\n'
        '   - Figma Integration: The game’s UI is designed to be pixel-perfect, matching the provided Figma designs meticulously.\n'
        '   - Modern Design: A clean, intuitive interface that enhances the user experience, making it easy to play and enjoy the game.\n\n'
        '3. Game Results:\n'
        '   - Result Tracking: Saves the outcome of each game (win, lose, or draw) in a list.\n'
        '   - Game History: Players can view a history of their past games, allowing them to keep track of their performance over time.\n\n'
        '4. Interactive Features:\n'
        '   - Responsive Grid: The Tic Tac Toe grid responds to user inputs with smooth animations and transitions.\n'
        '   - Victory Detection: The game automatically detects and highlights the winning combination when a player wins.\n\n'
        '5. User Experience:\n'
        '   - Easy Controls: Simple touch controls for placing Xs and Os on the grid, making it accessible for players of all ages.\n'
        '   - Engaging Gameplay: A fun and challenging game that tests players’ strategic thinking and decision-making skills.\n',
    bannerList: ['assets/project_banners/tictactoe_banner_1.png'],
    projectIcon: 'assets/project_banners/tictactoe_logo.png',
    shortDescription:
        'A classic two-player Tic Tac Toe game developed using the Flutter framework, offering a fun and interactive experience with a sleek and modern user interface.',
    projectGithubLink: 'https://github.com/MuhammadDaniyal32/TicTacToe_Game_FlutterApp',
    projectLiveLink: 'https://youtube.com/shorts/ryCi8pb2rEo',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/dart.png',
      'assets/images/figma.png',
    ],
  ),
  ProjectModel(
    projectTitle: 'Job Posting App',
    projectDescription:
    'Project Overview:\n\n'
        'JobPosting App is a mobile application developed as my first Flutter project. This app aims to provide users with an intuitive and efficient way to browse and manage job postings. The user interface is crafted to be pixel-perfect according to the provided Figma designs, ensuring a visually appealing and user-friendly experience. The app leverages Stateful widgets to implement dynamic job listing functionality.\n\n'
        'Key Features:\n\n'
        '1. Pixel Perfect UI:\n'
        '   - Figma Integration: The app’s UI is meticulously designed to match the provided Figma designs, delivering a professional and cohesive look.\n'
        '   - Modern Aesthetics: A clean, modern interface that enhances user experience, making job searching easy and enjoyable.\n\n'
        '2. Job List Functionality:\n'
        '   - Stateful Widgets: Utilizes Stateful widgets to manage the dynamic aspects of the app, ensuring a responsive and interactive user experience.\n'
        '   - Real-Time Updates: Allows users to view the latest job postings with real-time updates.\n\n'
        '3. User Experience:\n'
        '   - Easy Navigation: Simple and intuitive navigation ensures users can effortlessly browse through job listings.\n'
        '   - Detailed Job Information: Each job posting includes comprehensive details such as job title, company, location, and description.\n\n'
        '4. Interactive Features:\n'
        '   - Job Search: Users can search for jobs based on keywords, location, and other criteria.\n'
        '   - Save Jobs: Users can save job postings to review later.\n\n'
        'Technical Specifications:\n\n'
        ' - Frontend: Developed using Flutter, providing a high-performance, cross-platform application experience on both iOS and Android devices.\n'
        ' - State Management: Implements Stateful widgets to handle dynamic changes and ensure smooth interactions.\n'
        ' - UI/UX Design: Adheres to the provided Figma designs to create a pixel-perfect and visually appealing interface.\n\n',
    bannerList: ['assets/project_banners/jobposting_banner_1.png'],
    shortDescription:
    'A mobile application designed to provide users with an intuitive and efficient way to browse and manage job postings, leveraging Stateful widgets to implement dynamic job listing functionality.',
    projectIcon: 'assets/images/flutter.png',
    projectGithubLink: 'https://github.com/MuhammadDaniyal32/JobPosting_FlutterApp',
    projectLiveLink: 'https://youtube.com/shorts/bBQ6pJa32RQ',
    techStackIconList: [
      'assets/images/flutter.png',
      'assets/images/dart.png',
      'assets/images/figma.png',
    ],
  ),
  ProjectModel(
    projectTitle: 'Parent Communication Register App',
    projectDescription:
    'Project Overview:\n\n'
        'ParentCommunicationRegister is an Android application developed using Java and SQLite. The primary aim of this application is to automate attendance tracking and facilitate efficient communication between students, their mentors, and parents. This app serves as the final project for the semester, forming a crucial part of my advanced diploma in software engineering from Aptech.\n\n'
        'Key Features:\n\n'
        '1. Automated Attendance Tracking:\n'
        '   - Real-Time Updates: Allows mentors to mark and update attendance in real-time, ensuring accurate records.\n'
        '   - Attendance Records: Maintains a comprehensive database of attendance records for easy access and review.\n\n'
        '2. User Interface:\n'
        '   - Intuitive Design: A user-friendly interface designed to be easy to navigate for students, mentors, and parents.\n'
        '   - Accessible Information: Ensures that all relevant information is easily accessible to all users.\n\n'
        '3. Database Management:\n'
        '   - SQLite Integration: Utilizes SQLite for efficient local database management, ensuring data is stored securely and can be retrieved quickly.\n'
        '   - Data Backup: Provides options for data backup and recovery to prevent loss of important records.\n\n'
        'Technical Specifications:\n\n'
        ' - Platform: Developed for Android devices, providing a native application experience.\n'
        ' - Programming Language: Built using Java, ensuring robust and scalable application performance.\n'
        ' - Database: Integrated SQLite database for efficient data management and storage.\n\n',
    shortDescription:
        'An Android application developed using Java and SQLite to automate attendance tracking and facilitate efficient communication between students, mentors, and parents.',
    bannerList: ['assets/project_banners/pcr_banner_1.png'],
    projectIcon: 'assets/images/android_logo.png',
    projectGithubLink: 'https://github.com/MuhammadDaniyal32/ParentCommunicationRegister-AndroidApp',
    projectLiveLink: 'https://www.linkedin.com/posts/mdaniyalnoor_androidapp-schoolmanagementsystem-project-activity-6966381296331669504-ogIV',
    techStackIconList: [
      'assets/images/android_logo.png',
      'assets/images/java.png',
'assets/images/sqlite_logo.png',

    ],
  ),
  ProjectModel(
    projectTitle: 'Online Shopping Center E-Commerce Website',
    projectDescription:
    'Project Overview:\n\n'
        'OnlineShoppingCenter is a robust e-commerce website developed using PHP and MySQL. This web application is designed to streamline online shopping with two primary modules: the User Module and the Admin Module. Each module is equipped with features to enhance user experience and improve administrative efficiency.\n\n'
        'Modules:\n\n'
        '1. User Module:\n'
        '   - User Registration/Login: Allows users to register and log in to the application.\n'
        '   - Product Browsing: Users can view product prices, check stock availability, and add desired products to their cart.\n'
        '   - Cart Management: Users can update the quantity of products in their cart and proceed to checkout to confirm their orders.\n'
        '   - Order Confirmation: Facilitates the checkout process, allowing users to confirm and finalize their orders.\n\n'
        '2. Admin Module:\n'
        '   - User and Admin Management: Admins can add new users and administrators, and manage existing accounts.\n'
        '   - Product Management: Admins can add new products, update product details, and delete products from the inventory.\n'
        '   - Statistics and Reporting: View statistics of top-ordered products and detailed order information.\n'
        '   - Search Functionality: Admins can search for users to manage their accounts effectively.\n\n'
        'Key Features:\n\n'
        ' - Ajax-Based Login/Register: Provides a seamless and dynamic user experience during the login and registration process.\n'
        ' - Captcha-Based Security: Enhances application security by incorporating captcha in the login process.\n'
        ' - Cart Validation: Ensures that the products added to the cart are validated for availability and quantity.\n'
        ' - Product Validation: Validates product details to maintain data integrity and accuracy.\n'
        ' - Responsive Design: Ensures that the website is accessible and usable across various devices and screen sizes.\n'
        ' - Admin Dashboard: Features an updated statistics page for admins to monitor top-ordered products and other vital data.\n'
        ' - Search Functionality for Admins: Allows admins to efficiently search and manage user accounts.\n\n'
        'Technical Specifications:\n\n'
        ' - Frontend: HTML, CSS, JavaScript, and Ajax for a dynamic and responsive user interface.\n'
        ' - Backend: PHP for server-side scripting and MySQL for database management.\n'
        ' - Security: Implemented captcha for enhanced security during the login process.\n'
        ' - Data Validation: Ensures accurate and consistent data entry for products and cart items.\n\n',
    shortDescription:
        'A robust e-commerce website developed using PHP and MySQL, designed to streamline online shopping with two primary modules: the User Module and the Admin Module.',
    bannerList: ['assets/project_banners/onlineshoppingcenter_banner_1.jpg'],
    projectIcon: 'assets/images/php.png',
    projectGithubLink: 'https://github.com/MuhammadDaniyal32/OnlineShoppingCenter-EcommerceWebsite',
    projectLiveLink: 'https://onlineshoppingcenter-ecommercewebsite.000webhostapp.com',
    techStackIconList: [
      'assets/images/php.png',
      'assets/images/sql.png'
    ],
  ),
  ProjectModel(
    projectTitle: 'School Management System WinForms Application',
    projectDescription:
    'Project Overview:\n\n'
        'The School Management System is a desktop application developed using C# and the .NET Framework. Designed to simplify and automate school administration, this project provides a comprehensive solution for managing student records, staff information, and administrative tasks efficiently. Users must pass through a secure login system to access the main menu, with functionalities tailored to their respective roles—be it admin, teacher, or staff.\n\n'
        'Key Features:\n\n'
        '1. Login System:\n'
        '   - Role-Based Access: Secure login for admins, teachers, and staff, ensuring appropriate access levels and data security.\n\n'
        '2. Student Management:\n'
        '   - New Admissions: Easily add new students by entering details such as full name, father\'s name, gender, surname, mobile number, date of birth, standard, medium, year, and address.\n'
        '   - Update and Delete Records: Manage student records efficiently, including updating details or deleting records for students who have left the school.\n'
        '   - View Student Details: Access detailed information for individual students quickly and easily.\n\n'
        '3. Fee Management:\n'
        '   - Track Payments: Manage student fees using their unique registration numbers, ensuring accurate and up-to-date financial records.\n\n'
        '4. Attendance Management:\n'
        '   - Monitor Attendance: Keep track of student attendance, ensuring that records are maintained accurately.\n\n'
        '5. Search Functionality:\n'
        '   - Find Students and Teachers: Search for students and teachers by their ID, making it easy to retrieve specific information.\n\n'
        '6. Admin Capabilities:\n'
        '   - Enroll and Appoint Staff: Admins can enroll new students and appoint new teachers, streamlining the hiring and admission process.\n'
        '   - Comprehensive Management: Admins have access to a wide range of management functions, including updating and deleting records.\n\n'
        '7. User Experience:\n'
        '   - Theme Customization: Users can easily change themes, enhancing the user experience with a personalized interface.\n\n'
        'Technical Specifications:\n\n'
        ' - Programming Language: Developed using C#, ensuring a robust and efficient application.\n'
        ' - Framework: Built on the .NET Framework, providing a stable and scalable foundation for the application.\n'
        ' - Database Integration: Utilizes a database to store and manage all student and staff information securely.\n\n',
    shortDescription:
        'A desktop application developed using C# and the .NET Framework, designed to simplify and automate school administration by managing student records, staff information, and administrative tasks efficiently.',
    bannerList: ['assets/project_banners/sms_banner_1.jpg'],
    projectIcon: 'assets/images/winforms-logo.png',
    projectGithubLink: 'https://github.com/MuhammadDaniyal32/SchoolManagementSystem-WinFormApp',
    projectLiveLink: 'https://www.linkedin.com/posts/mdaniyalnoor_winforms-desktopapplication-sql-activity-6966017812280573954-ImSC',
    techStackIconList: [
      'assets/images/winforms-logo.png',
      'assets/images/sqlserver_logo.png',
      'assets/images/c#_logo.png'
    ],
  ),

];
