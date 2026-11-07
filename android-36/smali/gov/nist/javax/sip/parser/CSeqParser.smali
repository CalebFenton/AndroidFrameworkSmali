.class public Lgov/nist/javax/sip/parser/CSeqParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "CSeqParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 53
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "cseq"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 49
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

    .line 57
    :try_start_0
    new-instance v0, Lgov/nist/javax/sip/header/CSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    .line 59
    .local v0, "c":Lgov/nist/javax/sip/header/CSeq;
    iget-object v1, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x82e

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 60
    iget-object v1, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 61
    iget-object v1, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v1, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 63
    iget-object v1, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v1}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V

    .line 65
    iget-object v2, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 66
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/CSeqParser;->method()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "m":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 72
    iget-object v3, p0, Lgov/nist/javax/sip/parser/CSeqParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_46} :catch_54
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_46} :catch_47

    .line 73
    return-object v0

    .line 77
    .end local v0    # "c":Lgov/nist/javax/sip/header/CSeq;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "m":Ljava/lang/String;
    :catch_47
    move-exception v0

    .line 78
    .local v0, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-static {v0}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    .line 79
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/CSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1

    .line 74
    .end local v0    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_54
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lgov/nist/core/Debug;->printStackTrace(Ljava/lang/Exception;)V

    .line 76
    const-string v1, "Number format exception"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/CSeqParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v1

    throw v1
.end method
