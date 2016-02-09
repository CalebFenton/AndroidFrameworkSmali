.class public Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PMediaAuthorizationParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaAuthorization"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 57
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
    const/16 v6, 0x2c

    #@2
    .line 75
    new-instance v2, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;

    #@4
    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;-><init>()V

    #@7
    .line 77
    .local v2, "mediaAuthorizationList":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 78
    const-string/jumbo v4, "MediaAuthorizationParser.parse"

    #@e
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->dbg_enter(Ljava/lang/String;)V

    #@11
    .line 83
    :cond_0
    const/16 v4, 0x852

    #@13
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->headerName(I)V

    #@16
    .line 85
    new-instance v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    #@18
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    #@1b
    .line 86
    .local v1, "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    const-string/jumbo v4, "P-Media-Authorization"

    #@1e
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setHeaderName(Ljava/lang/String;)V

    #@21
    .line 88
    :goto_0
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    const/4 v5, 0x0

    #@24
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@27
    move-result v4

    #@28
    const/16 v5, 0xa

    #@2a
    if-eq v4, v5, :cond_3

    #@2c
    .line 90
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    const/16 v5, 0xfff

    #@30
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@33
    .line 91
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    #@35
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result-object v3

    #@39
    .line 93
    .local v3, "token":Lgov/nist/core/Token;
    :try_start_1
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 97
    :try_start_2
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@43
    .line 99
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    #@45
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@48
    .line 100
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    #@4a
    const/4 v5, 0x0

    #@4b
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@4e
    move-result v4

    #@4f
    if-ne v4, v6, :cond_1

    #@51
    .line 102
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    #@53
    const/16 v5, 0x2c

    #@55
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@58
    .line 103
    new-instance v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    #@5a
    .end local v1    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    #@5d
    .line 105
    .restart local v1    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    :cond_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->lexer:Lgov/nist/core/LexerCore;

    #@5f
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    goto :goto_0

    #@63
    .line 112
    .end local v1    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v4

    #@64
    .line 113
    sget-boolean v5, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    #@66
    if-eqz v5, :cond_2

    #@68
    .line 114
    const-string/jumbo v5, "MediaAuthorizationParser.parse"

    #@6b
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    #@6e
    .line 112
    :cond_2
    throw v4

    #@6f
    .line 94
    .restart local v1    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    .restart local v3    # "token":Lgov/nist/core/Token;
    :catch_0
    move-exception v0

    #@70
    .line 95
    .local v0, "e":Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@77
    move-result-object v4

    #@78
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@79
    .line 113
    .end local v0    # "e":Ljavax/sip/InvalidArgumentException;
    .end local v3    # "token":Lgov/nist/core/Token;
    :cond_3
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->debug:Z

    #@7b
    if-eqz v4, :cond_4

    #@7d
    .line 114
    const-string/jumbo v4, "MediaAuthorizationParser.parse"

    #@80
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;->dbg_leave(Ljava/lang/String;)V

    #@83
    .line 108
    :cond_4
    return-object v2
.end method
