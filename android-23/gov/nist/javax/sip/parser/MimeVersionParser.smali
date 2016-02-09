.class public Lgov/nist/javax/sip/parser/MimeVersionParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "MimeVersionParser.java"


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
    .param p1, "mimeVersion"    # Ljava/lang/String;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    sget-boolean v4, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 68
    const-string/jumbo v4, "MimeVersionParser.parse"

    #@7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 69
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/MimeVersion;

    #@c
    invoke-direct {v2}, Lgov/nist/javax/sip/header/MimeVersion;-><init>()V

    #@f
    .line 71
    .local v2, "mimeVersion":Lgov/nist/javax/sip/header/MimeVersion;
    const/16 v4, 0x80c

    #@11
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->headerName(I)V

    #@14
    .line 73
    const-string/jumbo v4, "MIME-Version"

    #@17
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 76
    :try_start_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    #@1c
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 77
    .local v1, "majorVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v4

    #@24
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setMajorVersion(I)V

    #@27
    .line 78
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    const/16 v5, 0x2e

    #@2b
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@2e
    .line 79
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    .line 80
    .local v3, "minorVersion":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@37
    move-result v4

    #@38
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/MimeVersion;->setMinorVersion(I)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 85
    :try_start_2
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    #@3d
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@40
    .line 87
    iget-object v4, p0, Lgov/nist/javax/sip/parser/MimeVersionParser;->lexer:Lgov/nist/core/LexerCore;

    #@42
    const/16 v5, 0xa

    #@44
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    .line 91
    sget-boolean v4, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    #@49
    if-eqz v4, :cond_1

    #@4b
    .line 92
    const-string/jumbo v4, "MimeVersionParser.parse"

    #@4e
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    #@51
    .line 89
    :cond_1
    return-object v2

    #@52
    .line 82
    .end local v1    # "majorVersion":Ljava/lang/String;
    .end local v3    # "minorVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@53
    .line 83
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/MimeVersionParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@5a
    move-result-object v4

    #@5b
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5c
    .line 90
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    :catchall_0
    move-exception v4

    #@5d
    .line 91
    sget-boolean v5, Lgov/nist/javax/sip/parser/MimeVersionParser;->debug:Z

    #@5f
    if-eqz v5, :cond_2

    #@61
    .line 92
    const-string/jumbo v5, "MimeVersionParser.parse"

    #@64
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/MimeVersionParser;->dbg_leave(Ljava/lang/String;)V

    #@67
    .line 90
    :cond_2
    throw v4
.end method
