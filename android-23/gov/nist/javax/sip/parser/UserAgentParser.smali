.class public Lgov/nist/javax/sip/parser/UserAgentParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "UserAgentParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 50
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
    .line 136
    const/4 v4, 0x6

    #@1
    new-array v3, v4, [Ljava/lang/String;

    #@3
    const-string/jumbo v4, "User-Agent: Softphone/Beta1.5 \n"

    #@6
    const/4 v5, 0x0

    #@7
    aput-object v4, v3, v5

    #@9
    const-string/jumbo v4, "User-Agent:Nist/Beta1 (beta version) \n"

    #@c
    const/4 v5, 0x1

    #@d
    aput-object v4, v3, v5

    #@f
    const-string/jumbo v4, "User-Agent: Nist UA (beta version)\n"

    #@12
    const/4 v5, 0x2

    #@13
    aput-object v4, v3, v5

    #@15
    .line 137
    const-string/jumbo v4, "User-Agent: Nist1.0/Beta2 Ubi/vers.1.0 (very cool) \n"

    #@18
    const/4 v5, 0x3

    #@19
    aput-object v4, v3, v5

    #@1b
    .line 138
    const-string/jumbo v4, "User-Agent: SJphone/1.60.299a/L (SJ Labs)\n"

    #@1e
    const/4 v5, 0x4

    #@1f
    aput-object v4, v3, v5

    #@21
    .line 139
    const-string/jumbo v4, "User-Agent: sipXecs/3.5.11 sipXecs/sipxbridge (Linux)\n"

    #@24
    const/4 v5, 0x5

    #@25
    aput-object v4, v3, v5

    #@27
    .line 141
    .local v3, "userAgent":[Ljava/lang/String;
    const/4 v0, 0x0

    #@28
    .local v0, "i":I
    :goto_0
    array-length v4, v3

    #@29
    if-ge v0, v4, :cond_0

    #@2b
    .line 142
    new-instance v1, Lgov/nist/javax/sip/parser/UserAgentParser;

    #@2d
    aget-object v4, v3, v0

    #@2f
    invoke-direct {v1, v4}, Lgov/nist/javax/sip/parser/UserAgentParser;-><init>(Ljava/lang/String;)V

    #@32
    .line 143
    .local v1, "parser":Lgov/nist/javax/sip/parser/UserAgentParser;
    invoke-virtual {v1}, Lgov/nist/javax/sip/parser/UserAgentParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@35
    move-result-object v2

    #@36
    .line 142
    check-cast v2, Lgov/nist/javax/sip/header/UserAgent;

    #@38
    .line 143
    .local v2, "ua":Lgov/nist/javax/sip/header/UserAgent;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v6, "encoded = "

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/UserAgent;->encode()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@55
    .line 141
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 135
    .end local v1    # "parser":Lgov/nist/javax/sip/parser/UserAgentParser;
    .end local v2    # "ua":Lgov/nist/javax/sip/header/UserAgent;
    :cond_0
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x2f

    #@2
    const/16 v8, 0x28

    #@4
    const/16 v7, 0xa

    #@6
    .line 73
    sget-boolean v5, Lgov/nist/javax/sip/parser/UserAgentParser;->debug:Z

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 74
    const-string/jumbo v5, "UserAgentParser.parse"

    #@d
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->dbg_enter(Ljava/lang/String;)V

    #@10
    .line 75
    :cond_0
    new-instance v4, Lgov/nist/javax/sip/header/UserAgent;

    #@12
    invoke-direct {v4}, Lgov/nist/javax/sip/header/UserAgent;-><init>()V

    #@15
    .line 77
    .local v4, "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    const/16 v5, 0x811

    #@17
    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->headerName(I)V

    #@1a
    .line 78
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@1c
    const/4 v6, 0x0

    #@1d
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@20
    move-result v5

    #@21
    if-ne v5, v7, :cond_2

    #@23
    .line 79
    const-string/jumbo v5, "empty header"

    #@26
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@29
    move-result-object v5

    #@2a
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 126
    :catchall_0
    move-exception v5

    #@2c
    .line 127
    sget-boolean v6, Lgov/nist/javax/sip/parser/UserAgentParser;->debug:Z

    #@2e
    if-eqz v6, :cond_1

    #@30
    .line 128
    const-string/jumbo v6, "UserAgentParser.parse"

    #@33
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/UserAgentParser;->dbg_leave(Ljava/lang/String;)V

    #@36
    .line 126
    :cond_1
    throw v5

    #@37
    .line 86
    :cond_2
    :goto_0
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@39
    const/4 v6, 0x0

    #@3a
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@3d
    move-result v5

    #@3e
    if-eq v5, v7, :cond_7

    #@40
    .line 87
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@42
    const/4 v6, 0x0

    #@43
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_7

    #@49
    .line 89
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    const/4 v6, 0x0

    #@4c
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@4f
    move-result v5

    #@50
    if-ne v5, v8, :cond_3

    #@52
    .line 90
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@54
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    .line 91
    .local v0, "comment":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const/16 v6, 0x28

    #@5f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    const/16 v6, 0x29

    #@69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    #@74
    .line 124
    .end local v0    # "comment":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@76
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@79
    goto :goto_0

    #@7a
    .line 97
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/UserAgentParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Lexer;->SPorHT()V

    #@81
    .line 100
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@83
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    .line 101
    .local v1, "product":Ljava/lang/String;
    if-nez v1, :cond_4

    #@89
    const-string/jumbo v5, "Expected product string"

    #@8c
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@8f
    move-result-object v5

    #@90
    throw v5

    #@91
    .line 103
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    #@93
    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@96
    .line 105
    .local v2, "productSb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@98
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenType()I

    #@9f
    move-result v5

    #@a0
    if-ne v5, v9, :cond_6

    #@a2
    .line 107
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@a4
    const/16 v6, 0x2f

    #@a6
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@a9
    .line 110
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/UserAgentParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5}, Lgov/nist/javax/sip/parser/Lexer;->SPorHT()V

    #@b0
    .line 112
    iget-object v5, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    #@b2
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    #@b5
    move-result-object v3

    #@b6
    .line 114
    .local v3, "productVersion":Ljava/lang/String;
    if-nez v3, :cond_5

    #@b8
    const-string/jumbo v5, "Expected product version"

    #@bb
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@be
    move-result-object v5

    #@bf
    throw v5

    #@c0
    .line 116
    :cond_5
    const-string/jumbo v5, "/"

    #@c3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c6
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c9
    .line 121
    .end local v3    # "productVersion":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@cc
    move-result-object v5

    #@cd
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d0
    goto :goto_1

    #@d1
    .line 127
    .end local v1    # "product":Ljava/lang/String;
    .end local v2    # "productSb":Ljava/lang/StringBuffer;
    :cond_7
    sget-boolean v5, Lgov/nist/javax/sip/parser/UserAgentParser;->debug:Z

    #@d3
    if-eqz v5, :cond_8

    #@d5
    .line 128
    const-string/jumbo v5, "UserAgentParser.parse"

    #@d8
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/UserAgentParser;->dbg_leave(Ljava/lang/String;)V

    #@db
    .line 131
    :cond_8
    return-object v4
.end method
