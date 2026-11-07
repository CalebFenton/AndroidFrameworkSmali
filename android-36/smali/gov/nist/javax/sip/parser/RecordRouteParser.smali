.class public Lgov/nist/javax/sip/parser/RecordRouteParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "RecordRouteParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 55
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "recordRoute"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 51
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

    .line 63
    new-instance v0, Lgov/nist/javax/sip/header/RecordRouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RecordRouteList;-><init>()V

    .line 65
    .local v0, "recordRouteList":Lgov/nist/javax/sip/header/RecordRouteList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/RecordRouteParser;->debug:Z

    const-string v2, "RecordRouteParser.parse"

    if-eqz v1, :cond_e

    .line 66
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RecordRouteParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_e
    :try_start_e
    iget-object v1, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x82c

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 70
    iget-object v1, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 71
    iget-object v1, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 72
    iget-object v1, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    :goto_26
    new-instance v1, Lgov/nist/javax/sip/header/RecordRoute;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RecordRoute;-><init>()V

    .line 75
    .local v1, "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 76
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RecordRouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 79
    .local v3, "la":C
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_4c

    .line 80
    iget-object v5, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_61

    .line 86
    .end local v1    # "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    .end local v3    # "la":C
    goto :goto_26

    .line 82
    .restart local v1    # "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    .restart local v3    # "la":C
    :cond_4c
    const/16 v4, 0xa

    if-ne v3, v4, :cond_5a

    .line 83
    nop

    .line 87
    .end local v1    # "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    .end local v3    # "la":C
    nop

    .line 89
    sget-boolean v1, Lgov/nist/javax/sip/parser/RecordRouteParser;->debug:Z

    if-eqz v1, :cond_59

    .line 90
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RecordRouteParser;->dbg_leave(Ljava/lang/String;)V

    .line 87
    :cond_59
    return-object v0

    .line 85
    .restart local v1    # "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    .restart local v3    # "la":C
    :cond_5a
    :try_start_5a
    const-string v4, "unexpected char"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RecordRouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "recordRouteList":Lgov/nist/javax/sip/header/RecordRouteList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/RecordRouteParser;
    throw v4
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_61

    .line 89
    .end local v1    # "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    .end local v3    # "la":C
    .restart local v0    # "recordRouteList":Lgov/nist/javax/sip/header/RecordRouteList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/RecordRouteParser;
    :catchall_61
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/RecordRouteParser;->debug:Z

    if-eqz v3, :cond_69

    .line 90
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RecordRouteParser;->dbg_leave(Ljava/lang/String;)V

    .line 91
    :cond_69
    throw v1
.end method
