.class public Lgov/nist/javax/sip/parser/ContentDispositionParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ContentDispositionParser.java"


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
    .param p1, "contentDisposition"    # Ljava/lang/String;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 68
    const-string/jumbo v3, "ContentDispositionParser.parse"

    #@7
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 71
    :cond_0
    const/16 v3, 0x834

    #@c
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->headerName(I)V

    #@f
    .line 73
    new-instance v0, Lgov/nist/javax/sip/header/ContentDisposition;

    #@11
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    #@14
    .line 74
    .local v0, "cd":Lgov/nist/javax/sip/header/ContentDisposition;
    const-string/jumbo v3, "Content-Disposition"

    #@17
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setHeaderName(Ljava/lang/String;)V

    #@1a
    .line 76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    #@1c
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1f
    .line 77
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    #@21
    const/16 v4, 0xfff

    #@23
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@26
    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    #@28
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@2b
    move-result-object v2

    #@2c
    .line 80
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    #@33
    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    #@35
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@38
    .line 82
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@3b
    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    #@3d
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@40
    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    #@42
    const/16 v4, 0xa

    #@44
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@47
    .line 91
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    #@49
    if-eqz v3, :cond_1

    #@4b
    .line 92
    const-string/jumbo v3, "ContentDispositionParser.parse"

    #@4e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    #@51
    .line 87
    :cond_1
    return-object v0

    #@52
    .line 88
    .end local v0    # "cd":Lgov/nist/javax/sip/header/ContentDisposition;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catch_0
    move-exception v1

    #@53
    .line 89
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@5a
    move-result-object v3

    #@5b
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 90
    .end local v1    # "ex":Ljava/text/ParseException;
    :catchall_0
    move-exception v3

    #@5d
    .line 91
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    #@5f
    if-eqz v4, :cond_2

    #@61
    .line 92
    const-string/jumbo v4, "ContentDispositionParser.parse"

    #@64
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    #@67
    .line 90
    :cond_2
    throw v3
.end method
