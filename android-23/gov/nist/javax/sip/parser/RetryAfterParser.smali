.class public Lgov/nist/javax/sip/parser/RetryAfterParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RetryAfterParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "retryAfter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0x3b

    #@2
    .line 69
    sget-boolean v10, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 70
    const-string/jumbo v10, "RetryAfterParser.parse"

    #@9
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 72
    :cond_0
    new-instance v5, Lgov/nist/javax/sip/header/RetryAfter;

    #@e
    invoke-direct {v5}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    #@11
    .line 74
    .local v5, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    const/16 v10, 0x819

    #@13
    :try_start_0
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/RetryAfterParser;->headerName(I)V

    #@16
    .line 77
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v9

    #@1c
    .line 79
    .local v9, "value":Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    .line 80
    .local v1, "ds":I
    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 87
    :try_start_2
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@25
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@28
    .line 88
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@2a
    const/4 v11, 0x0

    #@2b
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@2e
    move-result v10

    #@2f
    const/16 v11, 0x28

    #@31
    if-ne v10, v11, :cond_1

    #@33
    .line 89
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@35
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 90
    .local v0, "comment":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/header/RetryAfter;->setComment(Ljava/lang/String;)V

    #@3c
    .line 92
    .end local v0    # "comment":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@3e
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@41
    .line 94
    :goto_0
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@43
    const/4 v11, 0x0

    #@44
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@47
    move-result v10

    #@48
    if-ne v10, v12, :cond_4

    #@4a
    .line 95
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@4c
    const/16 v11, 0x3b

    #@4e
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@51
    .line 96
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@53
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@56
    .line 97
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@58
    const/16 v11, 0xfff

    #@5a
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@5d
    .line 98
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@5f
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@62
    move-result-object v8

    #@63
    .line 99
    .local v8, "token":Lgov/nist/core/Token;
    invoke-virtual {v8}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@66
    move-result-object v9

    #@67
    .line 100
    const-string/jumbo v10, "duration"

    #@6a
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6d
    move-result v10

    #@6e
    if-eqz v10, :cond_3

    #@70
    .line 101
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@72
    const/16 v11, 0x3d

    #@74
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@77
    .line 102
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@79
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@7c
    .line 103
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@7e
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@81
    move-result-object v9

    #@82
    .line 105
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@85
    move-result v2

    #@86
    .line 106
    .local v2, "duration":I
    invoke-virtual {v5, v2}, Lgov/nist/javax/sip/header/RetryAfter;->setDuration(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@89
    .line 121
    .end local v2    # "duration":I
    :goto_1
    :try_start_4
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@8b
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8e
    goto :goto_0

    #@8f
    .line 123
    .end local v1    # "ds":I
    .end local v8    # "token":Lgov/nist/core/Token;
    .end local v9    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v10

    #@90
    .line 124
    sget-boolean v11, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    #@92
    if-eqz v11, :cond_2

    #@94
    .line 125
    const-string/jumbo v11, "RetryAfterParser.parse"

    #@97
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    #@9a
    .line 123
    :cond_2
    throw v10

    #@9b
    .line 83
    .restart local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    #@9c
    .line 84
    .local v4, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_5
    invoke-virtual {v4}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@9f
    move-result-object v10

    #@a0
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@a3
    move-result-object v10

    #@a4
    throw v10

    #@a5
    .line 81
    .end local v4    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v3

    #@a6
    .line 82
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@a9
    move-result-object v10

    #@aa
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@ad
    move-result-object v10

    #@ae
    throw v10

    #@af
    .line 109
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v1    # "ds":I
    .restart local v8    # "token":Lgov/nist/core/Token;
    :catch_2
    move-exception v4

    #@b0
    .line 110
    .restart local v4    # "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v4}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@b3
    move-result-object v10

    #@b4
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@b7
    move-result-object v10

    #@b8
    throw v10

    #@b9
    .line 107
    .end local v4    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_3
    move-exception v3

    #@ba
    .line 108
    .restart local v3    # "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@bd
    move-result-object v10

    #@be
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@c1
    move-result-object v10

    #@c2
    throw v10

    #@c3
    .line 113
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@c5
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@c8
    .line 114
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@ca
    const/16 v11, 0x3d

    #@cc
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@cf
    .line 115
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@d1
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@d4
    .line 116
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@d6
    const/16 v11, 0xfff

    #@d8
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@db
    .line 117
    iget-object v10, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    #@dd
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@e0
    move-result-object v6

    #@e1
    .line 118
    .local v6, "secondToken":Lgov/nist/core/Token;
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@e4
    move-result-object v7

    #@e5
    .line 119
    .local v7, "secondValue":Ljava/lang/String;
    invoke-virtual {v5, v9, v7}, Lgov/nist/javax/sip/header/RetryAfter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@e8
    goto :goto_1

    #@e9
    .line 124
    .end local v6    # "secondToken":Lgov/nist/core/Token;
    .end local v7    # "secondValue":Ljava/lang/String;
    .end local v8    # "token":Lgov/nist/core/Token;
    :cond_4
    sget-boolean v10, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    #@eb
    if-eqz v10, :cond_5

    #@ed
    .line 125
    const-string/jumbo v10, "RetryAfterParser.parse"

    #@f0
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    #@f3
    .line 128
    :cond_5
    return-object v5
.end method
