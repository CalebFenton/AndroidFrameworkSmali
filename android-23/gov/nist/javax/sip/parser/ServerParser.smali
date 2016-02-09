.class public Lgov/nist/javax/sip/parser/ServerParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ServerParser.java"


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
    .param p1, "server"    # Ljava/lang/String;

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x28

    #@2
    const/16 v7, 0xa

    #@4
    .line 66
    sget-boolean v5, Lgov/nist/javax/sip/parser/ServerParser;->debug:Z

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 67
    const-string/jumbo v5, "ServerParser.parse"

    #@b
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ServerParser;->dbg_enter(Ljava/lang/String;)V

    #@e
    .line 68
    :cond_0
    new-instance v3, Lgov/nist/javax/sip/header/Server;

    #@10
    invoke-direct {v3}, Lgov/nist/javax/sip/header/Server;-><init>()V

    #@13
    .line 70
    .local v3, "server":Lgov/nist/javax/sip/header/Server;
    const/16 v5, 0x812

    #@15
    :try_start_0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ServerParser;->headerName(I)V

    #@18
    .line 71
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    const/4 v6, 0x0

    #@1b
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@1e
    move-result v5

    #@1f
    if-ne v5, v7, :cond_2

    #@21
    .line 72
    const-string/jumbo v5, "empty header"

    #@24
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ServerParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@27
    move-result-object v5

    #@28
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 99
    :catchall_0
    move-exception v5

    #@2a
    .line 100
    sget-boolean v6, Lgov/nist/javax/sip/parser/ServerParser;->debug:Z

    #@2c
    if-eqz v6, :cond_1

    #@2e
    .line 101
    const-string/jumbo v6, "ServerParser.parse"

    #@31
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/ServerParser;->dbg_leave(Ljava/lang/String;)V

    #@34
    .line 99
    :cond_1
    throw v5

    #@35
    .line 75
    :cond_2
    :goto_0
    :try_start_1
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    const/4 v6, 0x0

    #@38
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@3b
    move-result v5

    #@3c
    if-eq v5, v7, :cond_5

    #@3e
    .line 76
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    #@40
    const/4 v6, 0x0

    #@41
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_5

    #@47
    .line 77
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    #@49
    const/4 v6, 0x0

    #@4a
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@4d
    move-result v5

    #@4e
    if-ne v5, v8, :cond_3

    #@50
    .line 78
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    #@52
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    .line 79
    .local v0, "comment":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const/16 v6, 0x28

    #@5d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    const/16 v6, 0x29

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v3, v5}, Lgov/nist/javax/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@72
    goto :goto_0

    #@73
    .line 82
    .end local v0    # "comment":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    #@74
    .line 84
    .local v2, "marker":I
    :try_start_2
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    #@76
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->markInputPosition()I

    #@79
    move-result v2

    #@7a
    .line 85
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    #@7c
    const/16 v6, 0x2f

    #@7e
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->getString(C)Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    .line 87
    .local v4, "tok":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@85
    move-result v5

    #@86
    add-int/lit8 v5, v5, -0x1

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@8b
    move-result v5

    #@8c
    if-ne v5, v7, :cond_4

    #@8e
    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@91
    move-result-object v4

    #@92
    .line 89
    :cond_4
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@95
    goto :goto_0

    #@96
    .line 90
    .end local v4    # "tok":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@97
    .line 91
    .local v1, "ex":Ljava/text/ParseException;
    :try_start_3
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    #@99
    invoke-virtual {v5, v2}, Lgov/nist/core/LexerCore;->rewindInputPosition(I)V

    #@9c
    .line 92
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    #@9e
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    #@a1
    move-result-object v5

    #@a2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    .line 93
    .restart local v4    # "tok":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a9
    .line 100
    .end local v1    # "ex":Ljava/text/ParseException;
    .end local v2    # "marker":I
    .end local v4    # "tok":Ljava/lang/String;
    :cond_5
    sget-boolean v5, Lgov/nist/javax/sip/parser/ServerParser;->debug:Z

    #@ab
    if-eqz v5, :cond_6

    #@ad
    .line 101
    const-string/jumbo v5, "ServerParser.parse"

    #@b0
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ServerParser;->dbg_leave(Ljava/lang/String;)V

    #@b3
    .line 104
    :cond_6
    return-object v3
.end method
