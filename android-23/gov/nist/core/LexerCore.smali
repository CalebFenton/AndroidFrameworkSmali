.class public Lgov/nist/core/LexerCore;
.super Lgov/nist/core/StringTokenizer;
.source "LexerCore.java"


# static fields
.field public static final ALPHA:I = 0x1003

.field static final ALPHADIGIT_VALID_CHARS:C = '\ufffd'

.field static final ALPHA_VALID_CHARS:C = '\uffff'

.field public static final AND:I = 0x26

.field public static final AT:I = 0x40

.field public static final BACKSLASH:I = 0x5c

.field public static final BACK_QUOTE:I = 0x60

.field public static final BAR:I = 0x7c

.field public static final COLON:I = 0x3a

.field public static final DIGIT:I = 0x1002

.field static final DIGIT_VALID_CHARS:C = '\ufffe'

.field public static final DOLLAR:I = 0x24

.field public static final DOT:I = 0x2e

.field public static final DOUBLEQUOTE:I = 0x22

.field public static final END:I = 0x1000

.field public static final EQUALS:I = 0x3d

.field public static final EXCLAMATION:I = 0x21

.field public static final GREATER_THAN:I = 0x3e

.field public static final HAT:I = 0x5e

.field public static final HT:I = 0x9

.field public static final ID:I = 0xfff

.field public static final LESS_THAN:I = 0x3c

.field public static final LPAREN:I = 0x28

.field public static final L_CURLY:I = 0x7b

.field public static final L_SQUARE_BRACKET:I = 0x5b

.field public static final MINUS:I = 0x2d

.field public static final NULL:I = 0x0

.field public static final PERCENT:I = 0x25

.field public static final PLUS:I = 0x2b

.field public static final POUND:I = 0x23

.field public static final QUESTION:I = 0x3f

.field public static final QUOTE:I = 0x27

.field public static final RPAREN:I = 0x29

.field public static final R_CURLY:I = 0x7d

.field public static final R_SQUARE_BRACKET:I = 0x5d

.field public static final SAFE:I = 0xffe

.field public static final SEMICOLON:I = 0x3b

.field public static final SLASH:I = 0x2f

.field public static final SP:I = 0x20

.field public static final STAR:I = 0x2a

.field public static final START:I = 0x800

.field public static final TILDE:I = 0x7e

.field public static final UNDERSCORE:I = 0x5f

.field public static final WHITESPACE:I = 0x1001

.field protected static final globalSymbolTable:Ljava/util/Hashtable;

.field protected static final lexerTables:Ljava/util/Hashtable;


# instance fields
.field protected currentLexer:Ljava/util/Hashtable;

.field protected currentLexerName:Ljava/lang/String;

.field protected currentMatch:Lgov/nist/core/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    sput-object v0, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    #@7
    .line 93
    new-instance v0, Ljava/util/Hashtable;

    #@9
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@c
    sput-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    #@e
    .line 38
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Lgov/nist/core/StringTokenizer;-><init>()V

    #@3
    .line 130
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@a
    .line 131
    const-string/jumbo v0, "charLexer"

    #@d
    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    #@f
    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    invoke-direct {p0, p2}, Lgov/nist/core/StringTokenizer;-><init>(Ljava/lang/String;)V

    #@3
    .line 138
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    #@5
    .line 136
    return-void
.end method

.method public static charAsString(C)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 646
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final isTokenChar(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 300
    invoke-static {p0}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    return v1

    #@8
    .line 301
    :cond_0
    sparse-switch p0, :sswitch_data_0

    #@b
    .line 315
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 313
    :sswitch_0
    return v1

    #@e
    .line 301
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public SPorHT()V
    .locals 3

    #@0
    .prologue
    .line 279
    const/4 v2, 0x0

    #@1
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@4
    move-result v0

    #@5
    .line 280
    .local v0, "c":C
    :goto_0
    const/16 v2, 0x20

    #@7
    if-eq v0, v2, :cond_0

    #@9
    const/16 v2, 0x9

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 281
    :cond_0
    const/4 v2, 0x1

    #@e
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    #@11
    .line 282
    const/4 v2, 0x0

    #@12
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result v0

    #@16
    goto :goto_0

    #@17
    .line 284
    .end local v0    # "c":C
    :catch_0
    move-exception v1

    #@18
    .line 277
    :cond_1
    return-void
.end method

.method protected addKeyword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 100
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 101
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 102
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    #@13
    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 96
    :cond_0
    return-void
.end method

.method protected addLexer(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 2
    .param p1, "lexerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Hashtable;

    #@8
    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@a
    .line 116
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 117
    new-instance v0, Ljava/util/Hashtable;

    #@10
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@13
    iput-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@15
    .line 118
    sget-object v0, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    #@17
    iget-object v1, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@19
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 120
    :cond_0
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@1e
    return-object v0
.end method

.method public byteStringNoComma()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 629
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 632
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v3, 0x0

    #@6
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    .line 633
    .local v1, "next":C
    const/16 v3, 0xa

    #@c
    if-eq v1, v3, :cond_0

    #@e
    const/16 v3, 0x2c

    #@10
    if-ne v1, v3, :cond_1

    #@12
    .line 642
    .end local v1    # "next":C
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    return-object v3

    #@17
    .line 636
    .restart local v1    # "next":C
    :cond_1
    const/4 v3, 0x1

    #@18
    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@1b
    .line 637
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    #@1e
    goto :goto_0

    #@1f
    .line 640
    .end local v1    # "next":C
    :catch_0
    move-exception v0

    #@20
    .local v0, "ex":Ljava/text/ParseException;
    goto :goto_1
.end method

.method public byteStringNoSemicolon()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 582
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 585
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v3, 0x0

    #@6
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    .line 587
    .local v1, "next":C
    if-eqz v1, :cond_0

    #@c
    const/16 v3, 0xa

    #@e
    if-ne v1, v3, :cond_1

    #@10
    .line 597
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 587
    :cond_1
    const/16 v3, 0x3b

    #@17
    if-eq v1, v3, :cond_0

    #@19
    const/16 v3, 0x2c

    #@1b
    if-eq v1, v3, :cond_0

    #@1d
    .line 590
    const/4 v3, 0x1

    #@1e
    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@21
    .line 591
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    #@24
    goto :goto_0

    #@25
    .line 594
    .end local v1    # "next":C
    :catch_0
    move-exception v0

    #@26
    .line 595
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    return-object v3
.end method

.method public byteStringNoSlash()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 606
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 609
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v3, 0x0

    #@6
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    .line 611
    .local v1, "next":C
    if-eqz v1, :cond_0

    #@c
    const/16 v3, 0xa

    #@e
    if-ne v1, v3, :cond_1

    #@10
    .line 621
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    return-object v3

    #@15
    .line 611
    :cond_1
    const/16 v3, 0x2f

    #@17
    if-eq v1, v3, :cond_0

    #@19
    .line 614
    const/4 v3, 0x1

    #@1a
    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@1d
    .line 615
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    goto :goto_0

    #@21
    .line 618
    .end local v1    # "next":C
    :catch_0
    move-exception v0

    #@22
    .line 619
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    return-object v3
.end method

.method public charAsString(I)Ljava/lang/String;
    .locals 3
    .param p1, "nchars"    # I

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@2
    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@4
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@6
    add-int/2addr v2, p1

    #@7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public comment()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 551
    new-instance v1, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 552
    .local v1, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@9
    move-result v2

    #@a
    const/16 v3, 0x28

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 553
    const/4 v2, 0x0

    #@f
    return-object v2

    #@10
    .line 554
    :cond_0
    const/4 v2, 0x1

    #@11
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->consume(I)V

    #@14
    .line 556
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    #@17
    move-result v0

    #@18
    .line 557
    .local v0, "next":C
    const/16 v2, 0x29

    #@1a
    if-ne v0, v2, :cond_1

    #@1c
    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    return-object v2

    #@21
    .line 559
    :cond_1
    if-nez v0, :cond_2

    #@23
    .line 560
    new-instance v2, Ljava/text/ParseException;

    #@25
    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, " :unexpected EOL"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 562
    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@3d
    .line 560
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@40
    throw v2

    #@41
    .line 563
    :cond_2
    const/16 v2, 0x5c

    #@43
    if-ne v0, v2, :cond_4

    #@45
    .line 564
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@48
    .line 565
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    #@4b
    move-result v0

    #@4c
    .line 566
    if-nez v0, :cond_3

    #@4e
    .line 567
    new-instance v2, Ljava/text/ParseException;

    #@50
    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    const-string/jumbo v4, " : unexpected EOL"

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    .line 569
    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@68
    .line 567
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6b
    throw v2

    #@6c
    .line 570
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6f
    goto :goto_0

    #@70
    .line 572
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@73
    goto :goto_0
.end method

.method public consumeValidChars([C)V
    .locals 7
    .param p1, "validChars"    # [C

    #@0
    .prologue
    .line 485
    array-length v5, p1

    #@1
    .line 487
    .local v5, "validCharsLength":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@4
    move-result v6

    #@5
    if-eqz v6, :cond_1

    #@7
    .line 488
    const/4 v6, 0x0

    #@8
    invoke-virtual {p0, v6}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@b
    move-result v3

    #@c
    .line 489
    .local v3, "nextChar":C
    const/4 v2, 0x0

    #@d
    .line 490
    .local v2, "isValid":Z
    const/4 v1, 0x0

    #@e
    .end local v2    # "isValid":Z
    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_0

    #@10
    .line 491
    aget-char v4, p1, v1

    #@12
    .line 492
    .local v4, "validChar":C
    packed-switch v4, :pswitch_data_0

    #@15
    .line 503
    if-ne v3, v4, :cond_2

    #@17
    const/4 v2, 0x1

    #@18
    .line 505
    :goto_2
    if-eqz v2, :cond_3

    #@1a
    .line 509
    .end local v4    # "validChar":C
    :cond_0
    if-eqz v2, :cond_1

    #@1c
    .line 510
    const/4 v6, 0x1

    #@1d
    invoke-virtual {p0, v6}, Lgov/nist/core/LexerCore;->consume(I)V

    #@20
    goto :goto_0

    #@21
    .line 516
    .end local v1    # "i":I
    .end local v3    # "nextChar":C
    :catch_0
    move-exception v0

    #@22
    .line 484
    :cond_1
    return-void

    #@23
    .line 494
    .restart local v1    # "i":I
    .restart local v3    # "nextChar":C
    .restart local v4    # "validChar":C
    :pswitch_0
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    #@26
    move-result v2

    #@27
    .local v2, "isValid":Z
    goto :goto_2

    #@28
    .line 497
    .end local v2    # "isValid":Z
    :pswitch_1
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    #@2b
    move-result v2

    #@2c
    .restart local v2    # "isValid":Z
    goto :goto_2

    #@2d
    .line 500
    .end local v2    # "isValid":Z
    :pswitch_2
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result v2

    #@31
    .restart local v2    # "isValid":Z
    goto :goto_2

    #@32
    .line 503
    .end local v2    # "isValid":Z
    :cond_2
    const/4 v2, 0x0

    #@33
    .local v2, "isValid":Z
    goto :goto_2

    #@34
    .line 490
    .end local v2    # "isValid":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@36
    goto :goto_1

    #@37
    .line 492
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0xfffd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createParseException()Ljava/text/ParseException;
    .locals 3

    #@0
    .prologue
    .line 759
    new-instance v0, Ljava/text/ParseException;

    #@2
    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@4
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@6
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@9
    return-object v0
.end method

.method public getBuffer()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 753
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNextId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getNextToken()Lgov/nist/core/Token;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@2
    return-object v0
.end method

.method public getPtr()I
    .locals 1

    #@0
    .prologue
    .line 747
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2
    return v0
.end method

.method public getRest()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 701
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2
    iget-object v1, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    if-lt v0, v1, :cond_0

    #@a
    .line 702
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 704
    :cond_0
    iget-object v0, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@e
    iget v1, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public getString(C)Ljava/lang/String;
    .locals 6
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 712
    new-instance v2, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 714
    .local v2, "retval":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@a
    move-result v0

    #@b
    .line 718
    .local v0, "next":C
    if-nez v0, :cond_0

    #@d
    .line 719
    new-instance v3, Ljava/text/ParseException;

    #@f
    .line 720
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, "unexpected EOL"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 721
    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@27
    .line 719
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@2a
    throw v3

    #@2b
    .line 722
    :cond_0
    if-ne v0, p1, :cond_1

    #@2d
    .line 723
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@30
    .line 741
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    return-object v3

    #@35
    .line 725
    :cond_1
    const/16 v3, 0x5c

    #@37
    if-ne v0, v3, :cond_3

    #@39
    .line 726
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@3c
    .line 727
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@3f
    move-result v1

    #@40
    .line 728
    .local v1, "nextchar":C
    if-nez v1, :cond_2

    #@42
    .line 729
    new-instance v3, Ljava/text/ParseException;

    #@44
    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    const-string/jumbo v5, "unexpected EOL"

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    .line 731
    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@5c
    .line 729
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@5f
    throw v3

    #@60
    .line 733
    :cond_2
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@63
    .line 734
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@66
    goto :goto_0

    #@67
    .line 737
    .end local v1    # "nextchar":C
    :cond_3
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->consume(I)V

    #@6a
    .line 738
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6d
    goto :goto_0
.end method

.method public lookupToken(I)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 106
    const/16 v1, 0x800

    #@2
    if-le p1, v1, :cond_0

    #@4
    .line 107
    sget-object v1, Lgov/nist/core/LexerCore;->globalSymbolTable:Ljava/util/Hashtable;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/String;

    #@10
    return-object v1

    #@11
    .line 109
    :cond_0
    int-to-char v1, p1

    #@12
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@15
    move-result-object v0

    #@16
    .line 110
    .local v0, "ch":Ljava/lang/Character;
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public markInputPosition()I
    .locals 1

    #@0
    .prologue
    .line 687
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2
    return v0
.end method

.method public match(I)Lgov/nist/core/Token;
    .locals 12
    .param p1, "tok"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v11, 0x1000

    #@2
    const/16 v10, 0xfff

    #@4
    const/16 v9, 0xffe

    #@6
    const/4 v8, 0x0

    #@7
    const/4 v7, 0x1

    #@8
    .line 205
    sget-boolean v5, Lgov/nist/core/Debug;->parserDebug:Z

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v6, "match "

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v5}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    #@23
    .line 208
    :cond_0
    const/16 v5, 0x800

    #@25
    if-le p1, v5, :cond_8

    #@27
    if-ge p1, v11, :cond_8

    #@29
    .line 209
    if-ne p1, v10, :cond_3

    #@2b
    .line 211
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_1

    #@31
    .line 212
    new-instance v5, Ljava/text/ParseException;

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@3a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    const-string/jumbo v7, "\nID expected"

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@4b
    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@4e
    throw v5

    #@4f
    .line 213
    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    .line 214
    .local v2, "id":Ljava/lang/String;
    new-instance v5, Lgov/nist/core/Token;

    #@55
    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    #@58
    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@5a
    .line 215
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@5c
    iput-object v2, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@5e
    .line 216
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@60
    iput v10, v5, Lgov/nist/core/Token;->tokenType:I

    #@62
    .line 274
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@64
    return-object v5

    #@65
    .line 217
    :cond_3
    if-ne p1, v9, :cond_5

    #@67
    .line 218
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsSafeToken()Z

    #@6a
    move-result v5

    #@6b
    if-nez v5, :cond_4

    #@6d
    .line 219
    new-instance v5, Ljava/text/ParseException;

    #@6f
    new-instance v6, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v6

    #@7a
    const-string/jumbo v7, "\nID expected"

    #@7d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@87
    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@8a
    throw v5

    #@8b
    .line 220
    :cond_4
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttokenSafe()Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    .line 221
    .restart local v2    # "id":Ljava/lang/String;
    new-instance v5, Lgov/nist/core/Token;

    #@91
    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    #@94
    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@96
    .line 222
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@98
    iput-object v2, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@9a
    .line 223
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@9c
    iput v9, v5, Lgov/nist/core/Token;->tokenType:I

    #@9e
    goto :goto_0

    #@9f
    .line 225
    .end local v2    # "id":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextId()Ljava/lang/String;

    #@a2
    move-result-object v4

    #@a3
    .line 226
    .local v4, "nexttok":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@a5
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@a8
    move-result-object v6

    #@a9
    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ac
    move-result-object v1

    #@ad
    check-cast v1, Ljava/lang/Integer;

    #@af
    .line 228
    .local v1, "cur":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    #@b1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@b4
    move-result v5

    #@b5
    if-eq v5, p1, :cond_7

    #@b7
    .line 229
    :cond_6
    new-instance v5, Ljava/text/ParseException;

    #@b9
    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@c0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    const-string/jumbo v7, "\nUnexpected Token : "

    #@c7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v6

    #@cb
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v6

    #@cf
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v6

    #@d3
    .line 231
    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@d5
    .line 229
    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@d8
    throw v5

    #@d9
    .line 232
    :cond_7
    new-instance v5, Lgov/nist/core/Token;

    #@db
    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    #@de
    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@e0
    .line 233
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@e2
    iput-object v4, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@e4
    .line 234
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@e6
    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    #@e8
    goto/16 :goto_0

    #@ea
    .line 236
    .end local v1    # "cur":Ljava/lang/Integer;
    .end local v4    # "nexttok":Ljava/lang/String;
    :cond_8
    if-le p1, v11, :cond_c

    #@ec
    .line 238
    invoke-virtual {p0, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@ef
    move-result v3

    #@f0
    .line 239
    .local v3, "next":C
    const/16 v5, 0x1002

    #@f2
    if-ne p1, v5, :cond_a

    #@f4
    .line 240
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    #@f7
    move-result v5

    #@f8
    if-nez v5, :cond_9

    #@fa
    .line 241
    new-instance v5, Ljava/text/ParseException;

    #@fc
    new-instance v6, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v6

    #@107
    const-string/jumbo v7, "\nExpecting DIGIT"

    #@10a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v6

    #@10e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v6

    #@112
    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@114
    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@117
    throw v5

    #@118
    .line 242
    :cond_9
    new-instance v5, Lgov/nist/core/Token;

    #@11a
    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    #@11d
    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@11f
    .line 243
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@121
    .line 244
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@124
    move-result-object v6

    #@125
    .line 243
    iput-object v6, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@127
    .line 245
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@129
    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    #@12b
    .line 246
    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    #@12e
    goto/16 :goto_0

    #@130
    .line 248
    :cond_a
    const/16 v5, 0x1003

    #@132
    if-ne p1, v5, :cond_2

    #@134
    .line 249
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    #@137
    move-result v5

    #@138
    if-nez v5, :cond_b

    #@13a
    .line 250
    new-instance v5, Ljava/text/ParseException;

    #@13c
    new-instance v6, Ljava/lang/StringBuilder;

    #@13e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@141
    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@143
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v6

    #@147
    const-string/jumbo v7, "\nExpecting ALPHA"

    #@14a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v6

    #@14e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v6

    #@152
    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@154
    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@157
    throw v5

    #@158
    .line 251
    :cond_b
    new-instance v5, Lgov/nist/core/Token;

    #@15a
    invoke-direct {v5}, Lgov/nist/core/Token;-><init>()V

    #@15d
    iput-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@15f
    .line 252
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@161
    .line 253
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@164
    move-result-object v6

    #@165
    .line 252
    iput-object v6, v5, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@167
    .line 254
    iget-object v5, p0, Lgov/nist/core/LexerCore;->currentMatch:Lgov/nist/core/Token;

    #@169
    iput p1, v5, Lgov/nist/core/Token;->tokenType:I

    #@16b
    .line 255
    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    #@16e
    goto/16 :goto_0

    #@170
    .line 261
    .end local v3    # "next":C
    :cond_c
    int-to-char v0, p1

    #@171
    .line 262
    .local v0, "ch":C
    invoke-virtual {p0, v8}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@174
    move-result v3

    #@175
    .line 263
    .restart local v3    # "next":C
    if-ne v3, v0, :cond_d

    #@177
    .line 268
    invoke-virtual {p0, v7}, Lgov/nist/core/LexerCore;->consume(I)V

    #@17a
    goto/16 :goto_0

    #@17c
    .line 270
    :cond_d
    new-instance v5, Ljava/text/ParseException;

    #@17e
    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    #@180
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    iget-object v7, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@185
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v6

    #@189
    const-string/jumbo v7, "\nExpecting  >>>"

    #@18c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18f
    move-result-object v6

    #@190
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@193
    move-result-object v6

    #@194
    const-string/jumbo v7, "<<< got >>>"

    #@197
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v6

    #@19b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v6

    #@19f
    .line 272
    const-string/jumbo v7, "<<<"

    #@1a2
    .line 271
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v6

    #@1a6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v6

    #@1aa
    .line 272
    iget v7, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@1ac
    .line 270
    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1af
    throw v5
.end method

.method public number()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 662
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2
    .line 664
    .local v2, "startIdx":I
    const/4 v3, 0x0

    #@3
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@6
    move-result v3

    #@7
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 665
    new-instance v3, Ljava/text/ParseException;

    #@f
    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    iget-object v5, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, ": Unexpected token at "

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    const/4 v5, 0x0

    #@22
    invoke-virtual {p0, v5}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@25
    move-result v5

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    .line 667
    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@30
    .line 665
    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@33
    throw v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 678
    :catch_0
    move-exception v0

    #@35
    .line 679
    .local v0, "ex":Ljava/text/ParseException;
    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@37
    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@39
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    return-object v3

    #@3e
    .line 669
    .end local v0    # "ex":Ljava/text/ParseException;
    :cond_0
    const/4 v3, 0x1

    #@3f
    :try_start_1
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@42
    .line 671
    :goto_0
    const/4 v3, 0x0

    #@43
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@46
    move-result v1

    #@47
    .line 672
    .local v1, "next":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_1

    #@4d
    .line 673
    const/4 v3, 0x1

    #@4e
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@51
    goto :goto_0

    #@52
    .line 677
    :cond_1
    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@54
    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@56
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    #@59
    move-result-object v3

    #@5a
    return-object v3
.end method

.method public peekNextId()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 145
    iget v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2
    .line 146
    .local v0, "oldPtr":I
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 147
    .local v1, "retval":Ljava/lang/String;
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@8
    iput v2, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    #@a
    .line 148
    iput v0, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@c
    .line 149
    return-object v1
.end method

.method public peekNextToken()Lgov/nist/core/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    #@4
    move-result-object v0

    #@5
    const/4 v1, 0x0

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public peekNextToken(I)[Lgov/nist/core/Token;
    .locals 9
    .param p1, "ntokens"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 171
    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2
    .line 172
    .local v4, "old":I
    new-array v5, p1, [Lgov/nist/core/Token;

    #@4
    .line 173
    .local v5, "retval":[Lgov/nist/core/Token;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_4

    #@7
    .line 174
    new-instance v6, Lgov/nist/core/Token;

    #@9
    invoke-direct {v6}, Lgov/nist/core/Token;-><init>()V

    #@c
    .line 175
    .local v6, "tok":Lgov/nist/core/Token;
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->startsId()Z

    #@f
    move-result v8

    #@10
    if-eqz v8, :cond_1

    #@12
    .line 176
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 177
    .local v1, "id":Ljava/lang/String;
    iput-object v1, v6, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@18
    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 179
    .local v2, "idUppercase":Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@1e
    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@21
    move-result v8

    #@22
    if-eqz v8, :cond_0

    #@24
    .line 180
    iget-object v8, p0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    #@26
    invoke-virtual {v8, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v7

    #@2a
    check-cast v7, Ljava/lang/Integer;

    #@2c
    .line 181
    .local v7, "type":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@2f
    move-result v8

    #@30
    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    #@32
    .line 194
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "idUppercase":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/Integer;
    :goto_1
    aput-object v6, v5, v0

    #@34
    .line 173
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 183
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "idUppercase":Ljava/lang/String;
    :cond_0
    const/16 v8, 0xfff

    #@39
    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    #@3b
    goto :goto_1

    #@3c
    .line 185
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "idUppercase":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    #@3f
    move-result v3

    #@40
    .line 186
    .local v3, "nextChar":C
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@43
    move-result-object v8

    #@44
    iput-object v8, v6, Lgov/nist/core/Token;->tokenValue:Ljava/lang/String;

    #@46
    .line 187
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isAlpha(C)Z

    #@49
    move-result v8

    #@4a
    if-eqz v8, :cond_2

    #@4c
    .line 188
    const/16 v8, 0x1003

    #@4e
    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    #@50
    goto :goto_1

    #@51
    .line 189
    :cond_2
    invoke-static {v3}, Lgov/nist/core/LexerCore;->isDigit(C)Z

    #@54
    move-result v8

    #@55
    if-eqz v8, :cond_3

    #@57
    .line 190
    const/16 v8, 0x1002

    #@59
    iput v8, v6, Lgov/nist/core/Token;->tokenType:I

    #@5b
    goto :goto_1

    #@5c
    .line 192
    :cond_3
    iput v3, v6, Lgov/nist/core/Token;->tokenType:I

    #@5e
    goto :goto_1

    #@5f
    .line 196
    .end local v3    # "nextChar":C
    .end local v6    # "tok":Lgov/nist/core/Token;
    :cond_4
    iget v8, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@61
    iput v8, p0, Lgov/nist/core/LexerCore;->savedPtr:I

    #@63
    .line 197
    iput v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@65
    .line 198
    return-object v5
.end method

.method public quotedString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x22

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 526
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@6
    add-int/lit8 v1, v2, 0x1

    #@8
    .line 527
    .local v1, "startIdx":I
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@b
    move-result v2

    #@c
    if-eq v2, v5, :cond_0

    #@e
    .line 528
    const/4 v2, 0x0

    #@f
    return-object v2

    #@10
    .line 529
    :cond_0
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@13
    .line 531
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->getNextChar()C

    #@16
    move-result v0

    #@17
    .line 532
    .local v0, "next":C
    if-ne v0, v5, :cond_2

    #@19
    .line 543
    iget-object v2, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@1b
    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@1d
    add-int/lit8 v3, v3, -0x1

    #@1f
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 535
    :cond_2
    if-nez v0, :cond_3

    #@26
    .line 536
    new-instance v2, Ljava/text/ParseException;

    #@28
    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    const-string/jumbo v4, " :unexpected EOL"

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 538
    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@40
    .line 536
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@43
    throw v2

    #@44
    .line 539
    :cond_3
    const/16 v2, 0x5c

    #@46
    if-ne v0, v2, :cond_1

    #@48
    .line 540
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@4b
    goto :goto_0
.end method

.method public rewindInputPosition(I)V
    .locals 0
    .param p1, "position"    # I

    #@0
    .prologue
    .line 694
    iput p1, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2
    .line 693
    return-void
.end method

.method public selectLexer(Ljava/lang/String;)V
    .locals 0
    .param p1, "lexerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    #@2
    .line 125
    return-void
.end method

.method public startsId()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 322
    const/4 v2, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@5
    move-result v1

    #@6
    .line 323
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    return v2

    #@b
    .line 324
    .end local v1    # "nextChar":C
    :catch_0
    move-exception v0

    #@c
    .line 325
    .local v0, "ex":Ljava/text/ParseException;
    return v3
.end method

.method public startsSafeToken()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 331
    const/4 v2, 0x0

    #@3
    :try_start_0
    invoke-virtual {p0, v2}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@6
    move-result v1

    #@7
    .line 332
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 333
    return v4

    #@e
    .line 336
    :cond_0
    sparse-switch v1, :sswitch_data_0

    #@11
    .line 364
    return v3

    #@12
    .line 362
    :sswitch_0
    return v4

    #@13
    .line 367
    .end local v1    # "nextChar":C
    :catch_0
    move-exception v0

    #@14
    .line 368
    .local v0, "ex":Ljava/text/ParseException;
    return v3

    #@15
    .line 336
    nop

    #@16
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method public ttoken()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 373
    iget v2, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2
    .line 375
    .local v2, "startIdx":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 376
    const/4 v3, 0x0

    #@9
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@c
    move-result v1

    #@d
    .line 377
    .local v1, "nextChar":C
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 378
    const/4 v3, 0x1

    #@14
    invoke-virtual {p0, v3}, Lgov/nist/core/LexerCore;->consume(I)V

    #@17
    goto :goto_0

    #@18
    .line 384
    .end local v1    # "nextChar":C
    :catch_0
    move-exception v0

    #@19
    .line 385
    .local v0, "ex":Ljava/text/ParseException;
    const/4 v3, 0x0

    #@1a
    return-object v3

    #@1b
    .line 383
    .end local v0    # "ex":Ljava/text/ParseException;
    :cond_0
    iget-object v3, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@1d
    iget v4, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@1f
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v3

    #@23
    return-object v3
.end method

.method public ttokenSafe()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 431
    iget v3, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2
    .line 433
    .local v3, "startIdx":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/core/LexerCore;->hasMoreChars()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 434
    const/4 v4, 0x0

    #@9
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    #@c
    move-result v2

    #@d
    .line 435
    .local v2, "nextChar":C
    invoke-static {v2}, Lgov/nist/core/LexerCore;->isAlphaDigit(C)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 436
    const/4 v4, 0x1

    #@14
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@17
    goto :goto_0

    #@18
    .line 476
    .end local v2    # "nextChar":C
    :catch_0
    move-exception v0

    #@19
    .line 477
    .local v0, "ex":Ljava/text/ParseException;
    const/4 v4, 0x0

    #@1a
    return-object v4

    #@1b
    .line 439
    .end local v0    # "ex":Ljava/text/ParseException;
    .restart local v2    # "nextChar":C
    :cond_0
    const/4 v1, 0x0

    #@1c
    .line 440
    .local v1, "isValidChar":Z
    sparse-switch v2, :sswitch_data_0

    #@1f
    .line 467
    :goto_1
    if-eqz v1, :cond_1

    #@21
    .line 468
    const/4 v4, 0x1

    #@22
    invoke-virtual {p0, v4}, Lgov/nist/core/LexerCore;->consume(I)V

    #@25
    goto :goto_0

    #@26
    .line 465
    :sswitch_0
    const/4 v1, 0x1

    #@27
    goto :goto_1

    #@28
    .line 475
    .end local v1    # "isValidChar":Z
    .end local v2    # "nextChar":C
    :cond_1
    iget-object v4, p0, Lgov/nist/core/LexerCore;->buffer:Ljava/lang/String;

    #@2a
    iget v5, p0, Lgov/nist/core/LexerCore;->ptr:I

    #@2c
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    move-result-object v4

    #@30
    return-object v4

    #@31
    .line 440
    nop

    #@32
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch
.end method
