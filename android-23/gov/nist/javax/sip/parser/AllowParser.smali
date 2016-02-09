.class public Lgov/nist/javax/sip/parser/AllowParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AllowParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "allow"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 47
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
    const/16 v5, 0x2c

    #@2
    .line 66
    sget-boolean v3, Lgov/nist/javax/sip/parser/AllowParser;->debug:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 67
    const-string/jumbo v3, "AllowParser.parse"

    #@9
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AllowParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 68
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/AllowList;

    #@e
    invoke-direct {v1}, Lgov/nist/javax/sip/header/AllowList;-><init>()V

    #@11
    .line 71
    .local v1, "list":Lgov/nist/javax/sip/header/AllowList;
    const/16 v3, 0x815

    #@13
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AllowParser;->headerName(I)V

    #@16
    .line 73
    new-instance v0, Lgov/nist/javax/sip/header/Allow;

    #@18
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    #@1b
    .line 74
    .local v0, "allow":Lgov/nist/javax/sip/header/Allow;
    const-string/jumbo v3, "Allow"

    #@1e
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Allow;->setHeaderName(Ljava/lang/String;)V

    #@21
    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@26
    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@28
    const/16 v4, 0xfff

    #@2a
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@2d
    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@32
    move-result-object v2

    #@33
    .line 79
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    #@3a
    .line 81
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AllowList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@3d
    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@3f
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@42
    .line 83
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@44
    const/4 v4, 0x0

    #@45
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@48
    move-result v3

    #@49
    if-ne v3, v5, :cond_2

    #@4b
    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@4d
    const/16 v4, 0x2c

    #@4f
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@52
    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@54
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@57
    .line 87
    new-instance v0, Lgov/nist/javax/sip/header/Allow;

    #@59
    .end local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    #@5c
    .line 88
    .restart local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@5e
    const/16 v4, 0xfff

    #@60
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@63
    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@65
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@68
    move-result-object v2

    #@69
    .line 90
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    #@70
    .line 92
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AllowList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@73
    .line 93
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@75
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@78
    goto :goto_0

    #@79
    .line 99
    .end local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    #@7a
    .line 100
    sget-boolean v4, Lgov/nist/javax/sip/parser/AllowParser;->debug:Z

    #@7c
    if-eqz v4, :cond_1

    #@7e
    .line 101
    const-string/jumbo v4, "AllowParser.parse"

    #@81
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AllowParser;->dbg_leave(Ljava/lang/String;)V

    #@84
    .line 99
    :cond_1
    throw v3

    #@85
    .line 95
    .restart local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    .restart local v2    # "token":Lgov/nist/core/Token;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@87
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@8a
    .line 96
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AllowParser;->lexer:Lgov/nist/core/LexerCore;

    #@8c
    const/16 v4, 0xa

    #@8e
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@91
    .line 100
    sget-boolean v3, Lgov/nist/javax/sip/parser/AllowParser;->debug:Z

    #@93
    if-eqz v3, :cond_3

    #@95
    .line 101
    const-string/jumbo v3, "AllowParser.parse"

    #@98
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AllowParser;->dbg_leave(Ljava/lang/String;)V

    #@9b
    .line 98
    :cond_3
    return-object v1
.end method
