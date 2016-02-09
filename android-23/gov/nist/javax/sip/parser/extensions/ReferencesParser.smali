.class public Lgov/nist/javax/sip/parser/extensions/ReferencesParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReferencesParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "references"    # Ljava/lang/String;

    #@0
    .prologue
    .line 20
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 19
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 38
    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 39
    const-string/jumbo v2, "ReasonParser.parse"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 42
    :cond_0
    const/16 v2, 0x862

    #@c
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->headerName(I)V

    #@f
    .line 43
    new-instance v1, Lgov/nist/javax/sip/header/extensions/References;

    #@11
    invoke-direct {v1}, Lgov/nist/javax/sip/header/extensions/References;-><init>()V

    #@14
    .line 44
    .local v1, "references":Lgov/nist/javax/sip/header/extensions/References;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@19
    .line 46
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 48
    .local v0, "callId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/extensions/References;->setCallId(Ljava/lang/String;)V

    #@22
    .line 49
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 52
    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 53
    const-string/jumbo v2, "ReferencesParser.parse"

    #@2c
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    #@2f
    .line 50
    :cond_1
    return-object v1

    #@30
    .line 51
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "references":Lgov/nist/javax/sip/header/extensions/References;
    :catchall_0
    move-exception v2

    #@31
    .line 52
    sget-boolean v3, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 53
    const-string/jumbo v3, "ReferencesParser.parse"

    #@38
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    #@3b
    .line 51
    :cond_2
    throw v2
.end method
