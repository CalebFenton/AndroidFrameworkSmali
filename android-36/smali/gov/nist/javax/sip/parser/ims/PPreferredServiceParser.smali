.class public Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PPreferredServiceParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 50
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "pps"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 55
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

    .line 94
    const-string v0, "3gpp-application"

    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    const-string v2, "PPreferredServiceParser.parse"

    if-eqz v1, :cond_b

    .line 95
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 99
    :cond_b
    :try_start_b
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x860

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 100
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 101
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 102
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 104
    new-instance v1, Lgov/nist/javax/sip/header/ims/PPreferredService;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PPreferredService;-><init>()V

    .line 105
    .local v1, "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "urn":Ljava/lang/String;
    const-string v4, "urn:urn-7:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 108
    const-string v4, "3gpp-service"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_a5

    const-string v5, ""

    const/4 v6, 0x1

    if-eqz v4, :cond_65

    .line 110
    :try_start_41
    const-string v0, "3gpp-service."

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    .line 112
    .local v0, "serviceID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 120
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PPreferredService;->setSubserviceIdentifiers(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_41 .. :try_end_56} :catchall_a5

    goto :goto_64

    .line 114
    :cond_57
    :try_start_57
    new-instance v4, Ljavax/sip/InvalidArgumentException;

    const-string v5, "URN should atleast have one sub-service"

    invoke-direct {v4, v5}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "serviceID":Ljava/lang/String;
    .end local v1    # "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    .end local v3    # "urn":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
    throw v4
    :try_end_5f
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_57 .. :try_end_5f} :catch_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_a5

    .line 115
    .restart local v0    # "serviceID":Ljava/lang/String;
    .restart local v1    # "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    .restart local v3    # "urn":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
    :catch_5f
    move-exception v4

    .line 117
    .local v4, "e":Ljavax/sip/InvalidArgumentException;
    :try_start_60
    invoke-virtual {v4}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 118
    .end local v4    # "e":Ljavax/sip/InvalidArgumentException;
    nop

    .line 121
    .end local v0    # "serviceID":Ljava/lang/String;
    :goto_64
    goto :goto_99

    .line 122
    :cond_65
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    .line 125
    .local v0, "appID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 132
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PPreferredService;->setApplicationIdentifiers(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_a5

    goto :goto_8c

    .line 127
    :cond_7f
    :try_start_7f
    new-instance v4, Ljavax/sip/InvalidArgumentException;

    const-string v5, "URN should atleast have one sub-application"

    invoke-direct {v4, v5}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "appID":Ljava/lang/String;
    .end local v1    # "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    .end local v3    # "urn":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
    throw v4
    :try_end_87
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7f .. :try_end_87} :catch_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_a5

    .line 128
    .restart local v0    # "appID":Ljava/lang/String;
    .restart local v1    # "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    .restart local v3    # "urn":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
    :catch_87
    move-exception v4

    .line 129
    .restart local v4    # "e":Ljavax/sip/InvalidArgumentException;
    :try_start_88
    invoke-virtual {v4}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_a5

    .line 130
    .end local v4    # "e":Ljavax/sip/InvalidArgumentException;
    nop

    .line 133
    .end local v0    # "appID":Ljava/lang/String;
    :goto_8c
    goto :goto_99

    .line 137
    :cond_8d
    :try_start_8d
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v4, "URN is not well formed"

    invoke-direct {v0, v4}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    .end local v3    # "urn":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
    throw v0
    :try_end_95
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_8d .. :try_end_95} :catch_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_a5

    .line 139
    .restart local v1    # "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    .restart local v3    # "urn":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;
    :catch_95
    move-exception v0

    .line 140
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    :try_start_96
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    .line 145
    .end local v0    # "e":Ljavax/sip/InvalidArgumentException;
    :cond_99
    :goto_99
    invoke-super {p0}, Lgov/nist/javax/sip/parser/HeaderParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_a5

    .line 146
    nop

    .line 149
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    if-eqz v0, :cond_a4

    .line 150
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 146
    :cond_a4
    return-object v1

    .line 149
    .end local v1    # "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    .end local v3    # "urn":Ljava/lang/String;
    :catchall_a5
    move-exception v0

    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->debug:Z

    if-eqz v1, :cond_ad

    .line 150
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PPreferredServiceParser;->dbg_enter(Ljava/lang/String;)V

    .line 151
    :cond_ad
    throw v0
.end method
