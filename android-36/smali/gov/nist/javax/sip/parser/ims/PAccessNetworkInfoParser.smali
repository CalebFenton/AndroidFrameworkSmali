.class public Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PAccessNetworkInfoParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 82
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 84
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "accessNetwork"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 78
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

    .line 90
    sget-boolean v0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    const-string v1, "AccessNetworkInfoParser.parse"

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->dbg_enter(Ljava/lang/String;)V

    .line 93
    :cond_9
    const/16 v0, 0x84f

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->headerName(I)V

    .line 94
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    .line 95
    .local v0, "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    const-string v2, "P-Access-Network-Info"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setHeaderName(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 98
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 99
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 100
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setAccessType(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 103
    :goto_36
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_5a

    .line 104
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 105
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 107
    const/16 v3, 0x3d

    invoke-super {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->nameValue(C)Lgov/nist/core/NameValue;

    move-result-object v3

    .line 108
    .local v3, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Lgov/nist/core/NameValue;)V

    .line 109
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 110
    .end local v3    # "nv":Lgov/nist/core/NameValue;
    goto :goto_36

    .line 111
    :cond_5a
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 112
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_66
    .catchall {:try_start_b .. :try_end_66} :catchall_6f

    .line 115
    nop

    .line 117
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    if-eqz v3, :cond_6e

    .line 118
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 115
    :cond_6e
    return-object v0

    .line 117
    .end local v0    # "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_6f
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    if-eqz v2, :cond_77

    .line 118
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->dbg_leave(Ljava/lang/String;)V

    .line 119
    :cond_77
    throw v0
.end method
