.class public Lgov/nist/javax/sip/parser/ims/PrivacyParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PrivacyParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 71
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 72
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "privacyType"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 127
    const-string v0, "Privacy: none\n"

    const-string v1, "Privacy: none;id;user\n"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "rou":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_38

    .line 134
    new-instance v2, Lgov/nist/javax/sip/parser/ims/PrivacyParser;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "rp":Lgov/nist/javax/sip/parser/ims/PrivacyParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/ims/PrivacyList;

    .line 137
    .local v3, "list":Lgov/nist/javax/sip/header/ims/PrivacyList;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ims/PrivacyList;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    .end local v2    # "rp":Lgov/nist/javax/sip/parser/ims/PrivacyParser;
    .end local v3    # "list":Lgov/nist/javax/sip/header/ims/PrivacyList;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 139
    .end local v1    # "i":I
    :cond_38
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

    .line 77
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->debug:Z

    const-string v1, "PrivacyParser.parse"

    if-eqz v0, :cond_9

    .line 78
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->dbg_enter(Ljava/lang/String;)V

    .line 80
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/ims/PrivacyList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PrivacyList;-><init>()V

    .line 84
    .local v0, "privacyList":Lgov/nist/javax/sip/header/ims/PrivacyList;
    const/16 v2, 0x84e

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->headerName(I)V

    .line 86
    :goto_13
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_80

    .line 87
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 89
    new-instance v2, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    .line 90
    .local v2, "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    const-string v4, "Privacy"

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/ims/Privacy;->setHeaderName(Ljava/lang/String;)V

    .line 92
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 93
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v4

    .line 94
    .local v4, "token":Lgov/nist/core/Token;
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    .line 95
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 96
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PrivacyList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 99
    :goto_49
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v6

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_7f

    .line 101
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 102
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 103
    new-instance v6, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    move-object v2, v6

    .line 104
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v6

    move-object v4, v6

    .line 106
    invoke-virtual {v4}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgov/nist/javax/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    .line 107
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 109
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PrivacyList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_7e
    .catchall {:try_start_10 .. :try_end_7e} :catchall_89

    goto :goto_49

    .line 111
    .end local v2    # "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    .end local v4    # "token":Lgov/nist/core/Token;
    :cond_7f
    goto :goto_13

    .line 113
    :cond_80
    nop

    .line 117
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->debug:Z

    if-eqz v2, :cond_88

    .line 118
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->dbg_leave(Ljava/lang/String;)V

    .line 113
    :cond_88
    return-object v0

    .line 117
    :catchall_89
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->debug:Z

    if-eqz v3, :cond_91

    .line 118
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->dbg_leave(Ljava/lang/String;)V

    .line 119
    :cond_91
    throw v2
.end method
