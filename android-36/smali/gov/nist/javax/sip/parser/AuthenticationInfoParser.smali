.class public Lgov/nist/javax/sip/parser/AuthenticationInfoParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AuthenticationInfoParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "authenticationInfo"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 66
    sget-boolean v0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->debug:Z

    const-string v1, "AuthenticationInfoParser.parse"

    if-eqz v0, :cond_9

    .line 67
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 70
    :cond_9
    const/16 v0, 0x840

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->headerName(I)V

    .line 72
    new-instance v0, Lgov/nist/javax/sip/header/AuthenticationInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;-><init>()V

    .line 73
    .local v0, "authenticationInfo":Lgov/nist/javax/sip/header/AuthenticationInfo;
    const-string v2, "Authentication-Info"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    invoke-super {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v2

    .line 79
    .local v2, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Lgov/nist/core/NameValue;)V

    .line 80
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 81
    :goto_29
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_4c

    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 83
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    invoke-super {p0}, Lgov/nist/javax/sip/parser/ParametersParser;->nameValue()Lgov/nist/core/NameValue;

    move-result-object v3

    move-object v2, v3

    .line 86
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setParameter(Lgov/nist/core/NameValue;)V

    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_29

    .line 89
    :cond_4c
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_5a

    .line 92
    nop

    .line 94
    sget-boolean v3, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->debug:Z

    if-eqz v3, :cond_59

    .line 95
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 92
    :cond_59
    return-object v0

    .line 94
    .end local v0    # "authenticationInfo":Lgov/nist/javax/sip/header/AuthenticationInfo;
    .end local v2    # "nv":Lgov/nist/core/NameValue;
    :catchall_5a
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->debug:Z

    if-eqz v2, :cond_62

    .line 95
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 96
    :cond_62
    throw v0
.end method
