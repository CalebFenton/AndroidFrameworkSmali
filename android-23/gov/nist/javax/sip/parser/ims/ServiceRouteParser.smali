.class public Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ServiceRouteParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceRoute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 52
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
    .line 72
    new-instance v1, Lgov/nist/javax/sip/header/ims/ServiceRouteList;

    #@4
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/ServiceRouteList;-><init>()V

    #@7
    .line 74
    .local v1, "serviceRouteList":Lgov/nist/javax/sip/header/ims/ServiceRouteList;
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->debug:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 75
    const-string/jumbo v2, "ServiceRouteParser.parse"

    #@e
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->dbg_enter(Ljava/lang/String;)V

    #@11
    .line 78
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    const/16 v3, 0x848

    #@15
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@18
    .line 79
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1d
    .line 80
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    const/16 v3, 0x3a

    #@21
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@24
    .line 81
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@26
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@29
    .line 83
    :goto_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    #@2b
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/ServiceRoute;-><init>()V

    #@2e
    .line 84
    .local v0, "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@31
    .line 85
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/ServiceRouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@34
    .line 86
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@36
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@39
    .line 87
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@3b
    const/4 v3, 0x0

    #@3c
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@3f
    move-result v2

    #@40
    if-ne v2, v4, :cond_2

    #@42
    .line 88
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@44
    const/16 v3, 0x2c

    #@46
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@49
    .line 89
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 96
    .end local v0    # "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    :catchall_0
    move-exception v2

    #@50
    .line 97
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->debug:Z

    #@52
    if-eqz v3, :cond_1

    #@54
    .line 98
    const-string/jumbo v3, "ServiceRouteParser.parse"

    #@57
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->dbg_leave(Ljava/lang/String;)V

    #@5a
    .line 96
    :cond_1
    throw v2

    #@5b
    .line 90
    .restart local v0    # "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@5d
    const/4 v3, 0x0

    #@5e
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@61
    move-result v2

    #@62
    const/16 v3, 0xa

    #@64
    if-ne v2, v3, :cond_4

    #@66
    .line 97
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->debug:Z

    #@68
    if-eqz v2, :cond_3

    #@6a
    .line 98
    const-string/jumbo v2, "ServiceRouteParser.parse"

    #@6d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->dbg_leave(Ljava/lang/String;)V

    #@70
    .line 95
    :cond_3
    return-object v1

    #@71
    .line 93
    :cond_4
    :try_start_2
    const-string/jumbo v2, "unexpected char"

    #@74
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@77
    move-result-object v2

    #@78
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
