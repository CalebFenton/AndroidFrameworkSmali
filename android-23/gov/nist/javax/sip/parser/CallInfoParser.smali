.class public Lgov/nist/javax/sip/parser/CallInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "CallInfoParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "callInfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
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
    .line 66
    sget-boolean v4, Lgov/nist/javax/sip/parser/CallInfoParser;->debug:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    const-string/jumbo v4, "CallInfoParser.parse"

    #@9
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/CallInfoParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 67
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/CallInfoList;

    #@e
    invoke-direct {v1}, Lgov/nist/javax/sip/header/CallInfoList;-><init>()V

    #@11
    .line 70
    .local v1, "list":Lgov/nist/javax/sip/header/CallInfoList;
    const/16 v4, 0x833

    #@13
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/CallInfoParser;->headerName(I)V

    #@16
    .line 72
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

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
    .line 73
    new-instance v0, Lgov/nist/javax/sip/header/CallInfo;

    #@23
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    #@26
    .line 74
    .local v0, "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    const-string/jumbo v4, "Call-Info"

    #@29
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/CallInfo;->setHeaderName(Ljava/lang/String;)V

    #@2c
    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@31
    .line 77
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@33
    const/16 v5, 0x3c

    #@35
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@38
    .line 78
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    #@3a
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@3c
    check-cast v4, Lgov/nist/javax/sip/parser/Lexer;

    #@3e
    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@41
    .line 79
    .local v3, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v4, 0x1

    #@42
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    #@45
    move-result-object v2

    #@46
    .line 80
    .local v2, "uri":Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    #@49
    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    const/16 v5, 0x3e

    #@4d
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@50
    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@52
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@55
    .line 84
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@58
    .line 85
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CallInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@5b
    .line 87
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@5d
    const/4 v5, 0x0

    #@5e
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@61
    move-result v4

    #@62
    if-ne v4, v6, :cond_1

    #@64
    .line 88
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@66
    const/16 v5, 0x2c

    #@68
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@6b
    .line 89
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@6d
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@70
    .line 91
    new-instance v0, Lgov/nist/javax/sip/header/CallInfo;

    #@72
    .end local v0    # "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    #@75
    .line 93
    .restart local v0    # "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@77
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@7a
    .line 94
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@7c
    const/16 v5, 0x3c

    #@7e
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@81
    .line 95
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    #@83
    .end local v3    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@85
    check-cast v4, Lgov/nist/javax/sip/parser/Lexer;

    #@87
    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@8a
    .line 96
    .restart local v3    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v4, 0x1

    #@8b
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    #@8e
    move-result-object v2

    #@8f
    .line 97
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    #@92
    .line 98
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@94
    const/16 v5, 0x3e

    #@96
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@99
    .line 99
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@9b
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@9e
    .line 101
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@a1
    .line 102
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CallInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a4
    goto :goto_0

    #@a5
    .line 108
    .end local v0    # "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    .end local v2    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v3    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    :catchall_0
    move-exception v4

    #@a6
    .line 109
    sget-boolean v5, Lgov/nist/javax/sip/parser/CallInfoParser;->debug:Z

    #@a8
    if-eqz v5, :cond_2

    #@aa
    const-string/jumbo v5, "CallInfoParser.parse"

    #@ad
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/CallInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@b0
    .line 108
    :cond_2
    throw v4

    #@b1
    .line 109
    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/CallInfoParser;->debug:Z

    #@b3
    if-eqz v4, :cond_4

    #@b5
    const-string/jumbo v4, "CallInfoParser.parse"

    #@b8
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/CallInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@bb
    .line 106
    :cond_4
    return-object v1
.end method
