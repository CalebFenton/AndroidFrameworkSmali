.class public Lgov/nist/javax/sip/parser/SIPETagParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SIPETagParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 49
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
    .line 68
    sget-boolean v2, Lgov/nist/javax/sip/parser/SIPETagParser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 69
    const-string/jumbo v2, "SIPEtag.parse"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPETagParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 71
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/SIPETag;

    #@c
    invoke-direct {v0}, Lgov/nist/javax/sip/header/SIPETag;-><init>()V

    #@f
    .line 73
    .local v0, "sipEtag":Lgov/nist/javax/sip/header/SIPETag;
    const/16 v2, 0x844

    #@11
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPETagParser;->headerName(I)V

    #@14
    .line 75
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@19
    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    const/16 v3, 0xfff

    #@1d
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@20
    .line 77
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    #@22
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@25
    move-result-object v1

    #@26
    .line 79
    .local v1, "token":Lgov/nist/core/Token;
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/SIPETag;->setETag(Ljava/lang/String;)V

    #@2d
    .line 81
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@32
    .line 82
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    #@34
    const/16 v3, 0xa

    #@36
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 86
    sget-boolean v2, Lgov/nist/javax/sip/parser/SIPETagParser;->debug:Z

    #@3b
    if-eqz v2, :cond_1

    #@3d
    .line 87
    const-string/jumbo v2, "SIPEtag.parse"

    #@40
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPETagParser;->dbg_leave(Ljava/lang/String;)V

    #@43
    .line 84
    :cond_1
    return-object v0

    #@44
    .line 85
    .end local v1    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v2

    #@45
    .line 86
    sget-boolean v3, Lgov/nist/javax/sip/parser/SIPETagParser;->debug:Z

    #@47
    if-eqz v3, :cond_2

    #@49
    .line 87
    const-string/jumbo v3, "SIPEtag.parse"

    #@4c
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/SIPETagParser;->dbg_leave(Ljava/lang/String;)V

    #@4f
    .line 85
    :cond_2
    throw v2
.end method
