.class public Lgov/nist/javax/sip/parser/ContentLengthParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "ContentLengthParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentLength"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 44
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
    .line 53
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentLengthParser;->debug:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 54
    const-string/jumbo v4, "ContentLengthParser.enter"

    #@7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLengthParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 56
    :cond_0
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentLength;

    #@c
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLength;-><init>()V

    #@f
    .line 57
    .local v0, "contentLength":Lgov/nist/javax/sip/header/ContentLength;
    const/16 v4, 0x824

    #@11
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLengthParser;->headerName(I)V

    #@14
    .line 58
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLengthParser;->lexer:Lgov/nist/core/LexerCore;

    #@16
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 59
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1d
    move-result v4

    #@1e
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V

    #@21
    .line 60
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLengthParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@26
    .line 61
    iget-object v4, p0, Lgov/nist/javax/sip/parser/ContentLengthParser;->lexer:Lgov/nist/core/LexerCore;

    #@28
    const/16 v5, 0xa

    #@2a
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 68
    sget-boolean v4, Lgov/nist/javax/sip/parser/ContentLengthParser;->debug:Z

    #@2f
    if-eqz v4, :cond_1

    #@31
    .line 69
    const-string/jumbo v4, "ContentLengthParser.leave"

    #@34
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLengthParser;->dbg_leave(Ljava/lang/String;)V

    #@37
    .line 62
    :cond_1
    return-object v0

    #@38
    .line 65
    .end local v0    # "contentLength":Lgov/nist/javax/sip/header/ContentLength;
    .end local v3    # "number":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@39
    .line 66
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLengthParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@40
    move-result-object v4

    #@41
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@42
    .line 67
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v4

    #@43
    .line 68
    sget-boolean v5, Lgov/nist/javax/sip/parser/ContentLengthParser;->debug:Z

    #@45
    if-eqz v5, :cond_2

    #@47
    .line 69
    const-string/jumbo v5, "ContentLengthParser.leave"

    #@4a
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/ContentLengthParser;->dbg_leave(Ljava/lang/String;)V

    #@4d
    .line 67
    :cond_2
    throw v4

    #@4e
    .line 63
    :catch_1
    move-exception v2

    #@4f
    .line 64
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_2
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/ContentLengthParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@56
    move-result-object v4

    #@57
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
