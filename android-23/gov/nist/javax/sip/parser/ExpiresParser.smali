.class public Lgov/nist/javax/sip/parser/ExpiresParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ExpiresParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 48
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    new-instance v3, Lgov/nist/javax/sip/header/Expires;

    #@2
    invoke-direct {v3}, Lgov/nist/javax/sip/header/Expires;-><init>()V

    #@5
    .line 65
    .local v3, "expires":Lgov/nist/javax/sip/header/Expires;
    sget-boolean v5, Lgov/nist/javax/sip/parser/ExpiresParser;->debug:Z

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 66
    const-string/jumbo v5, "parse"

    #@c
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ExpiresParser;->dbg_enter(Ljava/lang/String;)V

    #@f
    .line 68
    :cond_0
    :try_start_0
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    #@11
    const/16 v6, 0x82a

    #@13
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@16
    .line 69
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    #@18
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1b
    .line 70
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    #@1d
    const/16 v6, 0x3a

    #@1f
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@22
    .line 71
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    #@24
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@27
    .line 72
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 73
    .local v4, "nextId":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    #@2f
    const/16 v6, 0xa

    #@31
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 75
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@37
    move-result v0

    #@38
    .line 76
    .local v0, "delta":I
    invoke-virtual {v3, v0}, Lgov/nist/javax/sip/header/Expires;->setExpires(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 84
    sget-boolean v5, Lgov/nist/javax/sip/parser/ExpiresParser;->debug:Z

    #@3d
    if-eqz v5, :cond_1

    #@3f
    .line 85
    const-string/jumbo v5, "parse"

    #@42
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ExpiresParser;->dbg_leave(Ljava/lang/String;)V

    #@45
    .line 77
    :cond_1
    return-object v3

    #@46
    .line 80
    .end local v0    # "delta":I
    :catch_0
    move-exception v2

    #@47
    .line 81
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_2
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@4e
    move-result-object v5

    #@4f
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    .line 83
    .end local v2    # "ex":Ljavax/sip/InvalidArgumentException;
    .end local v4    # "nextId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@51
    .line 84
    sget-boolean v6, Lgov/nist/javax/sip/parser/ExpiresParser;->debug:Z

    #@53
    if-eqz v6, :cond_2

    #@55
    .line 85
    const-string/jumbo v6, "parse"

    #@58
    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/parser/ExpiresParser;->dbg_leave(Ljava/lang/String;)V

    #@5b
    .line 83
    :cond_2
    throw v5

    #@5c
    .line 78
    .restart local v4    # "nextId":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@5d
    .line 79
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string/jumbo v5, "bad integer format"

    #@60
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@63
    move-result-object v5

    #@64
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
