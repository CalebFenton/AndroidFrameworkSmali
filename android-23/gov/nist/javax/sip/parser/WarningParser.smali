.class public Lgov/nist/javax/sip/parser/WarningParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "WarningParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 64
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "warning"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 53
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0x2c

    #@2
    const/16 v11, 0x3a

    #@4
    .line 75
    new-instance v8, Lgov/nist/javax/sip/header/WarningList;

    #@6
    invoke-direct {v8}, Lgov/nist/javax/sip/header/WarningList;-><init>()V

    #@9
    .line 76
    .local v8, "warningList":Lgov/nist/javax/sip/header/WarningList;
    sget-boolean v9, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    #@b
    if-eqz v9, :cond_0

    #@d
    .line 77
    const-string/jumbo v9, "WarningParser.parse"

    #@10
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_enter(Ljava/lang/String;)V

    #@13
    .line 80
    :cond_0
    const/16 v9, 0x81e

    #@15
    :try_start_0
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/WarningParser;->headerName(I)V

    #@18
    .line 82
    :cond_1
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v10, 0x0

    #@1b
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1e
    move-result v9

    #@1f
    const/16 v10, 0xa

    #@21
    if-eq v9, v10, :cond_5

    #@23
    .line 83
    new-instance v7, Lgov/nist/javax/sip/header/Warning;

    #@25
    invoke-direct {v7}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    #@28
    .line 84
    .local v7, "warning":Lgov/nist/javax/sip/header/Warning;
    const-string/jumbo v9, "Warning"

    #@2b
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/header/Warning;->setHeaderName(Ljava/lang/String;)V

    #@2e
    .line 87
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    const/16 v10, 0xfff

    #@32
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@35
    .line 88
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result-object v5

    #@3b
    .line 90
    .local v5, "token":Lgov/nist/core/Token;
    :try_start_1
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@3e
    move-result-object v9

    #@3f
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@42
    move-result v0

    #@43
    .line 91
    .local v0, "code":I
    invoke-virtual {v7, v0}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    .line 97
    :try_start_2
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@48
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4b
    .line 100
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@4d
    const/16 v10, 0xfff

    #@4f
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@52
    .line 101
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@54
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@57
    move-result-object v5

    #@58
    .line 103
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@5a
    const/4 v10, 0x0

    #@5b
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@5e
    move-result v9

    #@5f
    if-ne v9, v11, :cond_3

    #@61
    .line 104
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@63
    const/16 v10, 0x3a

    #@65
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@68
    .line 105
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@6a
    const/16 v10, 0xfff

    #@6c
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@6f
    .line 106
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@71
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@74
    move-result-object v6

    #@75
    .line 107
    .local v6, "token2":Lgov/nist/core/Token;
    new-instance v9, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@7d
    move-result-object v10

    #@7e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v9

    #@82
    const-string/jumbo v10, ":"

    #@85
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v9

    #@89
    .line 108
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@8c
    move-result-object v10

    #@8d
    .line 107
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v9

    #@95
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    #@98
    .line 113
    .end local v6    # "token2":Lgov/nist/core/Token;
    :goto_0
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@9a
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@9d
    .line 116
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@9f
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    #@a2
    move-result-object v3

    #@a3
    .line 117
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v7, v3}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    #@a6
    .line 118
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@a8
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@ab
    .line 120
    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/header/WarningList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@ae
    .line 122
    :goto_1
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@b0
    const/4 v10, 0x0

    #@b1
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@b4
    move-result v9

    #@b5
    if-ne v9, v12, :cond_1

    #@b7
    .line 123
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@b9
    const/16 v10, 0x2c

    #@bb
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@be
    .line 124
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@c0
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@c3
    .line 126
    new-instance v7, Lgov/nist/javax/sip/header/Warning;

    #@c5
    .end local v7    # "warning":Lgov/nist/javax/sip/header/Warning;
    invoke-direct {v7}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    #@c8
    .line 129
    .restart local v7    # "warning":Lgov/nist/javax/sip/header/Warning;
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@ca
    const/16 v10, 0xfff

    #@cc
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@cf
    .line 130
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@d1
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d4
    move-result-object v4

    #@d5
    .line 132
    .local v4, "tok":Lgov/nist/core/Token;
    :try_start_3
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@d8
    move-result-object v9

    #@d9
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@dc
    move-result v0

    #@dd
    .line 133
    invoke-virtual {v7, v0}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@e0
    .line 139
    :try_start_4
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@e2
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@e5
    .line 142
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@e7
    const/16 v10, 0xfff

    #@e9
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@ec
    .line 143
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@ee
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@f1
    move-result-object v4

    #@f2
    .line 147
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@f4
    const/4 v10, 0x0

    #@f5
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@f8
    move-result v9

    #@f9
    if-ne v9, v11, :cond_4

    #@fb
    .line 148
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@fd
    const/16 v10, 0x3a

    #@ff
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@102
    .line 149
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@104
    const/16 v10, 0xfff

    #@106
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@109
    .line 150
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@10b
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@10e
    move-result-object v6

    #@10f
    .line 151
    .restart local v6    # "token2":Lgov/nist/core/Token;
    new-instance v9, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@117
    move-result-object v10

    #@118
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v9

    #@11c
    const-string/jumbo v10, ":"

    #@11f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v9

    #@123
    .line 152
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@126
    move-result-object v10

    #@127
    .line 151
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v9

    #@12b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v9

    #@12f
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    #@132
    .line 157
    .end local v6    # "token2":Lgov/nist/core/Token;
    :goto_2
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@134
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@137
    .line 160
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@139
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->quotedString()Ljava/lang/String;

    #@13c
    move-result-object v3

    #@13d
    .line 161
    invoke-virtual {v7, v3}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    #@140
    .line 162
    iget-object v9, p0, Lgov/nist/javax/sip/parser/WarningParser;->lexer:Lgov/nist/core/LexerCore;

    #@142
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@145
    .line 164
    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/header/WarningList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@148
    goto/16 :goto_1

    #@14a
    .line 168
    .end local v0    # "code":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "tok":Lgov/nist/core/Token;
    .end local v5    # "token":Lgov/nist/core/Token;
    .end local v7    # "warning":Lgov/nist/javax/sip/header/Warning;
    :catchall_0
    move-exception v9

    #@14b
    .line 169
    sget-boolean v10, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    #@14d
    if-eqz v10, :cond_2

    #@14f
    .line 170
    const-string/jumbo v10, "WarningParser.parse"

    #@152
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    #@155
    .line 168
    :cond_2
    throw v9

    #@156
    .line 94
    .restart local v5    # "token":Lgov/nist/core/Token;
    .restart local v7    # "warning":Lgov/nist/javax/sip/header/Warning;
    :catch_0
    move-exception v2

    #@157
    .line 95
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_5
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@15a
    move-result-object v9

    #@15b
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@15e
    move-result-object v9

    #@15f
    throw v9

    #@160
    .line 92
    .end local v2    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v1

    #@161
    .line 93
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@164
    move-result-object v9

    #@165
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@168
    move-result-object v9

    #@169
    throw v9

    #@16a
    .line 110
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "code":I
    :cond_3
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@16d
    move-result-object v9

    #@16e
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    #@171
    goto/16 :goto_0

    #@173
    .line 136
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "tok":Lgov/nist/core/Token;
    :catch_2
    move-exception v2

    #@174
    .line 137
    .restart local v2    # "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@177
    move-result-object v9

    #@178
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@17b
    move-result-object v9

    #@17c
    throw v9

    #@17d
    .line 134
    .end local v2    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_3
    move-exception v1

    #@17e
    .line 135
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@181
    move-result-object v9

    #@182
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/WarningParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@185
    move-result-object v9

    #@186
    throw v9

    #@187
    .line 154
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_4
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@18a
    move-result-object v9

    #@18b
    invoke-virtual {v7, v9}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@18e
    goto :goto_2

    #@18f
    .line 169
    .end local v0    # "code":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "tok":Lgov/nist/core/Token;
    .end local v5    # "token":Lgov/nist/core/Token;
    .end local v7    # "warning":Lgov/nist/javax/sip/header/Warning;
    :cond_5
    sget-boolean v9, Lgov/nist/javax/sip/parser/WarningParser;->debug:Z

    #@191
    if-eqz v9, :cond_6

    #@193
    .line 170
    const-string/jumbo v9, "WarningParser.parse"

    #@196
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/WarningParser;->dbg_leave(Ljava/lang/String;)V

    #@199
    .line 173
    :cond_6
    return-object v8
.end method
