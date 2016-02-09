.class public Lgov/nist/javax/sip/parser/ProxyRequireParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ProxyRequireParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "require"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
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
    .line 65
    new-instance v0, Lgov/nist/javax/sip/header/ProxyRequireList;

    #@4
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyRequireList;-><init>()V

    #@7
    .line 66
    .local v0, "list":Lgov/nist/javax/sip/header/ProxyRequireList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/ProxyRequireParser;->debug:Z

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 67
    const-string/jumbo v3, "ProxyRequireParser.parse"

    #@e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ProxyRequireParser;->dbg_enter(Ljava/lang/String;)V

    #@11
    .line 70
    :cond_0
    const/16 v3, 0x81a

    #@13
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ProxyRequireParser;->headerName(I)V

    #@16
    .line 72
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

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
    .line 73
    new-instance v1, Lgov/nist/javax/sip/header/ProxyRequire;

    #@23
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ProxyRequire;-><init>()V

    #@26
    .line 74
    .local v1, "r":Lgov/nist/javax/sip/header/ProxyRequire;
    const-string/jumbo v3, "Proxy-Require"

    #@29
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/ProxyRequire;->setHeaderName(Ljava/lang/String;)V

    #@2c
    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    const/16 v4, 0xfff

    #@30
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@33
    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    #@35
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@38
    move-result-object v2

    #@39
    .line 79
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    #@40
    .line 80
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    #@42
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@45
    .line 82
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ProxyRequireList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@48
    .line 84
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    #@4a
    const/4 v4, 0x0

    #@4b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@4e
    move-result v3

    #@4f
    if-ne v3, v5, :cond_1

    #@51
    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    #@53
    const/16 v4, 0x2c

    #@55
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@58
    .line 86
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    #@5a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@5d
    .line 88
    new-instance v1, Lgov/nist/javax/sip/header/ProxyRequire;

    #@5f
    .end local v1    # "r":Lgov/nist/javax/sip/header/ProxyRequire;
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ProxyRequire;-><init>()V

    #@62
    .line 91
    .restart local v1    # "r":Lgov/nist/javax/sip/header/ProxyRequire;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    #@64
    const/16 v4, 0xfff

    #@66
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@69
    .line 92
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    #@6b
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@6e
    move-result-object v2

    #@6f
    .line 93
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    #@76
    .line 94
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ProxyRequireParser;->lexer:Lgov/nist/core/LexerCore;

    #@78
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@7b
    .line 96
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ProxyRequireList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7e
    goto :goto_0

    #@7f
    .line 100
    .end local v1    # "r":Lgov/nist/javax/sip/header/ProxyRequire;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    #@80
    .line 101
    sget-boolean v4, Lgov/nist/javax/sip/parser/ProxyRequireParser;->debug:Z

    #@82
    if-eqz v4, :cond_2

    #@84
    .line 102
    const-string/jumbo v4, "ProxyRequireParser.parse"

    #@87
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ProxyRequireParser;->dbg_leave(Ljava/lang/String;)V

    #@8a
    .line 100
    :cond_2
    throw v3

    #@8b
    .line 101
    :cond_3
    sget-boolean v3, Lgov/nist/javax/sip/parser/ProxyRequireParser;->debug:Z

    #@8d
    if-eqz v3, :cond_4

    #@8f
    .line 102
    const-string/jumbo v3, "ProxyRequireParser.parse"

    #@92
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ProxyRequireParser;->dbg_leave(Ljava/lang/String;)V

    #@95
    .line 105
    :cond_4
    return-object v0
.end method
