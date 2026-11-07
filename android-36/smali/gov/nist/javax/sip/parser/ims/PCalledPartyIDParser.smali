.class public Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PCalledPartyIDParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 62
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 63
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "calledPartyID"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 69
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    const-string v1, "PCalledPartyIDParser.parse"

    if-eqz v0, :cond_9

    .line 70
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->dbg_enter(Ljava/lang/String;)V

    .line 73
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x850

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 75
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 78
    new-instance v0, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;-><init>()V

    .line 79
    .local v0, "calledPartyID":Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_32

    .line 81
    nop

    .line 84
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    if-eqz v2, :cond_31

    .line 85
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 81
    :cond_31
    return-object v0

    .line 84
    .end local v0    # "calledPartyID":Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    :catchall_32
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    if-eqz v2, :cond_3a

    .line 85
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->dbg_leave(Ljava/lang/String;)V

    .line 86
    :cond_3a
    throw v0
.end method
