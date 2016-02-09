.class public Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PPreferredServiceParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pps"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 52
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
    .line 94
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 95
    const-string/jumbo v5, "PPreferredServiceParser.parse"

    #@7
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 99
    :cond_0
    :try_start_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v6, 0x860

    #@e
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 100
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@16
    .line 101
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/16 v6, 0x3a

    #@1a
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1d
    .line 102
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@22
    .line 104
    new-instance v2, Lgov/nist/javax/sip/header/ims/PPreferredService;

    #@24
    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PPreferredService;-><init>()V

    #@27
    .line 105
    .local v2, "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 106
    .local v4, "urn":Ljava/lang/String;
    const-string/jumbo v5, "urn:urn-7:"

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_1

    #@36
    .line 108
    const-string/jumbo v5, "3gpp-service"

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_5

    #@3f
    .line 110
    const-string/jumbo v5, "3gpp-service."

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    const/4 v6, 0x1

    #@47
    aget-object v3, v5, v6

    #@49
    .line 112
    .local v3, "serviceID":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    const-string/jumbo v6, ""

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_3

    #@56
    .line 114
    :try_start_1
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    #@58
    const-string/jumbo v6, "URN should atleast have one sub-service"

    #@5b
    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v5
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    .line 115
    :catch_0
    move-exception v1

    #@60
    .line 117
    .local v1, "e":Ljavax/sip/InvalidArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    #@63
    .line 145
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    .end local v3    # "serviceID":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-super {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    .line 149
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    #@68
    if-eqz v5, :cond_2

    #@6a
    .line 150
    const-string/jumbo v5, "PPreferredServiceParser.parse"

    #@6d
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    #@70
    .line 146
    :cond_2
    return-object v2

    #@71
    .line 120
    .restart local v3    # "serviceID":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/ims/PPreferredService;->setSubserviceIdentifiers(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@74
    goto :goto_0

    #@75
    .line 148
    .end local v2    # "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    .end local v3    # "serviceID":Ljava/lang/String;
    .end local v4    # "urn":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@76
    .line 149
    sget-boolean v6, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    #@78
    if-eqz v6, :cond_4

    #@7a
    .line 150
    const-string/jumbo v6, "PPreferredServiceParser.parse"

    #@7d
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    #@80
    .line 148
    :cond_4
    throw v5

    #@81
    .line 122
    .restart local v2    # "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    .restart local v4    # "urn":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string/jumbo v5, "3gpp-application"

    #@84
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@87
    move-result v5

    #@88
    if-eqz v5, :cond_7

    #@8a
    .line 124
    const-string/jumbo v5, "3gpp-application"

    #@8d
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    const/4 v6, 0x1

    #@92
    aget-object v0, v5, v6

    #@94
    .line 125
    .local v0, "appID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@97
    move-result-object v5

    #@98
    const-string/jumbo v6, ""

    #@9b
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9e
    move-result v5

    #@9f
    if-eqz v5, :cond_6

    #@a1
    .line 127
    :try_start_5
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    #@a3
    const-string/jumbo v6, "URN should atleast have one sub-application"

    #@a6
    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v5
    :try_end_5
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@aa
    .line 128
    :catch_1
    move-exception v1

    #@ab
    .line 129
    .restart local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :try_start_6
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    #@ae
    goto :goto_0

    #@af
    .line 132
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_6
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ims/PPreferredService;->setApplicationIdentifiers(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@b2
    goto :goto_0

    #@b3
    .line 137
    .end local v0    # "appID":Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    #@b5
    const-string/jumbo v6, "URN is not well formed"

    #@b8
    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v5
    :try_end_7
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@bc
    .line 139
    :catch_2
    move-exception v1

    #@bd
    .line 140
    .restart local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :try_start_8
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@c0
    goto :goto_0
.end method
