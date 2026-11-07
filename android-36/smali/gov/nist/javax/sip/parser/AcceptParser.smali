.class public Lgov/nist/javax/sip/parser/AcceptParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AcceptParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "accept"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

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

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/AcceptParser;->debug:Z

    const-string v1, "AcceptParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AcceptParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/AcceptList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptList;-><init>()V

    .line 72
    .local v0, "list":Lgov/nist/javax/sip/header/AcceptList;
    const/16 v2, 0x814

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AcceptParser;->headerName(I)V

    .line 74
    new-instance v2, Lgov/nist/javax/sip/header/Accept;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    .line 75
    .local v2, "accept":Lgov/nist/javax/sip/header/Accept;
    const-string v3, "Accept"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Accept;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 80
    .local v3, "token":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    .line 81
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 84
    .end local v3    # "token":Lgov/nist/core/Token;
    .local v5, "token":Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 88
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AcceptList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 90
    :goto_5a
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v7, 0x2c

    if-ne v3, v7, :cond_aa

    .line 91
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 92
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    new-instance v3, Lgov/nist/javax/sip/header/Accept;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    move-object v2, v3

    .line 96
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 97
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 98
    .end local v5    # "token":Lgov/nist/core/Token;
    .restart local v3    # "token":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 100
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 101
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    .line 102
    .end local v3    # "token":Lgov/nist/core/Token;
    .restart local v5    # "token":Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 105
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AcceptList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_a9
    .catchall {:try_start_10 .. :try_end_a9} :catchall_b3

    goto :goto_5a

    .line 108
    :cond_aa
    nop

    .line 110
    sget-boolean v3, Lgov/nist/javax/sip/parser/AcceptParser;->debug:Z

    if-eqz v3, :cond_b2

    .line 111
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AcceptParser;->dbg_leave(Ljava/lang/String;)V

    .line 108
    :cond_b2
    return-object v0

    .line 110
    .end local v2    # "accept":Lgov/nist/javax/sip/header/Accept;
    .end local v5    # "token":Lgov/nist/core/Token;
    :catchall_b3
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/AcceptParser;->debug:Z

    if-eqz v3, :cond_bb

    .line 111
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AcceptParser;->dbg_leave(Ljava/lang/String;)V

    .line 112
    :cond_bb
    throw v2
.end method
