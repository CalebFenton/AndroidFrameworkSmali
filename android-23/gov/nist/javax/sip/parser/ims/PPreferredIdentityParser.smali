.class public Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PPreferredIdentityParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "preferredIdentity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 52
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
    .line 65
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 66
    const-string/jumbo v1, "PreferredIdentityParser.parse"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 69
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v2, 0x84a

    #@e
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    .line 70
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@16
    .line 71
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    const/16 v2, 0x3a

    #@1a
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1d
    .line 72
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@22
    .line 74
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    #@24
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;-><init>()V

    #@27
    .line 75
    .local v0, "p":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 78
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 79
    const-string/jumbo v1, "PreferredIdentityParser.parse"

    #@31
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->dbg_leave(Ljava/lang/String;)V

    #@34
    .line 76
    :cond_1
    return-object v0

    #@35
    .line 77
    .end local v0    # "p":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    :catchall_0
    move-exception v1

    #@36
    .line 78
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    #@38
    if-eqz v2, :cond_2

    #@3a
    .line 79
    const-string/jumbo v2, "PreferredIdentityParser.parse"

    #@3d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->dbg_leave(Ljava/lang/String;)V

    #@40
    .line 77
    :cond_2
    throw v1
.end method
