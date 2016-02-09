.class public Lgov/nist/javax/sip/parser/ErrorInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ErrorInfoParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorInfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

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
    sget-boolean v4, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 68
    const-string/jumbo v4, "ErrorInfoParser.parse"

    #@9
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 69
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/ErrorInfoList;

    #@e
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ErrorInfoList;-><init>()V

    #@11
    .line 72
    .local v1, "list":Lgov/nist/javax/sip/header/ErrorInfoList;
    const/16 v4, 0x80a

    #@13
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->headerName(I)V

    #@16
    .line 74
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

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
    .line 76
    :goto_0
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfo;

    #@23
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>()V

    #@26
    .line 77
    .local v0, "errorInfo":Lgov/nist/javax/sip/header/ErrorInfo;
    const-string/jumbo v4, "Error-Info"

    #@29
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ErrorInfo;->setHeaderName(Ljava/lang/String;)V

    #@2c
    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@31
    .line 80
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@33
    const/16 v5, 0x3c

    #@35
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@38
    .line 81
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    #@3a
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@3c
    check-cast v4, Lgov/nist/javax/sip/parser/Lexer;

    #@3e
    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@41
    .line 82
    .local v3, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v4, 0x1

    #@42
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    #@45
    move-result-object v2

    #@46
    .line 83
    .local v2, "uri":Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ErrorInfo;->setErrorInfo(Ljavax/sip/address/URI;)V

    #@49
    .line 84
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    const/16 v5, 0x3e

    #@4d
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@50
    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@52
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@55
    .line 87
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@58
    .line 88
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ErrorInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@5b
    .line 90
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@5d
    const/4 v5, 0x0

    #@5e
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@61
    move-result v4

    #@62
    if-ne v4, v6, :cond_1

    #@64
    .line 91
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@66
    const/16 v5, 0x2c

    #@68
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    goto :goto_0

    #@6c
    .line 97
    .end local v0    # "errorInfo":Lgov/nist/javax/sip/header/ErrorInfo;
    .end local v2    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    .end local v3    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    :catchall_0
    move-exception v4

    #@6d
    .line 98
    sget-boolean v5, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    #@6f
    if-eqz v5, :cond_2

    #@71
    .line 99
    const-string/jumbo v5, "ErrorInfoParser.parse"

    #@74
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@77
    .line 97
    :cond_2
    throw v4

    #@78
    .line 98
    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    #@7a
    if-eqz v4, :cond_4

    #@7c
    .line 99
    const-string/jumbo v4, "ErrorInfoParser.parse"

    #@7f
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@82
    .line 96
    :cond_4
    return-object v1
.end method
