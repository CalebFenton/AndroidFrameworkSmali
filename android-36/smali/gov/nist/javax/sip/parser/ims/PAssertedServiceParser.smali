.class public Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PAssertedServiceParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 49
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "pas"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 54
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

    .line 57
    const-string v0, "3gpp-application"

    const-string v1, "3gpp-service"

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    const-string v3, "PAssertedServiceParser.parse"

    if-eqz v2, :cond_d

    .line 58
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 61
    :cond_d
    :try_start_d
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x861

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 64
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 66
    new-instance v2, Lgov/nist/javax/sip/header/ims/PAssertedService;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PAssertedService;-><init>()V

    .line 67
    .local v2, "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "urn":Ljava/lang/String;
    const-string v5, "urn:urn-7:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_b3

    const-string v6, ""

    const/4 v7, 0x1

    if-eqz v5, :cond_6b

    .line 72
    :try_start_41
    const-string v0, "3gpp-service."

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    .line 74
    .local v0, "serviceID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ims/PAssertedService;->setSubserviceIdentifiers(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_b3

    goto :goto_6a

    .line 76
    :cond_5d
    :try_start_5d
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    const-string v5, "URN should atleast have one sub-service"

    invoke-direct {v1, v5}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "serviceID":Ljava/lang/String;
    .end local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .end local v4    # "urn":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
    throw v1
    :try_end_65
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_5d .. :try_end_65} :catch_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_b3

    .line 77
    .restart local v0    # "serviceID":Ljava/lang/String;
    .restart local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .restart local v4    # "urn":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
    :catch_65
    move-exception v1

    .line 79
    .local v1, "e":Ljavax/sip/InvalidArgumentException;
    :try_start_66
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 80
    .end local v1    # "e":Ljavax/sip/InvalidArgumentException;
    nop

    .line 83
    .end local v0    # "serviceID":Ljava/lang/String;
    :goto_6a
    goto :goto_a7

    .line 84
    :cond_6b
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 86
    const-string v1, "3gpp-application."

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    .line 87
    .local v1, "appID":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/header/ims/PAssertedService;->setApplicationIdentifiers(Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_66 .. :try_end_8c} :catchall_b3

    goto :goto_9a

    .line 89
    :cond_8d
    :try_start_8d
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v5, "URN should atleast have one sub-application"

    invoke-direct {v0, v5}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "appID":Ljava/lang/String;
    .end local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .end local v4    # "urn":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
    throw v0
    :try_end_95
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_8d .. :try_end_95} :catch_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_b3

    .line 90
    .restart local v1    # "appID":Ljava/lang/String;
    .restart local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .restart local v4    # "urn":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
    :catch_95
    move-exception v0

    .line 91
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    :try_start_96
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_b3

    .line 92
    .end local v0    # "e":Ljavax/sip/InvalidArgumentException;
    nop

    .line 95
    .end local v1    # "appID":Ljava/lang/String;
    :goto_9a
    goto :goto_a7

    .line 99
    :cond_9b
    :try_start_9b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "URN is not well formed"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .end local v4    # "urn":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
    throw v0
    :try_end_a3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_9b .. :try_end_a3} :catch_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_b3

    .line 101
    .restart local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .restart local v4    # "urn":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;
    :catch_a3
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljavax/sip/InvalidArgumentException;
    :try_start_a4
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 107
    .end local v0    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_a7
    :goto_a7
    invoke-super {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_b3

    .line 108
    nop

    .line 111
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    if-eqz v0, :cond_b2

    .line 112
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 108
    :cond_b2
    return-object v2

    .line 111
    .end local v2    # "pps":Lgov/nist/javax/sip/header/ims/PAssertedService;
    .end local v4    # "urn":Ljava/lang/String;
    :catchall_b3
    move-exception v0

    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->debug:Z

    if-eqz v1, :cond_bb

    .line 112
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAssertedServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 113
    :cond_bb
    throw v0
.end method
