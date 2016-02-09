.class public Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PAssociatedURIParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "associatedURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 68
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
    .line 81
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->debug:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 82
    const-string/jumbo v2, "PAssociatedURIParser.parse"

    #@9
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 84
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;

    #@e
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;-><init>()V

    #@11
    .line 88
    .local v1, "associatedURIList":Lgov/nist/javax/sip/header/ims/PAssociatedURIList;
    const/16 v2, 0x851

    #@13
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->headerName(I)V

    #@16
    .line 90
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    #@18
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    #@1b
    .line 91
    .local v0, "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    const-string/jumbo v2, "P-Associated-URI"

    #@1e
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->setHeaderName(Ljava/lang/String;)V

    #@21
    .line 93
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@24
    .line 94
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@27
    .line 96
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@2c
    .line 97
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    const/4 v3, 0x0

    #@2f
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@32
    move-result v2

    #@33
    if-ne v2, v4, :cond_2

    #@35
    .line 99
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    const/16 v3, 0x2c

    #@39
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@3c
    .line 100
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    #@3e
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@41
    .line 102
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    #@43
    .end local v0    # "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    #@46
    .line 103
    .restart local v0    # "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@49
    .line 104
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@4c
    .line 106
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    #@4e
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    goto :goto_0

    #@52
    .line 116
    .end local v0    # "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    :catchall_0
    move-exception v2

    #@53
    .line 117
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->debug:Z

    #@55
    if-eqz v3, :cond_1

    #@57
    .line 118
    const-string/jumbo v3, "PAssociatedURIParser.parse"

    #@5a
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->dbg_leave(Ljava/lang/String;)V

    #@5d
    .line 116
    :cond_1
    throw v2

    #@5e
    .line 108
    .restart local v0    # "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    #@60
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@63
    .line 109
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    #@65
    const/16 v3, 0xa

    #@67
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 117
    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->debug:Z

    #@6c
    if-eqz v2, :cond_3

    #@6e
    .line 118
    const-string/jumbo v2, "PAssociatedURIParser.parse"

    #@71
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->dbg_leave(Ljava/lang/String;)V

    #@74
    .line 111
    :cond_3
    return-object v1
.end method
