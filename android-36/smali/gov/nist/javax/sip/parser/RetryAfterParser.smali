.class public Lgov/nist/javax/sip/parser/RetryAfterParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RetryAfterParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 60
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "retryAfter"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 52
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

    .line 69
    sget-boolean v0, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    const-string v1, "RetryAfterParser.parse"

    if-eqz v0, :cond_9

    .line 70
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 74
    .local v0, "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    const/16 v2, 0x819

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RetryAfterParser;->headerName(I)V

    .line 77
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_df

    .line 79
    .local v2, "value":Ljava/lang/String;
    :try_start_19
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 80
    .local v3, "ds":I
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_20} :catch_d5
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_19 .. :try_end_20} :catch_cb
    .catchall {:try_start_19 .. :try_end_20} :catchall_df

    .line 85
    .end local v3    # "ds":I
    nop

    .line 87
    :try_start_21
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 88
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v5, 0x28

    if-ne v3, v5, :cond_3a

    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "comment":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/RetryAfter;->setComment(Ljava/lang/String;)V

    .line 92
    .end local v3    # "comment":Ljava/lang/String;
    :cond_3a
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    :goto_3f
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v5, 0x3b

    if-ne v3, v5, :cond_c3

    .line 95
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 96
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 98
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 99
    .local v3, "token":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    .line 100
    .end local v2    # "value":Ljava/lang/String;
    .local v6, "value":Ljava/lang/String;
    const-string v2, "duration"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v7, 0x3d

    if-eqz v2, :cond_9a

    .line 101
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 102
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 103
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2
    :try_end_7e
    .catchall {:try_start_21 .. :try_end_7e} :catchall_df

    .line 105
    .end local v6    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :try_start_7e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 106
    .local v5, "duration":I
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/RetryAfter;->setDuration(I)V
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_85} :catch_90
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7e .. :try_end_85} :catch_86
    .catchall {:try_start_7e .. :try_end_85} :catchall_df

    .line 111
    .end local v5    # "duration":I
    goto :goto_bc

    .line 109
    :catch_86
    move-exception v4

    .line 110
    .local v4, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_87
    invoke-virtual {v4}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/RetryAfterParser;
    throw v5

    .line 107
    .end local v4    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/RetryAfterParser;
    :catch_90
    move-exception v4

    .line 108
    .local v4, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/RetryAfterParser;
    throw v5

    .line 113
    .end local v2    # "value":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .restart local v6    # "value":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/RetryAfterParser;
    :cond_9a
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 114
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 115
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 116
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 117
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 118
    .local v2, "secondToken":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "secondValue":Ljava/lang/String;
    invoke-virtual {v0, v6, v5}, Lgov/nist/javax/sip/header/RetryAfter;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    .line 121
    .end local v5    # "secondValue":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    :goto_bc
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RetryAfterParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_c1
    .catchall {:try_start_87 .. :try_end_c1} :catchall_df

    .line 122
    .end local v3    # "token":Lgov/nist/core/Token;
    goto/16 :goto_3f

    .line 124
    .end local v2    # "value":Ljava/lang/String;
    :cond_c3
    sget-boolean v2, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    if-eqz v2, :cond_ca

    .line 125
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    .line 128
    :cond_ca
    return-object v0

    .line 83
    .restart local v2    # "value":Ljava/lang/String;
    :catch_cb
    move-exception v3

    .line 84
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_cc
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/RetryAfterParser;
    throw v4

    .line 81
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/RetryAfterParser;
    :catch_d5
    move-exception v3

    .line 82
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RetryAfterParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/RetryAfterParser;
    throw v4
    :try_end_df
    .catchall {:try_start_cc .. :try_end_df} :catchall_df

    .line 124
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "retryAfter":Lgov/nist/javax/sip/header/RetryAfter;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/RetryAfterParser;
    :catchall_df
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/RetryAfterParser;->debug:Z

    if-eqz v3, :cond_e7

    .line 125
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RetryAfterParser;->dbg_leave(Ljava/lang/String;)V

    .line 126
    :cond_e7
    throw v2
.end method
