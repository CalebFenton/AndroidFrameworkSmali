.class public Lgov/nist/javax/sip/parser/ContentTypeParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ContentTypeParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 54
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentType"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 58
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    .line 59
    .local v0, "contentType":Lgov/nist/javax/sip/header/ContentType;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ContentTypeParser;->debug:Z

    const-string v2, "ContentTypeParser.parse"

    if-eqz v1, :cond_e

    .line 60
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ContentTypeParser;->dbg_enter(Ljava/lang/String;)V

    .line 63
    :cond_e
    const/16 v1, 0x826

    :try_start_10
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ContentTypeParser;->headerName(I)V

    .line 66
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 67
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v1

    .line 68
    .local v1, "type":Lgov/nist/core/Token;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 69
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;)V

    .line 72
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 73
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 74
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v3

    .line 75
    .local v3, "subType":Lgov/nist/core/Token;
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentType;->setContentSubType(Ljava/lang/String;)V

    .line 77
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    .line 78
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_54
    .catchall {:try_start_10 .. :try_end_54} :catchall_5d

    .line 80
    nop

    .end local v1    # "type":Lgov/nist/core/Token;
    .end local v3    # "subType":Lgov/nist/core/Token;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ContentTypeParser;->debug:Z

    if-eqz v1, :cond_5c

    .line 81
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ContentTypeParser;->dbg_leave(Ljava/lang/String;)V

    .line 83
    :cond_5c
    return-object v0

    .line 80
    :catchall_5d
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentTypeParser;->debug:Z

    if-eqz v3, :cond_65

    .line 81
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ContentTypeParser;->dbg_leave(Ljava/lang/String;)V

    .line 82
    :cond_65
    throw v1
.end method
