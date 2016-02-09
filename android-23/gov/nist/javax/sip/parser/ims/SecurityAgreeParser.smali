.class public Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SecurityAgreeParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 56
    return-void
.end method


# virtual methods
.method public parse(Lgov/nist/javax/sip/header/ims/SecurityAgree;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .locals 13
    .param p1, "header"    # Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0xfff

    #@2
    const/16 v11, 0x2c

    #@4
    const/16 v10, 0xa

    #@6
    const/16 v9, 0x3b

    #@8
    const/4 v8, 0x0

    #@9
    .line 86
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v6

    #@d
    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityClient;

    #@f
    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    #@12
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 87
    new-instance v4, Lgov/nist/javax/sip/header/ims/SecurityClientList;

    #@1a
    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/SecurityClientList;-><init>()V

    #@1d
    .line 98
    .local v4, "list":Lgov/nist/javax/sip/header/SIPHeaderList;
    :goto_0
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@22
    .line 99
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@24
    invoke-virtual {v6, v12}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@27
    .line 100
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@2c
    move-result-object v5

    #@2d
    .line 101
    .local v5, "type":Lgov/nist/core/Token;
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    #@34
    .line 102
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@36
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@39
    .line 104
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@3b
    invoke-virtual {v6, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@3e
    move-result v2

    #@3f
    .line 105
    .local v2, "la":C
    if-ne v2, v10, :cond_3

    #@41
    .line 107
    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@44
    .line 108
    return-object v4

    #@45
    .line 88
    .end local v2    # "la":C
    .end local v4    # "list":Lgov/nist/javax/sip/header/SIPHeaderList;
    .end local v5    # "type":Lgov/nist/core/Token;
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getClass()Ljava/lang/Class;

    #@48
    move-result-object v6

    #@49
    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityServer;

    #@4b
    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    #@4e
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_1

    #@54
    .line 89
    new-instance v4, Lgov/nist/javax/sip/header/ims/SecurityServerList;

    #@56
    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/SecurityServerList;-><init>()V

    #@59
    .restart local v4    # "list":Lgov/nist/javax/sip/header/SIPHeaderList;
    goto :goto_0

    #@5a
    .line 90
    .end local v4    # "list":Lgov/nist/javax/sip/header/SIPHeaderList;
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getClass()Ljava/lang/Class;

    #@5d
    move-result-object v6

    #@5e
    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    #@60
    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    #@63
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_2

    #@69
    .line 91
    new-instance v4, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;

    #@6b
    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;-><init>()V

    #@6e
    .restart local v4    # "list":Lgov/nist/javax/sip/header/SIPHeaderList;
    goto :goto_0

    #@6f
    .line 94
    .end local v4    # "list":Lgov/nist/javax/sip/header/SIPHeaderList;
    :cond_2
    const/4 v6, 0x0

    #@70
    return-object v6

    #@71
    .line 110
    .restart local v2    # "la":C
    .restart local v4    # "list":Lgov/nist/javax/sip/header/SIPHeaderList;
    .restart local v5    # "type":Lgov/nist/core/Token;
    :cond_3
    if-ne v2, v9, :cond_4

    #@73
    .line 111
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@75
    invoke-virtual {v6, v9}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@78
    .line 113
    :cond_4
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@7a
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@7d
    move-object v1, p1

    #@7e
    .line 117
    .end local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .local v1, "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :goto_1
    :try_start_0
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@80
    const/4 v7, 0x0

    #@81
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@84
    move-result v6

    #@85
    if-eq v6, v10, :cond_5

    #@87
    .line 119
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V

    #@8a
    .line 120
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@8c
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@8f
    .line 121
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@91
    const/4 v7, 0x0

    #@92
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@95
    move-result v3

    #@96
    .line 122
    .local v3, "laInLoop":C
    if-eq v3, v10, :cond_5

    #@98
    if-nez v3, :cond_6

    #@9a
    .line 151
    .end local v3    # "laInLoop":C
    :cond_5
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@9d
    .line 153
    return-object v4

    #@9e
    .line 124
    .restart local v3    # "laInLoop":C
    :cond_6
    if-ne v3, v11, :cond_b

    #@a0
    .line 126
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@a3
    .line 127
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getClass()Ljava/lang/Class;

    #@a6
    move-result-object v6

    #@a7
    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityClient;

    #@a9
    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    #@ac
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@af
    move-result v6

    #@b0
    if-eqz v6, :cond_8

    #@b2
    .line 128
    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    #@b4
    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@b7
    .line 135
    .end local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :goto_2
    :try_start_1
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@b9
    const/16 v7, 0x2c

    #@bb
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@be
    .line 137
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@c0
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@c3
    .line 138
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@c5
    const/16 v7, 0xfff

    #@c7
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@ca
    .line 139
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@cc
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@cf
    move-result-object v5

    #@d0
    .line 140
    invoke-virtual {v5}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@d3
    move-result-object v6

    #@d4
    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setSecurityMechanism(Ljava/lang/String;)V

    #@d7
    .line 143
    :goto_3
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@d9
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@dc
    .line 145
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@de
    const/4 v7, 0x0

    #@df
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@e2
    move-result v6

    #@e3
    if-ne v6, v9, :cond_7

    #@e5
    .line 146
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@e7
    const/16 v7, 0x3b

    #@e9
    invoke-virtual {v6, v7}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@ec
    .line 148
    :cond_7
    iget-object v6, p0, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->lexer:Lgov/nist/core/LexerCore;

    #@ee
    invoke-virtual {v6}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    #@f1
    move-object v1, p1

    #@f2
    .end local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    goto :goto_1

    #@f3
    .line 129
    :cond_8
    :try_start_2
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getClass()Ljava/lang/Class;

    #@f6
    move-result-object v6

    #@f7
    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityServer;

    #@f9
    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    #@fc
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@ff
    move-result v6

    #@100
    if-eqz v6, :cond_9

    #@102
    .line 130
    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    #@104
    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    #@107
    .end local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    goto :goto_2

    #@108
    .line 131
    .end local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :cond_9
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->getClass()Ljava/lang/Class;

    #@10b
    move-result-object v6

    #@10c
    new-instance v7, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    #@10e
    invoke-direct {v7}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    #@111
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@114
    move-result v6

    #@115
    if-eqz v6, :cond_a

    #@117
    .line 132
    new-instance p1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    #@119
    invoke-direct {p1}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    #@11c
    .end local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    goto :goto_2

    #@11d
    .line 155
    .end local v3    # "laInLoop":C
    .end local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :catch_0
    move-exception v0

    #@11e
    .local v0, "ex":Ljava/text/ParseException;
    move-object p1, v1

    #@11f
    .line 156
    .end local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :goto_4
    throw v0

    #@120
    .line 155
    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v3    # "laInLoop":C
    :catch_1
    move-exception v0

    #@121
    .restart local v0    # "ex":Ljava/text/ParseException;
    goto :goto_4

    #@122
    .end local v0    # "ex":Ljava/text/ParseException;
    .end local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :cond_a
    move-object p1, v1

    #@123
    .end local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    goto :goto_2

    #@124
    .end local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    :cond_b
    move-object p1, v1

    #@125
    .end local v1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .restart local p1    # "header":Lgov/nist/javax/sip/header/ims/SecurityAgree;
    goto :goto_3
.end method

.method protected parseParameter(Lgov/nist/javax/sip/header/ims/SecurityAgree;)V
    .locals 3
    .param p1, "header"    # Lgov/nist/javax/sip/header/ims/SecurityAgree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 70
    const-string/jumbo v1, "parseParameter"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 72
    :cond_0
    const/16 v1, 0x3d

    #@c
    :try_start_0
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->nameValue(C)Lgov/nist/core/NameValue;

    #@f
    move-result-object v0

    #@10
    .line 73
    .local v0, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/header/ims/SecurityAgree;->setParameter(Lgov/nist/core/NameValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 75
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 76
    const-string/jumbo v1, "parseParameter"

    #@1a
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    #@1d
    .line 67
    :cond_1
    return-void

    #@1e
    .line 74
    .end local v0    # "nv":Lgov/nist/core/NameValue;
    :catchall_0
    move-exception v1

    #@1f
    .line 75
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->debug:Z

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 76
    const-string/jumbo v2, "parseParameter"

    #@26
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/SecurityAgreeParser;->dbg_leave(Ljava/lang/String;)V

    #@29
    .line 74
    :cond_2
    throw v1
.end method
