.class public Lgov/nist/javax/sip/parser/AcceptEncodingParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AcceptEncodingParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 78
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 69
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x2c

    #@2
    const/16 v9, 0xa

    #@4
    const/16 v8, 0x3b

    #@6
    .line 87
    new-instance v1, Lgov/nist/javax/sip/header/AcceptEncodingList;

    #@8
    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptEncodingList;-><init>()V

    #@b
    .line 88
    .local v1, "acceptEncodingList":Lgov/nist/javax/sip/header/AcceptEncodingList;
    sget-boolean v6, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    #@d
    if-eqz v6, :cond_0

    #@f
    .line 89
    const-string/jumbo v6, "AcceptEncodingParser.parse"

    #@12
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_enter(Ljava/lang/String;)V

    #@15
    .line 92
    :cond_0
    const/16 v6, 0x813

    #@17
    :try_start_0
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->headerName(I)V

    #@1a
    .line 94
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@1c
    const/4 v7, 0x0

    #@1d
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@20
    move-result v6

    #@21
    if-ne v6, v9, :cond_4

    #@23
    .line 95
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    #@25
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    #@28
    .line 96
    .local v0, "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 137
    .end local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_1
    sget-boolean v6, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    #@2d
    if-eqz v6, :cond_2

    #@2f
    .line 138
    const-string/jumbo v6, "AcceptEncodingParser.parse"

    #@32
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    #@35
    .line 135
    :cond_2
    return-object v1

    #@36
    .line 127
    .restart local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_3
    :try_start_1
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@39
    .line 128
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@3b
    const/4 v7, 0x0

    #@3c
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@3f
    move-result v6

    #@40
    if-ne v6, v10, :cond_4

    #@42
    .line 129
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@44
    const/16 v7, 0x2c

    #@46
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@49
    .line 130
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4e
    .line 98
    .end local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_4
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@50
    const/4 v7, 0x0

    #@51
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@54
    move-result v6

    #@55
    if-eq v6, v9, :cond_1

    #@57
    .line 99
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    #@59
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    #@5c
    .line 100
    .restart local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@5e
    const/4 v7, 0x0

    #@5f
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@62
    move-result v6

    #@63
    if-eq v6, v8, :cond_5

    #@65
    .line 102
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@67
    const/16 v7, 0xfff

    #@69
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@6c
    .line 103
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@6e
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@71
    move-result-object v5

    #@72
    .line 104
    .local v5, "value":Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    #@79
    .line 107
    .end local v5    # "value":Lgov/nist/core/Token;
    :cond_5
    :goto_0
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@7b
    const/4 v7, 0x0

    #@7c
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@7f
    move-result v6

    #@80
    if-ne v6, v8, :cond_3

    #@82
    .line 108
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@84
    const/16 v7, 0x3b

    #@86
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@89
    .line 109
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@8b
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@8e
    .line 110
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@90
    const/16 v7, 0x71

    #@92
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@95
    .line 111
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@97
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@9a
    .line 112
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@9c
    const/16 v7, 0x3d

    #@9e
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@a1
    .line 113
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@a3
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@a6
    .line 114
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@a8
    const/16 v7, 0xfff

    #@aa
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@ad
    .line 115
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@af
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b2
    move-result-object v5

    #@b3
    .line 117
    .restart local v5    # "value":Lgov/nist/core/Token;
    :try_start_2
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@b6
    move-result-object v6

    #@b7
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@ba
    move-result v4

    #@bb
    .line 118
    .local v4, "qv":F
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/AcceptEncoding;->setQValue(F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@be
    .line 124
    :try_start_3
    iget-object v6, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@c0
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c3
    goto :goto_0

    #@c4
    .line 136
    .end local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    .end local v4    # "qv":F
    .end local v5    # "value":Lgov/nist/core/Token;
    :catchall_0
    move-exception v6

    #@c5
    .line 137
    sget-boolean v7, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    #@c7
    if-eqz v7, :cond_6

    #@c9
    .line 138
    const-string/jumbo v7, "AcceptEncodingParser.parse"

    #@cc
    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    #@cf
    .line 136
    :cond_6
    throw v6

    #@d0
    .line 121
    .restart local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    .restart local v5    # "value":Lgov/nist/core/Token;
    :catch_0
    move-exception v3

    #@d1
    .line 122
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_4
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@d4
    move-result-object v6

    #@d5
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@d8
    move-result-object v6

    #@d9
    throw v6

    #@da
    .line 119
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v2

    #@db
    .line 120
    .local v2, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@de
    move-result-object v6

    #@df
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@e2
    move-result-object v6

    #@e3
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
