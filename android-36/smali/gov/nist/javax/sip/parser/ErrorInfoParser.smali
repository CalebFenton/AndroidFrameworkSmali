.class public Lgov/nist/javax/sip/parser/ErrorInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ErrorInfoParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorInfo"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

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
    sget-boolean v0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    const-string v1, "ErrorInfoParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfoList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ErrorInfoList;-><init>()V

    .line 72
    .local v0, "list":Lgov/nist/javax/sip/header/ErrorInfoList;
    const/16 v2, 0x80a

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->headerName(I)V

    .line 74
    :cond_13
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_68

    .line 76
    :goto_1e
    new-instance v2, Lgov/nist/javax/sip/header/ErrorInfo;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>()V

    .line 77
    .local v2, "errorInfo":Lgov/nist/javax/sip/header/ErrorInfo;
    const-string v4, "Error-Info"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/ErrorInfo;->setHeaderName(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 80
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 81
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 82
    .local v4, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v5

    .line 83
    .local v5, "uri":Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/ErrorInfo;->setErrorInfo(Ljavax/sip/address/URI;)V

    .line 84
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 88
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ErrorInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 90
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_13

    .line 91
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ErrorInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_66
    .catchall {:try_start_10 .. :try_end_66} :catchall_71

    .line 93
    nop

    .end local v2    # "errorInfo":Lgov/nist/javax/sip/header/ErrorInfo;
    .end local v4    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v5    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    goto :goto_1e

    .line 96
    :cond_68
    nop

    .line 98
    sget-boolean v2, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    if-eqz v2, :cond_70

    .line 99
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 96
    :cond_70
    return-object v0

    .line 98
    :catchall_71
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ErrorInfoParser;->debug:Z

    if-eqz v3, :cond_79

    .line 99
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ErrorInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 100
    :cond_79
    throw v2
.end method
