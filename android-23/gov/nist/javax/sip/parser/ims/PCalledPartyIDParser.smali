.class public Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PCalledPartyIDParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "calledPartyID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 55
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 70
    const-string/jumbo v1, "PCalledPartyIDParser.parse"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 73
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v2, 0x850

    #@e
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 74
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@16
    .line 75
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/16 v2, 0x3a

    #@1a
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1d
    .line 76
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@22
    .line 78
    new-instance v0, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    #@24
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;-><init>()V

    #@27
    .line 79
    .local v0, "calledPartyID":Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 84
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 85
    const-string/jumbo v1, "PCalledPartyIDParser.parse"

    #@31
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->dbg_leave(Ljava/lang/String;)V

    #@34
    .line 81
    :cond_1
    return-object v0

    #@35
    .line 83
    .end local v0    # "calledPartyID":Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    :catchall_0
    move-exception v1

    #@36
    .line 84
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->debug:Z

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 85
    const-string/jumbo v2, "PCalledPartyIDParser.parse"

    #@3d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;->dbg_leave(Ljava/lang/String;)V

    #@40
    .line 83
    :cond_2
    throw v1
.end method
