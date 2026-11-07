.class public Lgov/nist/javax/sip/parser/RAckParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "RAckParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 60
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 61
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "rack"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 70
    sget-boolean v0, Lgov/nist/javax/sip/parser/RAckParser;->debug:Z

    const-string v1, "RAckParser.parse"

    if-eqz v0, :cond_9

    .line 71
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RAckParser;->dbg_enter(Ljava/lang/String;)V

    .line 72
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/RAck;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    .line 74
    .local v0, "rack":Lgov/nist/javax/sip/header/RAck;
    const/16 v2, 0x83d

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/RAckParser;->headerName(I)V

    .line 76
    const-string v2, "RAck"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/RAck;->setHeaderName(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_70

    .line 79
    :try_start_18
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "number":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    .line 81
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 83
    .end local v2    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    .line 84
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 85
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v4, 0xfff

    invoke-virtual {v2, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 86
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getNextToken()Lgov/nist/core/Token;

    move-result-object v2

    .line 87
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V
    :try_end_50
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_18 .. :try_end_50} :catch_66
    .catchall {:try_start_18 .. :try_end_50} :catchall_70

    .line 91
    .end local v2    # "token":Lgov/nist/core/Token;
    .end local v3    # "number":Ljava/lang/String;
    nop

    .line 92
    :try_start_51
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 93
    iget-object v2, p0, Lgov/nist/javax/sip/parser/RAckParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_70

    .line 95
    nop

    .line 97
    sget-boolean v2, Lgov/nist/javax/sip/parser/RAckParser;->debug:Z

    if-eqz v2, :cond_65

    .line 98
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RAckParser;->dbg_leave(Ljava/lang/String;)V

    .line 95
    :cond_65
    return-object v0

    .line 89
    :catch_66
    move-exception v2

    .line 90
    .local v2, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_67
    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/RAckParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local v0    # "rack":Lgov/nist/javax/sip/header/RAck;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/RAckParser;
    throw v3
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_70

    .line 97
    .end local v2    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "rack":Lgov/nist/javax/sip/header/RAck;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/RAckParser;
    :catchall_70
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/RAckParser;->debug:Z

    if-eqz v3, :cond_78

    .line 98
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/RAckParser;->dbg_leave(Ljava/lang/String;)V

    .line 99
    :cond_78
    throw v2
.end method
