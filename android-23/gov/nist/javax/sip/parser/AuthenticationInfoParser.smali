.class public Lgov/nist/javax/sip/parser/AuthenticationInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AuthenticationInfoParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationInfo"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x2c

    #@2
    .line 66
    sget-boolean v2, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->debug:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 67
    const-string/jumbo v2, "AuthenticationInfoParser.parse"

    #@9
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 70
    :cond_0
    const/16 v2, 0x840

    #@e
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->headerName(I)V

    #@11
    .line 72
    new-instance v0, Lgov/nist/javax/sip/header/AuthenticationInfo;

    #@13
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;-><init>()V

    #@16
    .line 74
    .local v0, "authenticationInfo":Lgov/nist/javax/sip/header/AuthenticationInfo;
    const-string/jumbo v2, "Authentication-Info"

    #@19
    .line 73
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setHeaderName(Ljava/lang/String;)V

    #@1c
    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@1e
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@21
    .line 78
    invoke-super {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    #@24
    move-result-object v1

    #@25
    .line 79
    .local v1, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Lgov/nist/core/NameValue;)V

    #@28
    .line 80
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@2a
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@2d
    .line 81
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    const/4 v3, 0x0

    #@30
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@33
    move-result v2

    #@34
    if-ne v2, v4, :cond_2

    #@36
    .line 82
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@38
    const/16 v3, 0x2c

    #@3a
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@3d
    .line 83
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@3f
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@42
    .line 85
    invoke-super {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    #@45
    move-result-object v1

    #@46
    .line 86
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Lgov/nist/core/NameValue;)V

    #@49
    .line 87
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 93
    .end local v0    # "authenticationInfo":Lgov/nist/javax/sip/header/AuthenticationInfo;
    .end local v1    # "nv":Lgov/nist/core/NameValue;
    :catchall_0
    move-exception v2

    #@50
    .line 94
    sget-boolean v3, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->debug:Z

    #@52
    if-eqz v3, :cond_1

    #@54
    .line 95
    const-string/jumbo v3, "AuthenticationInfoParser.parse"

    #@57
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@5a
    .line 93
    :cond_1
    throw v2

    #@5b
    .line 89
    .restart local v0    # "authenticationInfo":Lgov/nist/javax/sip/header/AuthenticationInfo;
    .restart local v1    # "nv":Lgov/nist/core/NameValue;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@5d
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@60
    .line 94
    sget-boolean v2, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->debug:Z

    #@62
    if-eqz v2, :cond_3

    #@64
    .line 95
    const-string/jumbo v2, "AuthenticationInfoParser.parse"

    #@67
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@6a
    .line 92
    :cond_3
    return-object v0
.end method
