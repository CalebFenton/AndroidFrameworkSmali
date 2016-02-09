.class public Lgov/nist/javax/sip/parser/AcceptParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "AcceptParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accept"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
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
    .line 67
    sget-boolean v3, Lgov/nist/javax/sip/parser/AcceptParser;->debug:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 68
    const-string/jumbo v3, "AcceptParser.parse"

    #@9
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AcceptParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 69
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/AcceptList;

    #@e
    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptList;-><init>()V

    #@11
    .line 72
    .local v1, "list":Lgov/nist/javax/sip/header/AcceptList;
    const/16 v3, 0x814

    #@13
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AcceptParser;->headerName(I)V

    #@16
    .line 74
    new-instance v0, Lgov/nist/javax/sip/header/Accept;

    #@18
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    #@1b
    .line 75
    .local v0, "accept":Lgov/nist/javax/sip/header/Accept;
    const-string/jumbo v3, "Accept"

    #@1e
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setHeaderName(Ljava/lang/String;)V

    #@21
    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@26
    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@28
    const/16 v4, 0xfff

    #@2a
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@2d
    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@32
    move-result-object v2

    #@33
    .line 80
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    #@3a
    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@3c
    const/16 v4, 0x2f

    #@3e
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@41
    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@43
    const/16 v4, 0xfff

    #@45
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@48
    .line 83
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@4a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@4d
    move-result-object v2

    #@4e
    .line 84
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    #@55
    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@57
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@5a
    .line 87
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@5d
    .line 88
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@60
    .line 90
    :goto_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@62
    const/4 v4, 0x0

    #@63
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@66
    move-result v3

    #@67
    if-ne v3, v5, :cond_2

    #@69
    .line 91
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@6b
    const/16 v4, 0x2c

    #@6d
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@70
    .line 92
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@72
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@75
    .line 94
    new-instance v0, Lgov/nist/javax/sip/header/Accept;

    #@77
    .end local v0    # "accept":Lgov/nist/javax/sip/header/Accept;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    #@7a
    .line 96
    .restart local v0    # "accept":Lgov/nist/javax/sip/header/Accept;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@7c
    const/16 v4, 0xfff

    #@7e
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@81
    .line 97
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@83
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@86
    move-result-object v2

    #@87
    .line 98
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    #@8e
    .line 99
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@90
    const/16 v4, 0x2f

    #@92
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@95
    .line 100
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@97
    const/16 v4, 0xfff

    #@99
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@9c
    .line 101
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@9e
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@a1
    move-result-object v2

    #@a2
    .line 102
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    #@a9
    .line 103
    iget-object v3, p0, Lgov/nist/javax/sip/parser/AcceptParser;->lexer:Lgov/nist/core/LexerCore;

    #@ab
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@ae
    .line 104
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@b1
    .line 105
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/AcceptList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b4
    goto :goto_0

    #@b5
    .line 109
    .end local v0    # "accept":Lgov/nist/javax/sip/header/Accept;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    #@b6
    .line 110
    sget-boolean v4, Lgov/nist/javax/sip/parser/AcceptParser;->debug:Z

    #@b8
    if-eqz v4, :cond_1

    #@ba
    .line 111
    const-string/jumbo v4, "AcceptParser.parse"

    #@bd
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/AcceptParser;->dbg_leave(Ljava/lang/String;)V

    #@c0
    .line 109
    :cond_1
    throw v3

    #@c1
    .line 110
    .restart local v0    # "accept":Lgov/nist/javax/sip/header/Accept;
    .restart local v2    # "token":Lgov/nist/core/Token;
    :cond_2
    sget-boolean v3, Lgov/nist/javax/sip/parser/AcceptParser;->debug:Z

    #@c3
    if-eqz v3, :cond_3

    #@c5
    .line 111
    const-string/jumbo v3, "AcceptParser.parse"

    #@c8
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/AcceptParser;->dbg_leave(Ljava/lang/String;)V

    #@cb
    .line 108
    :cond_3
    return-object v1
.end method
