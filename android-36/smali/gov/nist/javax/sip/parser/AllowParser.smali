.class public Lgov/nist/javax/sip/parser/AllowParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AllowParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "allow"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 66
    sget-boolean v0, Lgov/nist/javax/sip/parser/AllowParser;->debug:Z

    const-string v1, "AllowParser.parse"

    if-eqz v0, :cond_9

    .line 67
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AllowParser;->dbg_enter(Ljava/lang/String;)V

    .line 68
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/AllowList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowList;-><init>()V

    .line 71
    .local v0, "list":Lgov/nist/javax/sip/header/AllowList;
    const/16 v2, 0x815

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AllowParser;->headerName(I)V

    .line 73
    new-instance v2, Lgov/nist/javax/sip/header/Allow;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    .line 74
    .local v2, "allow":Lgov/nist/javax/sip/header/Allow;
    const-string v3, "Allow"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Allow;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 79
    .local v3, "token":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AllowList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 82
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    :goto_3e
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_75

    .line 84
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 85
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    new-instance v5, Lgov/nist/javax/sip/header/Allow;

    invoke-direct {v5}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    move-object v2, v5

    .line 88
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    move-object v3, v5

    .line 90
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AllowList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 93
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_3e

    .line 95
    :cond_75
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 96
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_81
    .catchall {:try_start_10 .. :try_end_81} :catchall_8a

    .line 98
    nop

    .line 100
    sget-boolean v4, Lgov/nist/javax/sip/parser/AllowParser;->debug:Z

    if-eqz v4, :cond_89

    .line 101
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AllowParser;->dbg_leave(Ljava/lang/String;)V

    .line 98
    :cond_89
    return-object v0

    .line 100
    .end local v2    # "allow":Lgov/nist/javax/sip/header/Allow;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catchall_8a
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/AllowParser;->debug:Z

    if-eqz v3, :cond_92

    .line 101
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AllowParser;->dbg_leave(Ljava/lang/String;)V

    .line 102
    :cond_92
    throw v2
.end method
