.class public Lgov/nist/javax/sip/parser/ReasonParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReasonParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
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
    .line 66
    new-instance v1, Lgov/nist/javax/sip/header/ReasonList;

    #@4
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ReasonList;-><init>()V

    #@7
    .line 67
    .local v1, "reasonList":Lgov/nist/javax/sip/header/ReasonList;
    sget-boolean v4, Lgov/nist/javax/sip/parser/ReasonParser;->debug:Z

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 68
    const-string/jumbo v4, "ReasonParser.parse"

    #@e
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ReasonParser;->dbg_enter(Ljava/lang/String;)V

    #@11
    .line 71
    :cond_0
    const/16 v4, 0x83b

    #@13
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ReasonParser;->headerName(I)V

    #@16
    .line 72
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1b
    .line 73
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@21
    move-result v4

    #@22
    const/16 v5, 0xa

    #@24
    if-eq v4, v5, :cond_3

    #@26
    .line 74
    new-instance v0, Lgov/nist/javax/sip/header/Reason;

    #@28
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    #@2b
    .line 75
    .local v0, "reason":Lgov/nist/javax/sip/header/Reason;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    #@2d
    const/16 v5, 0xfff

    #@2f
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@32
    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    #@34
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@37
    move-result-object v2

    #@38
    .line 77
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 79
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    #@3f
    .line 80
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@42
    .line 81
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ReasonList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@45
    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    #@47
    const/4 v5, 0x0

    #@48
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@4b
    move-result v4

    #@4c
    if-ne v4, v6, :cond_2

    #@4e
    .line 83
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    #@50
    const/16 v5, 0x2c

    #@52
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@55
    .line 84
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    #@57
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 89
    .end local v0    # "reason":Lgov/nist/javax/sip/header/Reason;
    .end local v2    # "token":Lgov/nist/core/Token;
    .end local v3    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@5c
    .line 90
    sget-boolean v5, Lgov/nist/javax/sip/parser/ReasonParser;->debug:Z

    #@5e
    if-eqz v5, :cond_1

    #@60
    .line 91
    const-string/jumbo v5, "ReasonParser.parse"

    #@63
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ReasonParser;->dbg_leave(Ljava/lang/String;)V

    #@66
    .line 89
    :cond_1
    throw v4

    #@67
    .line 86
    .restart local v0    # "reason":Lgov/nist/javax/sip/header/Reason;
    .restart local v2    # "token":Lgov/nist/core/Token;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ReasonParser;->lexer:Lgov/nist/core/LexerCore;

    #@69
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    goto :goto_0

    #@6d
    .line 90
    .end local v0    # "reason":Lgov/nist/javax/sip/header/Reason;
    .end local v2    # "token":Lgov/nist/core/Token;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/ReasonParser;->debug:Z

    #@6f
    if-eqz v4, :cond_4

    #@71
    .line 91
    const-string/jumbo v4, "ReasonParser.parse"

    #@74
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ReasonParser;->dbg_leave(Ljava/lang/String;)V

    #@77
    .line 94
    :cond_4
    return-object v1
.end method
