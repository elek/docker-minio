

*** Settings ***
Documentation    Test suite to check basic minio functionality
Library          OperatingSystem
Library          String

*** Test Cases ***

Test minio Cli
  ${random} =    Generate Random String  5  [NUMBERS]
  Execute        mc config host add cluster1 http://minio-0.minio:9000 MINIO WELCOME1
  Execute        mc mb cluster1/${random}
  Execute        mc cp /etc/redhat-release cluster1/${random}/file1

*** Keywords
Execute
    [arguments]                     ${command}
    ${rc}                           ${output} =                 Run And Return Rc And Output           ${command}
    Log                             ${output}
    Should Be Equal As Integers     ${rc}                       0
    [return]                        ${output}

