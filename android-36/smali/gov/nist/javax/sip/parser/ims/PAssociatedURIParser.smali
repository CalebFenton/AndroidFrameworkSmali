.class public Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PAssociatedURIParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 75
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 76
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "associatedURI"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 71
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

    .line 81
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->debug:Z

    const-string v1, "PAssociatedURIParser.parse"

    if-eqz v0, :cond_9

    .line 82
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->dbg_enter(Ljava/lang/String;)V

    .line 84
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;-><init>()V

    .line 88
    .local v0, "associatedURIList":Lgov/nist/javax/sip/header/ims/PAssociatedURIList;
    const/16 v2, 0x851

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->headerName(I)V

    .line 90
    new-instance v2, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    .line 91
    .local v2, "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    const-string v3, "P-Associated-URI"

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->setHeaderName(Ljava/lang/String;)V

    .line 93
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 94
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 96
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 97
    :goto_28
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_4f

    .line 99
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 100
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 102
    new-instance v3, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    move-object v2, v3

    .line 103
    invoke-super {p0, v2}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 104
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 106
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    goto :goto_28

    .line 108
    :cond_4f
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 109
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_5b
    .catchall {:try_start_10 .. :try_end_5b} :catchall_64

    .line 111
    nop

    .line 117
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->debug:Z

    if-eqz v3, :cond_63

    .line 118
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->dbg_leave(Ljava/lang/String;)V

    .line 111
    :cond_63
    return-object v0

    .line 117
    .end local v2    # "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    :catchall_64
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->debug:Z

    if-eqz v3, :cond_6c

    .line 118
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;->dbg_leave(Ljava/lang/String;)V

    .line 119
    :cond_6c
    throw v2
.end method
