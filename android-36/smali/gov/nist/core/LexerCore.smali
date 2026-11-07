.class public Lgov/nist/core/LexerCore;
.super Lgov/nist/core/StringTokenizer;
.source "LexerCore.java"


# static fields
.field public static final greylist ALPHA:I = 0x1003

.field static final greylist ALPHADIGIT_VALID_CHARS:C = '\ufffd'

.field static final greylist ALPHA_VALID_CHARS:C = '\uffff'

.field public static final greylist AND:I = 0x26

.field public static final greylist AT:I = 0x40

.field public static final greylist BACKSLASH:I = 0x5c

.field public static final greylist BACK_QUOTE:I = 0x60

.field public static final greylist BAR:I = 0x7c

.field public static final greylist COLON:I = 0x3a

.field public static final greylist DIGIT:I = 0x1002

.field static final greylist DIGIT_VALID_CHARS:C = '\ufffe'

.field public static final greylist DOLLAR:I = 0x24

.field public static final greylist DOT:I = 0x2e

.field public static final greylist DOUBLEQUOTE:I = 0x22

.field public static final greylist END:I = 0x1000

.field public static final greylist EQUALS:I = 0x3d

.field public static final greylist EXCLAMATION:I = 0x21

.field public static final greylist GREATER_THAN:I = 0x3e

.field public static final greylist HAT:I = 0x5e

.field public static final greylist HT:I = 0x9

.field public static final greylist ID:I = 0xfff

.field public static final greylist LESS_THAN:I = 0x3c

.field public static final greylist LPAREN:I = 0x28

.field public static final greylist L_CURLY:I = 0x7b

.field public static final greylist L_SQUARE_BRACKET:I = 0x5b

.field public static final greylist MINUS:I = 0x2d

.field public static final greylist NULL:I = 0x0

.field public static final greylist PERCENT:I = 0x25

.field public static final greylist PLUS:I = 0x2b

.field public static final greylist POUND:I = 0x23

.field public static final greylist QUESTION:I = 0x3f

.field public static final greylist QUOTE:I = 0x27

.field public static final greylist RPAREN:I = 0x29

.field public static final greylist R_CURLY:I = 0x7d

.field public static final greylist R_SQUARE_BRACKET:I = 0x5d

.field public static final greylist SAFE:I = 0xffe

.field public static final greylist SEMICOLON:I = 0x3b

.field public static final greylist SLASH:I = 0x2f

.field public static final greylist SP:I = 0x20

.field public static final greylist STAR:I = 0x2a

.field public static final greylist START:I = 0x800

.field public static final greylist TILDE:I = 0x7e

.field public static final greylist UNDERSCORE:I = 0x5f

.field public static final greylist WHITESPACE:I = 0x1001

.field protected static final greylist globalSymbolTable:Ljava/util/Hashtable;

.field protected static final greylist lexerTables:Ljava/util/Hashtable;


# instance fields
.field protected greylist currentLexer:Ljava/util/Hashtable;

.field protected greylist currentLexerName:Ljava/lang/String;

.field protected greylist currentMatch:Lgov/nist/core/Token;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    .line 93
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    .line 94
    return-void
.end method

.method protected constructor greylist <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Lgov/nist/core/StringTokenizer;-><init>()V

    .line 130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 131
    const-string v0, "charLexer"

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "lexerName"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;

    .line 137
    invoke-direct {p0, p2}, Lgov/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public static greylist charAsString(C)Ljava/lang/String;
    .registers 2
    .param p0, "ch"    # C

    .line 646
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist isTokenChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 300
    invoke-static {p0}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 301
    :cond_8
    sparse-switch p0, :sswitch_data_e

    .line 315
    const/4 v0, 0x0

    return v0

    .line 313
    :sswitch_d
    return v1

    :sswitch_data_e
    .sparse-switch
        0x21 -> :sswitch_d
        0x25 -> :sswitch_d
        0x27 -> :sswitch_d
        0x2a -> :sswitch_d
        0x2b -> :sswitch_d
        0x2d -> :sswitch_d
        0x2e -> :sswitch_d
        0x5f -> :sswitch_d
        0x60 -> :sswitch_d
        0x7e -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public greylist SPorHT()V
    .registers 4

    .line 279
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 280
    .local v1, "c":C
    :goto_5
    const/16 v2, 0x20

    if-eq v1, v2, :cond_f

    const/16 v2, 0x9

    if-ne v1, v2, :cond_e

    goto :goto_f

    .line 286
    .end local v1    # "c":C
    :cond_e
    goto :goto_1a

    .line 281
    .restart local v1    # "c":C
    :cond_f
    :goto_f
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 282
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_17} :catch_19

    move v1, v2

    goto :goto_5

    .line 284
    .end local v1    # "c":C
    :catch_19
    move-exception v0

    .line 287
    :goto_1a
    return-void
.end method

.method protected greylist addKeyword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 102
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_16
    return-void
.end method

.method protected greylist addLexer(Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 4
    .param p1, "lexerName"    # Ljava/lang/String;

    .line 115
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 116
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    if-nez v0, :cond_1c

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 118
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1c
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    return-object v0
.end method

.method public greylist byteStringNoComma()Ljava/lang/String;
    .registers 4

    .line 629
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 632
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 633
    .local v1, "next":C
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_13

    .line 634
    goto :goto_1c

    .line 636
    :cond_13
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1a
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_1a} :catch_1d

    .line 639
    nop

    .end local v1    # "next":C
    goto :goto_5

    .line 641
    :cond_1c
    :goto_1c
    goto :goto_1e

    .line 640
    :catch_1d
    move-exception v1

    .line 642
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist byteStringNoSemicolon()Ljava/lang/String;
    .registers 4

    .line 582
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 585
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 587
    .local v1, "next":C
    if-eqz v1, :cond_22

    const/16 v2, 0xa

    if-eq v1, v2, :cond_22

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_22

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_19

    .line 588
    goto :goto_22

    .line 590
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_20
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_20} :catch_28

    .line 593
    nop

    .end local v1    # "next":C
    goto :goto_5

    .line 596
    :cond_22
    :goto_22
    nop

    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 594
    :catch_28
    move-exception v1

    .line 595
    .local v1, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist byteStringNoSlash()Ljava/lang/String;
    .registers 4

    .line 606
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 609
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 611
    .local v1, "next":C
    if-eqz v1, :cond_1e

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1e

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_15

    .line 612
    goto :goto_1e

    .line 614
    :cond_15
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1c
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_1c} :catch_24

    .line 617
    nop

    .end local v1    # "next":C
    goto :goto_5

    .line 620
    :cond_1e
    :goto_1e
    nop

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 618
    :catch_24
    move-exception v1

    .line 619
    .local v1, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist charAsString(I)Ljava/lang/String;
    .registers 5
    .param p1, "nchars"    # I

    .line 653
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist comment()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 552
    .local v0, "retval":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_10

    .line 553
    const/4 v1, 0x0

    return-object v1

    .line 554
    :cond_10
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 556
    :goto_14
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v1

    .line 557
    .local v1, "next":C
    const/16 v2, 0x29

    if-ne v1, v2, :cond_22

    .line 558
    nop

    .line 575
    .end local v1    # "next":C
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 559
    .restart local v1    # "next":C
    :cond_22
    if-eqz v1, :cond_56

    .line 563
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_52

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v1

    .line 566
    if-eqz v1, :cond_35

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_55

    .line 567
    :cond_35
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 572
    :cond_52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 574
    .end local v1    # "next":C
    :goto_55
    goto :goto_14

    .line 560
    .restart local v1    # "next":C
    :cond_56
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public greylist consumeValidChars([C)V
    .registers 10
    .param p1, "validChars"    # [C

    .line 485
    array-length v0, p1

    .line 487
    .local v0, "validCharsLength":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 488
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 489
    .local v2, "nextChar":C
    const/4 v3, 0x0

    .line 490
    .local v3, "isValid":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    const/4 v5, 0x1

    if-ge v4, v0, :cond_34

    .line 491
    aget-char v6, p1, v4

    .line 492
    .local v6, "validChar":C
    packed-switch v6, :pswitch_data_3e

    .line 503
    if-ne v2, v6, :cond_2c

    move v7, v5

    goto :goto_2d

    .line 494
    :pswitch_1a
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v7

    .line 495
    .end local v3    # "isValid":Z
    .local v7, "isValid":Z
    move v3, v7

    goto :goto_2e

    .line 497
    .end local v7    # "isValid":Z
    .restart local v3    # "isValid":Z
    :pswitch_20
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v7

    .line 498
    .end local v3    # "isValid":Z
    .restart local v7    # "isValid":Z
    move v3, v7

    goto :goto_2e

    .line 500
    .end local v7    # "isValid":Z
    .restart local v3    # "isValid":Z
    :pswitch_26
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v7

    .line 501
    .end local v3    # "isValid":Z
    .restart local v7    # "isValid":Z
    move v3, v7

    goto :goto_2e

    .line 503
    .end local v7    # "isValid":Z
    .restart local v3    # "isValid":Z
    :cond_2c
    move v7, v1

    :goto_2d
    move v3, v7

    .line 505
    :goto_2e
    if-eqz v3, :cond_31

    .line 506
    goto :goto_34

    .line 490
    .end local v6    # "validChar":C
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 509
    .end local v4    # "i":I
    :cond_34
    :goto_34
    if-eqz v3, :cond_3a

    .line 510
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->consume(I)V
    :try_end_39
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_39} :catch_3b

    .line 515
    .end local v2    # "nextChar":C
    .end local v3    # "isValid":Z
    goto :goto_1

    .line 518
    :cond_3a
    goto :goto_3c

    .line 516
    :catch_3b
    move-exception v1

    .line 519
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0xfffd
        :pswitch_26
        :pswitch_20
        :pswitch_1a
    .end packed-switch
.end method

.method public greylist createParseException()Ljava/text/ParseException;
    .registers 4

    .line 759
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public greylist getBuffer()Ljava/lang/String;
    .registers 2

    .line 753
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getNextId()Ljava/lang/String;
    .registers 2

    .line 155
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNextToken()Lgov/nist/core/Token;
    .registers 2

    .line 160
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v0
.end method

.method public greylist getPtr()I
    .registers 2

    .line 747
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public greylist getRest()Ljava/lang/String;
    .registers 3

    .line 701
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    .line 702
    const/4 v0, 0x0

    return-object v0

    .line 704
    :cond_c
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getString(C)Ljava/lang/String;
    .registers 9
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 714
    .local v0, "retval":Ljava/lang/StringBuffer;
    :goto_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    .line 718
    .local v2, "next":C
    const-string v3, "unexpected EOL"

    if-eqz v2, :cond_50

    .line 722
    const/4 v4, 0x1

    if-ne v2, p1, :cond_1a

    .line 723
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 724
    nop

    .line 741
    .end local v2    # "next":C
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 725
    .restart local v2    # "next":C
    :cond_1a
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_49

    .line 726
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 727
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 728
    .local v1, "nextchar":C
    if-eqz v1, :cond_2e

    .line 733
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 734
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 736
    .end local v1    # "nextchar":C
    goto :goto_4f

    .line 729
    .restart local v1    # "nextchar":C
    :cond_2e
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v4, v3, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 737
    .end local v1    # "nextchar":C
    :cond_49
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 738
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 740
    .end local v2    # "next":C
    :goto_4f
    goto :goto_5

    .line 719
    .restart local v2    # "next":C
    :cond_50
    new-instance v1, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public greylist lookupToken(I)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # I

    .line 106
    const/16 v0, 0x800

    if-le p1, v0, :cond_11

    .line 107
    sget-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 109
    :cond_11
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 110
    .local v0, "ch":Ljava/lang/Character;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist markInputPosition()I
    .registers 2

    .line 687
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    return v0
.end method

.method public greylist match(I)Lgov/nist/core/Token;
    .registers 7
    .param p1, "tok"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 205
    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-eqz v0, :cond_1a

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 208
    :cond_1a
    const/16 v0, 0x800

    const/16 v1, 0x1000

    if-le p1, v0, :cond_e2

    if-ge p1, v1, :cond_e2

    .line 209
    const-string v0, "\nID expected"

    const/16 v1, 0xfff

    if-ne p1, v1, :cond_5e

    .line 211
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 213
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "id":Ljava/lang/String;
    new-instance v2, Lgov/nist/core/Token;

    invoke-direct {v2}, Lgov/nist/core/Token;-><init>()V

    iput-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 215
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v0, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v1, v2, Lgov/nist/core/Token;->tokenType:I

    .line 217
    .end local v0    # "id":Ljava/lang/String;
    goto/16 :goto_171

    .line 212
    :cond_43
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 217
    :cond_5e
    const/16 v1, 0xffe

    if-ne p1, v1, :cond_98

    .line 218
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsSafeToken()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 220
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    move-result-object v0

    .line 221
    .restart local v0    # "id":Ljava/lang/String;
    new-instance v2, Lgov/nist/core/Token;

    invoke-direct {v2}, Lgov/nist/core/Token;-><init>()V

    iput-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 222
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v0, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 223
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput v1, v2, Lgov/nist/core/Token;->tokenType:I

    .line 224
    .end local v0    # "id":Ljava/lang/String;
    goto/16 :goto_171

    .line 219
    :cond_7d
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 225
    :cond_98
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "nexttok":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 228
    .local v1, "cur":Ljava/lang/Integer;
    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_c1

    .line 232
    new-instance v2, Lgov/nist/core/Token;

    invoke-direct {v2}, Lgov/nist/core/Token;-><init>()V

    iput-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 233
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput-object v0, v2, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v2, Lgov/nist/core/Token;->tokenType:I

    .line 235
    .end local v0    # "nexttok":Ljava/lang/String;
    .end local v1    # "cur":Ljava/lang/Integer;
    goto/16 :goto_171

    .line 229
    .restart local v0    # "nexttok":Ljava/lang/String;
    .restart local v1    # "cur":Ljava/lang/Integer;
    :cond_c1
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nUnexpected Token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 236
    .end local v0    # "nexttok":Ljava/lang/String;
    .end local v1    # "cur":Ljava/lang/Integer;
    :cond_e2
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-le p1, v1, :cond_167

    .line 238
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 239
    .local v0, "next":C
    const/16 v1, 0x1002

    if-ne p1, v1, :cond_128

    .line 240
    invoke-static {v0}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 242
    new-instance v1, Lgov/nist/core/Token;

    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 243
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 244
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v1, Lgov/nist/core/Token;->tokenType:I

    .line 246
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_166

    .line 241
    :cond_10b
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nExpecting DIGIT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 248
    :cond_128
    const/16 v1, 0x1003

    if-ne p1, v1, :cond_166

    .line 249
    invoke-static {v0}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 251
    new-instance v1, Lgov/nist/core/Token;

    invoke-direct {v1}, Lgov/nist/core/Token;-><init>()V

    iput-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 252
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    .line 253
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    iput p1, v1, Lgov/nist/core/Token;->tokenType:I

    .line 255
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_166

    .line 250
    :cond_149
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nExpecting ALPHA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 259
    .end local v0    # "next":C
    :cond_166
    :goto_166
    goto :goto_171

    .line 261
    :cond_167
    int-to-char v1, p1

    .line 262
    .local v1, "ch":C
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v0

    .line 263
    .restart local v0    # "next":C
    if-ne v0, v1, :cond_174

    .line 268
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 274
    .end local v0    # "next":C
    .end local v1    # "ch":C
    :goto_171
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    return-object v0

    .line 270
    .restart local v0    # "next":C
    .restart local v1    # "ch":C
    :cond_174
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nExpecting  >>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<< got >>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public greylist number()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 662
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 664
    .local v0, "startIdx":I
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    invoke-static {v2}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 669
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 671
    :goto_11
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    .line 672
    .local v3, "next":C
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 673
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 676
    .end local v3    # "next":C
    goto :goto_11

    .line 677
    :cond_1f
    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 665
    :cond_28
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unexpected token at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 666
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v2, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local v0    # "startIdx":I
    .end local p0    # "this":Lgov/nist/core/LexerCore;
    throw v2
    :try_end_4d
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_4d} :catch_4d

    .line 678
    .restart local v0    # "startIdx":I
    .restart local p0    # "this":Lgov/nist/core/LexerCore;
    :catch_4d
    move-exception v1

    .line 679
    .local v1, "ex":Ljava/text/ParseException;
    iget-object v2, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist peekNextId()Ljava/lang/String;
    .registers 4

    .line 145
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 146
    .local v0, "oldPtr":I
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "retval":Ljava/lang/String;
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    iput v2, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    .line 148
    iput v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 149
    return-object v1
.end method

.method public greylist peekNextToken()Lgov/nist/core/Token;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public greylist peekNextToken(I)[Lgov/nist/core/Token;
    .registers 10
    .param p1, "ntokens"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 171
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 172
    .local v0, "old":I
    new-array v1, p1, [Lgov/nist/core/Token;

    .line 173
    .local v1, "retval":[Lgov/nist/core/Token;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, p1, :cond_5f

    .line 174
    new-instance v3, Lgov/nist/core/Token;

    invoke-direct {v3}, Lgov/nist/core/Token;-><init>()V

    .line 175
    .local v3, "tok":Lgov/nist/core/Token;
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 176
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "id":Ljava/lang/String;
    iput-object v4, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 178
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "idUppercase":Ljava/lang/String;
    iget-object v6, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 180
    iget-object v6, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 181
    .local v6, "type":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v3, Lgov/nist/core/Token;->tokenType:I

    .line 182
    .end local v6    # "type":Ljava/lang/Integer;
    goto :goto_37

    .line 183
    :cond_33
    const/16 v6, 0xfff

    iput v6, v3, Lgov/nist/core/Token;->tokenType:I

    .line 184
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "idUppercase":Ljava/lang/String;
    :goto_37
    goto :goto_5a

    .line 185
    :cond_38
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v4

    .line 186
    .local v4, "nextChar":C
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    .line 187
    invoke-static {v4}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 188
    const/16 v5, 0x1003

    iput v5, v3, Lgov/nist/core/Token;->tokenType:I

    goto :goto_5a

    .line 189
    :cond_4d
    invoke-static {v4}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 190
    const/16 v5, 0x1002

    iput v5, v3, Lgov/nist/core/Token;->tokenType:I

    goto :goto_5a

    .line 192
    :cond_58
    iput v4, v3, Lgov/nist/core/Token;->tokenType:I

    .line 194
    .end local v4    # "nextChar":C
    :goto_5a
    aput-object v3, v1, v2

    .line 173
    .end local v3    # "tok":Lgov/nist/core/Token;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 196
    .end local v2    # "i":I
    :cond_5f
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    iput v2, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    .line 197
    iput v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 198
    return-object v1
.end method

.method public greylist quotedString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 526
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 527
    .local v0, "startIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_f

    .line 528
    const/4 v1, 0x0

    return-object v1

    .line 529
    :cond_f
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 531
    :goto_12
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    move-result v2

    .line 532
    .local v2, "next":C
    if-ne v2, v3, :cond_23

    .line 534
    nop

    .line 543
    .end local v2    # "next":C
    iget-object v2, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 535
    .restart local v2    # "next":C
    :cond_23
    if-eqz v2, :cond_2d

    .line 539
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_2c

    .line 540
    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 542
    .end local v2    # "next":C
    :cond_2c
    goto :goto_12

    .line 536
    .restart local v2    # "next":C
    :cond_2d
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :unexpected EOL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-direct {v1, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public greylist rewindInputPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .line 694
    iput p1, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 695
    return-void
.end method

.method public greylist selectLexer(Ljava/lang/String;)V
    .registers 2
    .param p1, "lexerName"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public greylist startsId()Z
    .registers 3

    .line 322
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 323
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v0
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_9} :catch_a

    return v0

    .line 324
    .end local v1    # "nextChar":C
    :catch_a
    move-exception v1

    .line 325
    .local v1, "ex":Ljava/text/ParseException;
    return v0
.end method

.method public greylist startsSafeToken()Z
    .registers 5

    .line 331
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 332
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v2
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_9} :catch_12

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    .line 333
    return v3

    .line 336
    :cond_d
    sparse-switch v1, :sswitch_data_14

    .line 364
    return v0

    .line 362
    :sswitch_11
    return v3

    .line 367
    .end local v1    # "nextChar":C
    :catch_12
    move-exception v1

    .line 368
    .local v1, "ex":Ljava/text/ParseException;
    return v0

    :sswitch_data_14
    .sparse-switch
        0x21 -> :sswitch_11
        0x22 -> :sswitch_11
        0x23 -> :sswitch_11
        0x24 -> :sswitch_11
        0x25 -> :sswitch_11
        0x27 -> :sswitch_11
        0x2a -> :sswitch_11
        0x2b -> :sswitch_11
        0x2d -> :sswitch_11
        0x2e -> :sswitch_11
        0x2f -> :sswitch_11
        0x3a -> :sswitch_11
        0x3b -> :sswitch_11
        0x3d -> :sswitch_11
        0x3f -> :sswitch_11
        0x40 -> :sswitch_11
        0x5b -> :sswitch_11
        0x5d -> :sswitch_11
        0x5e -> :sswitch_11
        0x5f -> :sswitch_11
        0x60 -> :sswitch_11
        0x7b -> :sswitch_11
        0x7c -> :sswitch_11
        0x7d -> :sswitch_11
        0x7e -> :sswitch_11
    .end sparse-switch
.end method

.method public greylist ttoken()Ljava/lang/String;
    .registers 4

    .line 373
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 375
    .local v0, "startIdx":I
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 376
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 377
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 378
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 382
    .end local v1    # "nextChar":C
    goto :goto_2

    .line 383
    :cond_18
    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_20
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_20} :catch_21

    return-object v1

    .line 384
    :catch_21
    move-exception v1

    .line 385
    .local v1, "ex":Ljava/text/ParseException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist ttokenSafe()Ljava/lang/String;
    .registers 5

    .line 431
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    .line 433
    .local v0, "startIdx":I
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 434
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v1

    .line 435
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 436
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    goto :goto_23

    .line 439
    :cond_18
    const/4 v2, 0x0

    .line 440
    .local v2, "isValidChar":Z
    sparse-switch v1, :sswitch_data_30

    goto :goto_1e

    .line 465
    :sswitch_1d
    const/4 v2, 0x1

    .line 467
    :goto_1e
    if-eqz v2, :cond_24

    .line 468
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    .line 474
    .end local v1    # "nextChar":C
    .end local v2    # "isValidChar":Z
    :goto_23
    goto :goto_2

    .line 475
    :cond_24
    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2c} :catch_2d

    return-object v1

    .line 476
    :catch_2d
    move-exception v1

    .line 477
    .local v1, "ex":Ljava/text/ParseException;
    const/4 v2, 0x0

    return-object v2

    :sswitch_data_30
    .sparse-switch
        0x21 -> :sswitch_1d
        0x22 -> :sswitch_1d
        0x23 -> :sswitch_1d
        0x24 -> :sswitch_1d
        0x25 -> :sswitch_1d
        0x27 -> :sswitch_1d
        0x2a -> :sswitch_1d
        0x2b -> :sswitch_1d
        0x2d -> :sswitch_1d
        0x2e -> :sswitch_1d
        0x2f -> :sswitch_1d
        0x3a -> :sswitch_1d
        0x3b -> :sswitch_1d
        0x3f -> :sswitch_1d
        0x40 -> :sswitch_1d
        0x5b -> :sswitch_1d
        0x5d -> :sswitch_1d
        0x5e -> :sswitch_1d
        0x5f -> :sswitch_1d
        0x60 -> :sswitch_1d
        0x7b -> :sswitch_1d
        0x7c -> :sswitch_1d
        0x7d -> :sswitch_1d
        0x7e -> :sswitch_1d
    .end sparse-switch
.end method
