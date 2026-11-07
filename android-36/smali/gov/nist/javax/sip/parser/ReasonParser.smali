.class public Lgov/nist/javax/sip/parser/ReasonParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReasonParser.java"


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
    .param p1, "reason"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
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
    new-instance v0, Lgov/nist/javax/sip/header/ReasonList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReasonList;-><init>()V

    .line 67
    .local v0, "reasonList":Lgov/nist/javax/sip/header/ReasonList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ReasonParser;->debug:Z

    const-string v2, "ReasonParser.parse"

    if-eqz v1, :cond_e

    .line 68
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ReasonParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_e
    const/16 v1, 0x83b

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ReasonParser;->headerName(I)V

    .line 72
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 73
    :goto_18
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v4, 0xa

    if-eq v1, v4, :cond_5d

    .line 74
    new-instance v1, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    .line 75
    .local v1, "reason":Lgov/nist/javax/sip/header/Reason;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 77
    .local v4, "token":Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lgov/nist/javax/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    .line 80
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 81
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ReasonList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 82
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v6, 0x2c

    if-ne v3, v6, :cond_57

    .line 83
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_5c

    .line 86
    :cond_57
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_5c
    .catchall {:try_start_10 .. :try_end_5c} :catchall_65

    .line 88
    .end local v1    # "reason":Lgov/nist/javax/sip/header/Reason;
    .end local v4    # "token":Lgov/nist/core/Token;
    .end local v5    # "value":Ljava/lang/String;
    :goto_5c
    goto :goto_18

    .line 90
    :cond_5d
    sget-boolean v1, Lgov/nist/javax/sip/parser/ReasonParser;->debug:Z

    if-eqz v1, :cond_64

    .line 91
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ReasonParser;->dbg_leave(Ljava/lang/String;)V

    .line 94
    :cond_64
    return-object v0

    .line 90
    :catchall_65
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/ReasonParser;->debug:Z

    if-eqz v3, :cond_6d

    .line 91
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ReasonParser;->dbg_leave(Ljava/lang/String;)V

    .line 92
    :cond_6d
    throw v1
.end method
