.class public Lgov/nist/javax/sip/parser/WarningParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "WarningParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 64
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 65
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "warning"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 75
    new-instance v0, Lgov/nist/javax/sip/header/WarningList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WarningList;-><init>()V

    .line 76
    .local v0, "warningList":Lgov/nist/javax/sip/header/WarningList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    const-string v2, "WarningParser.parse"

    if-eqz v1, :cond_e

    .line 77
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_enter(Ljava/lang/String;)V

    .line 80
    :cond_e
    const/16 v1, 0x81e

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/WarningParser;->headerName(I)V

    .line 82
    :goto_13
    iget-object v1, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_170

    .line 83
    new-instance v1, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    .line 84
    .local v1, "warning":Lgov/nist/javax/sip/header/Warning;
    const-string v4, "Warning"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setHeaderName(Ljava/lang/String;)V

    .line 87
    iget-object v4, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 88
    iget-object v4, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_178

    .line 90
    .local v4, "token":Lgov/nist/core/Token;
    :try_start_35
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 91
    .local v6, "code":I
    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_40} :catch_166
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_35 .. :try_end_40} :catch_15c
    .catchall {:try_start_35 .. :try_end_40} :catchall_178

    .line 96
    .end local v6    # "code":I
    nop

    .line 97
    :try_start_41
    iget-object v6, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v6, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 101
    iget-object v6, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    .line 103
    .end local v4    # "token":Lgov/nist/core/Token;
    .local v6, "token":Lgov/nist/core/Token;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_178

    const-string v7, ":"

    const/16 v8, 0x3a

    if-ne v4, v8, :cond_8e

    .line 104
    :try_start_5d
    iget-object v4, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v4, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 106
    iget-object v4, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 107
    .local v4, "token2":Lgov/nist/core/Token;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 108
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 107
    invoke-virtual {v1, v9}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 109
    .end local v4    # "token2":Lgov/nist/core/Token;
    goto :goto_95

    .line 110
    :cond_8e
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 113
    :goto_95
    iget-object v4, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 116
    iget-object v4, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 118
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 120
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/WarningList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 122
    :goto_ab
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    const/16 v10, 0x2c

    if-ne v9, v10, :cond_15a

    .line 123
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 124
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 126
    new-instance v9, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v9}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    move-object v1, v9

    .line 129
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 130
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v9
    :try_end_d0
    .catchall {:try_start_5d .. :try_end_d0} :catchall_178

    .line 132
    .local v9, "tok":Lgov/nist/core/Token;
    :try_start_d0
    invoke-virtual {v9}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 133
    .local v10, "code":I
    invoke-virtual {v1, v10}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_d0 .. :try_end_db} :catch_150
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_d0 .. :try_end_db} :catch_146
    .catchall {:try_start_d0 .. :try_end_db} :catchall_178

    .line 138
    .end local v10    # "code":I
    nop

    .line 139
    :try_start_dc
    iget-object v10, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 142
    iget-object v10, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 143
    iget-object v10, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v10

    .line 147
    .end local v9    # "tok":Lgov/nist/core/Token;
    .local v10, "tok":Lgov/nist/core/Token;
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v9

    if-ne v9, v8, :cond_125

    .line 148
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 149
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 150
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v9

    .line 151
    .local v9, "token2":Lgov/nist/core/Token;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 152
    invoke-virtual {v9}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 151
    invoke-virtual {v1, v11}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 153
    .end local v9    # "token2":Lgov/nist/core/Token;
    goto :goto_12c

    .line 154
    :cond_125
    invoke-virtual {v10}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 157
    :goto_12c
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 160
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 161
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 162
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 164
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/WarningList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 165
    nop

    .end local v10    # "tok":Lgov/nist/core/Token;
    goto/16 :goto_ab

    .line 136
    .local v9, "tok":Lgov/nist/core/Token;
    :catch_146
    move-exception v3

    .line 137
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "warningList":Lgov/nist/javax/sip/header/WarningList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/WarningParser;
    throw v5

    .line 134
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "warningList":Lgov/nist/javax/sip/header/WarningList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/WarningParser;
    :catch_150
    move-exception v3

    .line 135
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "warningList":Lgov/nist/javax/sip/header/WarningList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/WarningParser;
    throw v5

    .line 167
    .end local v1    # "warning":Lgov/nist/javax/sip/header/Warning;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "text":Ljava/lang/String;
    .end local v6    # "token":Lgov/nist/core/Token;
    .end local v9    # "tok":Lgov/nist/core/Token;
    .restart local v0    # "warningList":Lgov/nist/javax/sip/header/WarningList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/WarningParser;
    :cond_15a
    goto/16 :goto_13

    .line 94
    .restart local v1    # "warning":Lgov/nist/javax/sip/header/Warning;
    .local v4, "token":Lgov/nist/core/Token;
    :catch_15c
    move-exception v3

    .line 95
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "warningList":Lgov/nist/javax/sip/header/WarningList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/WarningParser;
    throw v5

    .line 92
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "warningList":Lgov/nist/javax/sip/header/WarningList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/WarningParser;
    :catch_166
    move-exception v3

    .line 93
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "warningList":Lgov/nist/javax/sip/header/WarningList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/WarningParser;
    throw v5
    :try_end_170
    .catchall {:try_start_dc .. :try_end_170} :catchall_178

    .line 169
    .end local v1    # "warning":Lgov/nist/javax/sip/header/Warning;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "token":Lgov/nist/core/Token;
    .restart local v0    # "warningList":Lgov/nist/javax/sip/header/WarningList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/WarningParser;
    :cond_170
    sget-boolean v1, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    if-eqz v1, :cond_177

    .line 170
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    .line 173
    :cond_177
    return-object v0

    .line 169
    :catchall_178
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    if-eqz v3, :cond_180

    .line 170
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    .line 171
    :cond_180
    throw v1
.end method
