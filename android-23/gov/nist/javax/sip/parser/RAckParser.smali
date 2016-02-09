.class public Lgov/nist/javax/sip/parser/RAckParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RAckParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "rack"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

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
    .line 70
    sget-boolean v4, Lgov/nist/javax/sip/parser/RAckParser;->debug:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 71
    const-string/jumbo v4, "RAckParser.parse"

    #@7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RAckParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 72
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/RAck;

    #@c
    invoke-direct {v2}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    #@f
    .line 74
    .local v2, "rack":Lgov/nist/javax/sip/header/RAck;
    const/16 v4, 0x83d

    #@11
    :try_start_0
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RAckParser;->headerName(I)V

    #@14
    .line 76
    const-string/jumbo v4, "RAck"

    #@17
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/RAck;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 79
    :try_start_1
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    #@1c
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 80
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {v2, v4, v5}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    #@27
    .line 81
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@2c
    .line 82
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 83
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@35
    move-result-wide v4

    #@36
    invoke-virtual {v2, v4, v5}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    #@39
    .line 84
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    #@3b
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@3e
    .line 85
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    #@40
    const/16 v5, 0xfff

    #@42
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@45
    .line 86
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    #@47
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    #@4a
    move-result-object v3

    #@4b
    .line 87
    .local v3, "token":Lgov/nist/core/Token;
    invoke-virtual {v3}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    .line 92
    :try_start_2
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    #@54
    invoke-virtual {v4}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@57
    .line 93
    iget-object v4, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    #@59
    const/16 v5, 0xa

    #@5b
    invoke-virtual {v4, v5}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5e
    .line 97
    sget-boolean v4, Lgov/nist/javax/sip/parser/RAckParser;->debug:Z

    #@60
    if-eqz v4, :cond_1

    #@62
    .line 98
    const-string/jumbo v4, "RAckParser.parse"

    #@65
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RAckParser;->dbg_leave(Ljava/lang/String;)V

    #@68
    .line 95
    :cond_1
    return-object v2

    #@69
    .line 89
    .end local v1    # "number":Ljava/lang/String;
    .end local v3    # "token":Lgov/nist/core/Token;
    :catch_0
    move-exception v0

    #@6a
    .line 90
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RAckParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@71
    move-result-object v4

    #@72
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    .line 96
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    :catchall_0
    move-exception v4

    #@74
    .line 97
    sget-boolean v5, Lgov/nist/javax/sip/parser/RAckParser;->debug:Z

    #@76
    if-eqz v5, :cond_2

    #@78
    .line 98
    const-string/jumbo v5, "RAckParser.parse"

    #@7b
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/RAckParser;->dbg_leave(Ljava/lang/String;)V

    #@7e
    .line 96
    :cond_2
    throw v4
.end method
