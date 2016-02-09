.class public Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "PAccessNetworkInfoParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessNetwork"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 74
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x3b

    #@2
    .line 90
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 91
    const-string/jumbo v3, "AccessNetworkInfoParser.parse"

    #@9
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 93
    :cond_0
    const/16 v3, 0x84f

    #@e
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->headerName(I)V

    #@11
    .line 94
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    #@13
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    #@16
    .line 95
    .local v0, "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    const-string/jumbo v3, "P-Access-Network-Info"

    #@19
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setHeaderName(Ljava/lang/String;)V

    #@1c
    .line 97
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@1e
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@21
    .line 98
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    const/16 v4, 0xfff

    #@25
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@28
    .line 99
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@2a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@2d
    move-result-object v2

    #@2e
    .line 100
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setAccessType(Ljava/lang/String;)V

    #@35
    .line 102
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@3a
    .line 103
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@3c
    const/4 v4, 0x0

    #@3d
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@40
    move-result v3

    #@41
    if-ne v3, v5, :cond_2

    #@43
    .line 104
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@45
    const/16 v4, 0x3b

    #@47
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@4a
    .line 105
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@4c
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@4f
    .line 107
    const/16 v3, 0x3d

    #@51
    invoke-super {p0, v3}, Lgov/nist/javax/sip/parser/HeaderParser;->nameValue(C)Lgov/nist/core/NameValue;

    #@54
    move-result-object v1

    #@55
    .line 108
    .local v1, "nv":Lgov/nist/core/NameValue;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;->setParameter(Lgov/nist/core/NameValue;)V

    #@58
    .line 109
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@5a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    goto :goto_0

    #@5e
    .line 116
    .end local v0    # "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    .end local v1    # "nv":Lgov/nist/core/NameValue;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    #@5f
    .line 117
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    #@61
    if-eqz v4, :cond_1

    #@63
    .line 118
    const-string/jumbo v4, "AccessNetworkInfoParser.parse"

    #@66
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@69
    .line 116
    :cond_1
    throw v3

    #@6a
    .line 111
    .restart local v0    # "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    .restart local v2    # "token":Lgov/nist/core/Token;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@6c
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@6f
    .line 112
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->lexer:Lgov/nist/core/LexerCore;

    #@71
    const/16 v4, 0xa

    #@73
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@76
    .line 117
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->debug:Z

    #@78
    if-eqz v3, :cond_3

    #@7a
    .line 118
    const-string/jumbo v3, "AccessNetworkInfoParser.parse"

    #@7d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;->dbg_leave(Ljava/lang/String;)V

    #@80
    .line 115
    :cond_3
    return-object v0
.end method
