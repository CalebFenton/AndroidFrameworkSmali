.class public Lgov/nist/javax/sip/parser/EventParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "EventParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
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
    .line 67
    sget-boolean v4, Lgov/nist/javax/sip/parser/EventParser;->debug:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 68
    const-string/jumbo v4, "EventParser.parse"

    #@7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/EventParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 71
    :cond_0
    const/16 v4, 0x83f

    #@c
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/EventParser;->headerName(I)V

    #@f
    .line 72
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    #@11
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@14
    .line 74
    new-instance v0, Lgov/nist/javax/sip/header/Event;

    #@16
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Event;-><init>()V

    #@19
    .line 75
    .local v0, "event":Lgov/nist/javax/sip/header/Event;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    const/16 v5, 0xfff

    #@1d
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@20
    .line 76
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    #@22
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@25
    move-result-object v2

    #@26
    .line 77
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 79
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Event;->setEventType(Ljava/lang/String;)V

    #@2d
    .line 80
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@30
    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    #@32
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@35
    .line 83
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    const/16 v5, 0xa

    #@39
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    .line 90
    sget-boolean v4, Lgov/nist/javax/sip/parser/EventParser;->debug:Z

    #@3e
    if-eqz v4, :cond_1

    #@40
    .line 91
    const-string/jumbo v4, "EventParser.parse"

    #@43
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/EventParser;->dbg_leave(Ljava/lang/String;)V

    #@46
    .line 85
    :cond_1
    return-object v0

    #@47
    .line 87
    .end local v0    # "event":Lgov/nist/javax/sip/header/Event;
    .end local v2    # "token":Lgov/nist/core/Token;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@48
    .line 88
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/EventParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@4f
    move-result-object v4

    #@50
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 89
    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    #@52
    .line 90
    sget-boolean v5, Lgov/nist/javax/sip/parser/EventParser;->debug:Z

    #@54
    if-eqz v5, :cond_2

    #@56
    .line 91
    const-string/jumbo v5, "EventParser.parse"

    #@59
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/EventParser;->dbg_leave(Ljava/lang/String;)V

    #@5c
    .line 89
    :cond_2
    throw v4
.end method
