.class public Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PAssertedServiceParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pas"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 51
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
    .line 57
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 58
    const-string/jumbo v5, "PAssertedServiceParser.parse"

    #@7
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 61
    :cond_0
    :try_start_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v6, 0x861

    #@e
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 62
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@16
    .line 63
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/16 v6, 0x3a

    #@1a
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1d
    .line 64
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@22
    .line 66
    new-instance v2, Lgov/nist/javax/sip/header/ims/PAssertedService;

    #@24
    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PAssertedService;-><init>()V

    #@27
    .line 67
    .local v2, "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 68
    .local v4, "urn":Ljava/lang/String;
    const-string/jumbo v5, "urn:urn-7:"

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_1

    #@36
    .line 70
    const-string/jumbo v5, "3gpp-service"

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_5

    #@3f
    .line 72
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
    .line 74
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
    .line 76
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
    .line 77
    :catch_0
    move-exception v1

    #@60
    .line 79
    .local v1, "e":Ljavax/sip/InvalidArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    #@63
    .line 107
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    .end local v3    # "serviceID":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-super {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    .line 111
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    #@68
    if-eqz v5, :cond_2

    #@6a
    .line 112
    const-string/jumbo v5, "PAssertedServiceParser.parse"

    #@6d
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    #@70
    .line 108
    :cond_2
    return-object v2

    #@71
    .line 82
    .restart local v3    # "serviceID":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v5, "3gpp-service"

    #@74
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@77
    move-result-object v5

    #@78
    const/4 v6, 0x1

    #@79
    aget-object v5, v5, v6

    #@7b
    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/ims/PAssertedService;->setSubserviceIdentifiers(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7e
    goto :goto_0

    #@7f
    .line 110
    .end local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .end local v3    # "serviceID":Ljava/lang/String;
    .end local v4    # "urn":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@80
    .line 111
    sget-boolean v6, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    #@82
    if-eqz v6, :cond_4

    #@84
    .line 112
    const-string/jumbo v6, "PAssertedServiceParser.parse"

    #@87
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    #@8a
    .line 110
    :cond_4
    throw v5

    #@8b
    .line 84
    .restart local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .restart local v4    # "urn":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string/jumbo v5, "3gpp-application"

    #@8e
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@91
    move-result v5

    #@92
    if-eqz v5, :cond_7

    #@94
    .line 86
    const-string/jumbo v5, "3gpp-application."

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    const/4 v6, 0x1

    #@9c
    aget-object v0, v5, v6

    #@9e
    .line 87
    .local v0, "appID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a1
    move-result-object v5

    #@a2
    const-string/jumbo v6, ""

    #@a5
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a8
    move-result v5

    #@a9
    if-eqz v5, :cond_6

    #@ab
    .line 89
    :try_start_5
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    #@ad
    const-string/jumbo v6, "URN should atleast have one sub-application"

    #@b0
    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@b3
    throw v5
    :try_end_5
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@b4
    .line 90
    :catch_1
    move-exception v1

    #@b5
    .line 91
    .restart local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :try_start_6
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    #@b8
    goto :goto_0

    #@b9
    .line 94
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_6
    const-string/jumbo v5, "3gpp-application"

    #@bc
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@bf
    move-result-object v5

    #@c0
    const/4 v6, 0x1

    #@c1
    aget-object v5, v5, v6

    #@c3
    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/ims/PAssertedService;->setApplicationIdentifiers(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c6
    goto :goto_0

    #@c7
    .line 99
    .end local v0    # "appID":Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v5, Ljavax/sip/InvalidArgumentException;

    #@c9
    const-string/jumbo v6, "URN is not well formed"

    #@cc
    invoke-direct {v5, v6}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@cf
    throw v5
    :try_end_7
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@d0
    .line 101
    :catch_2
    move-exception v1

    #@d1
    .line 102
    .restart local v1    # "e":Ljavax/sip/InvalidArgumentException;
    :try_start_8
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d4
    goto :goto_0
.end method
