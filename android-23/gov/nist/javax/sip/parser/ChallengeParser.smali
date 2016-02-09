.class public abstract Lgov/nist/javax/sip/parser/ChallengeParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ChallengeParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "challenge"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 49
    return-void
.end method


# virtual methods
.method public parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    .locals 6
    .param p1, "header"    # Lgov/nist/javax/sip/header/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    .line 88
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    #@4
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@7
    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    #@9
    const/16 v4, 0xfff

    #@b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@e
    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    #@10
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@13
    move-result-object v2

    #@14
    .line 91
    .local v2, "type":Lgov/nist/core/Token;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@19
    .line 92
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setScheme(Ljava/lang/String;)V

    #@20
    .line 96
    :goto_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    #@22
    const/4 v4, 0x0

    #@23
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@26
    move-result v3

    #@27
    if-eq v3, v5, :cond_0

    #@29
    .line 97
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;->parseParameter(Lgov/nist/javax/sip/header/AuthenticationHeader;)V

    #@2c
    .line 98
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@31
    .line 99
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    #@33
    const/4 v4, 0x0

    #@34
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@37
    move-result v1

    #@38
    .line 100
    .local v1, "la":C
    if-eq v1, v5, :cond_0

    #@3a
    if-nez v1, :cond_1

    #@3c
    .line 85
    .end local v1    # "la":C
    :cond_0
    return-void

    #@3d
    .line 102
    .restart local v1    # "la":C
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    #@3f
    const/16 v4, 0x2c

    #@41
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@44
    .line 103
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    #@46
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    goto :goto_0

    #@4a
    .line 105
    .end local v1    # "la":C
    :catch_0
    move-exception v0

    #@4b
    .line 106
    .local v0, "ex":Ljava/text/ParseException;
    throw v0
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    .locals 3
    .param p1, "header"    # Lgov/nist/javax/sip/header/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    sget-boolean v1, Lgov/nist/javax/sip/parser/ChallengeParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 69
    const-string/jumbo v1, "parseParameter"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 71
    :cond_0
    const/16 v1, 0x3d

    #@c
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->nameValue(C)Lgov/nist/core/NameValue;

    #@f
    move-result-object v0

    #@10
    .line 72
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 74
    sget-boolean v1, Lgov/nist/javax/sip/parser/ChallengeParser;->debug:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 75
    const-string/jumbo v1, "parseParameter"

    #@1a
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->dbg_leave(Ljava/lang/String;)V

    #@1d
    .line 66
    :cond_1
    return-void

    #@1e
    .line 73
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :catchall_0
    move-exception v1

    #@1f
    .line 74
    sget-boolean v2, Lgov/nist/javax/sip/parser/ChallengeParser;->debug:Z

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 75
    const-string/jumbo v2, "parseParameter"

    #@26
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ChallengeParser;->dbg_leave(Ljava/lang/String;)V

    #@29
    .line 73
    :cond_2
    throw v1
.end method
