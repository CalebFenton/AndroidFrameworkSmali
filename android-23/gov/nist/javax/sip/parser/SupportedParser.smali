.class public Lgov/nist/javax/sip/parser/SupportedParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SupportedParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "supported"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x2c

    #@2
    .line 68
    new-instance v1, Lgov/nist/javax/sip/header/SupportedList;

    #@4
    invoke-direct {v1}, Lgov/nist/javax/sip/header/SupportedList;-><init>()V

    #@7
    .line 69
    .local v1, "supportedList":Lgov/nist/javax/sip/header/SupportedList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/SupportedParser;->debug:Z

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 70
    const-string/jumbo v3, "SupportedParser.parse"

    #@e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SupportedParser;->dbg_enter(Ljava/lang/String;)V

    #@11
    .line 73
    :cond_0
    const/16 v3, 0x814

    #@13
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SupportedParser;->headerName(I)V

    #@16
    .line 75
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/4 v4, 0x0

    #@19
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1c
    move-result v3

    #@1d
    const/16 v4, 0xa

    #@1f
    if-eq v3, v4, :cond_3

    #@21
    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@26
    .line 77
    new-instance v0, Lgov/nist/javax/sip/header/Supported;

    #@28
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    #@2b
    .line 78
    .local v0, "supported":Lgov/nist/javax/sip/header/Supported;
    const-string/jumbo v3, "Supported"

    #@2e
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Supported;->setHeaderName(Ljava/lang/String;)V

    #@31
    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@33
    const/16 v4, 0xfff

    #@35
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@38
    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@3a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@3d
    move-result-object v2

    #@3e
    .line 83
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    #@45
    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@47
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4a
    .line 86
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/SupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@4d
    .line 88
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@4f
    const/4 v4, 0x0

    #@50
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@53
    move-result v3

    #@54
    if-ne v3, v5, :cond_1

    #@56
    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@58
    const/16 v4, 0x2c

    #@5a
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@5d
    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@5f
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@62
    .line 92
    new-instance v0, Lgov/nist/javax/sip/header/Supported;

    #@64
    .end local v0    # "supported":Lgov/nist/javax/sip/header/Supported;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    #@67
    .line 95
    .restart local v0    # "supported":Lgov/nist/javax/sip/header/Supported;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@69
    const/16 v4, 0xfff

    #@6b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@6e
    .line 96
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@70
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@73
    move-result-object v2

    #@74
    .line 97
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    #@7b
    .line 98
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@7d
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@80
    .line 100
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/SupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    goto :goto_0

    #@84
    .line 104
    .end local v0    # "supported":Lgov/nist/javax/sip/header/Supported;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    #@85
    .line 105
    sget-boolean v4, Lgov/nist/javax/sip/parser/SupportedParser;->debug:Z

    #@87
    if-eqz v4, :cond_2

    #@89
    .line 106
    const-string/jumbo v4, "SupportedParser.parse"

    #@8c
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/SupportedParser;->dbg_leave(Ljava/lang/String;)V

    #@8f
    .line 104
    :cond_2
    throw v3

    #@90
    .line 105
    :cond_3
    sget-boolean v3, Lgov/nist/javax/sip/parser/SupportedParser;->debug:Z

    #@92
    if-eqz v3, :cond_4

    #@94
    .line 106
    const-string/jumbo v3, "SupportedParser.parse"

    #@97
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SupportedParser;->dbg_leave(Ljava/lang/String;)V

    #@9a
    .line 109
    :cond_4
    return-object v1
.end method
