.class public Lgov/nist/javax/sip/parser/RouteParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "RouteParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 53
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "route"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 49
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

    .line 60
    new-instance v0, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 61
    .local v0, "routeList":Lgov/nist/javax/sip/header/RouteList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/RouteParser;->debug:Z

    const-string v2, "parse"

    if-eqz v1, :cond_e

    .line 62
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RouteParser;->dbg_enter(Ljava/lang/String;)V

    .line 65
    :cond_e
    :try_start_e
    iget-object v1, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x816

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 66
    iget-object v1, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 67
    iget-object v1, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 68
    iget-object v1, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 70
    :goto_26
    new-instance v1, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/Route;-><init>()V

    .line 71
    .local v1, "route":Lgov/nist/javax/sip/header/Route;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 72
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 73
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 75
    .local v3, "la":C
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_4c

    .line 76
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 77
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_61

    .line 82
    .end local v1    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v3    # "la":C
    goto :goto_26

    .line 78
    .restart local v1    # "route":Lgov/nist/javax/sip/header/Route;
    .restart local v3    # "la":C
    :cond_4c
    const/16 v4, 0xa

    if-ne v3, v4, :cond_5a

    .line 79
    nop

    .line 83
    .end local v1    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v3    # "la":C
    nop

    .line 85
    sget-boolean v1, Lgov/nist/javax/sip/parser/RouteParser;->debug:Z

    if-eqz v1, :cond_59

    .line 86
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RouteParser;->dbg_leave(Ljava/lang/String;)V

    .line 83
    :cond_59
    return-object v0

    .line 81
    .restart local v1    # "route":Lgov/nist/javax/sip/header/Route;
    .restart local v3    # "la":C
    :cond_5a
    :try_start_5a
    const-string v4, "unexpected char"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "routeList":Lgov/nist/javax/sip/header/RouteList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/RouteParser;
    throw v4
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_61

    .line 85
    .end local v1    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v3    # "la":C
    .restart local v0    # "routeList":Lgov/nist/javax/sip/header/RouteList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/RouteParser;
    :catchall_61
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/RouteParser;->debug:Z

    if-eqz v3, :cond_69

    .line 86
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RouteParser;->dbg_leave(Ljava/lang/String;)V

    .line 87
    :cond_69
    throw v1
.end method
