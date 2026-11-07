.class public Lgov/nist/javax/sip/parser/ContentLanguageParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ContentLanguageParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentLanguage"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
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

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->debug:Z

    const-string v1, "ContentLanguageParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguageList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLanguageList;-><init>()V

    .line 72
    .local v0, "list":Lgov/nist/javax/sip/header/ContentLanguageList;
    const/16 v2, 0x81b

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->headerName(I)V

    .line 74
    :goto_13
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7a

    .line 75
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 79
    .local v2, "token":Lgov/nist/core/Token;
    new-instance v5, Lgov/nist/javax/sip/header/ContentLanguage;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>(Ljava/lang/String;)V

    .line 80
    .local v5, "cl":Lgov/nist/javax/sip/header/ContentLanguage;
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 81
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/ContentLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 83
    :goto_41
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_79

    .line 84
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 86
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 87
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 88
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    move-object v2, v6

    .line 89
    new-instance v6, Lgov/nist/javax/sip/header/ContentLanguage;

    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 90
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 91
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/ContentLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_78
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_78} :catch_85
    .catchall {:try_start_10 .. :try_end_78} :catchall_83

    goto :goto_41

    .line 93
    .end local v2    # "token":Lgov/nist/core/Token;
    .end local v5    # "cl":Lgov/nist/javax/sip/header/ContentLanguage;
    :cond_79
    goto :goto_13

    .line 95
    :cond_7a
    nop

    .line 99
    sget-boolean v2, Lgov/nist/javax/sip/parser/ContentLanguageParser;->debug:Z

    if-eqz v2, :cond_82

    .line 100
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->dbg_leave(Ljava/lang/String;)V

    .line 95
    :cond_82
    return-object v0

    .line 99
    :catchall_83
    move-exception v2

    goto :goto_8f

    .line 96
    :catch_85
    move-exception v2

    .line 97
    .local v2, "ex":Ljava/text/ParseException;
    :try_start_86
    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local v0    # "list":Lgov/nist/javax/sip/header/ContentLanguageList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ContentLanguageParser;
    throw v3
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_83

    .line 99
    .end local v2    # "ex":Ljava/text/ParseException;
    .restart local v0    # "list":Lgov/nist/javax/sip/header/ContentLanguageList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ContentLanguageParser;
    :goto_8f
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentLanguageParser;->debug:Z

    if-eqz v3, :cond_96

    .line 100
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->dbg_leave(Ljava/lang/String;)V

    .line 101
    :cond_96
    throw v2
.end method
