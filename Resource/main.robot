*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Library    ScreenCapLibrary

### Data ###
Resource    Data/data.robot
Resource    Data/user.robot

### Pages ###
Resource    Pages/login_page.robot
Resource    Pages/inicial_perfil_page.robot
Resource    Pages/explorar_page.robot
Resource    Pages/reels_page.robot

### Shared ###
Resource    Shared/setup_teardown.robot

