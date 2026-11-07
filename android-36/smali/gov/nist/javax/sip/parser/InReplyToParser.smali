.class public Lgov/nist/javax/sip/parser/InReplyToParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "InReplyToParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "inReplyTo"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
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

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/InReplyToParser;->debug:Z

    const-string v1, "InReplyToParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/InReplyToParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/InReplyToList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyToList;-><init>()V

    .line 72
    .local v0, "list":Lgov/nist/javax/sip/header/InReplyToList;
    const/16 v2, 0x80b

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/InReplyToParser;->headerName(I)V

    .line 74
    :goto_13
    iget-object v2, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_ed

    .line 75
    new-instance v2, Lgov/nist/javax/sip/header/InReplyTo;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    .line 76
    .local v2, "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    const-string v4, "In-Reply-To"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setHeaderName(Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 80
    .local v4, "token":Lgov/nist/core/Token;
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_f6

    const-string v7, "@"

    const/16 v8, 0x40

    if-ne v6, v8, :cond_72

    .line 81
    :try_start_41
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    .line 84
    .local v6, "secToken":Lgov/nist/core/Token;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 84
    invoke-virtual {v2, v9}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 86
    .end local v6    # "secToken":Lgov/nist/core/Token;
    goto :goto_79

    .line 87
    :cond_72
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 90
    :goto_79
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 92
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/InReplyToList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 94
    :goto_81
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    const/16 v9, 0x2c

    if-ne v6, v9, :cond_eb

    .line 95
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 96
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    new-instance v6, Lgov/nist/javax/sip/header/InReplyTo;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    move-object v2, v6

    .line 100
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 101
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    move-object v4, v6

    .line 102
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    if-ne v6, v8, :cond_e0

    .line 103
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v8}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 104
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v6, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    .line 106
    .restart local v6    # "secToken":Lgov/nist/core/Token;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 109
    invoke-virtual {v6}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v2, v9}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 110
    .end local v6    # "secToken":Lgov/nist/core/Token;
    goto :goto_e7

    .line 111
    :cond_e0
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 114
    :goto_e7
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/InReplyToList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_ea
    .catchall {:try_start_41 .. :try_end_ea} :catchall_f6

    goto :goto_81

    .line 116
    .end local v2    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    .end local v4    # "token":Lgov/nist/core/Token;
    :cond_eb
    goto/16 :goto_13

    .line 118
    :cond_ed
    nop

    .line 120
    sget-boolean v2, Lgov/nist/javax/sip/parser/InReplyToParser;->debug:Z

    if-eqz v2, :cond_f5

    .line 121
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/InReplyToParser;->dbg_leave(Ljava/lang/String;)V

    .line 118
    :cond_f5
    return-object v0

    .line 120
    :catchall_f6
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/InReplyToParser;->debug:Z

    if-eqz v3, :cond_fe

    .line 121
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/InReplyToParser;->dbg_leave(Ljava/lang/String;)V

    .line 122
    :cond_fe
    throw v2
.end method
