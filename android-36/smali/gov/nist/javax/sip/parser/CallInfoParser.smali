.class public Lgov/nist/javax/sip/parser/CallInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "CallInfoParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "callInfo"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 66
    sget-boolean v0, Lgov/nist/javax/sip/parser/CallInfoParser;->debug:Z

    const-string v1, "CallInfoParser.parse"

    if-eqz v0, :cond_9

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/CallInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 67
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/CallInfoList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfoList;-><init>()V

    .line 70
    .local v0, "list":Lgov/nist/javax/sip/header/CallInfoList;
    const/16 v2, 0x833

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/CallInfoParser;->headerName(I)V

    .line 72
    :goto_13
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_a0

    .line 73
    new-instance v2, Lgov/nist/javax/sip/header/CallInfo;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    .line 74
    .local v2, "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    const-string v4, "Call-Info"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/CallInfo;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v4, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v6, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v6, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 79
    .local v4, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v7

    .line 80
    .local v7, "uri":Lgov/nist/javax/sip/address/GenericURI;
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    .line 81
    iget-object v8, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v8, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 85
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CallInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 87
    :goto_57
    iget-object v8, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v8

    const/16 v10, 0x2c

    if-ne v8, v10, :cond_9e

    .line 88
    iget-object v8, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v8, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 91
    new-instance v8, Lgov/nist/javax/sip/header/CallInfo;

    invoke-direct {v8}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    move-object v2, v8

    .line 93
    iget-object v8, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    iget-object v8, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 95
    new-instance v8, Lgov/nist/javax/sip/parser/URLParser;

    iget-object v10, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v10, Lgov/nist/javax/sip/parser/Lexer;

    invoke-direct {v8, v10}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    move-object v4, v8

    .line 96
    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v8

    move-object v7, v8

    .line 97
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    .line 98
    iget-object v8, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 99
    iget-object v8, p0, Lgov/nist/javax/sip/parser/CallInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 101
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 102
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CallInfoList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_9d
    .catchall {:try_start_10 .. :try_end_9d} :catchall_a9

    goto :goto_57

    .line 104
    .end local v2    # "callInfo":Lgov/nist/javax/sip/header/CallInfo;
    .end local v4    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v7    # "uri":Lgov/nist/javax/sip/address/GenericURI;
    :cond_9e
    goto/16 :goto_13

    .line 106
    :cond_a0
    nop

    .line 109
    sget-boolean v2, Lgov/nist/javax/sip/parser/CallInfoParser;->debug:Z

    if-eqz v2, :cond_a8

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/CallInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 106
    :cond_a8
    return-object v0

    .line 109
    :catchall_a9
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/CallInfoParser;->debug:Z

    if-eqz v3, :cond_b1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/CallInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 110
    :cond_b1
    throw v2
.end method
