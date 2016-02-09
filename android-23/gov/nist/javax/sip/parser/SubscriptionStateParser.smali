.class public Lgov/nist/javax/sip/parser/SubscriptionStateParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SubscriptionStateParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "subscriptionState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v11, 0x3b

    #@2
    .line 67
    sget-boolean v9, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->debug:Z

    #@4
    if-eqz v9, :cond_0

    #@6
    .line 68
    const-string/jumbo v9, "SubscriptionStateParser.parse"

    #@9
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 70
    :cond_0
    new-instance v6, Lgov/nist/javax/sip/header/SubscriptionState;

    #@e
    invoke-direct {v6}, Lgov/nist/javax/sip/header/SubscriptionState;-><init>()V

    #@11
    .line 72
    .local v6, "subscriptionState":Lgov/nist/javax/sip/header/SubscriptionState;
    const/16 v9, 0x838

    #@13
    :try_start_0
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->headerName(I)V

    #@16
    .line 74
    const-string/jumbo v9, "Subscription-State"

    #@19
    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/header/SubscriptionState;->setHeaderName(Ljava/lang/String;)V

    #@1c
    .line 77
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@1e
    const/16 v10, 0xfff

    #@20
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@23
    .line 78
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@25
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@28
    move-result-object v7

    #@29
    .line 79
    .local v7, "token":Lgov/nist/core/Token;
    invoke-virtual {v7}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/header/SubscriptionState;->setState(Ljava/lang/String;)V

    #@30
    .line 81
    :goto_0
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@32
    const/4 v10, 0x0

    #@33
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@36
    move-result v9

    #@37
    if-ne v9, v11, :cond_5

    #@39
    .line 82
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@3b
    const/16 v10, 0x3b

    #@3d
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@40
    .line 83
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@42
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@45
    .line 84
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@47
    const/16 v10, 0xfff

    #@49
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@4c
    .line 85
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@4e
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@51
    move-result-object v7

    #@52
    .line 86
    invoke-virtual {v7}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@55
    move-result-object v8

    #@56
    .line 87
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v9, "reason"

    #@59
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@5c
    move-result v9

    #@5d
    if-eqz v9, :cond_2

    #@5f
    .line 88
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@61
    const/16 v10, 0x3d

    #@63
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@66
    .line 89
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@68
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@6b
    .line 90
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@6d
    const/16 v10, 0xfff

    #@6f
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@72
    .line 91
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@74
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@77
    move-result-object v7

    #@78
    .line 92
    invoke-virtual {v7}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@7b
    move-result-object v8

    #@7c
    .line 93
    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/header/SubscriptionState;->setReasonCode(Ljava/lang/String;)V

    #@7f
    .line 130
    :goto_1
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@81
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    goto :goto_0

    #@85
    .line 132
    .end local v7    # "token":Lgov/nist/core/Token;
    .end local v8    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v9

    #@86
    .line 133
    sget-boolean v10, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->debug:Z

    #@88
    if-eqz v10, :cond_1

    #@8a
    .line 134
    const-string/jumbo v10, "SubscriptionStateParser.parse"

    #@8d
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->dbg_leave(Ljava/lang/String;)V

    #@90
    .line 132
    :cond_1
    throw v9

    #@91
    .line 94
    .restart local v7    # "token":Lgov/nist/core/Token;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v9, "expires"

    #@94
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@97
    move-result v9

    #@98
    if-eqz v9, :cond_3

    #@9a
    .line 95
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@9c
    const/16 v10, 0x3d

    #@9e
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@a1
    .line 96
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@a3
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@a6
    .line 97
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@a8
    const/16 v10, 0xfff

    #@aa
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@ad
    .line 98
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@af
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@b2
    move-result-object v7

    #@b3
    .line 99
    invoke-virtual {v7}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b6
    move-result-object v8

    #@b7
    .line 101
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ba
    move-result v2

    #@bb
    .line 102
    .local v2, "expires":I
    invoke-virtual {v6, v2}, Lgov/nist/javax/sip/header/SubscriptionState;->setExpires(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@be
    goto :goto_1

    #@bf
    .line 103
    .end local v2    # "expires":I
    :catch_0
    move-exception v0

    #@c0
    .line 104
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@c3
    move-result-object v9

    #@c4
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@c7
    move-result-object v9

    #@c8
    throw v9

    #@c9
    .line 105
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    #@ca
    .line 106
    .local v1, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@cd
    move-result-object v9

    #@ce
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@d1
    move-result-object v9

    #@d2
    throw v9

    #@d3
    .line 108
    .end local v1    # "ex":Ljavax/sip/InvalidArgumentException;
    :cond_3
    const-string/jumbo v9, "retry-after"

    #@d6
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d9
    move-result v9

    #@da
    if-eqz v9, :cond_4

    #@dc
    .line 109
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@de
    const/16 v10, 0x3d

    #@e0
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@e3
    .line 110
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@e5
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@e8
    .line 111
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@ea
    const/16 v10, 0xfff

    #@ec
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@ef
    .line 112
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@f1
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@f4
    move-result-object v7

    #@f5
    .line 113
    invoke-virtual {v7}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@f8
    move-result-object v8

    #@f9
    .line 115
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@fc
    move-result v3

    #@fd
    .line 116
    .local v3, "retryAfter":I
    invoke-virtual {v6, v3}, Lgov/nist/javax/sip/header/SubscriptionState;->setRetryAfter(I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@100
    goto/16 :goto_1

    #@102
    .line 117
    .end local v3    # "retryAfter":I
    :catch_2
    move-exception v0

    #@103
    .line 118
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@106
    move-result-object v9

    #@107
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@10a
    move-result-object v9

    #@10b
    throw v9

    #@10c
    .line 119
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    #@10d
    .line 120
    .restart local v1    # "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@110
    move-result-object v9

    #@111
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@114
    move-result-object v9

    #@115
    throw v9

    #@116
    .line 123
    .end local v1    # "ex":Ljavax/sip/InvalidArgumentException;
    :cond_4
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@118
    const/16 v10, 0x3d

    #@11a
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11d
    .line 124
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@11f
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@122
    .line 125
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@124
    const/16 v10, 0xfff

    #@126
    invoke-virtual {v9, v10}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@129
    .line 126
    iget-object v9, p0, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->lexer:Lgov/nist/core/LexerCore;

    #@12b
    invoke-virtual {v9}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@12e
    move-result-object v4

    #@12f
    .line 127
    .local v4, "secondToken":Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@132
    move-result-object v5

    #@133
    .line 128
    .local v5, "secondValue":Ljava/lang/String;
    invoke-virtual {v6, v8, v5}, Lgov/nist/javax/sip/header/SubscriptionState;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@136
    goto/16 :goto_1

    #@138
    .line 133
    .end local v4    # "secondToken":Lgov/nist/core/Token;
    .end local v5    # "secondValue":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    sget-boolean v9, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->debug:Z

    #@13a
    if-eqz v9, :cond_6

    #@13c
    .line 134
    const-string/jumbo v9, "SubscriptionStateParser.parse"

    #@13f
    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/parser/SubscriptionStateParser;->dbg_leave(Ljava/lang/String;)V

    #@142
    .line 137
    :cond_6
    return-object v6
.end method
