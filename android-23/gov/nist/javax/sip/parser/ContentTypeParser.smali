.class public Lgov/nist/javax/sip/parser/ContentTypeParser;
.super Lgov/nist/javax/sip/parser/ParametersParser;
.source "ContentTypeParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/ParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

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
    .line 58
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    #@5
    .line 59
    .local v0, "contentType":Lgov/nist/javax/sip/header/ContentType;
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentTypeParser;->debug:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 60
    const-string/jumbo v3, "ContentTypeParser.parse"

    #@c
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentTypeParser;->dbg_enter(Ljava/lang/String;)V

    #@f
    .line 63
    :cond_0
    const/16 v3, 0x826

    #@11
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentTypeParser;->headerName(I)V

    #@14
    .line 66
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    const/16 v4, 0xfff

    #@18
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@1b
    .line 67
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    #@1d
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@20
    move-result-object v2

    #@21
    .line 68
    .local v2, "type":Lgov/nist/core/Token;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@26
    .line 69
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;)V

    #@2d
    .line 72
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    const/16 v4, 0x2f

    #@31
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@34
    .line 73
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    #@36
    const/16 v4, 0xfff

    #@38
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@3b
    .line 74
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    #@3d
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@40
    move-result-object v1

    #@41
    .line 75
    .local v1, "subType":Lgov/nist/core/Token;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    #@43
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@46
    .line 76
    invoke-virtual {v1}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/ContentType;->setContentSubType(Ljava/lang/String;)V

    #@4d
    .line 77
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/ParametersParser;->parse(Lgov/nist/javax/sip/header/ParametersHeader;)V

    #@50
    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ContentTypeParser;->lexer:Lgov/nist/core/LexerCore;

    #@52
    const/16 v4, 0xa

    #@54
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    .line 80
    sget-boolean v3, Lgov/nist/javax/sip/parser/ContentTypeParser;->debug:Z

    #@59
    if-eqz v3, :cond_1

    #@5b
    .line 81
    const-string/jumbo v3, "ContentTypeParser.parse"

    #@5e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ContentTypeParser;->dbg_leave(Ljava/lang/String;)V

    #@61
    .line 83
    :cond_1
    return-object v0

    #@62
    .line 79
    .end local v1    # "subType":Lgov/nist/core/Token;
    .end local v2    # "type":Lgov/nist/core/Token;
    :catchall_0
    move-exception v3

    #@63
    .line 80
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentTypeParser;->debug:Z

    #@65
    if-eqz v4, :cond_2

    #@67
    .line 81
    const-string/jumbo v4, "ContentTypeParser.parse"

    #@6a
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentTypeParser;->dbg_leave(Ljava/lang/String;)V

    #@6d
    .line 79
    :cond_2
    throw v3
.end method
