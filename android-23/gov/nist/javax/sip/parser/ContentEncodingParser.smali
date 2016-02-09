.class public Lgov/nist/javax/sip/parser/ContentEncodingParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ContentEncodingParser.java"


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
    .param p1, "contentEncoding"    # Ljava/lang/String;

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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x2c

    #@2
    .line 69
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentEncodingParser;->debug:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 70
    const-string/jumbo v4, "ContentEncodingParser.parse"

    #@9
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 71
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/ContentEncodingList;

    #@e
    invoke-direct {v2}, Lgov/nist/javax/sip/header/ContentEncodingList;-><init>()V

    #@11
    .line 74
    .local v2, "list":Lgov/nist/javax/sip/header/ContentEncodingList;
    const/16 v4, 0x823

    #@13
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->headerName(I)V

    #@16
    .line 76
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/4 v5, 0x0

    #@19
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1c
    move-result v4

    #@1d
    const/16 v5, 0xa

    #@1f
    if-eq v4, v5, :cond_3

    #@21
    .line 77
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    #@23
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    #@26
    .line 78
    .local v0, "cl":Lgov/nist/javax/sip/header/ContentEncoding;
    const-string/jumbo v4, "Content-Encoding"

    #@29
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setHeaderName(Ljava/lang/String;)V

    #@2c
    .line 80
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@31
    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@33
    const/16 v5, 0xfff

    #@35
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@38
    .line 83
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@3a
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@3d
    move-result-object v3

    #@3e
    .line 84
    .local v3, "token":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    #@45
    .line 86
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@47
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4a
    .line 87
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@4d
    .line 89
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@4f
    const/4 v5, 0x0

    #@50
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@53
    move-result v4

    #@54
    if-ne v4, v6, :cond_1

    #@56
    .line 90
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    #@58
    .end local v0    # "cl":Lgov/nist/javax/sip/header/ContentEncoding;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    #@5b
    .line 91
    .restart local v0    # "cl":Lgov/nist/javax/sip/header/ContentEncoding;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@5d
    const/16 v5, 0x2c

    #@5f
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@62
    .line 92
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@64
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@67
    .line 93
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@69
    const/16 v5, 0xfff

    #@6b
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@6e
    .line 94
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@70
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@73
    .line 95
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@75
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@78
    move-result-object v3

    #@79
    .line 96
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    #@80
    .line 97
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentEncodingParser;->lexer:Lgov/nist/core/LexerCore;

    #@82
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@85
    .line 98
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ContentEncodingList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@88
    goto :goto_0

    #@89
    .line 103
    .end local v0    # "cl":Lgov/nist/javax/sip/header/ContentEncoding;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catch_0
    move-exception v1

    #@8a
    .line 104
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@8d
    move-result-object v4

    #@8e
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@91
    move-result-object v4

    #@92
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    .line 105
    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    #@94
    .line 106
    sget-boolean v5, Lgov/nist/javax/sip/parser/ContentEncodingParser;->debug:Z

    #@96
    if-eqz v5, :cond_2

    #@98
    .line 107
    const-string/jumbo v5, "ContentEncodingParser.parse"

    #@9b
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->dbg_leave(Ljava/lang/String;)V

    #@9e
    .line 105
    :cond_2
    throw v4

    #@9f
    .line 106
    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentEncodingParser;->debug:Z

    #@a1
    if-eqz v4, :cond_4

    #@a3
    .line 107
    const-string/jumbo v4, "ContentEncodingParser.parse"

    #@a6
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentEncodingParser;->dbg_leave(Ljava/lang/String;)V

    #@a9
    .line 102
    :cond_4
    return-object v2
.end method
