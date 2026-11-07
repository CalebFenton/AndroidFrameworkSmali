.class public Lgov/nist/javax/sip/parser/RequireParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RequireParser.java"


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
    .param p1, "require"    # Ljava/lang/String;

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

    .line 68
    new-instance v0, Lgov/nist/javax/sip/header/RequireList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RequireList;-><init>()V

    .line 69
    .local v0, "requireList":Lgov/nist/javax/sip/header/RequireList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/RequireParser;->debug:Z

    const-string v2, "RequireParser.parse"

    if-eqz v1, :cond_e

    .line 70
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RequireParser;->dbg_enter(Ljava/lang/String;)V

    .line 73
    :cond_e
    const/16 v1, 0x829

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RequireParser;->headerName(I)V

    .line 75
    :goto_13
    iget-object v1, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_7b

    .line 76
    new-instance v1, Lgov/nist/javax/sip/header/Require;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Require;-><init>()V

    .line 77
    .local v1, "r":Lgov/nist/javax/sip/header/Require;
    const-string v4, "Require"

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/Require;->setHeaderName(Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 82
    .local v4, "token":Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V

    .line 83
    iget-object v6, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequireList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 87
    :goto_44
    iget-object v6, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_7a

    .line 88
    iget-object v6, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v6, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 91
    new-instance v6, Lgov/nist/javax/sip/header/Require;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Require;-><init>()V

    move-object v1, v6

    .line 94
    iget-object v6, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 95
    iget-object v6, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    move-object v4, v6

    .line 96
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V

    .line 97
    iget-object v6, p0, Lgov/nist/javax/sip/parser/RequireParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 99
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequireList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_79
    .catchall {:try_start_10 .. :try_end_79} :catchall_83

    goto :goto_44

    .line 102
    .end local v1    # "r":Lgov/nist/javax/sip/header/Require;
    .end local v4    # "token":Lgov/nist/core/Token;
    :cond_7a
    goto :goto_13

    .line 104
    :cond_7b
    sget-boolean v1, Lgov/nist/javax/sip/parser/RequireParser;->debug:Z

    if-eqz v1, :cond_82

    .line 105
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RequireParser;->dbg_leave(Ljava/lang/String;)V

    .line 108
    :cond_82
    return-object v0

    .line 104
    :catchall_83
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/RequireParser;->debug:Z

    if-eqz v3, :cond_8b

    .line 105
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RequireParser;->dbg_leave(Ljava/lang/String;)V

    .line 106
    :cond_8b
    throw v1
.end method
