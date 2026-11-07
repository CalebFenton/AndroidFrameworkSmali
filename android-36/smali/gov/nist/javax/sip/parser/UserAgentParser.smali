.class public Lgov/nist/javax/sip/parser/UserAgentParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "UserAgentParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 61
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 62
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 136
    const-string v4, "User-Agent: SJphone/1.60.299a/L (SJ Labs)\n"

    const-string v5, "User-Agent: sipXecs/3.5.11 sipXecs/sipxbridge (Linux)\n"

    const-string v0, "User-Agent: Softphone/Beta1.5 \n"

    const-string v1, "User-Agent:Nist/Beta1 (beta version) \n"

    const-string v2, "User-Agent: Nist UA (beta version)\n"

    const-string v3, "User-Agent: Nist1.0/Beta2 Ubi/vers.1.0 (very cool) \n"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "userAgent":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_41

    new-instance v2, Lgov/nist/javax/sip/parser/UserAgentParser;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/parser/UserAgentParser;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, "parser":Lgov/nist/javax/sip/parser/UserAgentParser;
    nop

    .line 143
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/UserAgentParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/UserAgent;

    .local v3, "ua":Lgov/nist/javax/sip/header/UserAgent;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/UserAgent;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    .end local v2    # "parser":Lgov/nist/javax/sip/parser/UserAgentParser;
    .end local v3    # "ua":Lgov/nist/javax/sip/header/UserAgent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 144
    .end local v1    # "i":I
    :cond_41
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

    .line 73
    sget-boolean v0, Lgov/nist/javax/sip/parser/UserAgentParser;->debug:Z

    const-string v1, "UserAgentParser.parse"

    if-eqz v0, :cond_9

    .line 74
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/UserAgentParser;->dbg_enter(Ljava/lang/String;)V

    .line 75
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/UserAgent;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/UserAgent;-><init>()V

    .line 77
    .local v0, "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    const/16 v2, 0x811

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/UserAgentParser;->headerName(I)V

    .line 78
    iget-object v2, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_bc

    .line 86
    :goto_1e
    iget-object v2, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_b4

    iget-object v2, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    .line 87
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eqz v2, :cond_b4

    .line 89
    iget-object v2, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v5, 0x28

    if-ne v2, v5, :cond_59

    .line 90
    iget-object v2, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "comment":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    .line 92
    .end local v2    # "comment":Ljava/lang/String;
    goto :goto_a6

    .line 97
    :cond_59
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/UserAgentParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/Lexer;->SPorHT()V

    .line 100
    iget-object v2, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "product":Ljava/lang/String;
    if-eqz v2, :cond_ad

    .line 103
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 105
    .local v5, "productSb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->peekNextToken()Lgov/nist/core/Token;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenType()I

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_9f

    .line 107
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 110
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/UserAgentParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/javax/sip/parser/Lexer;->SPorHT()V

    .line 112
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->byteStringNoSlash()Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "productVersion":Ljava/lang/String;
    if-eqz v6, :cond_98

    .line 116
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9f

    .line 114
    :cond_98
    const-string v3, "Expected product version"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local v0    # "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/UserAgentParser;
    throw v3

    .line 121
    .end local v6    # "productVersion":Ljava/lang/String;
    .restart local v0    # "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/UserAgentParser;
    :cond_9f
    :goto_9f
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/header/UserAgent;->addProductToken(Ljava/lang/String;)V

    .line 124
    .end local v2    # "product":Ljava/lang/String;
    .end local v5    # "productSb":Ljava/lang/StringBuffer;
    :goto_a6
    iget-object v2, p0, Lgov/nist/javax/sip/parser/UserAgentParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto/16 :goto_1e

    .line 101
    .restart local v2    # "product":Ljava/lang/String;
    :cond_ad
    const-string v3, "Expected product string"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local v0    # "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/UserAgentParser;
    throw v3
    :try_end_b4
    .catchall {:try_start_10 .. :try_end_b4} :catchall_c3

    .line 127
    .end local v2    # "product":Ljava/lang/String;
    .restart local v0    # "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/UserAgentParser;
    :cond_b4
    sget-boolean v2, Lgov/nist/javax/sip/parser/UserAgentParser;->debug:Z

    if-eqz v2, :cond_bb

    .line 128
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/UserAgentParser;->dbg_leave(Ljava/lang/String;)V

    .line 131
    :cond_bb
    return-object v0

    .line 79
    :cond_bc
    :try_start_bc
    const-string v2, "empty header"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/UserAgentParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    .end local v0    # "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/UserAgentParser;
    throw v2
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_c3

    .line 127
    .restart local v0    # "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/UserAgentParser;
    :catchall_c3
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/UserAgentParser;->debug:Z

    if-eqz v3, :cond_cb

    .line 128
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/UserAgentParser;->dbg_leave(Ljava/lang/String;)V

    .line 129
    :cond_cb
    throw v2
.end method
