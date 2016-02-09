.class public Lgov/nist/javax/sip/parser/RequestLineParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "RequestLineParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@5
    .line 47
    iget-object v0, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    const-string/jumbo v1, "method_keywordLexer"

    #@a
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@d
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "requestLine"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 43
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    #@5
    const-string/jumbo v1, "method_keywordLexer"

    #@8
    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@d
    .line 42
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    const/16 v4, 0x9

    #@2
    new-array v1, v4, [Ljava/lang/String;

    #@4
    .line 77
    const-string/jumbo v4, "REGISTER sip:192.168.0.68 SIP/2.0\n"

    #@7
    const/4 v5, 0x0

    #@8
    aput-object v4, v1, v5

    #@a
    .line 78
    const-string/jumbo v4, "REGISTER sip:company.com SIP/2.0\n"

    #@d
    const/4 v5, 0x1

    #@e
    aput-object v4, v1, v5

    #@10
    .line 79
    const-string/jumbo v4, "INVITE sip:3660@166.35.231.140 SIP/2.0\n"

    #@13
    const/4 v5, 0x2

    #@14
    aput-object v4, v1, v5

    #@16
    .line 80
    const-string/jumbo v4, "INVITE sip:user@company.com SIP/2.0\n"

    #@19
    const/4 v5, 0x3

    #@1a
    aput-object v4, v1, v5

    #@1c
    .line 81
    const-string/jumbo v4, "REGISTER sip:[2001::1]:5060;transport=tcp SIP/2.0\n"

    #@1f
    const/4 v5, 0x4

    #@20
    aput-object v4, v1, v5

    #@22
    .line 82
    const-string/jumbo v4, "REGISTER sip:[2002:800:700:600:30:4:6:1]:5060;transport=udp SIP/2.0\n"

    #@25
    const/4 v5, 0x5

    #@26
    aput-object v4, v1, v5

    #@28
    .line 83
    const-string/jumbo v4, "REGISTER sip:[3ffe:800:700::30:4:6:1]:5060;transport=tls SIP/2.0\n"

    #@2b
    const/4 v5, 0x6

    #@2c
    aput-object v4, v1, v5

    #@2e
    .line 84
    const-string/jumbo v4, "REGISTER sip:[2001:720:1710:0:201:29ff:fe21:f403]:5060;transport=udp SIP/2.0\n"

    #@31
    const/4 v5, 0x7

    #@32
    aput-object v4, v1, v5

    #@34
    .line 85
    const-string/jumbo v4, "OPTIONS sip:135.180.130.133 SIP/2.0\n"

    #@37
    const/16 v5, 0x8

    #@39
    aput-object v4, v1, v5

    #@3b
    .line 86
    .local v1, "requestLines":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3c
    .local v0, "i":I
    :goto_0
    array-length v4, v1

    #@3d
    if-ge v0, v4, :cond_0

    #@3f
    .line 88
    new-instance v3, Lgov/nist/javax/sip/parser/RequestLineParser;

    #@41
    aget-object v4, v1, v0

    #@43
    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    #@46
    .line 89
    .local v3, "rlp":Lgov/nist/javax/sip/parser/RequestLineParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    #@49
    move-result-object v2

    #@4a
    .line 90
    .local v2, "rl":Lgov/nist/javax/sip/header/RequestLine;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4c
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v6, "encoded = "

    #@54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RequestLine;->encode()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v5

    #@64
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@67
    .line 86
    add-int/lit8 v0, v0, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 75
    .end local v2    # "rl":Lgov/nist/javax/sip/header/RequestLine;
    .end local v3    # "rlp":Lgov/nist/javax/sip/parser/RequestLineParser;
    :cond_0
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/RequestLine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    sget-boolean v5, Lgov/nist/javax/sip/parser/RequestLineParser;->debug:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 52
    const-string/jumbo v5, "parse"

    #@7
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/RequestLineParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 54
    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/RequestLine;

    #@c
    invoke-direct {v1}, Lgov/nist/javax/sip/header/RequestLine;-><init>()V

    #@f
    .line 55
    .local v1, "retval":Lgov/nist/javax/sip/header/RequestLine;
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/RequestLineParser;->method()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 56
    .local v0, "m":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@15
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@18
    .line 57
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    #@1b
    .line 58
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@1d
    const-string/jumbo v6, "sip_urlLexer"

    #@20
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@23
    .line 59
    new-instance v3, Lgov/nist/javax/sip/parser/URLParser;

    #@25
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/RequestLineParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v3, v5}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@2c
    .line 60
    .local v3, "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    const/4 v5, 0x1

    #@2d
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/parser/URLParser;->uriReference(Z)Lgov/nist/javax/sip/address/GenericURI;

    #@30
    move-result-object v2

    #@31
    .line 61
    .local v2, "url":Lgov/nist/javax/sip/address/GenericURI;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@33
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@36
    .line 62
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/RequestLine;->setUri(Ljavax/sip/address/URI;)V

    #@39
    .line 63
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@3b
    const-string/jumbo v6, "request_lineLexer"

    #@3e
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@41
    .line 64
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/RequestLineParser;->sipVersion()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 65
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RequestLine;->setSipVersion(Ljava/lang/String;)V

    #@48
    .line 66
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@4a
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4d
    .line 67
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RequestLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@4f
    const/16 v6, 0xa

    #@51
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    .line 70
    sget-boolean v5, Lgov/nist/javax/sip/parser/RequestLineParser;->debug:Z

    #@56
    if-eqz v5, :cond_1

    #@58
    .line 71
    const-string/jumbo v5, "parse"

    #@5b
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/RequestLineParser;->dbg_leave(Ljava/lang/String;)V

    #@5e
    .line 68
    :cond_1
    return-object v1

    #@5f
    .line 69
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "retval":Lgov/nist/javax/sip/header/RequestLine;
    .end local v2    # "url":Lgov/nist/javax/sip/address/GenericURI;
    .end local v3    # "urlParser":Lgov/nist/javax/sip/parser/URLParser;
    .end local v4    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@60
    .line 70
    sget-boolean v6, Lgov/nist/javax/sip/parser/RequestLineParser;->debug:Z

    #@62
    if-eqz v6, :cond_2

    #@64
    .line 71
    const-string/jumbo v6, "parse"

    #@67
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/RequestLineParser;->dbg_leave(Ljava/lang/String;)V

    #@6a
    .line 69
    :cond_2
    throw v5
.end method
