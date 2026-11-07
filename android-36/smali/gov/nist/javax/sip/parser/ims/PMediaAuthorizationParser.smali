.class public Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PMediaAuthorizationParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 65
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 67
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "mediaAuthorization"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 75
    new-instance v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;-><init>()V

    .line 77
    .local v0, "mediaAuthorizationList":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    const-string v2, "MediaAuthorizationParser.parse"

    if-eqz v1, :cond_e

    .line 78
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->dbg_enter(Ljava/lang/String;)V

    .line 83
    :cond_e
    const/16 v1, 0x852

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->headerName(I)V

    .line 85
    new-instance v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    .line 86
    .local v1, "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    const-string v3, "P-Media-Authorization"

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setHeaderName(Ljava/lang/String;)V

    .line 88
    :goto_1d
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v5, 0xa

    if-eq v3, v5, :cond_6a

    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xfff

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 91
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_73

    .line 93
    .local v3, "token":Lgov/nist/core/Token;
    :try_start_35
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_35 .. :try_end_3c} :catch_60
    .catchall {:try_start_35 .. :try_end_3c} :catchall_73

    .line 96
    nop

    .line 97
    :try_start_3d
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 99
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_5a

    .line 102
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 103
    new-instance v4, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    move-object v1, v4

    .line 105
    :cond_5a
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 106
    .end local v3    # "token":Lgov/nist/core/Token;
    goto :goto_1d

    .line 94
    .restart local v3    # "token":Lgov/nist/core/Token;
    :catch_60
    move-exception v4

    .line 95
    .local v4, "e":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v4}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v5

    .end local v0    # "mediaAuthorizationList":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;
    throw v5
    :try_end_6a
    .catchall {:try_start_3d .. :try_end_6a} :catchall_73

    .line 108
    .end local v3    # "token":Lgov/nist/core/Token;
    .end local v4    # "e":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "mediaAuthorizationList":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;
    :cond_6a
    nop

    .line 113
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    if-eqz v3, :cond_72

    .line 114
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    .line 108
    :cond_72
    return-object v0

    .line 113
    .end local v1    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    :catchall_73
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    if-eqz v3, :cond_7b

    .line 114
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    .line 115
    :cond_7b
    throw v1
.end method
