.class public Lgov/nist/javax/sip/parser/InReplyToParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "InReplyToParser.java"


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
    .param p1, "inReplyTo"    # Ljava/lang/String;

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x2c

    #@2
    const/16 v6, 0x40

    #@4
    .line 67
    sget-boolean v4, Lgov/nist/javax/sip/parser/InReplyToParser;->debug:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 68
    const-string/jumbo v4, "InReplyToParser.parse"

    #@b
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/InReplyToParser;->dbg_enter(Ljava/lang/String;)V

    #@e
    .line 69
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/InReplyToList;

    #@10
    invoke-direct {v1}, Lgov/nist/javax/sip/header/InReplyToList;-><init>()V

    #@13
    .line 72
    .local v1, "list":Lgov/nist/javax/sip/header/InReplyToList;
    const/16 v4, 0x80b

    #@15
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/InReplyToParser;->headerName(I)V

    #@18
    .line 74
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v5, 0x0

    #@1b
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1e
    move-result v4

    #@1f
    const/16 v5, 0xa

    #@21
    if-eq v4, v5, :cond_5

    #@23
    .line 75
    new-instance v0, Lgov/nist/javax/sip/header/InReplyTo;

    #@25
    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    #@28
    .line 76
    .local v0, "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    const-string/jumbo v4, "In-Reply-To"

    #@2b
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setHeaderName(Ljava/lang/String;)V

    #@2e
    .line 78
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    const/16 v5, 0xfff

    #@32
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@35
    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@3a
    move-result-object v3

    #@3b
    .line 80
    .local v3, "token":Lgov/nist/core/Token;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@3d
    const/4 v5, 0x0

    #@3e
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@41
    move-result v4

    #@42
    if-ne v4, v6, :cond_3

    #@44
    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@46
    const/16 v5, 0x40

    #@48
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@4b
    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@4d
    const/16 v5, 0xfff

    #@4f
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@52
    .line 83
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@54
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@57
    move-result-object v2

    #@58
    .line 85
    .local v2, "secToken":Lgov/nist/core/Token;
    new-instance v4, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    const-string/jumbo v5, "@"

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    .line 84
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    #@7b
    .line 90
    .end local v2    # "secToken":Lgov/nist/core/Token;
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@7d
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@80
    .line 92
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/InReplyToList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@83
    .line 94
    :goto_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@85
    const/4 v5, 0x0

    #@86
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@89
    move-result v4

    #@8a
    if-ne v4, v7, :cond_1

    #@8c
    .line 95
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@8e
    const/16 v5, 0x2c

    #@90
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@93
    .line 96
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@95
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@98
    .line 98
    new-instance v0, Lgov/nist/javax/sip/header/InReplyTo;

    #@9a
    .end local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    #@9d
    .line 100
    .restart local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@9f
    const/16 v5, 0xfff

    #@a1
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@a4
    .line 101
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@a6
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@a9
    move-result-object v3

    #@aa
    .line 102
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@ac
    const/4 v5, 0x0

    #@ad
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@b0
    move-result v4

    #@b1
    if-ne v4, v6, :cond_4

    #@b3
    .line 103
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@b5
    const/16 v5, 0x40

    #@b7
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@ba
    .line 104
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@bc
    const/16 v5, 0xfff

    #@be
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@c1
    .line 105
    iget-object v4, p0, Lgov/nist/javax/sip/parser/InReplyToParser;->lexer:Lgov/nist/core/LexerCore;

    #@c3
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@c6
    move-result-object v2

    #@c7
    .line 107
    .restart local v2    # "secToken":Lgov/nist/core/Token;
    new-instance v4, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@cf
    move-result-object v5

    #@d0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    .line 108
    const-string/jumbo v5, "@"

    #@d7
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    .line 109
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@de
    move-result-object v5

    #@df
    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v4

    #@e3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v4

    #@e7
    .line 106
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    #@ea
    .line 114
    .end local v2    # "secToken":Lgov/nist/core/Token;
    :goto_2
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/InReplyToList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ed
    goto :goto_1

    #@ee
    .line 119
    .end local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v4

    #@ef
    .line 120
    sget-boolean v5, Lgov/nist/javax/sip/parser/InReplyToParser;->debug:Z

    #@f1
    if-eqz v5, :cond_2

    #@f3
    .line 121
    const-string/jumbo v5, "InReplyToParser.parse"

    #@f6
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/InReplyToParser;->dbg_leave(Ljava/lang/String;)V

    #@f9
    .line 119
    :cond_2
    throw v4

    #@fa
    .line 87
    .restart local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    .restart local v3    # "token":Lgov/nist/core/Token;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@fd
    move-result-object v4

    #@fe
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    #@101
    goto/16 :goto_0

    #@103
    .line 111
    :cond_4
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@106
    move-result-object v4

    #@107
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10a
    goto :goto_2

    #@10b
    .line 120
    .end local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    .end local v3    # "token":Lgov/nist/core/Token;
    :cond_5
    sget-boolean v4, Lgov/nist/javax/sip/parser/InReplyToParser;->debug:Z

    #@10d
    if-eqz v4, :cond_6

    #@10f
    .line 121
    const-string/jumbo v4, "InReplyToParser.parse"

    #@112
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/InReplyToParser;->dbg_leave(Ljava/lang/String;)V

    #@115
    .line 118
    :cond_6
    return-object v1
.end method
