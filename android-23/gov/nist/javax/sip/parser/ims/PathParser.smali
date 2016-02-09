.class public Lgov/nist/javax/sip/parser/ims/PathParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PathParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 51
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
    .line 72
    new-instance v2, Lgov/nist/javax/sip/header/ims/PathList;

    #@4
    invoke-direct {v2}, Lgov/nist/javax/sip/header/ims/PathList;-><init>()V

    #@7
    .line 74
    .local v2, "pathList":Lgov/nist/javax/sip/header/ims/PathList;
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PathParser;->debug:Z

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 75
    const-string/jumbo v3, "PathParser.parse"

    #@e
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PathParser;->dbg_enter(Ljava/lang/String;)V

    #@11
    .line 78
    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    const/16 v4, 0x847

    #@15
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@18
    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1d
    .line 80
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    const/16 v4, 0x3a

    #@21
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@24
    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    #@26
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@29
    .line 83
    :goto_0
    new-instance v1, Lgov/nist/javax/sip/header/ims/Path;

    #@2b
    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/Path;-><init>()V

    #@2e
    .line 84
    .local v1, "path":Lgov/nist/javax/sip/header/ims/Path;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@31
    .line 85
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/ims/PathList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    #@34
    .line 86
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    #@36
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@39
    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    #@3b
    const/4 v4, 0x0

    #@3c
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@3f
    move-result v0

    #@40
    .line 88
    .local v0, "la":C
    if-ne v0, v5, :cond_2

    #@42
    .line 89
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    #@44
    const/16 v4, 0x2c

    #@46
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@49
    .line 90
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    #@4b
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 97
    .end local v0    # "la":C
    .end local v1    # "path":Lgov/nist/javax/sip/header/ims/Path;
    :catchall_0
    move-exception v3

    #@50
    .line 98
    sget-boolean v4, Lgov/nist/javax/sip/parser/ims/PathParser;->debug:Z

    #@52
    if-eqz v4, :cond_1

    #@54
    .line 99
    const-string/jumbo v4, "PathParser.parse"

    #@57
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PathParser;->dbg_leave(Ljava/lang/String;)V

    #@5a
    .line 97
    :cond_1
    throw v3

    #@5b
    .line 91
    .restart local v0    # "la":C
    .restart local v1    # "path":Lgov/nist/javax/sip/header/ims/Path;
    :cond_2
    const/16 v3, 0xa

    #@5d
    if-ne v0, v3, :cond_4

    #@5f
    .line 98
    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PathParser;->debug:Z

    #@61
    if-eqz v3, :cond_3

    #@63
    .line 99
    const-string/jumbo v3, "PathParser.parse"

    #@66
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PathParser;->dbg_leave(Ljava/lang/String;)V

    #@69
    .line 96
    :cond_3
    return-object v2

    #@6a
    .line 94
    :cond_4
    :try_start_1
    const-string/jumbo v3, "unexpected char"

    #@6d
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/ims/PathParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@70
    move-result-object v3

    #@71
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
