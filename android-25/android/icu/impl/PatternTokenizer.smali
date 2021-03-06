.class public Landroid/icu/impl/PatternTokenizer;
.super Ljava/lang/Object;
.source "PatternTokenizer.java"


# static fields
.field private static final AFTER_QUOTE:I = -0x1

.field public static final BACK_SLASH:C = '\\'

.field public static final BROKEN_ESCAPE:I = 0x4

.field public static final BROKEN_QUOTE:I = 0x3

.field public static final DONE:I = 0x0

.field private static final HEX:I = 0x4

.field private static IN_QUOTE:I = 0x0

.field public static final LITERAL:I = 0x2

.field private static final NONE:I = 0x0

.field private static final NORMAL_QUOTE:I = 0x2

.field private static NO_QUOTE:I = 0x0

.field public static final SINGLE_QUOTE:C = '\''

.field private static final SLASH_START:I = 0x3

.field private static final START_QUOTE:I = 0x1

.field public static final SYNTAX:I = 0x1

.field public static final UNKNOWN:I = 0x5


# instance fields
.field private escapeCharacters:Landroid/icu/text/UnicodeSet;

.field private extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

.field private ignorableCharacters:Landroid/icu/text/UnicodeSet;

.field private limit:I

.field private transient needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

.field private pattern:Ljava/lang/String;

.field private start:I

.field private syntaxCharacters:Landroid/icu/text/UnicodeSet;

.field private usingQuote:Z

.field private usingSlash:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 148
    const/4 v0, -0x1

    #@1
    sput v0, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    #@3
    const/4 v0, -0x2

    #@4
    sput v0, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    #@6
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 26
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@6
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    #@b
    .line 27
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@d
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@10
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    #@12
    .line 28
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@14
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@17
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    #@19
    .line 29
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@1b
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    #@20
    .line 30
    iput-boolean v1, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    #@22
    .line 31
    iput-boolean v1, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    #@24
    .line 34
    const/4 v0, 0x0

    #@25
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@27
    .line 24
    return-void
.end method

.method private appendEscaped(Ljava/lang/StringBuffer;I)V
    .locals 4
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "cp"    # I

    #@0
    .prologue
    .line 227
    const v0, 0xffff

    #@3
    if-gt p2, v0, :cond_0

    #@5
    .line 228
    const-string/jumbo v0, "\\u"

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v0

    #@c
    int-to-long v2, p2

    #@d
    const/4 v1, 0x4

    #@e
    invoke-static {v2, v3, v1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 226
    :goto_0
    return-void

    #@16
    .line 230
    :cond_0
    const-string/jumbo v0, "\\U"

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v0

    #@1d
    int-to-long v2, p2

    #@1e
    const/16 v1, 0x8

    #@20
    invoke-static {v2, v3, v1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    goto :goto_0
.end method


# virtual methods
.method public getEscapeCharacters()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@8
    return-object v0
.end method

.method public getExtraQuotingCharacters()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@8
    return-object v0
.end method

.method public getIgnorableCharacters()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@8
    return-object v0
.end method

.method public getLimit()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    #@2
    return v0
.end method

.method public getStart()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@2
    return v0
.end method

.method public getSyntaxCharacters()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@8
    return-object v0
.end method

.method public isUsingQuote()Z
    .locals 1

    #@0
    .prologue
    .line 94
    iget-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    #@2
    return v0
.end method

.method public isUsingSlash()Z
    .locals 1

    #@0
    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    #@2
    return v0
.end method

.method public next(Ljava/lang/StringBuffer;)I
    .locals 11
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/16 v9, 0x5c

    #@3
    .line 258
    iget v7, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@5
    iget v8, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    #@7
    if-lt v7, v8, :cond_0

    #@9
    return v10

    #@a
    .line 259
    :cond_0
    const/4 v6, 0x5

    #@b
    .line 260
    .local v6, "status":I
    const/4 v4, 0x5

    #@c
    .line 261
    .local v4, "lastQuote":I
    const/4 v5, 0x0

    #@d
    .line 262
    .local v5, "quoteStatus":I
    const/4 v1, 0x0

    #@e
    .line 263
    .local v1, "hexCount":I
    const/4 v2, 0x0

    #@f
    .line 266
    .local v2, "hexValue":I
    iget v3, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@11
    .local v3, "i":I
    :goto_0
    iget v7, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    #@13
    if-ge v3, v7, :cond_b

    #@15
    .line 267
    iget-object v7, p0, Landroid/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    #@17
    invoke-static {v7, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@1a
    move-result v0

    #@1b
    .line 269
    .local v0, "cp":I
    packed-switch v5, :pswitch_data_0

    #@1e
    .line 343
    :goto_1
    :pswitch_0
    iget-object v7, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    #@20
    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_6

    #@26
    .line 266
    :cond_1
    :goto_2
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@29
    move-result v7

    #@2a
    add-int/2addr v3, v7

    #@2b
    goto :goto_0

    #@2c
    .line 271
    :pswitch_1
    sparse-switch v0, :sswitch_data_0

    #@2f
    .line 283
    iget-boolean v7, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    #@31
    if-eqz v7, :cond_2

    #@33
    .line 284
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@36
    .line 285
    const/4 v5, 0x0

    #@37
    .line 286
    goto :goto_2

    #@38
    .line 273
    :sswitch_0
    const/4 v5, 0x4

    #@39
    .line 274
    const/4 v1, 0x4

    #@3a
    .line 275
    const/4 v2, 0x0

    #@3b
    .line 276
    goto :goto_2

    #@3c
    .line 278
    :sswitch_1
    const/4 v5, 0x4

    #@3d
    .line 279
    const/16 v1, 0x8

    #@3f
    .line 280
    const/4 v2, 0x0

    #@40
    .line 281
    goto :goto_2

    #@41
    .line 288
    :cond_2
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@44
    .line 289
    const/4 v5, 0x0

    #@45
    goto :goto_1

    #@46
    .line 294
    :pswitch_2
    shl-int/lit8 v2, v2, 0x4

    #@48
    .line 295
    add-int/2addr v2, v0

    #@49
    .line 296
    sparse-switch v0, :sswitch_data_1

    #@4c
    .line 304
    iput v3, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@4e
    .line 305
    const/4 v7, 0x4

    #@4f
    return v7

    #@50
    .line 298
    :sswitch_2
    add-int/lit8 v2, v2, -0x30

    #@52
    .line 307
    :goto_3
    add-int/lit8 v1, v1, -0x1

    #@54
    .line 308
    if-nez v1, :cond_1

    #@56
    .line 309
    const/4 v5, 0x0

    #@57
    .line 310
    invoke-static {p1, v2}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@5a
    goto :goto_2

    #@5b
    .line 300
    :sswitch_3
    add-int/lit8 v2, v2, -0x57

    #@5d
    goto :goto_3

    #@5e
    .line 302
    :sswitch_4
    add-int/lit8 v2, v2, -0x37

    #@60
    goto :goto_3

    #@61
    .line 316
    :pswitch_3
    if-ne v0, v4, :cond_3

    #@63
    .line 317
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@66
    .line 318
    const/4 v5, 0x2

    #@67
    .line 319
    goto :goto_2

    #@68
    .line 321
    :cond_3
    const/4 v5, 0x0

    #@69
    .line 322
    goto :goto_1

    #@6a
    .line 325
    :pswitch_4
    if-ne v0, v4, :cond_4

    #@6c
    .line 326
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@6f
    .line 327
    const/4 v5, 0x0

    #@70
    .line 328
    goto :goto_2

    #@71
    .line 331
    :cond_4
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@74
    .line 332
    const/4 v5, 0x2

    #@75
    .line 333
    goto :goto_2

    #@76
    .line 335
    :pswitch_5
    if-ne v0, v4, :cond_5

    #@78
    .line 336
    const/4 v5, -0x1

    #@79
    .line 337
    goto :goto_2

    #@7a
    .line 339
    :cond_5
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@7d
    goto :goto_2

    #@7e
    .line 347
    :cond_6
    iget-object v7, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    #@80
    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@83
    move-result v7

    #@84
    if-eqz v7, :cond_8

    #@86
    .line 348
    const/4 v7, 0x5

    #@87
    if-ne v6, v7, :cond_7

    #@89
    .line 349
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@8c
    .line 350
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@8f
    move-result v7

    #@90
    add-int/2addr v7, v3

    #@91
    iput v7, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@93
    .line 351
    const/4 v7, 0x1

    #@94
    return v7

    #@95
    .line 353
    :cond_7
    iput v3, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@97
    .line 354
    return v6

    #@98
    .line 358
    :cond_8
    const/4 v6, 0x2

    #@99
    .line 359
    if-ne v0, v9, :cond_9

    #@9b
    .line 360
    const/4 v5, 0x3

    #@9c
    .line 361
    goto :goto_2

    #@9d
    .line 362
    :cond_9
    iget-boolean v7, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    #@9f
    if-eqz v7, :cond_a

    #@a1
    const/16 v7, 0x27

    #@a3
    if-ne v0, v7, :cond_a

    #@a5
    .line 363
    move v4, v0

    #@a6
    .line 364
    const/4 v5, 0x1

    #@a7
    .line 365
    goto/16 :goto_2

    #@a9
    .line 368
    :cond_a
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@ac
    goto/16 :goto_2

    #@ae
    .line 371
    .end local v0    # "cp":I
    :cond_b
    iget v7, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    #@b0
    iput v7, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@b2
    .line 372
    packed-switch v5, :pswitch_data_1

    #@b5
    .line 387
    :goto_4
    return v6

    #@b6
    .line 374
    :pswitch_6
    const/4 v6, 0x4

    #@b7
    .line 375
    goto :goto_4

    #@b8
    .line 377
    :pswitch_7
    iget-boolean v7, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    #@ba
    if-eqz v7, :cond_c

    #@bc
    .line 378
    const/4 v6, 0x4

    #@bd
    goto :goto_4

    #@be
    .line 380
    :cond_c
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@c1
    goto :goto_4

    #@c2
    .line 384
    :pswitch_8
    const/4 v6, 0x3

    #@c3
    .line 385
    goto :goto_4

    #@c4
    .line 269
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch

    #@d4
    .line 271
    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch

    #@de
    .line 296
    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x41 -> :sswitch_4
        0x42 -> :sswitch_4
        0x43 -> :sswitch_4
        0x44 -> :sswitch_4
        0x45 -> :sswitch_4
        0x46 -> :sswitch_4
        0x61 -> :sswitch_3
        0x62 -> :sswitch_3
        0x63 -> :sswitch_3
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
        0x66 -> :sswitch_3
    .end sparse-switch

    #@138
    .line 372
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public normalize()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 235
    iget v1, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@3
    .line 236
    .local v1, "oldStart":I
    new-instance v2, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 237
    .local v2, "result":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@d
    .line 239
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    #@10
    .line 240
    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    #@13
    move-result v3

    #@14
    .line 241
    .local v3, "status":I
    if-nez v3, :cond_0

    #@16
    .line 242
    iput v1, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@18
    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    return-object v4

    #@1d
    .line 245
    :cond_0
    const/4 v4, 0x1

    #@1e
    if-eq v3, v4, :cond_1

    #@20
    .line 246
    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    goto :goto_0

    #@28
    .line 248
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@2b
    goto :goto_0
.end method

.method public quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 151
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public quoteLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x5c

    #@2
    const/16 v6, 0x27

    #@4
    .line 160
    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@6
    if-nez v4, :cond_1

    #@8
    .line 161
    new-instance v4, Landroid/icu/text/UnicodeSet;

    #@a
    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@d
    iget-object v5, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    #@f
    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@12
    move-result-object v4

    #@13
    iget-object v5, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    #@15
    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@18
    move-result-object v4

    #@19
    iget-object v5, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    #@1b
    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@1e
    move-result-object v4

    #@1f
    iput-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@21
    .line 162
    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    #@23
    if-eqz v4, :cond_0

    #@25
    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@27
    invoke-virtual {v4, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@2a
    .line 163
    :cond_0
    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    #@2c
    if-eqz v4, :cond_1

    #@2e
    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@30
    invoke-virtual {v4, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@33
    .line 165
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    #@35
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@38
    .line 166
    .local v3, "result":Ljava/lang/StringBuffer;
    sget v2, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    #@3a
    .line 168
    .local v2, "quotedChar":I
    const/4 v1, 0x0

    #@3b
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3e
    move-result v4

    #@3f
    if-ge v1, v4, :cond_b

    #@41
    .line 169
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    #@44
    move-result v0

    #@45
    .line 170
    .local v0, "cp":I
    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    #@47
    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@4a
    move-result v4

    #@4b
    if-eqz v4, :cond_4

    #@4d
    .line 172
    sget v4, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    #@4f
    if-ne v2, v4, :cond_2

    #@51
    .line 173
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@54
    .line 174
    sget v2, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    #@56
    .line 176
    :cond_2
    invoke-direct {p0, v3, v0}, Landroid/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    #@59
    .line 168
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@5c
    move-result v4

    #@5d
    add-int/2addr v1, v4

    #@5e
    goto :goto_0

    #@5f
    .line 180
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@61
    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@64
    move-result v4

    #@65
    if-eqz v4, :cond_9

    #@67
    .line 182
    sget v4, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    #@69
    if-ne v2, v4, :cond_5

    #@6b
    .line 183
    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@6e
    .line 184
    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    #@70
    if-eqz v4, :cond_3

    #@72
    if-ne v0, v6, :cond_3

    #@74
    .line 185
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@77
    goto :goto_1

    #@78
    .line 190
    :cond_5
    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    #@7a
    if-eqz v4, :cond_6

    #@7c
    .line 191
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@7f
    .line 192
    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@82
    goto :goto_1

    #@83
    .line 195
    :cond_6
    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    #@85
    if-eqz v4, :cond_8

    #@87
    .line 196
    if-ne v0, v6, :cond_7

    #@89
    .line 197
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8c
    .line 198
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@8f
    goto :goto_1

    #@90
    .line 201
    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@93
    .line 202
    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@96
    .line 203
    sget v2, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    #@98
    goto :goto_1

    #@99
    .line 207
    :cond_8
    invoke-direct {p0, v3, v0}, Landroid/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    #@9c
    goto :goto_1

    #@9d
    .line 212
    :cond_9
    sget v4, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    #@9f
    if-ne v2, v4, :cond_a

    #@a1
    .line 213
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@a4
    .line 214
    sget v2, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    #@a6
    .line 216
    :cond_a
    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@a9
    goto :goto_1

    #@aa
    .line 220
    .end local v0    # "cp":I
    :cond_b
    sget v4, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    #@ac
    if-ne v2, v4, :cond_c

    #@ae
    .line 221
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@b1
    .line 223
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b4
    move-result-object v4

    #@b5
    return-object v4
.end method

.method public setEscapeCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .locals 1
    .param p1, "escapeCharacters"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@6
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    #@8
    .line 91
    return-object p0
.end method

.method public setExtraQuotingCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .locals 1
    .param p1, "syntaxCharacters"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@6
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    #@8
    .line 77
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@b
    .line 78
    return-object p0
.end method

.method public setIgnorableCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .locals 1
    .param p1, "ignorableCharacters"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@6
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    #@8
    .line 51
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@b
    .line 52
    return-object p0
.end method

.method public setLimit(I)Landroid/icu/impl/PatternTokenizer;
    .locals 0
    .param p1, "limit"    # I

    #@0
    .prologue
    .line 121
    iput p1, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    #@2
    .line 122
    return-object p0
.end method

.method public setPattern(Ljava/lang/CharSequence;)Landroid/icu/impl/PatternTokenizer;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 133
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 137
    if-nez p1, :cond_0

    #@2
    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Inconsistent arguments"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 140
    :cond_0
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@e
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    #@14
    .line 142
    iput-object p1, p0, Landroid/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    #@16
    .line 143
    return-object p0
.end method

.method public setStart(I)Landroid/icu/impl/PatternTokenizer;
    .locals 0
    .param p1, "start"    # I

    #@0
    .prologue
    .line 128
    iput p1, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    #@2
    .line 129
    return-object p0
.end method

.method public setSyntaxCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .locals 1
    .param p1, "syntaxCharacters"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/UnicodeSet;

    #@6
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    #@8
    .line 67
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@b
    .line 68
    return-object p0
.end method

.method public setUsingQuote(Z)Landroid/icu/impl/PatternTokenizer;
    .locals 1
    .param p1, "usingQuote"    # Z

    #@0
    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    #@2
    .line 98
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@5
    .line 99
    return-object p0
.end method

.method public setUsingSlash(Z)Landroid/icu/impl/PatternTokenizer;
    .locals 1
    .param p1, "usingSlash"    # Z

    #@0
    .prologue
    .line 105
    iput-boolean p1, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    #@2
    .line 106
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    #@5
    .line 107
    return-object p0
.end method
