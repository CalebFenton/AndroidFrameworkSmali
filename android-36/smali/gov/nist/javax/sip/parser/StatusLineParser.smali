.class public Lgov/nist/javax/sip/parser/StatusLineParser;
.super Lgov/nist/javax/sip/parser/Parser;
.source "StatusLineParser.java"


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 4
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 45
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 46
    iput-object p1, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    const-string v1, "status_lineLexer"

    invoke-virtual {v0, v1}, Lgov/nist/core/LexerCore;->selectLexer(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "statusLine"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lgov/nist/javax/sip/parser/Parser;-><init>()V

    .line 42
    new-instance v0, Lgov/nist/javax/sip/parser/Lexer;

    const-string v1, "status_lineLexer"

    invoke-direct {v0, v1, p1}, Lgov/nist/javax/sip/parser/Lexer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    .line 43
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/StatusLine;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 74
    const-string v0, "parse"

    :try_start_2
    sget-boolean v1, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v1, :cond_9

    .line 75
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V

    .line 76
    :cond_9
    new-instance v1, Lgov/nist/javax/sip/header/StatusLine;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/StatusLine;-><init>()V

    .line 77
    .local v1, "retval":Lgov/nist/javax/sip/header/StatusLine;
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->sipVersion()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/header/StatusLine;->setSipVersion(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 80
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->statusCode()I

    move-result v3

    .line 81
    .local v3, "scode":I
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/StatusLine;->setStatusCode(I)V

    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/StatusLineParser;->reasonPhrase()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "rp":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 85
    iget-object v5, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_3b

    .line 86
    nop

    .line 88
    sget-boolean v5, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v5, :cond_3a

    .line 89
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 86
    :cond_3a
    return-object v1

    .line 88
    .end local v1    # "retval":Lgov/nist/javax/sip/header/StatusLine;
    .end local v2    # "version":Ljava/lang/String;
    .end local v3    # "scode":I
    .end local v4    # "rp":Ljava/lang/String;
    :catchall_3b
    move-exception v1

    sget-boolean v2, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v2, :cond_43

    .line 89
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 90
    :cond_43
    throw v1
.end method

.method protected greylist reasonPhrase()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist statusCode()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v0}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "scode":Ljava/lang/String;
    sget-boolean v1, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    const-string v2, "statusCode"

    if-eqz v1, :cond_f

    .line 53
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_enter(Ljava/lang/String;)V

    .line 55
    :cond_f
    :try_start_f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_13} :catch_1e
    .catchall {:try_start_f .. :try_end_13} :catchall_1c

    .line 56
    .local v1, "retval":I
    nop

    .line 62
    sget-boolean v3, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v3, :cond_1b

    .line 63
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 56
    :cond_1b
    return v1

    .line 62
    .end local v1    # "retval":I
    :catchall_1c
    move-exception v1

    goto :goto_4c

    .line 57
    :catch_1e
    move-exception v1

    .line 58
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_1f
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    .line 59
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/parser/StatusLineParser;->lexer:Lgov/nist/core/LexerCore;

    .line 60
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v0    # "scode":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/StatusLineParser;
    throw v3
    :try_end_4c
    .catchall {:try_start_1f .. :try_end_4c} :catchall_1c

    .line 62
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "scode":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/StatusLineParser;
    :goto_4c
    sget-boolean v3, Lgov/nist/javax/sip/parser/StatusLineParser;->debug:Z

    if-eqz v3, :cond_53

    .line 63
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/StatusLineParser;->dbg_leave(Ljava/lang/String;)V

    .line 64
    :cond_53
    throw v1
.end method
