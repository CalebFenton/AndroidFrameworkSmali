.class public abstract Lgov/nist/javax/sip/parser/ChallengeParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ChallengeParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 59
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "challenge"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public greylist parse(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    .registers 6
    .param p1, "header"    # Lgov/nist/javax/sip/header/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v0

    .line 91
    .local v0, "type":Lgov/nist/core/Token;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 92
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setScheme(Ljava/lang/String;)V

    .line 96
    :goto_1e
    :try_start_1e
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_49

    .line 97
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/ChallengeParser;->parseParameter(Lgov/nist/javax/sip/header/AuthenticationHeader;)V

    .line 98
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 99
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 100
    .local v1, "la":C
    if-eq v1, v3, :cond_49

    if-nez v1, :cond_3c

    .line 101
    goto :goto_49

    .line 102
    :cond_3c
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ChallengeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_48
    .catch Ljava/text/ParseException; {:try_start_1e .. :try_end_48} :catch_4b

    .line 104
    .end local v1    # "la":C
    goto :goto_1e

    .line 107
    :cond_49
    :goto_49
    nop

    .line 108
    return-void

    .line 105
    :catch_4b
    move-exception v1

    .line 106
    .local v1, "ex":Ljava/text/ParseException;
    throw v1
.end method

.method protected greylist parseParameter(Lgov/nist/javax/sip/header/AuthenticationHeader;)V
    .registers 5
    .param p1, "header"    # Lgov/nist/javax/sip/header/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 68
    sget-boolean v0, Lgov/nist/javax/sip/parser/ChallengeParser;->debug:Z

    const-string v1, "parseParameter"

    if-eqz v0, :cond_9

    .line 69
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_9
    const/16 v0, 0x3d

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ChallengeParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 72
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    .line 74
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    sget-boolean v0, Lgov/nist/javax/sip/parser/ChallengeParser;->debug:Z

    if-eqz v0, :cond_19

    .line 75
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->dbg_leave(Ljava/lang/String;)V

    .line 78
    :cond_19
    return-void

    .line 74
    :catchall_1a
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ChallengeParser;->debug:Z

    if-eqz v2, :cond_22

    .line 75
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ChallengeParser;->dbg_leave(Ljava/lang/String;)V

    .line 76
    :cond_22
    throw v0
.end method
