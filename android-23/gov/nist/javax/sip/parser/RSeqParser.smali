.class public Lgov/nist/javax/sip/parser/RSeqParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RSeqParser.java"


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
    .param p1, "rseq"    # Ljava/lang/String;

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
    sget-boolean v3, Lgov/nist/javax/sip/parser/RSeqParser;->debug:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 68
    const-string/jumbo v3, "RSeqParser.parse"

    #@7
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RSeqParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 69
    :cond_0
    new-instance v2, Lgov/nist/javax/sip/header/RSeq;

    #@c
    invoke-direct {v2}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    #@f
    .line 71
    .local v2, "rseq":Lgov/nist/javax/sip/header/RSeq;
    const/16 v3, 0x83c

    #@11
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RSeqParser;->headerName(I)V

    #@14
    .line 73
    const-string/jumbo v3, "RSeq"

    #@17
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/RSeq;->setHeaderName(Ljava/lang/String;)V

    #@1a
    .line 75
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@1c
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v1

    #@20
    .line 77
    .local v1, "number":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@23
    move-result-wide v4

    #@24
    invoke-virtual {v2, v4, v5}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 81
    :try_start_2
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@2c
    .line 83
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    const/16 v4, 0xa

    #@30
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    .line 87
    sget-boolean v3, Lgov/nist/javax/sip/parser/RSeqParser;->debug:Z

    #@35
    if-eqz v3, :cond_1

    #@37
    .line 88
    const-string/jumbo v3, "RSeqParser.parse"

    #@3a
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RSeqParser;->dbg_leave(Ljava/lang/String;)V

    #@3d
    .line 85
    :cond_1
    return-object v2

    #@3e
    .line 78
    :catch_0
    move-exception v0

    #@3f
    .line 79
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@46
    move-result-object v3

    #@47
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    .line 86
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    .end local v1    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@49
    .line 87
    sget-boolean v4, Lgov/nist/javax/sip/parser/RSeqParser;->debug:Z

    #@4b
    if-eqz v4, :cond_2

    #@4d
    .line 88
    const-string/jumbo v4, "RSeqParser.parse"

    #@50
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RSeqParser;->dbg_leave(Ljava/lang/String;)V

    #@53
    .line 86
    :cond_2
    throw v3
.end method
