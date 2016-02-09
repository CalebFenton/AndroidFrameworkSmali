.class public Lgov/nist/javax/sip/parser/RecordRouteParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "RecordRouteParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "recordRoute"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 49
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x2c

    #@2
    .line 63
    new-instance v2, Lgov/nist/javax/sip/header/RecordRouteList;

    #@4
    invoke-direct {v2}, Lgov/nist/javax/sip/header/RecordRouteList;-><init>()V

    #@7
    .line 65
    .local v2, "recordRouteList":Lgov/nist/javax/sip/header/RecordRouteList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/RecordRouteParser;->debug:Z

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 66
    const-string/jumbo v3, "RecordRouteParser.parse"

    #@e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RecordRouteParser;->dbg_enter(Ljava/lang/String;)V

    #@11
    .line 69
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    const/16 v4, 0x82c

    #@15
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@18
    .line 70
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1d
    .line 71
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    const/16 v4, 0x3a

    #@21
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@24
    .line 72
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@26
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@29
    .line 74
    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/RecordRoute;

    #@2b
    invoke-direct {v1}, Lgov/nist/javax/sip/header/RecordRoute;-><init>()V

    #@2e
    .line 75
    .local v1, "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@31
    .line 76
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/RecordRouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@34
    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@36
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@39
    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@3b
    const/4 v4, 0x0

    #@3c
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@3f
    move-result v0

    #@40
    .line 79
    .local v0, "la":C
    if-ne v0, v5, :cond_2

    #@42
    .line 80
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@44
    const/16 v4, 0x2c

    #@46
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@49
    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RecordRouteParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 88
    .end local v0    # "la":C
    .end local v1    # "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    :catchall_0
    move-exception v3

    #@50
    .line 89
    sget-boolean v4, Lgov/nist/javax/sip/parser/RecordRouteParser;->debug:Z

    #@52
    if-eqz v4, :cond_1

    #@54
    .line 90
    const-string/jumbo v4, "RecordRouteParser.parse"

    #@57
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RecordRouteParser;->dbg_leave(Ljava/lang/String;)V

    #@5a
    .line 88
    :cond_1
    throw v3

    #@5b
    .line 82
    .restart local v0    # "la":C
    .restart local v1    # "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    :cond_2
    const/16 v3, 0xa

    #@5d
    if-ne v0, v3, :cond_4

    #@5f
    .line 89
    sget-boolean v3, Lgov/nist/javax/sip/parser/RecordRouteParser;->debug:Z

    #@61
    if-eqz v3, :cond_3

    #@63
    .line 90
    const-string/jumbo v3, "RecordRouteParser.parse"

    #@66
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RecordRouteParser;->dbg_leave(Ljava/lang/String;)V

    #@69
    .line 87
    :cond_3
    return-object v2

    #@6a
    .line 85
    :cond_4
    :try_start_1
    const-string/jumbo v3, "unexpected char"

    #@6d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RecordRouteParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@70
    move-result-object v3

    #@71
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
