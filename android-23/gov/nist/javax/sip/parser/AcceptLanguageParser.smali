.class public Lgov/nist/javax/sip/parser/AcceptLanguageParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AcceptLanguageParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "acceptLanguage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 66
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x2c

    #@2
    const/16 v8, 0x3b

    #@4
    .line 84
    new-instance v1, Lgov/nist/javax/sip/header/AcceptLanguageList;

    #@6
    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptLanguageList;-><init>()V

    #@9
    .line 85
    .local v1, "acceptLanguageList":Lgov/nist/javax/sip/header/AcceptLanguageList;
    sget-boolean v6, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 86
    const-string/jumbo v6, "AcceptLanguageParser.parse"

    #@10
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_enter(Ljava/lang/String;)V

    #@13
    .line 89
    :cond_0
    const/16 v6, 0x82f

    #@15
    :try_start_0
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->headerName(I)V

    #@18
    .line 91
    :goto_0
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v7, 0x0

    #@1b
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1e
    move-result v6

    #@1f
    const/16 v7, 0xa

    #@21
    if-eq v6, v7, :cond_5

    #@23
    .line 92
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    #@25
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    #@28
    .line 93
    .local v0, "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    const-string/jumbo v6, "Accept-Language"

    #@2b
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/header/AcceptLanguage;->setHeaderName(Ljava/lang/String;)V

    #@2e
    .line 94
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    const/4 v7, 0x0

    #@31
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@34
    move-result v6

    #@35
    if-eq v6, v8, :cond_1

    #@37
    .line 96
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@39
    const/16 v7, 0xfff

    #@3b
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@3e
    .line 97
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@40
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@43
    move-result-object v5

    #@44
    .line 98
    .local v5, "value":Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/header/AcceptLanguage;->setLanguageRange(Ljava/lang/String;)V

    #@4b
    .line 101
    .end local v5    # "value":Lgov/nist/core/Token;
    :cond_1
    :goto_1
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@4d
    const/4 v7, 0x0

    #@4e
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@51
    move-result v6

    #@52
    if-ne v6, v8, :cond_3

    #@54
    .line 102
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@56
    const/16 v7, 0x3b

    #@58
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@5b
    .line 103
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@5d
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@60
    .line 104
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@62
    const/16 v7, 0x71

    #@64
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@67
    .line 105
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@69
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@6c
    .line 106
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@6e
    const/16 v7, 0x3d

    #@70
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@73
    .line 107
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@75
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@78
    .line 108
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@7a
    const/16 v7, 0xfff

    #@7c
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@7f
    .line 109
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@81
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    move-result-object v5

    #@85
    .line 111
    .restart local v5    # "value":Lgov/nist/core/Token;
    :try_start_1
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@88
    move-result-object v6

    #@89
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@8c
    move-result v4

    #@8d
    .line 112
    .local v4, "fl":F
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/AcceptLanguage;->setQValue(F)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    .line 118
    :try_start_2
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@92
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@95
    goto :goto_1

    #@96
    .line 129
    .end local v0    # "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    .end local v4    # "fl":F
    .end local v5    # "value":Lgov/nist/core/Token;
    :catchall_0
    move-exception v6

    #@97
    .line 130
    sget-boolean v7, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    #@99
    if-eqz v7, :cond_2

    #@9b
    .line 131
    const-string/jumbo v7, "AcceptLanguageParser.parse"

    #@9e
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    #@a1
    .line 129
    :cond_2
    throw v6

    #@a2
    .line 115
    .restart local v0    # "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    .restart local v5    # "value":Lgov/nist/core/Token;
    :catch_0
    move-exception v3

    #@a3
    .line 116
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@a6
    move-result-object v6

    #@a7
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@aa
    move-result-object v6

    #@ab
    throw v6

    #@ac
    .line 113
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v2

    #@ad
    .line 114
    .local v2, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@b0
    move-result-object v6

    #@b1
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@b4
    move-result-object v6

    #@b5
    throw v6

    #@b6
    .line 121
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v5    # "value":Lgov/nist/core/Token;
    :cond_3
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@b9
    .line 122
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@bb
    const/4 v7, 0x0

    #@bc
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@bf
    move-result v6

    #@c0
    if-ne v6, v9, :cond_4

    #@c2
    .line 123
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@c4
    const/16 v7, 0x2c

    #@c6
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@c9
    .line 124
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@cb
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@ce
    goto/16 :goto_0

    #@d0
    .line 126
    :cond_4
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@d2
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@d5
    goto/16 :goto_0

    #@d7
    .line 130
    .end local v0    # "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    :cond_5
    sget-boolean v6, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    #@d9
    if-eqz v6, :cond_6

    #@db
    .line 131
    const-string/jumbo v6, "AcceptLanguageParser.parse"

    #@de
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    #@e1
    .line 134
    :cond_6
    return-object v1
.end method
