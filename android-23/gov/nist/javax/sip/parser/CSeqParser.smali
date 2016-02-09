.class public Lgov/nist/javax/sip/parser/CSeqParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "CSeqParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cseq"    # Ljava/lang/String;

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/CSeq;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    #@5
    .line 59
    .local v0, "c":Lgov/nist/javax/sip/header/CSeq;
    iget-object v5, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@7
    const/16 v6, 0x82e

    #@9
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@c
    .line 60
    iget-object v5, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@e
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@11
    .line 61
    iget-object v5, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@13
    const/16 v6, 0x3a

    #@15
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@18
    .line 62
    iget-object v5, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@1a
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@1d
    .line 63
    iget-object v5, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@1f
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 64
    .local v4, "number":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@26
    move-result-wide v6

    #@27
    invoke-virtual {v0, v6, v7}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V

    #@2a
    .line 65
    iget-object v5, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@2c
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@2f
    .line 66
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/CSeqParser;->method()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-static {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    .line 70
    .local v3, "m":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    #@3a
    .line 71
    iget-object v5, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@3c
    invoke-virtual {v5}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@3f
    .line 72
    iget-object v5, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    #@41
    const/16 v6, 0xa

    #@43
    invoke-virtual {v5, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 73
    return-object v0

    #@47
    .line 77
    .end local v0    # "c":Lgov/nist/javax/sip/header/CSeq;
    .end local v3    # "m":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@48
    .line 78
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-static {v2}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    #@4b
    .line 79
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/CSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@52
    move-result-object v5

    #@53
    throw v5

    #@54
    .line 74
    .end local v2    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v1

    #@55
    .line 75
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    #@58
    .line 76
    const-string/jumbo v5, "Number format exception"

    #@5b
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/parser/CSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@5e
    move-result-object v5

    #@5f
    throw v5
.end method
