.class public Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PAssertedIdentityParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 62
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "assertedIdentity"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 56
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x2c

    #@2
    .line 69
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->debug:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 70
    const-string/jumbo v2, "AssertedIdentityParser.parse"

    #@9
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 72
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;

    #@e
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;-><init>()V

    #@11
    .line 76
    .local v0, "assertedIdList":Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;
    const/16 v2, 0x849

    #@13
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->headerName(I)V

    #@16
    .line 78
    new-instance v1, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    #@18
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    #@1b
    .line 79
    .local v1, "pai":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    const-string/jumbo v2, "P-Asserted-Identity"

    #@1e
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->setHeaderName(Ljava/lang/String;)V

    #@21
    .line 81
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@24
    .line 82
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@27
    .line 84
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@2c
    .line 85
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    const/4 v3, 0x0

    #@2f
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@32
    move-result v2

    #@33
    if-ne v2, v4, :cond_2

    #@35
    .line 87
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    const/16 v3, 0x2c

    #@39
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@3c
    .line 88
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@3e
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@41
    .line 90
    new-instance v1, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    #@43
    .end local v1    # "pai":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    #@46
    .line 91
    .restart local v1    # "pai":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@49
    .line 92
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@4c
    .line 94
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@4e
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 103
    .end local v1    # "pai":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    :catchall_0
    move-exception v2

    #@53
    .line 104
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->debug:Z

    #@55
    if-eqz v3, :cond_1

    #@57
    .line 105
    const-string/jumbo v3, "AssertedIdentityParser.parse"

    #@5a
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->dbg_leave(Ljava/lang/String;)V

    #@5d
    .line 103
    :cond_1
    throw v2

    #@5e
    .line 96
    .restart local v1    # "pai":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@60
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@63
    .line 97
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->lexer:Lgov/nist/core/LexerCore;

    #@65
    const/16 v3, 0xa

    #@67
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 104
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->debug:Z

    #@6c
    if-eqz v2, :cond_3

    #@6e
    .line 105
    const-string/jumbo v2, "AssertedIdentityParser.parse"

    #@71
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;->dbg_leave(Ljava/lang/String;)V

    #@74
    .line 99
    :cond_3
    return-object v0
.end method
