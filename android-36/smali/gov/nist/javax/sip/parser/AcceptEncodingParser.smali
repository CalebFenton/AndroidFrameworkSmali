.class public Lgov/nist/javax/sip/parser/AcceptEncodingParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AcceptEncodingParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 78
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 79
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 87
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncodingList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;-><init>()V

    .line 88
    .local v0, "acceptEncodingList":Lgov/nist/javax/sip/header/AcceptEncodingList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    const-string v2, "AcceptEncodingParser.parse"

    if-eqz v1, :cond_e

    .line 89
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_enter(Ljava/lang/String;)V

    .line 92
    :cond_e
    const/16 v1, 0x813

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->headerName(I)V

    .line 94
    iget-object v1, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_29

    .line 95
    new-instance v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 96
    .local v1, "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AcceptEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 97
    nop

    .end local v1    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    goto/16 :goto_c8

    .line 98
    :cond_29
    :goto_29
    iget-object v1, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    if-eq v1, v4, :cond_c8

    .line 99
    new-instance v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 100
    .restart local v1    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0xfff

    const/16 v7, 0x3b

    if-eq v5, v7, :cond_54

    .line 102
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 104
    .local v5, "value":Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    .line 107
    .end local v5    # "value":Lgov/nist/core/Token;
    :cond_54
    :goto_54
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    if-ne v5, v7, :cond_af

    .line 108
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 109
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 110
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x71

    invoke-virtual {v5, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 111
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 112
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 113
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 114
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 115
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5
    :try_end_89
    .catchall {:try_start_10 .. :try_end_89} :catchall_d1

    .line 117
    .restart local v5    # "value":Lgov/nist/core/Token;
    :try_start_89
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 118
    .local v8, "qv":F
    invoke-virtual {v1, v8}, Lgov/nist/javax/sip/header/AcceptEncoding;->setQValue(F)V
    :try_end_94
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_94} :catch_a5
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_89 .. :try_end_94} :catch_9b
    .catchall {:try_start_89 .. :try_end_94} :catchall_d1

    .line 123
    .end local v8    # "qv":F
    nop

    .line 124
    :try_start_95
    iget-object v8, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v8}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 125
    .end local v5    # "value":Lgov/nist/core/Token;
    goto :goto_54

    .line 121
    .restart local v5    # "value":Lgov/nist/core/Token;
    :catch_9b
    move-exception v3

    .line 122
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "acceptEncodingList":Lgov/nist/javax/sip/header/AcceptEncodingList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/AcceptEncodingParser;
    throw v4

    .line 119
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "acceptEncodingList":Lgov/nist/javax/sip/header/AcceptEncodingList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/AcceptEncodingParser;
    :catch_a5
    move-exception v3

    .line 120
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "acceptEncodingList":Lgov/nist/javax/sip/header/AcceptEncodingList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/AcceptEncodingParser;
    throw v4

    .line 127
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v5    # "value":Lgov/nist/core/Token;
    .restart local v0    # "acceptEncodingList":Lgov/nist/javax/sip/header/AcceptEncodingList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/AcceptEncodingParser;
    :cond_af
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AcceptEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 128
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_c6

    .line 129
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 130
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_c6
    .catchall {:try_start_95 .. :try_end_c6} :catchall_d1

    .line 133
    .end local v1    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_c6
    goto/16 :goto_29

    .line 135
    :cond_c8
    :goto_c8
    nop

    .line 137
    sget-boolean v1, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    if-eqz v1, :cond_d0

    .line 138
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    .line 135
    :cond_d0
    return-object v0

    .line 137
    :catchall_d1
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->debug:Z

    if-eqz v3, :cond_d9

    .line 138
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AcceptEncodingParser;->dbg_leave(Ljava/lang/String;)V

    .line 139
    :cond_d9
    throw v1
.end method
