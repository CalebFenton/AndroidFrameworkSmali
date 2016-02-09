.class public Lgov/nist/javax/sip/parser/AlertInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AlertInfoParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "alertInfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 51
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x3c

    #@2
    const/16 v7, 0x2c

    #@4
    .line 70
    sget-boolean v5, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 71
    const-string/jumbo v5, "AlertInfoParser.parse"

    #@b
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_enter(Ljava/lang/String;)V

    #@e
    .line 72
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/AlertInfoList;

    #@10
    invoke-direct {v2}, Lgov/nist/javax/sip/header/AlertInfoList;-><init>()V

    #@13
    .line 75
    .local v2, "list":Lgov/nist/javax/sip/header/AlertInfoList;
    const/16 v5, 0x80d

    #@15
    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AlertInfoParser;->headerName(I)V

    #@18
    .line 77
    :cond_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v6, 0x0

    #@1b
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1e
    move-result v5

    #@1f
    const/16 v6, 0xa

    #@21
    if-eq v5, v6, :cond_4

    #@23
    .line 78
    new-instance v0, Lgov/nist/javax/sip/header/AlertInfo;

    #@25
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AlertInfo;-><init>()V

    #@28
    .line 79
    .local v0, "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    const-string/jumbo v5, "Alert-Info"

    #@2b
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/AlertInfo;->setHeaderName(Ljava/lang/String;)V

    #@2e
    .line 84
    :goto_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@33
    .line 85
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@35
    const/4 v6, 0x0

    #@36
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@39
    move-result v5

    #@3a
    if-ne v5, v8, :cond_3

    #@3c
    .line 86
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@3e
    const/16 v6, 0x3c

    #@40
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@43
    .line 87
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    #@45
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@47
    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    #@49
    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@4c
    .line 88
    .local v4, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v5, 0x1

    #@4d
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    #@50
    move-result-object v3

    #@51
    .line 89
    .local v3, "uri":Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljavax/sip/address/URI;)V

    #@54
    .line 90
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@56
    const/16 v6, 0x3e

    #@58
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@5b
    .line 99
    .end local v3    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v4    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    :goto_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@5d
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@60
    .line 101
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@63
    .line 102
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/AlertInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@66
    .line 104
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@68
    const/4 v6, 0x0

    #@69
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@6c
    move-result v5

    #@6d
    if-ne v5, v7, :cond_1

    #@6f
    .line 105
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@71
    const/16 v6, 0x2c

    #@73
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@76
    goto :goto_0

    #@77
    .line 110
    .end local v0    # "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    :catchall_0
    move-exception v5

    #@78
    .line 111
    sget-boolean v6, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    #@7a
    if-eqz v6, :cond_2

    #@7c
    .line 112
    const-string/jumbo v6, "AlertInfoParser.parse"

    #@7f
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@82
    .line 110
    :cond_2
    throw v5

    #@83
    .line 95
    .restart local v0    # "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@85
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    .line 96
    .local v1, "alertInfoStr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    goto :goto_1

    #@8d
    .line 111
    .end local v0    # "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    .end local v1    # "alertInfoStr":Ljava/lang/String;
    :cond_4
    sget-boolean v5, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    #@8f
    if-eqz v5, :cond_5

    #@91
    .line 112
    const-string/jumbo v5, "AlertInfoParser.parse"

    #@94
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@97
    .line 109
    :cond_5
    return-object v2
.end method
