.class public Lgov/nist/javax/sip/parser/ims/PathParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "PathParser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 59
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 54
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

    .line 72
    new-instance v0, Lgov/nist/javax/sip/header/ims/PathList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PathList;-><init>()V

    .line 74
    .local v0, "pathList":Lgov/nist/javax/sip/header/ims/PathList;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PathParser;->debug:Z

    const-string v2, "PathParser.parse"

    if-eqz v1, :cond_e

    .line 75
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PathParser;->dbg_enter(Ljava/lang/String;)V

    .line 78
    :cond_e
    :try_start_e
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x847

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 80
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 81
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    :goto_26
    new-instance v1, Lgov/nist/javax/sip/header/ims/Path;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/ims/Path;-><init>()V

    .line 84
    .local v1, "path":Lgov/nist/javax/sip/header/ims/Path;
    invoke-super {p0, v1}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 85
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PathList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 86
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 88
    .local v3, "la":C
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_4c

    .line 89
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 90
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ims/PathParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_61

    .line 95
    .end local v1    # "path":Lgov/nist/javax/sip/header/ims/Path;
    .end local v3    # "la":C
    goto :goto_26

    .line 91
    .restart local v1    # "path":Lgov/nist/javax/sip/header/ims/Path;
    .restart local v3    # "la":C
    :cond_4c
    const/16 v4, 0xa

    if-ne v3, v4, :cond_5a

    .line 92
    nop

    .line 96
    .end local v1    # "path":Lgov/nist/javax/sip/header/ims/Path;
    .end local v3    # "la":C
    nop

    .line 98
    sget-boolean v1, Lgov/nist/javax/sip/parser/ims/PathParser;->debug:Z

    if-eqz v1, :cond_59

    .line 99
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PathParser;->dbg_leave(Ljava/lang/String;)V

    .line 96
    :cond_59
    return-object v0

    .line 94
    .restart local v1    # "path":Lgov/nist/javax/sip/header/ims/Path;
    .restart local v3    # "la":C
    :cond_5a
    :try_start_5a
    const-string v4, "unexpected char"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ims/PathParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "pathList":Lgov/nist/javax/sip/header/ims/PathList;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/PathParser;
    throw v4
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_61

    .line 98
    .end local v1    # "path":Lgov/nist/javax/sip/header/ims/Path;
    .end local v3    # "la":C
    .restart local v0    # "pathList":Lgov/nist/javax/sip/header/ims/PathList;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/PathParser;
    :catchall_61
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/ims/PathParser;->debug:Z

    if-eqz v3, :cond_69

    .line 99
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ims/PathParser;->dbg_leave(Ljava/lang/String;)V

    .line 100
    :cond_69
    throw v1
.end method
