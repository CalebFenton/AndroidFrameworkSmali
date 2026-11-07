.class public Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ServiceRouteParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 60
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceRoute"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 55
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

    .line 72
    new-instance v0, Lgov/nist/javax/sip/header/ims/ServiceRouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/ServiceRouteList;-><init>()V

    .line 74
    .local v0, "serviceRouteList":Lgov/nist/javax/sip/header/ims/ServiceRouteList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->debug:Z

    const-string v2, "ServiceRouteParser.parse"

    if-eqz v1, :cond_e

    .line 75
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->dbg_enter(Ljava/lang/String;)V

    .line 78
    :cond_e
    :try_start_e
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x848

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 80
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 81
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    :goto_26
    new-instance v1, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/ServiceRoute;-><init>()V

    .line 84
    .local v1, "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 85
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/ServiceRouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 86
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_4c

    .line 88
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 94
    .end local v1    # "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    goto :goto_26

    .line 90
    .restart local v1    # "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    :cond_4c
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_67

    const/16 v4, 0xa

    if-ne v3, v4, :cond_60

    .line 91
    nop

    .line 95
    .end local v1    # "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    nop

    .line 97
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->debug:Z

    if-eqz v1, :cond_5f

    .line 98
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->dbg_leave(Ljava/lang/String;)V

    .line 95
    :cond_5f
    return-object v0

    .line 93
    .restart local v1    # "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    :cond_60
    :try_start_60
    const-string v3, "unexpected char"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local v0    # "serviceRouteList":Lgov/nist/javax/sip/header/ims/ServiceRouteList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;
    throw v3
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_67

    .line 97
    .end local v1    # "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    .restart local v0    # "serviceRouteList":Lgov/nist/javax/sip/header/ims/ServiceRouteList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;
    :catchall_67
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->debug:Z

    if-eqz v3, :cond_6f

    .line 98
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->dbg_leave(Ljava/lang/String;)V

    .line 99
    :cond_6f
    throw v1
.end method
