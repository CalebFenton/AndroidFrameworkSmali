.class public Lgov/nist/javax/sip/parser/AcceptLanguageParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AcceptLanguageParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 75
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 76
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "acceptLanguage"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 84
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguageList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguageList;-><init>()V

    .line 85
    .local v0, "acceptLanguageList":Lgov/nist/javax/sip/header/AcceptLanguageList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    const-string v2, "AcceptLanguageParser.parse"

    if-eqz v1, :cond_e

    .line 86
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_enter(Ljava/lang/String;)V

    .line 89
    :cond_e
    const/16 v1, 0x82f

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->headerName(I)V

    .line 91
    :goto_13
    iget-object v1, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_c0

    .line 92
    new-instance v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    .line 93
    .local v1, "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    const-string v4, "Accept-Language"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/AcceptLanguage;->setHeaderName(Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0xfff

    const/16 v6, 0x3b

    if-eq v4, v6, :cond_46

    .line 96
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 97
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 98
    .local v4, "value":Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lgov/nist/javax/sip/header/AcceptLanguage;->setLanguageRange(Ljava/lang/String;)V

    .line 101
    .end local v4    # "value":Lgov/nist/core/Token;
    :cond_46
    :goto_46
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    if-ne v4, v6, :cond_a1

    .line 102
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x71

    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 106
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 107
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 108
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 109
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4
    :try_end_7b
    .catchall {:try_start_10 .. :try_end_7b} :catchall_c8

    .line 111
    .restart local v4    # "value":Lgov/nist/core/Token;
    :try_start_7b
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 112
    .local v7, "fl":F
    invoke-virtual {v1, v7}, Lgov/nist/javax/sip/header/AcceptLanguage;->setQValue(F)V
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_86} :catch_97
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7b .. :try_end_86} :catch_8d
    .catchall {:try_start_7b .. :try_end_86} :catchall_c8

    .line 117
    .end local v7    # "fl":F
    nop

    .line 118
    :try_start_87
    iget-object v7, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v7}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 119
    .end local v4    # "value":Lgov/nist/core/Token;
    goto :goto_46

    .line 115
    .restart local v4    # "value":Lgov/nist/core/Token;
    :catch_8d
    move-exception v3

    .line 116
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "acceptLanguageList":Lgov/nist/javax/sip/header/AcceptLanguageList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/AcceptLanguageParser;
    throw v5

    .line 113
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "acceptLanguageList":Lgov/nist/javax/sip/header/AcceptLanguageList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/AcceptLanguageParser;
    :catch_97
    move-exception v3

    .line 114
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "acceptLanguageList":Lgov/nist/javax/sip/header/AcceptLanguageList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/AcceptLanguageParser;
    throw v5

    .line 121
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "value":Lgov/nist/core/Token;
    .restart local v0    # "acceptLanguageList":Lgov/nist/javax/sip/header/AcceptLanguageList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/AcceptLanguageParser;
    :cond_a1
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AcceptLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 122
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_b9

    .line 123
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 124
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_be

    .line 126
    :cond_b9
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_be
    .catchall {:try_start_87 .. :try_end_be} :catchall_c8

    .line 128
    .end local v1    # "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    :goto_be
    goto/16 :goto_13

    .line 130
    :cond_c0
    sget-boolean v1, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    if-eqz v1, :cond_c7

    .line 131
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    .line 134
    :cond_c7
    return-object v0

    .line 130
    :catchall_c8
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->debug:Z

    if-eqz v3, :cond_d0

    .line 131
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AcceptLanguageParser;->dbg_leave(Ljava/lang/String;)V

    .line 132
    :cond_d0
    throw v1
.end method
