###############################
##    App: Draft-Pong-Mobile ##
## Author: Paul McGrath      ##
###############################

# UI ----
shinyUI(miniPage(
  
  # Title ---- 
  gadgetTitleBar(
    title = 'ASL DRAFT 2019',
    left = NULL,
    right = miniTitleBarButton("btnUndo", "Undo", primary = TRUE)
  ),
  
  # Body ----
  miniTabstripPanel(
    
    # Tab - Stats ----
    miniTabPanel(
      title = 'Stats',
      icon = icon('sliders'),
      
      miniContentPanel(
        padding = 8,
        scrollable = FALSE,
        fillCol(
          flex= c(1,NA,NA),
          textInput(inputId= 'txtGameId', label= 'GAME ID:', width= '100%', value= 'RR1'),
          "PLACEHOLDER - lblLastShot",
          "PLACEHOLDER - lblCurrShot"
        )
      ),
      "PLACEHOLDER - uiPlayerButtons",
      miniButtonBlock(
        border = c('top'),
        actionButton(inputId = 'btnHit', label = 'HIT'),
        actionButton(inputId = 'btnMiss', label = 'MISS'),
        actionButton(inputId = 'btnCaught', label = 'CAUGHT')
      ),
      miniButtonBlock(
        border = NULL,
        actionButton(inputId = 'btnOverthrow', label = 'OVERTHROW'),
        actionButton(inputId = 'btnTrickHit', label = 'TS HIT'),
        actionButton(inputId = 'btnTrickMiss', label = 'TS MISS')
      ),
      miniButtonBlock(
        border = NULL,
        actionButton(inputId = 'btnBallsBack', label = 'BALLS BACK'),
        actionButton(inputId = 'btnSameCup', label = 'SAME CUP'),
        actionButton(inputId = 'btnRedemption', label = 'REDEMPTION')
      )
    ),
    
    # Tab - History ----
    miniTabPanel(
      title = 'History',
      icon = icon('history'),
      
      miniContentPanel(
       dataTableOutput('tblStats') 
      )
    ),
    
    # Tab - Players ----
    miniTabPanel(
      title = 'Players',
      icon = icon('users'),
      
      miniContentPanel(
       fillCol(
         "Player Names",
         textInput('txtPlayer1', label = NULL, width = '100%', value = 'PMAC'),
         textInput('txtPlayer2', label = NULL, width = '100%', value = 'KAPPAZ'),
         textInput('txtPlayer3', label = NULL, width = '100%', value = 'RICHO'),
         textInput('txtPlayer4', label = NULL, width = '100%', value = 'MELONS'),
         textInput('txtPlayer5', label = NULL, width = '100%', value = 'LESTER'),
         textInput('txtPlayer6', label = NULL, width = '100%', value = 'CHIEF'),
         textInput('txtPlayer7', label = NULL, width = '100%', value = 'GARTER'),
         textInput('txtPlayer8', label = NULL, width = '100%', value = 'JMERC')
       ) 
      )
    )
    
  )
  
))