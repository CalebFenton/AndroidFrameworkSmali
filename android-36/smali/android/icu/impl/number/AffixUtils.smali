.class public Landroid/icu/impl/number/AffixUtils;
.super Ljava/lang/Object;
.source "AffixUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/AffixUtils$SymbolProvider;,
        Landroid/icu/impl/number/AffixUtils$TokenConsumer;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o STATE_AFTER_QUOTE:I = 0x3

.field private static final greylist-max-o STATE_BASE:I = 0x0

.field private static final greylist-max-o STATE_FIFTH_CURR:I = 0x8

.field private static final greylist-max-o STATE_FIRST_CURR:I = 0x4

.field private static final greylist-max-o STATE_FIRST_QUOTE:I = 0x1

.field private static final greylist-max-o STATE_FOURTH_CURR:I = 0x7

.field private static final greylist-max-o STATE_INSIDE_QUOTE:I = 0x2

.field private static final greylist-max-o STATE_OVERFLOW_CURR:I = 0x9

.field private static final greylist-max-o STATE_SECOND_CURR:I = 0x5

.field private static final greylist-max-o STATE_THIRD_CURR:I = 0x6

.field public static final blacklist TYPE_APPROXIMATELY_SIGN:I = -0x3

.field private static final greylist-max-o TYPE_CODEPOINT:I = 0x0

.field public static final blacklist TYPE_CURRENCY_DOUBLE:I = -0x7

.field public static final blacklist TYPE_CURRENCY_OVERFLOW:I = -0xf

.field public static final blacklist TYPE_CURRENCY_QUAD:I = -0x9

.field public static final blacklist TYPE_CURRENCY_QUINT:I = -0xa

.field public static final blacklist TYPE_CURRENCY_SINGLE:I = -0x6

.field public static final blacklist TYPE_CURRENCY_TRIPLE:I = -0x8

.field public static final blacklist TYPE_MINUS_SIGN:I = -0x1

.field public static final blacklist TYPE_PERCENT:I = -0x4

.field public static final blacklist TYPE_PERMILLE:I = -0x5

.field public static final blacklist TYPE_PLUS_SIGN:I = -0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 65
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet;)Z
    .registers 7
    .param p0, "affixPattern"    # Ljava/lang/CharSequence;
    .param p1, "ignorables"    # Landroid/icu/text/UnicodeSet;

    .line 461
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 462
    return v0

    .line 464
    :cond_4
    const-wide/16 v1, 0x0

    .line 465
    .local v1, "tag":J
    :goto_6
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 466
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 467
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    .line 468
    .local v3, "typeOrCp":I
    if-ltz v3, :cond_1e

    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 469
    const/4 v0, 0x0

    return v0

    .line 471
    .end local v3    # "typeOrCp":I
    :cond_1e
    goto :goto_6

    .line 472
    :cond_1f
    return v0
.end method

.method public static blacklist containsType(Ljava/lang/CharSequence;I)Z
    .registers 6
    .param p0, "affixPattern"    # Ljava/lang/CharSequence;
    .param p1, "type"    # I

    .line 394
    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1f

    .line 397
    :cond_a
    const-wide/16 v1, 0x0

    .line 398
    .local v1, "tag":J
    :cond_c
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 399
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 400
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_c

    .line 401
    const/4 v0, 0x1

    return v0

    .line 404
    :cond_1e
    return v0

    .line 395
    .end local v1    # "tag":J
    :cond_1f
    :goto_1f
    return v0
.end method

.method public static blacklist escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I
    .registers 8
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/lang/StringBuilder;

    .line 219
    if-nez p0, :cond_4

    .line 220
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_4
    const/4 v0, 0x0

    .line 222
    .local v0, "state":I
    const/4 v1, 0x0

    .line 223
    .local v1, "offset":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 224
    .local v2, "startLength":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x27

    if-ge v1, v3, :cond_41

    .line 225
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 227
    .local v3, "cp":I
    sparse-switch v3, :sswitch_data_4c

    .line 247
    if-ne v0, v4, :cond_38

    .line 248
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 250
    const/4 v0, 0x0

    goto :goto_3b

    .line 229
    :sswitch_24
    const-string v4, "\'\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    goto :goto_3b

    .line 237
    :sswitch_2a
    if-nez v0, :cond_34

    .line 238
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 240
    const/4 v0, 0x2

    goto :goto_3b

    .line 242
    :cond_34
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 244
    goto :goto_3b

    .line 252
    :cond_38
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 256
    :goto_3b
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 257
    .end local v3    # "cp":I
    goto :goto_a

    .line 259
    :cond_41
    if-ne v0, v4, :cond_46

    .line 260
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :cond_46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    return v3

    :sswitch_data_4c
    .sparse-switch
        0x25 -> :sswitch_2a
        0x27 -> :sswitch_24
        0x2b -> :sswitch_2a
        0x2d -> :sswitch_2a
        0xa4 -> :sswitch_2a
        0x2030 -> :sswitch_2a
    .end sparse-switch
.end method

.method public static blacklist escape(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 268
    if-nez p0, :cond_4

    .line 269
    const/4 v0, 0x0

    return-object v0

    .line 270
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist estimateLength(Ljava/lang/CharSequence;)I
    .registers 7
    .param p0, "patternString"    # Ljava/lang/CharSequence;

    .line 139
    if-nez p0, :cond_4

    .line 140
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_4
    const/4 v0, 0x0

    .line 142
    .local v0, "state":I
    const/4 v1, 0x0

    .line 143
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 144
    .local v2, "length":I
    :goto_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_43

    .line 145
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 147
    .local v3, "cp":I
    const/16 v4, 0x27

    packed-switch v0, :pswitch_data_66

    .line 188
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 178
    :pswitch_1c
    if-ne v3, v4, :cond_22

    .line 180
    add-int/lit8 v2, v2, 0x1

    .line 181
    const/4 v0, 0x2

    goto :goto_3d

    .line 184
    :cond_22
    add-int/lit8 v2, v2, 0x1

    .line 186
    goto :goto_3d

    .line 169
    :pswitch_25
    if-ne v3, v4, :cond_29

    .line 171
    const/4 v0, 0x3

    goto :goto_3d

    .line 174
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 176
    goto :goto_3d

    .line 158
    :pswitch_2c
    if-ne v3, v4, :cond_32

    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    const/4 v0, 0x0

    goto :goto_3d

    .line 164
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 165
    const/4 v0, 0x2

    .line 167
    goto :goto_3d

    .line 149
    :pswitch_36
    if-ne v3, v4, :cond_3a

    .line 151
    const/4 v0, 0x1

    goto :goto_3d

    .line 154
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    .line 156
    nop

    .line 191
    :goto_3d
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 192
    .end local v3    # "cp":I
    goto :goto_7

    .line 194
    :cond_43
    packed-switch v0, :pswitch_data_72

    .line 202
    return v2

    .line 197
    :pswitch_47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unterminated quote: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_36
        :pswitch_2c
        :pswitch_25
        :pswitch_1c
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method private static greylist-max-o getCodePoint(J)I
    .registers 4
    .param p0, "tag"    # J

    .line 720
    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static final blacklist getFieldForType(I)Landroid/icu/text/NumberFormat$Field;
    .registers 2
    .param p0, "type"    # I

    .line 276
    packed-switch p0, :pswitch_data_2a

    .line 300
    :pswitch_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 278
    :pswitch_9
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 280
    :pswitch_c
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 282
    :pswitch_f
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->APPROXIMATELY_SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 284
    :pswitch_12
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 286
    :pswitch_15
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 288
    :pswitch_18
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 290
    :pswitch_1b
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 292
    :pswitch_1e
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 294
    :pswitch_21
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 296
    :pswitch_24
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    .line 298
    :pswitch_27
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :pswitch_data_2a
    .packed-switch -0xf
        :pswitch_27
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private static greylist-max-o getOffset(J)I
    .registers 4
    .param p0, "tag"    # J

    .line 708
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static greylist-max-o getState(J)I
    .registers 6
    .param p0, "tag"    # J

    .line 716
    const/16 v0, 0x24

    ushr-long v0, p0, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static greylist-max-o getType(J)I
    .registers 6
    .param p0, "tag"    # J

    .line 712
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static blacklist getTypeOrCp(J)I
    .registers 4
    .param p0, "tag"    # J

    .line 681
    nop

    .line 682
    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getType(J)I

    move-result v0

    .line 683
    .local v0, "type":I
    if-nez v0, :cond_c

    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getCodePoint(J)I

    move-result v1

    goto :goto_d

    :cond_c
    neg-int v1, v0

    :goto_d
    return v1
.end method

.method public static blacklist hasCurrencySymbols(Ljava/lang/CharSequence;)Z
    .registers 7
    .param p0, "affixPattern"    # Ljava/lang/CharSequence;

    .line 415
    const/4 v0, 0x0

    if-eqz p0, :cond_28

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_28

    .line 417
    :cond_a
    const-wide/16 v1, 0x0

    .line 418
    .local v1, "tag":J
    :goto_c
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 419
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 420
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    .line 421
    .local v3, "typeOrCp":I
    if-gez v3, :cond_26

    invoke-static {v3}, Landroid/icu/impl/number/AffixUtils;->getFieldForType(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_26

    .line 422
    const/4 v0, 0x1

    return v0

    .line 424
    .end local v3    # "typeOrCp":I
    :cond_26
    goto :goto_c

    .line 425
    :cond_27
    return v0

    .line 416
    .end local v1    # "tag":J
    :cond_28
    :goto_28
    return v0
.end method

.method private static blacklist hasNext(JLjava/lang/CharSequence;)Z
    .registers 9
    .param p0, "tag"    # J
    .param p2, "string"    # Ljava/lang/CharSequence;

    .line 655
    nop

    .line 656
    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getState(J)I

    move-result v0

    .line 657
    .local v0, "state":I
    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result v1

    .line 659
    .local v1, "offset":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1e

    .line 660
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v1, v2, :cond_1e

    .line 661
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v5, 0x27

    if-ne v2, v5, :cond_1e

    .line 662
    return v3

    .line 663
    :cond_1e
    if-eqz v0, :cond_21

    .line 664
    return v4

    .line 666
    :cond_21
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    move v3, v4

    :cond_28
    return v3
.end method

.method public static blacklist iterateWithConsumer(Ljava/lang/CharSequence;Landroid/icu/impl/number/AffixUtils$TokenConsumer;)V
    .registers 5
    .param p0, "affixPattern"    # Ljava/lang/CharSequence;
    .param p1, "consumer"    # Landroid/icu/impl/number/AffixUtils$TokenConsumer;

    .line 479
    nop

    .line 480
    const-wide/16 v0, 0x0

    .line 481
    .local v0, "tag":J
    :goto_3
    invoke-static {v0, v1, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 482
    invoke-static {v0, v1, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v0

    .line 483
    invoke-static {v0, v1}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v2

    .line 484
    .local v2, "typeOrCp":I
    invoke-interface {p1, v2}, Landroid/icu/impl/number/AffixUtils$TokenConsumer;->consumeToken(I)V

    .line 485
    .end local v2    # "typeOrCp":I
    goto :goto_3

    .line 486
    :cond_15
    return-void
.end method

.method private static greylist-max-o makeTag(IIII)J
    .registers 9
    .param p0, "offset"    # I
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "cp"    # I

    .line 698
    const-wide/16 v0, 0x0

    .line 699
    .local v0, "tag":J
    int-to-long v2, p0

    or-long/2addr v0, v2

    .line 700
    int-to-long v2, p1

    neg-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 701
    int-to-long v2, p2

    const/16 v4, 0x24

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 702
    int-to-long v2, p3

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 703
    nop

    .line 704
    return-wide v0
.end method

.method private static blacklist nextToken(JLjava/lang/CharSequence;)J
    .registers 18
    .param p0, "tag"    # J
    .param p2, "patternString"    # Ljava/lang/CharSequence;

    .line 501
    move-object/from16 v0, p2

    invoke-static/range {p0 .. p1}, Landroid/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result v1

    .line 502
    .local v1, "offset":I
    invoke-static/range {p0 .. p1}, Landroid/icu/impl/number/AffixUtils;->getState(J)I

    move-result v2

    .line 503
    .local v2, "state":I
    :goto_a
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, -0xf

    const/16 v5, -0xa

    const/16 v6, -0x9

    const/4 v7, -0x8

    const/4 v8, -0x7

    const/4 v9, -0x6

    const/4 v10, 0x0

    if-ge v1, v3, :cond_d2

    .line 504
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 505
    .local v3, "cp":I
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    .line 507
    .local v11, "count":I
    const/4 v12, 0x2

    const/16 v13, 0x27

    const/16 v14, 0xa4

    packed-switch v2, :pswitch_data_11c

    .line 611
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 603
    :pswitch_30
    if-ne v3, v14, :cond_35

    .line 604
    add-int/2addr v1, v11

    .line 606
    goto/16 :goto_c8

    .line 608
    :cond_35
    invoke-static {v1, v4, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 594
    :pswitch_3a
    if-ne v3, v14, :cond_41

    .line 595
    const/16 v2, 0x9

    .line 596
    add-int/2addr v1, v11

    .line 598
    goto/16 :goto_c8

    .line 600
    :cond_41
    invoke-static {v1, v5, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 585
    :pswitch_46
    if-ne v3, v14, :cond_4d

    .line 586
    const/16 v2, 0x8

    .line 587
    add-int/2addr v1, v11

    .line 589
    goto/16 :goto_c8

    .line 591
    :cond_4d
    invoke-static {v1, v6, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 576
    :pswitch_52
    if-ne v3, v14, :cond_58

    .line 577
    const/4 v2, 0x7

    .line 578
    add-int/2addr v1, v11

    .line 580
    goto/16 :goto_c8

    .line 582
    :cond_58
    invoke-static {v1, v7, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 567
    :pswitch_5d
    if-ne v3, v14, :cond_62

    .line 568
    const/4 v2, 0x6

    .line 569
    add-int/2addr v1, v11

    .line 571
    goto :goto_c8

    .line 573
    :cond_62
    invoke-static {v1, v8, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 558
    :pswitch_67
    if-ne v3, v14, :cond_6c

    .line 559
    const/4 v2, 0x5

    .line 560
    add-int/2addr v1, v11

    .line 562
    goto :goto_c8

    .line 564
    :cond_6c
    invoke-static {v1, v9, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 550
    :pswitch_71
    if-ne v3, v13, :cond_7a

    .line 551
    add-int v4, v1, v11

    invoke-static {v4, v10, v12, v3}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 553
    :cond_7a
    const/4 v2, 0x0

    .line 555
    goto :goto_c8

    .line 541
    :pswitch_7c
    if-ne v3, v13, :cond_81

    .line 542
    const/4 v2, 0x3

    .line 543
    add-int/2addr v1, v11

    .line 545
    goto :goto_c8

    .line 547
    :cond_81
    add-int v4, v1, v11

    invoke-static {v4, v10, v12, v3}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 535
    :pswitch_88
    if-ne v3, v13, :cond_91

    .line 536
    add-int v4, v1, v11

    invoke-static {v4, v10, v10, v3}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 538
    :cond_91
    add-int v4, v1, v11

    invoke-static {v4, v10, v12, v3}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 509
    :pswitch_98
    sparse-switch v3, :sswitch_data_134

    .line 531
    add-int v4, v1, v11

    invoke-static {v4, v10, v10, v3}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 524
    :sswitch_a2
    add-int v4, v1, v11

    const/4 v5, -0x5

    invoke-static {v4, v5, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 526
    :sswitch_aa
    const/4 v2, 0x4

    .line 527
    add-int/2addr v1, v11

    .line 529
    goto :goto_c8

    .line 520
    :sswitch_ad
    add-int v4, v1, v11

    const/4 v5, -0x3

    invoke-static {v4, v5, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 516
    :sswitch_b5
    add-int v4, v1, v11

    const/4 v5, -0x1

    invoke-static {v4, v5, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 518
    :sswitch_bd
    add-int v4, v1, v11

    const/4 v5, -0x2

    invoke-static {v4, v5, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 511
    :sswitch_c5
    const/4 v2, 0x1

    .line 512
    add-int/2addr v1, v11

    .line 514
    nop

    .line 613
    .end local v3    # "cp":I
    .end local v11    # "count":I
    :goto_c8
    goto/16 :goto_a

    .line 522
    .restart local v3    # "cp":I
    .restart local v11    # "count":I
    :sswitch_ca
    add-int v4, v1, v11

    const/4 v5, -0x4

    invoke-static {v4, v5, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v4

    return-wide v4

    .line 615
    .end local v3    # "cp":I
    .end local v11    # "count":I
    :cond_d2
    const-wide/16 v11, -0x1

    packed-switch v2, :pswitch_data_152

    .line 640
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 638
    :pswitch_dd
    invoke-static {v1, v4, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v3

    return-wide v3

    .line 636
    :pswitch_e2
    invoke-static {v1, v5, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v3

    return-wide v3

    .line 634
    :pswitch_e7
    invoke-static {v1, v6, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v3

    return-wide v3

    .line 632
    :pswitch_ec
    invoke-static {v1, v7, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v3

    return-wide v3

    .line 630
    :pswitch_f1
    invoke-static {v1, v8, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v3

    return-wide v3

    .line 628
    :pswitch_f6
    invoke-static {v1, v9, v10, v10}, Landroid/icu/impl/number/AffixUtils;->makeTag(IIII)J

    move-result-wide v3

    return-wide v3

    .line 626
    :pswitch_fb
    return-wide v11

    .line 622
    :pswitch_fc
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unterminated quote in pattern affix: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 618
    :pswitch_11b
    return-wide v11

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_98
        :pswitch_88
        :pswitch_7c
        :pswitch_71
        :pswitch_67
        :pswitch_5d
        :pswitch_52
        :pswitch_46
        :pswitch_3a
        :pswitch_30
    .end packed-switch

    :sswitch_data_134
    .sparse-switch
        0x25 -> :sswitch_ca
        0x27 -> :sswitch_c5
        0x2b -> :sswitch_bd
        0x2d -> :sswitch_b5
        0x7e -> :sswitch_ad
        0xa4 -> :sswitch_aa
        0x2030 -> :sswitch_a2
    .end sparse-switch

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_fc
        :pswitch_fc
        :pswitch_fb
        :pswitch_f6
        :pswitch_f1
        :pswitch_ec
        :pswitch_e7
        :pswitch_e2
        :pswitch_dd
    .end packed-switch
.end method

.method public static blacklist replaceType(Ljava/lang/CharSequence;IC)Ljava/lang/String;
    .registers 8
    .param p0, "affixPattern"    # Ljava/lang/CharSequence;
    .param p1, "type"    # I
    .param p2, "replacementChar"    # C

    .line 440
    if-eqz p0, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 442
    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 443
    .local v0, "chars":[C
    const-wide/16 v1, 0x0

    .line 444
    .local v1, "tag":J
    :cond_13
    :goto_13
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 445
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 446
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    if-ne v3, p1, :cond_13

    .line 447
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getOffset(J)I

    move-result v3

    .line 448
    .local v3, "offset":I
    add-int/lit8 v4, v3, -0x1

    aput-char p2, v0, v4

    .line 449
    .end local v3    # "offset":I
    goto :goto_13

    .line 451
    :cond_2c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 441
    .end local v0    # "chars":[C
    .end local v1    # "tag":J
    :cond_32
    :goto_32
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist unescape(Ljava/lang/CharSequence;Landroid/icu/impl/FormattedStringBuilder;ILandroid/icu/impl/number/AffixUtils$SymbolProvider;Landroid/icu/text/NumberFormat$Field;)I
    .registers 12
    .param p0, "affixPattern"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "position"    # I
    .param p3, "provider"    # Landroid/icu/impl/number/AffixUtils$SymbolProvider;
    .param p4, "field"    # Landroid/icu/text/NumberFormat$Field;

    .line 328
    nop

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "length":I
    const-wide/16 v1, 0x0

    .line 331
    .local v1, "tag":J
    :goto_4
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 332
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 333
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    .line 334
    .local v3, "typeOrCp":I
    const/16 v4, -0xf

    if-ne v3, v4, :cond_23

    .line 336
    add-int v4, p2, v0

    const v5, 0xfffd

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p1, v4, v5, v6}, Landroid/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3c

    .line 337
    :cond_23
    if-gez v3, :cond_35

    .line 338
    add-int v4, p2, v0

    .line 339
    invoke-interface {p3, v3}, Landroid/icu/impl/number/AffixUtils$SymbolProvider;->getSymbol(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 340
    invoke-static {v3}, Landroid/icu/impl/number/AffixUtils;->getFieldForType(I)Landroid/icu/text/NumberFormat$Field;

    move-result-object v6

    .line 338
    invoke-virtual {p1, v4, v5, v6}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3c

    .line 342
    :cond_35
    add-int v4, p2, v0

    invoke-virtual {p1, v4, v3, p4}, Landroid/icu/impl/FormattedStringBuilder;->insertCodePoint(IILjava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    .line 344
    .end local v3    # "typeOrCp":I
    :goto_3c
    goto :goto_4

    .line 345
    :cond_3d
    return v0
.end method

.method public static blacklist unescapedCount(Ljava/lang/CharSequence;ZLandroid/icu/impl/number/AffixUtils$SymbolProvider;)I
    .registers 10
    .param p0, "affixPattern"    # Ljava/lang/CharSequence;
    .param p1, "lengthOrCount"    # Z
    .param p2, "provider"    # Landroid/icu/impl/number/AffixUtils$SymbolProvider;

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "length":I
    const-wide/16 v1, 0x0

    .line 366
    .local v1, "tag":J
    :goto_3
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->hasNext(JLjava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 367
    invoke-static {v1, v2, p0}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v1

    .line 368
    invoke-static {v1, v2}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v3

    .line 369
    .local v3, "typeOrCp":I
    const/16 v4, -0xf

    if-ne v3, v4, :cond_18

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 372
    :cond_18
    if-gez v3, :cond_30

    .line 373
    invoke-interface {p2, v3}, Landroid/icu/impl/number/AffixUtils$SymbolProvider;->getSymbol(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 374
    .local v4, "symbol":Ljava/lang/CharSequence;
    if-eqz p1, :cond_25

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    goto :goto_2e

    .line 375
    :cond_25
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v5

    :goto_2e
    add-int/2addr v0, v5

    .line 376
    .end local v4    # "symbol":Ljava/lang/CharSequence;
    goto :goto_39

    .line 377
    :cond_30
    if-eqz p1, :cond_37

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    goto :goto_38

    :cond_37
    const/4 v4, 0x1

    :goto_38
    add-int/2addr v0, v4

    .line 379
    .end local v3    # "typeOrCp":I
    :goto_39
    goto :goto_3

    .line 380
    :cond_3a
    return v0
.end method
