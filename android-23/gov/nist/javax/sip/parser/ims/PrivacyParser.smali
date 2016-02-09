.class public Lgov/nist/javax/sip/parser/ims/PrivacyParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PrivacyParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacyType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 64
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    const/4 v4, 0x2

    #@1
    new-array v2, v4, [Ljava/lang/String;

    #@3
    .line 129
    const-string/jumbo v4, "Privacy: none\n"

    #@6
    const/4 v5, 0x0

    #@7
    aput-object v4, v2, v5

    #@9
    .line 130
    const-string/jumbo v4, "Privacy: none;id;user\n"

    #@c
    const/4 v5, 0x1

    #@d
    aput-object v4, v2, v5

    #@f
    .line 133
    .local v2, "rou":[Ljava/lang/String;
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@11
    if-ge v0, v4, :cond_0

    #@13
    .line 135
    new-instance v3, Lgov/nist/javax/sip/parser/ims/PrivacyParser;

    #@15
    aget-object v4, v2, v0

    #@17
    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;-><init>(Ljava/lang/String;)V

    #@1a
    .line 136
    .local v3, "rp":Lgov/nist/javax/sip/parser/ims/PrivacyParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lgov/nist/javax/sip/header/ims/PrivacyList;

    #@20
    .line 137
    .local v1, "list":Lgov/nist/javax/sip/header/ims/PrivacyList;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    new-instance v5, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v6, "encoded = "

    #@2a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ims/PrivacyList;->encode()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    .line 133
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 125
    .end local v1    # "list":Lgov/nist/javax/sip/header/ims/PrivacyList;
    .end local v3    # "rp":Lgov/nist/javax/sip/parser/ims/PrivacyParser;
    :cond_0
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
    const/16 v5, 0x3b

    #@2
    .line 77
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->debug:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 78
    const-string/jumbo v3, "PrivacyParser.parse"

    #@9
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 80
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/ims/PrivacyList;

    #@e
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PrivacyList;-><init>()V

    #@11
    .line 84
    .local v1, "privacyList":Lgov/nist/javax/sip/header/ims/PrivacyList;
    const/16 v3, 0x84e

    #@13
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->headerName(I)V

    #@16
    .line 86
    :cond_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

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
    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@26
    .line 89
    new-instance v0, Lgov/nist/javax/sip/header/ims/Privacy;

    #@28
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    #@2b
    .line 90
    .local v0, "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    const-string/jumbo v3, "Privacy"

    #@2e
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/Privacy;->setHeaderName(Ljava/lang/String;)V

    #@31
    .line 92
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@33
    const/16 v4, 0xfff

    #@35
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@38
    .line 93
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@3a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@3d
    move-result-object v2

    #@3e
    .line 94
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    #@45
    .line 95
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@47
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4a
    .line 96
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PrivacyList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@4d
    .line 99
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@4f
    const/4 v4, 0x0

    #@50
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@53
    move-result v3

    #@54
    if-ne v3, v5, :cond_1

    #@56
    .line 101
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@58
    const/16 v4, 0x3b

    #@5a
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@5d
    .line 102
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@5f
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@62
    .line 103
    new-instance v0, Lgov/nist/javax/sip/header/ims/Privacy;

    #@64
    .end local v0    # "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>()V

    #@67
    .line 104
    .restart local v0    # "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@69
    const/16 v4, 0xfff

    #@6b
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@6e
    .line 105
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@70
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@73
    move-result-object v2

    #@74
    .line 106
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/Privacy;->setPrivacy(Ljava/lang/String;)V

    #@7b
    .line 107
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->lexer:Lgov/nist/core/LexerCore;

    #@7d
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@80
    .line 109
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PrivacyList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    goto :goto_0

    #@84
    .line 116
    .end local v0    # "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    #@85
    .line 117
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->debug:Z

    #@87
    if-eqz v4, :cond_2

    #@89
    .line 118
    const-string/jumbo v4, "PrivacyParser.parse"

    #@8c
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->dbg_leave(Ljava/lang/String;)V

    #@8f
    .line 116
    :cond_2
    throw v3

    #@90
    .line 117
    :cond_3
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->debug:Z

    #@92
    if-eqz v3, :cond_4

    #@94
    .line 118
    const-string/jumbo v3, "PrivacyParser.parse"

    #@97
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PrivacyParser;->dbg_leave(Ljava/lang/String;)V

    #@9a
    .line 113
    :cond_4
    return-object v1
.end method
