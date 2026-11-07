.class public Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PPreferredIdentityParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 59
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 61
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "preferredIdentity"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 55
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

    .line 65
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    const-string v1, "PreferredIdentityParser.parse"

    if-eqz v0, :cond_9

    .line 66
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x84a

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 70
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 71
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 72
    iget-object v0, p0, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 74
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;-><init>()V

    .line 75
    .local v0, "p":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_32

    .line 76
    nop

    .line 78
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    if-eqz v2, :cond_31

    .line 79
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->dbg_leave(Ljava/lang/String;)V

    .line 76
    :cond_31
    return-object v0

    .line 78
    .end local v0    # "p":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    :catchall_32
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->debug:Z

    if-eqz v2, :cond_3a

    .line 79
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;->dbg_leave(Ljava/lang/String;)V

    .line 80
    :cond_3a
    throw v0
.end method
