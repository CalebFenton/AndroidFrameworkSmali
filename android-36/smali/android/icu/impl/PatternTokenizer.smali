.class public Landroid/icu/impl/PatternTokenizer;
.super Ljava/lang/Object;
.source "PatternTokenizer.java"


# static fields
.field private static final greylist-max-o AFTER_QUOTE:I = -0x1

.field public static final blacklist BACK_SLASH:C = '\\'

.field public static final blacklist BROKEN_ESCAPE:I = 0x4

.field public static final blacklist BROKEN_QUOTE:I = 0x3

.field public static final blacklist DONE:I = 0x0

.field private static final greylist-max-o HEX:I = 0x4

.field private static greylist-max-o IN_QUOTE:I = 0x0

.field public static final blacklist LITERAL:I = 0x2

.field private static final greylist-max-o NONE:I = 0x0

.field private static final greylist-max-o NORMAL_QUOTE:I = 0x2

.field private static greylist-max-o NO_QUOTE:I = 0x0

.field public static final blacklist SINGLE_QUOTE:C = '\''

.field private static final greylist-max-o SLASH_START:I = 0x3

.field private static final greylist-max-o START_QUOTE:I = 0x1

.field public static final blacklist SYNTAX:I = 0x1

.field public static final blacklist UNKNOWN:I = 0x5


# instance fields
.field private greylist-max-o escapeCharacters:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o ignorableCharacters:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o limit:I

.field private transient greylist-max-o needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o pattern:Ljava/lang/String;

.field private greylist-max-o start:I

.field private greylist-max-o syntaxCharacters:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o usingQuote:Z

.field private greylist-max-o usingSlash:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 150
    const/4 v0, -0x1

    sput v0, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    const/4 v0, -0x2

    sput v0, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    .line 29
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    .line 30
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    .line 31
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    .line 33
    iput-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private greylist-max-o appendEscaped(Ljava/lang/StringBuffer;I)V
    .registers 7
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "cp"    # I

    .line 229
    const v0, 0xffff

    if-gt p2, v0, :cond_15

    .line 230
    const-string v0, "\\u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    int-to-long v1, p2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_25

    .line 232
    :cond_15
    const-string v0, "\\U"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    int-to-long v1, p2

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :goto_25
    return-void
.end method


# virtual methods
.method public blacklist getEscapeCharacters()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public blacklist getExtraQuotingCharacters()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public blacklist getIgnorableCharacters()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public blacklist getLimit()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    return v0
.end method

.method public blacklist getStart()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    return v0
.end method

.method public blacklist getSyntaxCharacters()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public blacklist isUsingQuote()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    return v0
.end method

.method public blacklist isUsingSlash()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    return v0
.end method

.method public blacklist next(Ljava/lang/StringBuffer;)I
    .registers 11
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 260
    iget v0, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    iget v1, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 261
    :cond_8
    const/4 v0, 0x5

    .line 262
    .local v0, "status":I
    const/4 v1, 0x5

    .line 263
    .local v1, "lastQuote":I
    const/4 v2, 0x0

    .line 264
    .local v2, "quoteStatus":I
    const/4 v3, 0x0

    .line 265
    .local v3, "hexCount":I
    const/4 v4, 0x0

    .line 268
    .local v4, "hexValue":I
    iget v5, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    .local v5, "i":I
    :goto_f
    iget v6, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    const/16 v7, 0x5c

    if-ge v5, v6, :cond_b0

    .line 269
    iget-object v6, p0, Landroid/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v6

    .line 271
    .local v6, "cp":I
    packed-switch v2, :pswitch_data_c6

    :pswitch_1e
    goto :goto_73

    .line 296
    :pswitch_1f
    shl-int/lit8 v4, v4, 0x4

    .line 297
    add-int/2addr v4, v6

    .line 298
    sparse-switch v6, :sswitch_data_d6

    .line 306
    iput v5, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    .line 307
    const/4 v7, 0x4

    return v7

    .line 302
    :sswitch_29
    add-int/lit8 v4, v4, -0x57

    goto :goto_31

    .line 304
    :sswitch_2c
    add-int/lit8 v4, v4, -0x37

    goto :goto_31

    .line 300
    :sswitch_2f
    add-int/lit8 v4, v4, -0x30

    .line 309
    :goto_31
    add-int/lit8 v3, v3, -0x1

    .line 310
    if-nez v3, :cond_a9

    .line 311
    const/4 v2, 0x0

    .line 312
    invoke-static {p1, v4}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto/16 :goto_a9

    .line 273
    :pswitch_3b
    sparse-switch v6, :sswitch_data_130

    .line 285
    iget-boolean v8, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v8, :cond_51

    .line 286
    invoke-static {p1, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 287
    const/4 v2, 0x0

    .line 288
    goto/16 :goto_a9

    .line 275
    :sswitch_48
    const/4 v2, 0x4

    .line 276
    const/4 v3, 0x4

    .line 277
    const/4 v4, 0x0

    .line 278
    goto :goto_a9

    .line 280
    :sswitch_4c
    const/4 v2, 0x4

    .line 281
    const/16 v3, 0x8

    .line 282
    const/4 v4, 0x0

    .line 283
    goto :goto_a9

    .line 290
    :cond_51
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    const/4 v2, 0x0

    .line 294
    goto :goto_73

    .line 337
    :pswitch_56
    if-ne v6, v1, :cond_5a

    .line 338
    const/4 v2, -0x1

    .line 339
    goto :goto_a9

    .line 341
    :cond_5a
    invoke-static {p1, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 342
    goto :goto_a9

    .line 327
    :pswitch_5e
    if-ne v6, v1, :cond_65

    .line 328
    invoke-static {p1, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 329
    const/4 v2, 0x0

    .line 330
    goto :goto_a9

    .line 333
    :cond_65
    invoke-static {p1, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 334
    const/4 v2, 0x2

    .line 335
    goto :goto_a9

    .line 318
    :pswitch_6a
    if-ne v6, v1, :cond_71

    .line 319
    invoke-static {p1, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 320
    const/4 v2, 0x2

    .line 321
    goto :goto_a9

    .line 323
    :cond_71
    const/4 v2, 0x0

    .line 324
    nop

    .line 345
    :goto_73
    iget-object v8, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8, v6}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 346
    goto :goto_a9

    .line 349
    :cond_7c
    iget-object v8, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8, v6}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 350
    const/4 v7, 0x5

    if-ne v0, v7, :cond_93

    .line 351
    invoke-static {p1, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 352
    invoke-static {v6}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    .line 353
    const/4 v7, 0x1

    return v7

    .line 355
    :cond_93
    iput v5, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    .line 356
    return v0

    .line 360
    :cond_96
    const/4 v0, 0x2

    .line 361
    if-ne v6, v7, :cond_9b

    .line 362
    const/4 v2, 0x3

    .line 363
    goto :goto_a9

    .line 364
    :cond_9b
    iget-boolean v7, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v7, :cond_a6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_a6

    .line 365
    move v1, v6

    .line 366
    const/4 v2, 0x1

    .line 367
    goto :goto_a9

    .line 370
    :cond_a6
    invoke-static {p1, v6}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 268
    :cond_a9
    :goto_a9
    invoke-static {v6}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v5, v7

    goto/16 :goto_f

    .line 373
    .end local v5    # "i":I
    .end local v6    # "cp":I
    :cond_b0
    iget v5, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    iput v5, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    .line 374
    packed-switch v2, :pswitch_data_13a

    goto :goto_c5

    .line 376
    :pswitch_b8
    const/4 v0, 0x4

    .line 377
    goto :goto_c5

    .line 379
    :pswitch_ba
    iget-boolean v5, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v5, :cond_c0

    .line 380
    const/4 v0, 0x4

    goto :goto_c5

    .line 382
    :cond_c0
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 384
    goto :goto_c5

    .line 386
    :pswitch_c4
    const/4 v0, 0x3

    .line 389
    :goto_c5
    return v0

    :pswitch_data_c6
    .packed-switch -0x1
        :pswitch_6a
        :pswitch_1e
        :pswitch_5e
        :pswitch_56
        :pswitch_3b
        :pswitch_1f
    .end packed-switch

    :sswitch_data_d6
    .sparse-switch
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_2f
        0x32 -> :sswitch_2f
        0x33 -> :sswitch_2f
        0x34 -> :sswitch_2f
        0x35 -> :sswitch_2f
        0x36 -> :sswitch_2f
        0x37 -> :sswitch_2f
        0x38 -> :sswitch_2f
        0x39 -> :sswitch_2f
        0x41 -> :sswitch_2c
        0x42 -> :sswitch_2c
        0x43 -> :sswitch_2c
        0x44 -> :sswitch_2c
        0x45 -> :sswitch_2c
        0x46 -> :sswitch_2c
        0x61 -> :sswitch_29
        0x62 -> :sswitch_29
        0x63 -> :sswitch_29
        0x64 -> :sswitch_29
        0x65 -> :sswitch_29
        0x66 -> :sswitch_29
    .end sparse-switch

    :sswitch_data_130
    .sparse-switch
        0x55 -> :sswitch_4c
        0x75 -> :sswitch_48
    .end sparse-switch

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_c4
        :pswitch_ba
        :pswitch_b8
    .end packed-switch
.end method

.method public blacklist normalize()Ljava/lang/String;
    .registers 6

    .line 237
    iget v0, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    .line 238
    .local v0, "oldStart":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    .local v1, "result":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v2, "buffer":Ljava/lang/StringBuffer;
    :goto_c
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 242
    invoke-virtual {p0, v2}, Landroid/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    move-result v3

    .line 243
    .local v3, "status":I
    if-nez v3, :cond_1d

    .line 244
    iput v0, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 247
    :cond_1d
    const/4 v4, 0x1

    if-eq v3, v4, :cond_28

    .line 248
    invoke-virtual {p0, v2}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 250
    :cond_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 252
    .end local v3    # "status":I
    :goto_2b
    goto :goto_c
.end method

.method public blacklist quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p1, "string"    # Ljava/lang/CharSequence;

    .line 153
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist quoteLiteral(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "string"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x5c

    const/16 v2, 0x27

    if-nez v0, :cond_33

    .line 163
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iget-object v3, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iget-object v3, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iget-object v3, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    .line 164
    iget-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 165
    :cond_2a
    iget-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 167
    :cond_33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    .local v0, "result":Ljava/lang/StringBuffer;
    sget v3, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    .line 170
    .local v3, "quotedChar":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_aa

    .line 171
    invoke-static {p1, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    .line 172
    .local v5, "cp":I
    iget-object v6, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 174
    sget v6, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v3, v6, :cond_56

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    sget v3, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    .line 178
    :cond_56
    invoke-direct {p0, v0, v5}, Landroid/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    .line 179
    goto :goto_a4

    .line 182
    :cond_5a
    iget-object v6, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 184
    sget v6, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v3, v6, :cond_73

    .line 185
    invoke-static {v0, v5}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 186
    iget-boolean v6, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v6, :cond_a4

    if-ne v5, v2, :cond_a4

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a4

    .line 192
    :cond_73
    iget-boolean v6, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v6, :cond_7e

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    invoke-static {v0, v5}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 195
    goto :goto_a4

    .line 197
    :cond_7e
    iget-boolean v6, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v6, :cond_94

    .line 198
    if-ne v5, v2, :cond_8b

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 201
    goto :goto_a4

    .line 203
    :cond_8b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    invoke-static {v0, v5}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 205
    sget v3, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    .line 206
    goto :goto_a4

    .line 209
    :cond_94
    invoke-direct {p0, v0, v5}, Landroid/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    .line 210
    goto :goto_a4

    .line 214
    :cond_98
    sget v6, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v3, v6, :cond_a1

    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    sget v3, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    .line 218
    :cond_a1
    invoke-static {v0, v5}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 170
    :cond_a4
    :goto_a4
    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_3b

    .line 222
    .end local v4    # "i":I
    .end local v5    # "cp":I
    :cond_aa
    sget v1, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v3, v1, :cond_b1

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 225
    :cond_b1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setEscapeCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .registers 3
    .param p1, "escapeCharacters"    # Landroid/icu/text/UnicodeSet;

    .line 92
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    .line 93
    return-object p0
.end method

.method public blacklist setExtraQuotingCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .registers 3
    .param p1, "syntaxCharacters"    # Landroid/icu/text/UnicodeSet;

    .line 78
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    .line 80
    return-object p0
.end method

.method public blacklist setIgnorableCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .registers 3
    .param p1, "ignorableCharacters"    # Landroid/icu/text/UnicodeSet;

    .line 52
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    .line 54
    return-object p0
.end method

.method public blacklist setLimit(I)Landroid/icu/impl/PatternTokenizer;
    .registers 2
    .param p1, "limit"    # I

    .line 123
    iput p1, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    .line 124
    return-object p0
.end method

.method public blacklist setPattern(Ljava/lang/CharSequence;)Landroid/icu/impl/PatternTokenizer;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/CharSequence;

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 139
    if-eqz p1, :cond_e

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    .line 144
    iput-object p1, p0, Landroid/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    .line 145
    return-object p0

    .line 140
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inconsistent arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setStart(I)Landroid/icu/impl/PatternTokenizer;
    .registers 2
    .param p1, "start"    # I

    .line 130
    iput p1, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    .line 131
    return-object p0
.end method

.method public blacklist setSyntaxCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .registers 3
    .param p1, "syntaxCharacters"    # Landroid/icu/text/UnicodeSet;

    .line 68
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    .line 70
    return-object p0
.end method

.method public blacklist setUsingQuote(Z)Landroid/icu/impl/PatternTokenizer;
    .registers 3
    .param p1, "usingQuote"    # Z

    .line 99
    iput-boolean p1, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    .line 101
    return-object p0
.end method

.method public blacklist setUsingSlash(Z)Landroid/icu/impl/PatternTokenizer;
    .registers 3
    .param p1, "usingSlash"    # Z

    .line 107
    iput-boolean p1, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    .line 109
    return-object p0
.end method
