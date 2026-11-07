.class public Lgov/nist/javax/sip/parser/RequestLineParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "RequestLineParser.java"


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 4
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 45
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 46
    iput-object p1, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    iget-object v0, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "method_keywordLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "requestLine"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 43
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "method_keywordLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    .line 44
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 10
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 76
    const-string v7, "REGISTER sip:[2001:720:1710:0:201:29ff:fe21:f403]:5060;transport=udp SIP/2.0\n"

    const-string v8, "OPTIONS sip:135.180.130.133 SIP/2.0\n"

    const-string v0, "REGISTER sip:192.168.0.68 SIP/2.0\n"

    const-string v1, "REGISTER sip:company.com SIP/2.0\n"

    const-string v2, "INVITE sip:3660@166.35.231.140 SIP/2.0\n"

    const-string v3, "INVITE sip:user@company.com SIP/2.0\n"

    const-string v4, "REGISTER sip:[2001::1]:5060;transport=tcp SIP/2.0\n"

    const-string v5, "REGISTER sip:[2002:800:700:600:30:4:6:1]:5060;transport=udp SIP/2.0\n"

    const-string v6, "REGISTER sip:[3ffe:800:700::30:4:6:1]:5060;transport=tls SIP/2.0\n"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "requestLines":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v2, v0

    if-ge v1, v2, :cond_44

    .line 87
    new-instance v2, Lgov/nist/javax/sip/parser/RequestLineParser;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "rlp":Lgov/nist/javax/sip/parser/RequestLineParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v3

    .line 90
    .local v3, "rl":Lgov/nist/javax/sip/header/RequestLine;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    .end local v2    # "rlp":Lgov/nist/javax/sip/parser/RequestLineParser;
    .end local v3    # "rl":Lgov/nist/javax/sip/header/RequestLine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 93
    .end local v1    # "i":I
    :cond_44
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/RequestLine;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 51
    sget-boolean v0, Lgov/nist/javax/sip/parser/RequestLineParser;->debug:Z

    const-string v1, "parse"

    if-eqz v0, :cond_9

    .line 52
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RequestLineParser;->dbg_enter(Ljava/lang/String;)V

    .line 54
    :cond_9
    :try_start_9
    new-instance v0, Lgov/nist/javax/sip/header/RequestLine;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    .line 55
    .local v0, "retval":Lgov/nist/javax/sip/header/RequestLine;
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/RequestLineParser;->method()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "m":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 57
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v4, "sip_urlLexer"

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 59
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/RequestLineParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v4

    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 60
    .local v3, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v4

    .line 61
    .local v4, "url":Lgov/nist/javax/sip/address/GenericURI;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 62
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/RequestLine;->setUri(Ljavax/sip/address/URI;)V

    .line 63
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v6, "request_lineLexer"

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/RequestLineParser;->sipVersion()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/RequestLine;->setSipVersion(Ljava/lang/String;)V

    .line 66
    iget-object v6, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 67
    iget-object v6, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_51
    .catchall {:try_start_9 .. :try_end_51} :catchall_5a

    .line 68
    nop

    .line 70
    sget-boolean v6, Lgov/nist/javax/sip/parser/RequestLineParser;->debug:Z

    if-eqz v6, :cond_59

    .line 71
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RequestLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 68
    :cond_59
    return-object v0

    .line 70
    .end local v0    # "retval":Lgov/nist/javax/sip/header/RequestLine;
    .end local v2    # "m":Ljava/lang/String;
    .end local v3    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v4    # "url":Lgov/nist/javax/sip/address/GenericURI;
    .end local v5    # "v":Ljava/lang/String;
    :catchall_5a
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/RequestLineParser;->debug:Z

    if-eqz v2, :cond_62

    .line 71
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RequestLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 72
    :cond_62
    throw v0
.end method
