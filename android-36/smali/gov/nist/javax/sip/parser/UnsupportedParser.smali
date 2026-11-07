.class public Lgov/nist/javax/sip/parser/UnsupportedParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "UnsupportedParser.java"


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
    .param p1, "unsupported"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
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

    .line 66
    new-instance v0, Lgov/nist/javax/sip/header/UnsupportedList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/UnsupportedList;-><init>()V

    .line 67
    .local v0, "unsupportedList":Lgov/nist/javax/sip/header/UnsupportedList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/UnsupportedParser;->debug:Z

    const-string v2, "UnsupportedParser.parse"

    if-eqz v1, :cond_e

    .line 68
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/UnsupportedParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_e
    const/16 v1, 0x81c

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/UnsupportedParser;->headerName(I)V

    .line 73
    :goto_13
    iget-object v1, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_80

    .line 74
    iget-object v1, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 75
    new-instance v1, Lgov/nist/javax/sip/header/Unsupported;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    .line 76
    .local v1, "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    const-string v4, "Unsupported"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Unsupported;->setHeaderName(Ljava/lang/String;)V

    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 80
    iget-object v4, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 81
    .local v4, "token":Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    .line 82
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/UnsupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 86
    :goto_49
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_7f

    .line 87
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 88
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 90
    new-instance v6, Lgov/nist/javax/sip/header/Unsupported;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    move-object v1, v6

    .line 93
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 94
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    move-object v4, v6

    .line 95
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    .line 96
    iget-object v6, p0, Lgov/nist/javax/sip/parser/UnsupportedParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/UnsupportedList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_7e
    .catchall {:try_start_10 .. :try_end_7e} :catchall_88

    goto :goto_49

    .line 101
    .end local v1    # "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    .end local v4    # "token":Lgov/nist/core/Token;
    :cond_7f
    goto :goto_13

    .line 103
    :cond_80
    sget-boolean v1, Lgov/nist/javax/sip/parser/UnsupportedParser;->debug:Z

    if-eqz v1, :cond_87

    .line 104
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/UnsupportedParser;->dbg_leave(Ljava/lang/String;)V

    .line 107
    :cond_87
    return-object v0

    .line 103
    :catchall_88
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/UnsupportedParser;->debug:Z

    if-eqz v3, :cond_90

    .line 104
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/UnsupportedParser;->dbg_leave(Ljava/lang/String;)V

    .line 105
    :cond_90
    throw v1
.end method
