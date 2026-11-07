.class public Lgov/nist/javax/sip/parser/ServerParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ServerParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 56
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 57
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "server"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 66
    sget-boolean v0, Lgov/nist/javax/sip/parser/ServerParser;->debug:Z

    const-string v1, "ServerParser.parse"

    if-eqz v0, :cond_9

    .line 67
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ServerParser;->dbg_enter(Ljava/lang/String;)V

    .line 68
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/Server;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Server;-><init>()V

    .line 70
    .local v0, "server":Lgov/nist/javax/sip/header/Server;
    const/16 v2, 0x812

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ServerParser;->headerName(I)V

    .line 71
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_9b

    .line 75
    :goto_1e
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eq v2, v4, :cond_93

    iget-object v2, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    .line 76
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    if-eqz v2, :cond_93

    .line 77
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v5, 0x28

    if-ne v2, v5, :cond_59

    .line 78
    iget-object v2, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->comment()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "comment":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_10 .. :try_end_58} :catchall_a2

    .line 80
    .end local v2    # "comment":Ljava/lang/String;
    goto :goto_1e

    .line 82
    :cond_59
    const/4 v2, 0x0

    .line 84
    .local v2, "marker":I
    :try_start_5a
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->markInputPosition()I

    move-result v5

    move v2, v5

    .line 85
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->getString(C)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "tok":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_7a

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 89
    :cond_7a
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/text/ParseException; {:try_start_5a .. :try_end_7d} :catch_7f
    .catchall {:try_start_5a .. :try_end_7d} :catchall_a2

    .line 95
    nop

    .line 96
    .end local v2    # "marker":I
    .end local v5    # "tok":Ljava/lang/String;
    goto :goto_1e

    .line 90
    .restart local v2    # "marker":I
    :catch_7f
    move-exception v3

    .line 91
    .local v3, "ex":Ljava/text/ParseException;
    :try_start_80
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4, v2}, Lgov/nist/core/LexerCore;->rewindInputPosition(I)V

    .line 92
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ServerParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getRest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "tok":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/Server;->addProductToken(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_80 .. :try_end_92} :catchall_a2

    .line 94
    nop

    .line 100
    .end local v2    # "marker":I
    .end local v3    # "ex":Ljava/text/ParseException;
    .end local v4    # "tok":Ljava/lang/String;
    :cond_93
    sget-boolean v2, Lgov/nist/javax/sip/parser/ServerParser;->debug:Z

    if-eqz v2, :cond_9a

    .line 101
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ServerParser;->dbg_leave(Ljava/lang/String;)V

    .line 104
    :cond_9a
    return-object v0

    .line 72
    :cond_9b
    :try_start_9b
    const-string v2, "empty header"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ServerParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v2

    .end local v0    # "server":Lgov/nist/javax/sip/header/Server;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ServerParser;
    throw v2
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_a2

    .line 100
    .restart local v0    # "server":Lgov/nist/javax/sip/header/Server;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ServerParser;
    :catchall_a2
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/ServerParser;->debug:Z

    if-eqz v3, :cond_aa

    .line 101
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ServerParser;->dbg_leave(Ljava/lang/String;)V

    .line 102
    :cond_aa
    throw v2
.end method
