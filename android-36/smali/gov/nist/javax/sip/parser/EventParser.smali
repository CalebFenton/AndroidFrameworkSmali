.class public Lgov/nist/javax/sip/parser/EventParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "EventParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "event"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
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

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/EventParser;->debug:Z

    const-string v1, "EventParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/EventParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_9
    const/16 v0, 0x83f

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/EventParser;->headerName(I)V

    .line 72
    iget-object v0, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    new-instance v0, Lgov/nist/javax/sip/header/Event;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Event;-><init>()V

    .line 75
    .local v0, "event":Lgov/nist/javax/sip/header/Event;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 77
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Event;->setEventType(Ljava/lang/String;)V

    .line 80
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v4, p0, Lgov/nist/javax/sip/parser/EventParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_3b
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_3b} :catch_46
    .catchall {:try_start_b .. :try_end_3b} :catchall_44

    .line 85
    nop

    .line 90
    sget-boolean v4, Lgov/nist/javax/sip/parser/EventParser;->debug:Z

    if-eqz v4, :cond_43

    .line 91
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/EventParser;->dbg_leave(Ljava/lang/String;)V

    .line 85
    :cond_43
    return-object v0

    .line 90
    .end local v0    # "event":Lgov/nist/javax/sip/header/Event;
    .end local v2    # "token":Lgov/nist/core/Token;
    .end local v3    # "value":Ljava/lang/String;
    :catchall_44
    move-exception v0

    goto :goto_50

    .line 87
    :catch_46
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/text/ParseException;
    :try_start_47
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/EventParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    .end local p0    # "this":Lgov/nist/javax/sip/parser/EventParser;
    throw v2
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_44

    .line 90
    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/EventParser;
    :goto_50
    sget-boolean v2, Lgov/nist/javax/sip/parser/EventParser;->debug:Z

    if-eqz v2, :cond_57

    .line 91
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/EventParser;->dbg_leave(Ljava/lang/String;)V

    .line 92
    :cond_57
    throw v0
.end method
