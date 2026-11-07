.class public Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PAssertedIdentityParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 62
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 64
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "assertedIdentity"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 69
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->debug:Z

    const-string v1, "AssertedIdentityParser.parse"

    if-eqz v0, :cond_9

    .line 70
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;-><init>()V

    .line 76
    .local v0, "assertedIdList":Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;
    const/16 v2, 0x849

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->headerName(I)V

    .line 78
    new-instance v2, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    .line 79
    .local v2, "pai":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    const-string v3, "P-Asserted-Identity"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->setHeaderName(Ljava/lang/String;)V

    .line 81
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 82
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    :goto_28
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_4f

    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 88
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 90
    new-instance v3, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    move-object v2, v3

    .line 91
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 92
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 94
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_28

    .line 96
    :cond_4f
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_5b
    .catchall {:try_start_10 .. :try_end_5b} :catchall_64

    .line 99
    nop

    .line 104
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->debug:Z

    if-eqz v3, :cond_63

    .line 105
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->dbg_leave(Ljava/lang/String;)V

    .line 99
    :cond_63
    return-object v0

    .line 104
    .end local v2    # "pai":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    :catchall_64
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->debug:Z

    if-eqz v3, :cond_6c

    .line 105
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->dbg_leave(Ljava/lang/String;)V

    .line 106
    :cond_6c
    throw v2
.end method
