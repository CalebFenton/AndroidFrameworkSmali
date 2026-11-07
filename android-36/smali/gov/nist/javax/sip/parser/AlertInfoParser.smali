.class public Lgov/nist/javax/sip/parser/AlertInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AlertInfoParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 60
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 61
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "alertInfo"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 53
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

    .line 70
    sget-boolean v0, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    const-string v1, "AlertInfoParser.parse"

    if-eqz v0, :cond_9

    .line 71
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/AlertInfoList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AlertInfoList;-><init>()V

    .line 75
    .local v0, "list":Lgov/nist/javax/sip/header/AlertInfoList;
    const/16 v2, 0x80d

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AlertInfoParser;->headerName(I)V

    .line 77
    :goto_13
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7a

    .line 78
    new-instance v2, Lgov/nist/javax/sip/header/AlertInfo;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/AlertInfo;-><init>()V

    .line 79
    .local v2, "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    const-string v4, "Alert-Info"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/AlertInfo;->setHeaderName(Ljava/lang/String;)V

    .line 84
    :goto_28
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_55

    .line 86
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 87
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v5, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v5, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 88
    .local v4, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v5

    .line 89
    .local v5, "uri":Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljavax/sip/address/URI;)V

    .line 90
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    goto :goto_5e

    .line 95
    .end local v4    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v5    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    :cond_55
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "alertInfoStr":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljava/lang/String;)V

    .line 99
    .end local v4    # "alertInfoStr":Ljava/lang/String;
    :goto_5e
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 101
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 102
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AlertInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 104
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_79

    .line 105
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AlertInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_78
    .catchall {:try_start_10 .. :try_end_78} :catchall_83

    goto :goto_28

    .line 108
    .end local v2    # "alertInfo":Lgov/nist/javax/sip/header/AlertInfo;
    :cond_79
    goto :goto_13

    .line 109
    :cond_7a
    nop

    .line 111
    sget-boolean v2, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    if-eqz v2, :cond_82

    .line 112
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 109
    :cond_82
    return-object v0

    .line 111
    :catchall_83
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/AlertInfoParser;->debug:Z

    if-eqz v3, :cond_8b

    .line 112
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AlertInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 113
    :cond_8b
    throw v2
.end method
