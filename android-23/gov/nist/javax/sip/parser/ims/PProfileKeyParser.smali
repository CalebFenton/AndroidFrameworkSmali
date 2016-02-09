.class public Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PProfileKeyParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "profilekey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
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
    .line 52
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 53
    const-string/jumbo v1, "PProfileKey.parse"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 56
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v2, 0x85e

    #@e
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 57
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@16
    .line 58
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/16 v2, 0x3a

    #@1a
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1d
    .line 59
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@22
    .line 61
    new-instance v0, Lgov/nist/javax/sip/header/ims/PProfileKey;

    #@24
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PProfileKey;-><init>()V

    #@27
    .line 62
    .local v0, "p":Lgov/nist/javax/sip/header/ims/PProfileKey;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 66
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->debug:Z

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 67
    const-string/jumbo v1, "PProfileKey.parse"

    #@31
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->dbg_leave(Ljava/lang/String;)V

    #@34
    .line 63
    :cond_1
    return-object v0

    #@35
    .line 65
    .end local v0    # "p":Lgov/nist/javax/sip/header/ims/PProfileKey;
    :catchall_0
    move-exception v1

    #@36
    .line 66
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->debug:Z

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 67
    const-string/jumbo v2, "PProfileKey.parse"

    #@3d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->dbg_leave(Ljava/lang/String;)V

    #@40
    .line 65
    :cond_2
    throw v1
.end method
