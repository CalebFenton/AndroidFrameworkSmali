.class public Lgov/nist/javax/sip/parser/ExpiresParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ExpiresParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

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

    .line 64
    new-instance v0, Lgov/nist/javax/sip/header/Expires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Expires;-><init>()V

    .line 65
    .local v0, "expires":Lgov/nist/javax/sip/header/Expires;
    sget-boolean v1, Lgov/nist/javax/sip/parser/ExpiresParser;->debug:Z

    const-string v2, "parse"

    if-eqz v1, :cond_e

    .line 66
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ExpiresParser;->dbg_enter(Ljava/lang/String;)V

    .line 68
    :cond_e
    :try_start_e
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x82a

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 69
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 70
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 71
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    iget-object v1, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "nextId":Ljava/lang/String;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/ExpiresParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_55

    .line 75
    :try_start_33
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 76
    .local v3, "delta":I
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/Expires;->setExpires(I)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_3a} :catch_4d
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_33 .. :try_end_3a} :catch_43
    .catchall {:try_start_33 .. :try_end_3a} :catchall_55

    .line 77
    nop

    .line 84
    sget-boolean v4, Lgov/nist/javax/sip/parser/ExpiresParser;->debug:Z

    if-eqz v4, :cond_42

    .line 85
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ExpiresParser;->dbg_leave(Ljava/lang/String;)V

    .line 77
    :cond_42
    return-object v0

    .line 80
    .end local v3    # "delta":I
    :catch_43
    move-exception v3

    .line 81
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_44
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "expires":Lgov/nist/javax/sip/header/Expires;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ExpiresParser;
    throw v4

    .line 78
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "expires":Lgov/nist/javax/sip/header/Expires;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ExpiresParser;
    :catch_4d
    move-exception v3

    .line 79
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "bad integer format"

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ExpiresParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "expires":Lgov/nist/javax/sip/header/Expires;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/ExpiresParser;
    throw v4
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_55

    .line 84
    .end local v1    # "nextId":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "expires":Lgov/nist/javax/sip/header/Expires;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ExpiresParser;
    :catchall_55
    move-exception v1

    sget-boolean v3, Lgov/nist/javax/sip/parser/ExpiresParser;->debug:Z

    if-eqz v3, :cond_5d

    .line 85
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/ExpiresParser;->dbg_leave(Ljava/lang/String;)V

    .line 86
    :cond_5d
    throw v1
.end method
