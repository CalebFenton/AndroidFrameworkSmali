.class public Lgov/nist/javax/sip/parser/RSeqParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RSeqParser.java"


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
    .param p1, "rseq"    # Ljava/lang/String;

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
    sget-boolean v0, Lgov/nist/javax/sip/parser/RSeqParser;->debug:Z

    const-string v1, "RSeqParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RSeqParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    .line 71
    .local v0, "rseq":Lgov/nist/javax/sip/header/RSeq;
    const/16 v2, 0x83c

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RSeqParser;->headerName(I)V

    .line 73
    const-string v2, "RSeq"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/RSeq;->setHeaderName(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_45

    .line 77
    .local v2, "number":Ljava/lang/String;
    :try_start_1e
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V
    :try_end_25
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1e .. :try_end_25} :catch_3b
    .catchall {:try_start_1e .. :try_end_25} :catchall_45

    .line 80
    nop

    .line 81
    :try_start_26
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 83
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RSeqParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_45

    .line 85
    nop

    .line 87
    sget-boolean v3, Lgov/nist/javax/sip/parser/RSeqParser;->debug:Z

    if-eqz v3, :cond_3a

    .line 88
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RSeqParser;->dbg_leave(Ljava/lang/String;)V

    .line 85
    :cond_3a
    return-object v0

    .line 78
    :catch_3b
    move-exception v3

    .line 79
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_3c
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/RSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/RSeqParser;
    throw v4
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_45

    .line 87
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/RSeqParser;
    :catchall_45
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/RSeqParser;->debug:Z

    if-eqz v3, :cond_4d

    .line 88
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RSeqParser;->dbg_leave(Ljava/lang/String;)V

    .line 89
    :cond_4d
    throw v2
.end method
