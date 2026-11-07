.class public Lgov/nist/javax/sip/parser/AllowEventsParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AllowEventsParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "allowEvents"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/AllowEventsParser;->debug:Z

    const-string v1, "AllowEventsParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AllowEventsParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/AllowEventsList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowEventsList;-><init>()V

    .line 72
    .local v0, "list":Lgov/nist/javax/sip/header/AllowEventsList;
    const/16 v2, 0x841

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/AllowEventsParser;->headerName(I)V

    .line 74
    new-instance v2, Lgov/nist/javax/sip/header/AllowEvents;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/AllowEvents;-><init>()V

    .line 75
    .local v2, "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    const-string v3, "Allow-Events"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/AllowEvents;->setHeaderName(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 80
    .local v3, "token":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AllowEventsList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 83
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 84
    :goto_3e
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_75

    .line 85
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 86
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 88
    new-instance v5, Lgov/nist/javax/sip/header/AllowEvents;

    invoke-direct {v5}, Lgov/nist/javax/sip/header/AllowEvents;-><init>()V

    move-object v2, v5

    .line 89
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v5

    move-object v3, v5

    .line 91
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/AllowEventsList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 94
    iget-object v5, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_3e

    .line 96
    :cond_75
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    iget-object v4, p0, Lgov/nist/javax/sip/parser/AllowEventsParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_81
    .catchall {:try_start_10 .. :try_end_81} :catchall_8a

    .line 99
    nop

    .line 101
    sget-boolean v4, Lgov/nist/javax/sip/parser/AllowEventsParser;->debug:Z

    if-eqz v4, :cond_89

    .line 102
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AllowEventsParser;->dbg_leave(Ljava/lang/String;)V

    .line 99
    :cond_89
    return-object v0

    .line 101
    .end local v2    # "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catchall_8a
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/AllowEventsParser;->debug:Z

    if-eqz v3, :cond_92

    .line 102
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/AllowEventsParser;->dbg_leave(Ljava/lang/String;)V

    .line 103
    :cond_92
    throw v2
.end method
