.class public Lgov/nist/javax/sip/parser/ContentDispositionParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ContentDispositionParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
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

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    const-string v1, "ContentDispositionParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_enter(Ljava/lang/String;)V

    .line 71
    :cond_9
    const/16 v0, 0x834

    :try_start_b
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->headerName(I)V

    .line 73
    new-instance v0, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    .line 74
    .local v0, "cd":Lgov/nist/javax/sip/header/ContentDisposition;
    const-string v2, "Content-Disposition"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/ContentDisposition;->setHeaderName(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 77
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 80
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentDispositionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_45
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_45} :catch_50
    .catchall {:try_start_b .. :try_end_45} :catchall_4e

    .line 87
    nop

    .line 91
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v3, :cond_4d

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    .line 87
    :cond_4d
    return-object v0

    .line 91
    .end local v0    # "cd":Lgov/nist/javax/sip/header/ContentDisposition;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_4e
    move-exception v0

    goto :goto_5a

    .line 88
    :catch_50
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/text/ParseException;
    :try_start_51
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    .end local p0    # "this":Lgov/nist/javax/sip/parser/ContentDispositionParser;
    throw v2
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_4e

    .line 91
    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ContentDispositionParser;
    :goto_5a
    sget-boolean v2, Lgov/nist/javax/sip/parser/ContentDispositionParser;->debug:Z

    if-eqz v2, :cond_61

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ContentDispositionParser;->dbg_leave(Ljava/lang/String;)V

    .line 93
    :cond_61
    throw v0
.end method
