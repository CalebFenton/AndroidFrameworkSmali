.class public Lgov/nist/javax/sip/parser/ContentLanguageParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ContentLanguageParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentLanguage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x2c

    #@2
    .line 67
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentLanguageParser;->debug:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 68
    const-string/jumbo v4, "ContentLanguageParser.parse"

    #@9
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 69
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/ContentLanguageList;

    #@e
    invoke-direct {v2}, Lgov/nist/javax/sip/header/ContentLanguageList;-><init>()V

    #@11
    .line 72
    .local v2, "list":Lgov/nist/javax/sip/header/ContentLanguageList;
    const/16 v4, 0x81b

    #@13
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->headerName(I)V

    #@16
    .line 74
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/4 v5, 0x0

    #@19
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1c
    move-result v4

    #@1d
    const/16 v5, 0xa

    #@1f
    if-eq v4, v5, :cond_3

    #@21
    .line 75
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@26
    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@28
    const/16 v5, 0xfff

    #@2a
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@2d
    .line 78
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@32
    move-result-object v3

    #@33
    .line 79
    .local v3, "token":Lgov/nist/core/Token;
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguage;

    #@35
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-direct {v0, v4}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>(Ljava/lang/String;)V

    #@3c
    .line 80
    .local v0, "cl":Lgov/nist/javax/sip/header/ContentLanguage;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@3e
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@41
    .line 81
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@44
    .line 83
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@46
    const/4 v5, 0x0

    #@47
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@4a
    move-result v4

    #@4b
    if-ne v4, v6, :cond_1

    #@4d
    .line 84
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@4f
    const/16 v5, 0x2c

    #@51
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@54
    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@56
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@59
    .line 86
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@5b
    const/16 v5, 0xfff

    #@5d
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@60
    .line 87
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@62
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@65
    .line 88
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@67
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@6a
    move-result-object v3

    #@6b
    .line 89
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguage;

    #@6d
    .end local v0    # "cl":Lgov/nist/javax/sip/header/ContentLanguage;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    invoke-direct {v0, v4}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>(Ljava/lang/String;)V

    #@74
    .line 90
    .restart local v0    # "cl":Lgov/nist/javax/sip/header/ContentLanguage;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLanguageParser;->lexer:Lgov/nist/core/LexerCore;

    #@76
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@79
    .line 91
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentLanguageList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7c
    goto :goto_0

    #@7d
    .line 96
    .end local v0    # "cl":Lgov/nist/javax/sip/header/ContentLanguage;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catch_0
    move-exception v1

    #@7e
    .line 97
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@85
    move-result-object v4

    #@86
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    .line 98
    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    #@88
    .line 99
    sget-boolean v5, Lgov/nist/javax/sip/parser/ContentLanguageParser;->debug:Z

    #@8a
    if-eqz v5, :cond_2

    #@8c
    .line 100
    const-string/jumbo v5, "ContentLanguageParser.parse"

    #@8f
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->dbg_leave(Ljava/lang/String;)V

    #@92
    .line 98
    :cond_2
    throw v4

    #@93
    .line 99
    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentLanguageParser;->debug:Z

    #@95
    if-eqz v4, :cond_4

    #@97
    .line 100
    const-string/jumbo v4, "ContentLanguageParser.parse"

    #@9a
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLanguageParser;->dbg_leave(Ljava/lang/String;)V

    #@9d
    .line 95
    :cond_4
    return-object v2
.end method
