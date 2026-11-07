.class public Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PProfileKeyParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 43
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 45
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "profilekey"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 49
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

    .line 52
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->debug:Z

    const-string v1, "PProfileKey.parse"

    if-eqz v0, :cond_9

    .line 53
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->dbg_enter(Ljava/lang/String;)V

    .line 56
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x85e

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 57
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 58
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 59
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 61
    new-instance v0, Lgov/nist/javax/sip/header/ims/PProfileKey;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PProfileKey;-><init>()V

    .line 62
    .local v0, "p":Lgov/nist/javax/sip/header/ims/PProfileKey;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_32

    .line 63
    nop

    .line 66
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->debug:Z

    if-eqz v2, :cond_31

    .line 67
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->dbg_leave(Ljava/lang/String;)V

    .line 63
    :cond_31
    return-object v0

    .line 66
    .end local v0    # "p":Lgov/nist/javax/sip/header/ims/PProfileKey;
    :catchall_32
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->debug:Z

    if-eqz v2, :cond_3a

    .line 67
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PProfileKeyParser;->dbg_leave(Ljava/lang/String;)V

    .line 68
    :cond_3a
    throw v0
.end method
