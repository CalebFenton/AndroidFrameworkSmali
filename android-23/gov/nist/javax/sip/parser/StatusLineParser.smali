.class public Lgov/nist/javax/sip/parser/StatusLineParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "StatusLineParser.java"


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@5
    .line 47
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    const-string/jumbo v1, "status_lineLexer"

    #@a
    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    #@d
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "statusLine"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    #@3
    .line 42
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    #@5
    const-string/jumbo v1, "status_lineLexer"

    #@8
    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@d
    .line 41
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/StatusLine;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    :try_start_0
    sget-boolean v4, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 75
    const-string/jumbo v4, "parse"

    #@7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 76
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/StatusLine;

    #@c
    invoke-direct {v0}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    #@f
    .line 77
    .local v0, "retval":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->sipVersion()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 78
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/StatusLine;->setSipVersion(Ljava/lang/String;)V

    #@16
    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1b
    .line 80
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->statusCode()I

    #@1e
    move-result v2

    #@1f
    .line 81
    .local v2, "scode":I
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    #@22
    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@24
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@27
    .line 83
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->reasonPhrase()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 84
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    #@2e
    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 88
    sget-boolean v4, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    #@35
    if-eqz v4, :cond_1

    #@37
    .line 89
    const-string/jumbo v4, "parse"

    #@3a
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    #@3d
    .line 86
    :cond_1
    return-object v0

    #@3e
    .line 87
    .end local v0    # "retval":Lgov/nist/javax/sip/header/StatusLine;
    .end local v1    # "rp":Ljava/lang/String;
    .end local v2    # "scode":I
    .end local v3    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@3f
    .line 88
    sget-boolean v5, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    #@41
    if-eqz v5, :cond_2

    #@43
    .line 89
    const-string/jumbo v5, "parse"

    #@46
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    #@49
    .line 87
    :cond_2
    throw v4
.end method

.method protected reasonPhrase()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method protected statusCode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    iget-object v3, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 52
    .local v2, "scode":Ljava/lang/String;
    sget-boolean v3, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 53
    const-string/jumbo v3, "statusCode"

    #@d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V

    #@10
    .line 55
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v1

    #@14
    .line 62
    .local v1, "retval":I
    sget-boolean v3, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 63
    const-string/jumbo v3, "statusCode"

    #@1b
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    #@1e
    .line 56
    :cond_1
    return v1

    #@1f
    .line 57
    .end local v1    # "retval":I
    :catch_0
    move-exception v0

    #@20
    .line 58
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v3, Ljava/text/ParseException;

    #@22
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    iget-object v5, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v5, ":"

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 60
    iget-object v5, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    #@46
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getPtr()I

    #@49
    move-result v5

    #@4a
    .line 58
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@4d
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    .line 61
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    #@4f
    .line 62
    sget-boolean v4, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    #@51
    if-eqz v4, :cond_2

    #@53
    .line 63
    const-string/jumbo v4, "statusCode"

    #@56
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    #@59
    .line 61
    :cond_2
    throw v3
.end method
