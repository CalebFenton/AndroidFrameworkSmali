.class public Lgov/nist/javax/sip/parser/TimeStampParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "TimeStampParser.java"


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
    .param p1, "timeStamp"    # Ljava/lang/String;

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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0x2e

    #@2
    .line 67
    sget-boolean v10, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 68
    const-string/jumbo v10, "TimeStampParser.parse"

    #@9
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_enter(Ljava/lang/String;)V

    #@c
    .line 69
    :cond_0
    new-instance v5, Lgov/nist/javax/sip/header/TimeStamp;

    #@e
    invoke-direct {v5}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    #@11
    .line 71
    .local v5, "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    const/16 v10, 0x837

    #@13
    :try_start_0
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/TimeStampParser;->headerName(I)V

    #@16
    .line 73
    const-string/jumbo v10, "Timestamp"

    #@19
    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/header/TimeStamp;->setHeaderName(Ljava/lang/String;)V

    #@1c
    .line 75
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@1e
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@21
    .line 76
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@23
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result-object v2

    #@27
    .line 80
    .local v2, "firstNumber":Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@29
    const/4 v11, 0x0

    #@2a
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@2d
    move-result v10

    #@2e
    if-ne v10, v12, :cond_3

    #@30
    .line 81
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@32
    const/16 v11, 0x2e

    #@34
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@37
    .line 82
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@39
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    .line 84
    .local v4, "secondNumber":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v10

    #@46
    const-string/jumbo v11, "."

    #@49
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v10

    #@4d
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 85
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@58
    move-result v6

    #@59
    .line 86
    .local v6, "ts":F
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 99
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "secondNumber":Ljava/lang/String;
    .end local v6    # "ts":F
    :goto_0
    :try_start_2
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@5e
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->SPorHT()V

    #@61
    .line 100
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@63
    const/4 v11, 0x0

    #@64
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@67
    move-result v10

    #@68
    const/16 v11, 0xa

    #@6a
    if-eq v10, v11, :cond_1

    #@6c
    .line 101
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@6e
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@71
    move-result-object v2

    #@72
    .line 105
    :try_start_3
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@74
    const/4 v11, 0x0

    #@75
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@78
    move-result v10

    #@79
    if-ne v10, v12, :cond_5

    #@7b
    .line 106
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@7d
    const/16 v11, 0x2e

    #@7f
    invoke-virtual {v10, v11}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@82
    .line 107
    iget-object v10, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    #@84
    invoke-virtual {v10}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    .line 109
    .restart local v4    # "secondNumber":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v10

    #@91
    const-string/jumbo v11, "."

    #@94
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v10

    #@98
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v10

    #@9c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v3

    #@a0
    .line 110
    .restart local v3    # "s":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@a3
    move-result v6

    #@a4
    .line 111
    .restart local v6    # "ts":F
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/header/TimeStamp;->setDelay(F)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a7
    .line 126
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "secondNumber":Ljava/lang/String;
    .end local v6    # "ts":F
    :cond_1
    :goto_1
    sget-boolean v10, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    #@a9
    if-eqz v10, :cond_2

    #@ab
    .line 127
    const-string/jumbo v10, "TimeStampParser.parse"

    #@ae
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    #@b1
    .line 130
    :cond_2
    return-object v5

    #@b2
    .line 88
    :cond_3
    :try_start_4
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@b5
    move-result-wide v8

    #@b6
    .line 89
    .local v8, "ts":J
    invoke-virtual {v5, v8, v9}, Lgov/nist/javax/sip/header/TimeStamp;->setTime(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b9
    goto :goto_0

    #@ba
    .line 93
    .end local v8    # "ts":J
    :catch_0
    move-exception v0

    #@bb
    .line 94
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@be
    move-result-object v10

    #@bf
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@c2
    move-result-object v10

    #@c3
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c4
    .line 125
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v2    # "firstNumber":Ljava/lang/String;
    :catchall_0
    move-exception v10

    #@c5
    .line 126
    sget-boolean v11, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    #@c7
    if-eqz v11, :cond_4

    #@c9
    .line 127
    const-string/jumbo v11, "TimeStampParser.parse"

    #@cc
    invoke-virtual {p0, v11}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    #@cf
    .line 125
    :cond_4
    throw v10

    #@d0
    .line 95
    .restart local v2    # "firstNumber":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@d1
    .line 96
    .local v1, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_6
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@d4
    move-result-object v10

    #@d5
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@d8
    move-result-object v10

    #@d9
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@da
    .line 113
    .end local v1    # "ex":Ljavax/sip/InvalidArgumentException;
    :cond_5
    :try_start_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@dd
    move-result v7

    #@de
    .line 114
    .local v7, "ts":I
    int-to-float v10, v7

    #@df
    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/header/TimeStamp;->setDelay(F)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@e2
    goto :goto_1

    #@e3
    .line 118
    .end local v7    # "ts":I
    :catch_2
    move-exception v0

    #@e4
    .line 119
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    #@e7
    move-result-object v10

    #@e8
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@eb
    move-result-object v10

    #@ec
    throw v10

    #@ed
    .line 120
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    #@ee
    .line 121
    .restart local v1    # "ex":Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    #@f1
    move-result-object v10

    #@f2
    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@f5
    move-result-object v10

    #@f6
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method
