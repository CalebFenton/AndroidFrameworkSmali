.class public Lgov/nist/javax/sip/parser/MimeVersionParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "MimeVersionParser.java"


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
    .param p1, "mimeVersion"    # Ljava/lang/String;

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

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    const-string v1, "MimeVersionParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/MimeVersion;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MimeVersion;-><init>()V

    .line 71
    .local v0, "mimeVersion":Lgov/nist/javax/sip/header/MimeVersion;
    const/16 v2, 0x80c

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/MimeVersionParser;->headerName(I)V

    .line 73
    const-string v2, "MIME-Version"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/MimeVersion;->setHeaderName(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_59

    .line 76
    :try_start_18
    iget-object v2, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "majorVersion":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/MimeVersion;->setMajorVersion(I)V

    .line 78
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 79
    iget-object v3, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "minorVersion":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setMinorVersion(I)V
    :try_end_39
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_18 .. :try_end_39} :catch_4f
    .catchall {:try_start_18 .. :try_end_39} :catchall_59

    .line 84
    .end local v2    # "majorVersion":Ljava/lang/String;
    .end local v3    # "minorVersion":Ljava/lang/String;
    nop

    .line 85
    :try_start_3a
    iget-object v2, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 87
    iget-object v2, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_59

    .line 89
    nop

    .line 91
    sget-boolean v2, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v2, :cond_4e

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    .line 89
    :cond_4e
    return-object v0

    .line 82
    :catch_4f
    move-exception v2

    .line 83
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_50
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/MimeVersionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local v0    # "mimeVersion":Lgov/nist/javax/sip/header/MimeVersion;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/MimeVersionParser;
    throw v3
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_59

    .line 91
    .end local v2    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "mimeVersion":Lgov/nist/javax/sip/header/MimeVersion;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/MimeVersionParser;
    :catchall_59
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    if-eqz v3, :cond_61

    .line 92
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    .line 93
    :cond_61
    throw v2
.end method
