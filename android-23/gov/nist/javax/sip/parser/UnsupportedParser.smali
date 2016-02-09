.class public Lgov/nist/javax/sip/parser/UnsupportedParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "UnsupportedParser.java"


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
    .param p1, "unsupported"    # Ljava/lang/String;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x2c

    #@2
    .line 66
    new-instance v2, Lgov/nist/javax/sip/header/UnsupportedList;

    #@4
    invoke-direct {v2}, Lgov/nist/javax/sip/header/UnsupportedList;-><init>()V

    #@7
    .line 67
    .local v2, "unsupportedList":Lgov/nist/javax/sip/header/UnsupportedList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/UnsupportedParser;->debug:Z

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 68
    const-string/jumbo v3, "UnsupportedParser.parse"

    #@e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/UnsupportedParser;->dbg_enter(Ljava/lang/String;)V

    #@11
    .line 71
    :cond_0
    const/16 v3, 0x81c

    #@13
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/UnsupportedParser;->headerName(I)V

    #@16
    .line 73
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/4 v4, 0x0

    #@19
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1c
    move-result v3

    #@1d
    const/16 v4, 0xa

    #@1f
    if-eq v3, v4, :cond_3

    #@21
    .line 74
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@26
    .line 75
    new-instance v1, Lgov/nist/javax/sip/header/Unsupported;

    #@28
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    #@2b
    .line 76
    .local v1, "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    const-string/jumbo v3, "Unsupported"

    #@2e
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Unsupported;->setHeaderName(Ljava/lang/String;)V

    #@31
    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@33
    const/16 v4, 0xfff

    #@35
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@38
    .line 80
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@3a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@3d
    move-result-object v0

    #@3e
    .line 81
    .local v0, "token":Lgov/nist/core/Token;
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    #@45
    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@47
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4a
    .line 84
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/UnsupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@4d
    .line 86
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@4f
    const/4 v4, 0x0

    #@50
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@53
    move-result v3

    #@54
    if-ne v3, v5, :cond_1

    #@56
    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@58
    const/16 v4, 0x2c

    #@5a
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@5d
    .line 88
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@5f
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@62
    .line 90
    new-instance v1, Lgov/nist/javax/sip/header/Unsupported;

    #@64
    .end local v1    # "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    invoke-direct {v1}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    #@67
    .line 93
    .restart local v1    # "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@69
    const/16 v4, 0xfff

    #@6b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@6e
    .line 94
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@70
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@73
    move-result-object v0

    #@74
    .line 95
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    #@7b
    .line 96
    iget-object v3, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    #@7d
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@80
    .line 98
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/UnsupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    goto :goto_0

    #@84
    .line 102
    .end local v0    # "token":Lgov/nist/core/Token;
    .end local v1    # "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    :catchall_0
    move-exception v3

    #@85
    .line 103
    sget-boolean v4, Lgov/nist/javax/sip/parser/UnsupportedParser;->debug:Z

    #@87
    if-eqz v4, :cond_2

    #@89
    .line 104
    const-string/jumbo v4, "UnsupportedParser.parse"

    #@8c
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/UnsupportedParser;->dbg_leave(Ljava/lang/String;)V

    #@8f
    .line 102
    :cond_2
    throw v3

    #@90
    .line 103
    :cond_3
    sget-boolean v3, Lgov/nist/javax/sip/parser/UnsupportedParser;->debug:Z

    #@92
    if-eqz v3, :cond_4

    #@94
    .line 104
    const-string/jumbo v3, "UnsupportedParser.parse"

    #@97
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/UnsupportedParser;->dbg_leave(Ljava/lang/String;)V

    #@9a
    .line 107
    :cond_4
    return-object v2
.end method
