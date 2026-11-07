.class public Lgov/nist/javax/sip/parser/extensions/ReferencesParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ReferencesParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 28
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 29
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "references"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 38
    const-string v0, "ReferencesParser.parse"

    sget-boolean v1, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    if-eqz v1, :cond_b

    .line 39
    const-string v1, "ReasonParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_enter(Ljava/lang/String;)V

    .line 42
    :cond_b
    const/16 v1, 0x862

    :try_start_d
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->headerName(I)V

    .line 43
    new-instance v1, Lgov/nist/javax/sip/header/extensions/References;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/extensions/References;-><init>()V

    .line 44
    .local v1, "references":Lgov/nist/javax/sip/header/extensions/References;
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 46
    iget-object v2, p0, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->byteStringNoSemicolon()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "callId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/extensions/References;->setCallId(Ljava/lang/String;)V

    .line 49
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_2f

    .line 50
    nop

    .line 52
    sget-boolean v3, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    if-eqz v3, :cond_2e

    .line 53
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    .line 50
    :cond_2e
    return-object v1

    .line 52
    .end local v1    # "references":Lgov/nist/javax/sip/header/extensions/References;
    .end local v2    # "callId":Ljava/lang/String;
    :catchall_2f
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->debug:Z

    if-eqz v2, :cond_37

    .line 53
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;->dbg_leave(Ljava/lang/String;)V

    .line 54
    :cond_37
    throw v1
.end method
