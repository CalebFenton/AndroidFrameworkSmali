.class public Lgov/nist/javax/sip/parser/SIPETagParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "SIPETagParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 58
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 59
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "etag"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 51
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

    .line 68
    sget-boolean v0, Lgov/nist/javax/sip/parser/SIPETagParser;->debug:Z

    const-string v1, "SIPEtag.parse"

    if-eqz v0, :cond_9

    .line 69
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/SIPETagParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/SIPETag;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SIPETag;-><init>()V

    .line 73
    .local v0, "sipEtag":Lgov/nist/javax/sip/header/SIPETag;
    const/16 v2, 0x844

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/SIPETagParser;->headerName(I)V

    .line 75
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 77
    iget-object v2, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 79
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/SIPETag;->setETag(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/SIPETagParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_41

    .line 84
    nop

    .line 86
    sget-boolean v3, Lgov/nist/javax/sip/parser/SIPETagParser;->debug:Z

    if-eqz v3, :cond_40

    .line 87
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/SIPETagParser;->dbg_leave(Ljava/lang/String;)V

    .line 84
    :cond_40
    return-object v0

    .line 86
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_41
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/SIPETagParser;->debug:Z

    if-eqz v3, :cond_49

    .line 87
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/SIPETagParser;->dbg_leave(Ljava/lang/String;)V

    .line 88
    :cond_49
    throw v2
.end method
