.class public final Landroid/icu/text/UTF16;
.super Ljava/lang/Object;
.source "UTF16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/UTF16$StringComparator;
    }
.end annotation


# static fields
.field public static final greylist-max-o CODEPOINT_MAX_VALUE:I = 0x10ffff

.field public static final greylist-max-o CODEPOINT_MIN_VALUE:I = 0x0

.field private static final greylist-max-o LEAD_SURROGATE_BITMASK:I = -0x400

.field private static final greylist-max-o LEAD_SURROGATE_BITS:I = 0xd800

.field public static final greylist-max-o LEAD_SURROGATE_BOUNDARY:I = 0x2

.field public static final greylist-max-o LEAD_SURROGATE_MAX_VALUE:I = 0xdbff

.field public static final greylist-max-o LEAD_SURROGATE_MIN_VALUE:I = 0xd800

.field private static final greylist-max-o LEAD_SURROGATE_OFFSET_:I = 0xd7c0

.field private static final greylist-max-o LEAD_SURROGATE_SHIFT_:I = 0xa

.field public static final greylist-max-o SINGLE_CHAR_BOUNDARY:I = 0x1

.field public static final greylist-max-o SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field private static final greylist-max-o SURROGATE_BITMASK:I = -0x800

.field private static final greylist-max-o SURROGATE_BITS:I = 0xd800

.field public static final greylist-max-o SURROGATE_MAX_VALUE:I = 0xdfff

.field public static final greylist-max-o SURROGATE_MIN_VALUE:I = 0xd800

.field private static final greylist-max-o TRAIL_SURROGATE_BITMASK:I = -0x400

.field private static final greylist-max-o TRAIL_SURROGATE_BITS:I = 0xdc00

.field public static final greylist-max-o TRAIL_SURROGATE_BOUNDARY:I = 0x5

.field private static final greylist-max-o TRAIL_SURROGATE_MASK_:I = 0x3ff

.field public static final greylist-max-o TRAIL_SURROGATE_MAX_VALUE:I = 0xdfff

.field public static final greylist-max-o TRAIL_SURROGATE_MIN_VALUE:I = 0xdc00


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method

.method private static greylist-max-o _charAt(Ljava/lang/CharSequence;IC)I
    .registers 6
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "offset16"    # I
    .param p2, "single"    # C

    .line 261
    const v0, 0xdfff

    if-le p2, v0, :cond_6

    .line 262
    return p2

    .line 269
    :cond_6
    const v1, 0xdbff

    if-gt p2, v1, :cond_24

    .line 270
    add-int/lit8 p1, p1, 0x1

    .line 271
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v1, p1, :cond_38

    .line 272
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 273
    .local v1, "trail":C
    const v2, 0xdc00

    if-lt v1, v2, :cond_23

    if-gt v1, v0, :cond_23

    .line 275
    invoke-static {p2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0

    .line 277
    .end local v1    # "trail":C
    :cond_23
    goto :goto_38

    .line 279
    :cond_24
    add-int/lit8 p1, p1, -0x1

    .line 280
    if-ltz p1, :cond_38

    .line 282
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 283
    .local v0, "lead":C
    const v2, 0xd800

    if-lt v0, v2, :cond_38

    if-gt v0, v1, :cond_38

    .line 285
    invoke-static {v0, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    return v1

    .line 289
    .end local v0    # "lead":C
    :cond_38
    :goto_38
    return p2
.end method

.method private static greylist-max-o _charAt(Ljava/lang/String;IC)I
    .registers 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I
    .param p2, "single"    # C

    .line 208
    const v0, 0xdfff

    if-le p2, v0, :cond_6

    .line 209
    return p2

    .line 216
    :cond_6
    const v1, 0xdbff

    if-gt p2, v1, :cond_24

    .line 217
    add-int/lit8 p1, p1, 0x1

    .line 218
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, p1, :cond_38

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 220
    .local v1, "trail":C
    const v2, 0xdc00

    if-lt v1, v2, :cond_23

    if-gt v1, v0, :cond_23

    .line 221
    invoke-static {p2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0

    .line 223
    .end local v1    # "trail":C
    :cond_23
    goto :goto_38

    .line 225
    :cond_24
    add-int/lit8 p1, p1, -0x1

    .line 226
    if-ltz p1, :cond_38

    .line 228
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 229
    .local v0, "lead":C
    const v2, 0xd800

    if-lt v0, v2, :cond_38

    if-gt v0, v1, :cond_38

    .line 230
    invoke-static {v0, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    return v1

    .line 234
    .end local v0    # "lead":C
    :cond_38
    :goto_38
    return p2
.end method

.method public static greylist-max-o append([CII)I
    .registers 5
    .param p0, "target"    # [C
    .param p1, "limit"    # I
    .param p2, "char32"    # I

    .line 1022
    if-ltz p2, :cond_23

    const v0, 0x10ffff

    if-gt p2, v0, :cond_23

    .line 1026
    const/high16 v0, 0x10000

    if-lt p2, v0, :cond_1c

    .line 1027
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "limit":I
    .local v0, "limit":I
    invoke-static {p2}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    aput-char v1, p0, p1

    .line 1028
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "limit":I
    .restart local p1    # "limit":I
    invoke-static {p2}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    aput-char v1, p0, v0

    goto :goto_22

    .line 1030
    :cond_1c
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "limit":I
    .restart local v0    # "limit":I
    int-to-char v1, p2

    aput-char v1, p0, p1

    move p1, v0

    .line 1032
    .end local v0    # "limit":I
    .restart local p1    # "limit":I
    :goto_22
    return p1

    .line 1023
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 5
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "char32"    # I

    .line 983
    if-ltz p1, :cond_1f

    const v0, 0x10ffff

    if-gt p1, v0, :cond_1f

    .line 988
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_1a

    .line 989
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 990
    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 992
    :cond_1a
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 994
    :goto_1e
    return-object p0

    .line 984
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal codepoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o appendCodePoint(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 3
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "cp"    # I

    .line 1007
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o bounds(Ljava/lang/String;I)I
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I

    .line 475
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 476
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 477
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 478
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 479
    const/4 v1, 0x2

    return v1

    .line 483
    :cond_24
    add-int/lit8 p1, p1, -0x1

    .line 484
    if-ltz p1, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 485
    const/4 v1, 0x5

    return v1

    .line 489
    :cond_34
    const/4 v1, 0x1

    return v1
.end method

.method public static greylist-max-o bounds(Ljava/lang/StringBuffer;I)I
    .registers 4
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    .line 510
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 511
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 512
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 513
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 514
    const/4 v1, 0x2

    return v1

    .line 518
    :cond_24
    add-int/lit8 p1, p1, -0x1

    .line 519
    if-ltz p1, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 520
    const/4 v1, 0x5

    return v1

    .line 524
    :cond_34
    const/4 v1, 0x1

    return v1
.end method

.method public static greylist-max-o bounds([CIII)I
    .registers 6
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I

    .line 549
    add-int/2addr p3, p1

    .line 550
    if-lt p3, p1, :cond_31

    if-ge p3, p2, :cond_31

    .line 553
    aget-char v0, p0, p3

    .line 554
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 555
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 556
    add-int/lit8 p3, p3, 0x1

    .line 557
    if-ge p3, p2, :cond_2f

    aget-char v1, p0, p3

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 558
    const/4 v1, 0x2

    return v1

    .line 561
    :cond_21
    add-int/lit8 p3, p3, -0x1

    .line 562
    if-lt p3, p1, :cond_2f

    aget-char v1, p0, p3

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 563
    const/4 v1, 0x5

    return v1

    .line 567
    :cond_2f
    const/4 v1, 0x1

    return v1

    .line 551
    .end local v0    # "ch":C
    :cond_31
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static greylist-max-o charAt(Landroid/icu/text/Replaceable;I)I
    .registers 5
    .param p0, "source"    # Landroid/icu/text/Replaceable;
    .param p1, "offset16"    # I

    .line 409
    if-ltz p1, :cond_44

    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-ge p1, v0, :cond_44

    .line 413
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    .line 414
    .local v0, "single":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 415
    return v0

    .line 422
    :cond_13
    const v1, 0xdbff

    if-gt v0, v1, :cond_30

    .line 423
    add-int/lit8 p1, p1, 0x1

    .line 424
    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-eq v1, p1, :cond_43

    .line 425
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v1

    .line 426
    .local v1, "trail":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 427
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 428
    .end local v1    # "trail":C
    :cond_2f
    goto :goto_43

    .line 430
    :cond_30
    add-int/lit8 p1, p1, -0x1

    .line 431
    if-ltz p1, :cond_43

    .line 433
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v1

    .line 434
    .local v1, "lead":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 435
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 439
    .end local v1    # "lead":C
    :cond_43
    :goto_43
    return v0

    .line 410
    .end local v0    # "single":C
    :cond_44
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static greylist-max-o charAt(Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "offset16"    # I

    .line 253
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 254
    .local v0, "single":C
    const v1, 0xd800

    if-ge v0, v1, :cond_a

    .line 255
    return v0

    .line 257
    :cond_a
    invoke-static {p0, p1, v0}, Landroid/icu/text/UTF16;->_charAt(Ljava/lang/CharSequence;IC)I

    move-result v1

    return v1
.end method

.method public static greylist-max-o charAt(Ljava/lang/String;I)I
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I

    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 201
    .local v0, "single":C
    const v1, 0xd800

    if-ge v0, v1, :cond_a

    .line 202
    return v0

    .line 204
    :cond_a
    invoke-static {p0, p1, v0}, Landroid/icu/text/UTF16;->_charAt(Ljava/lang/String;IC)I

    move-result v1

    return v1
.end method

.method public static greylist-max-o charAt(Ljava/lang/StringBuffer;I)I
    .registers 5
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    .line 308
    if-ltz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge p1, v0, :cond_44

    .line 312
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 313
    .local v0, "single":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 314
    return v0

    .line 321
    :cond_13
    const v1, 0xdbff

    if-gt v0, v1, :cond_30

    .line 322
    add-int/lit8 p1, p1, 0x1

    .line 323
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eq v1, p1, :cond_43

    .line 324
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 325
    .local v1, "trail":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 326
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 327
    .end local v1    # "trail":C
    :cond_2f
    goto :goto_43

    .line 329
    :cond_30
    add-int/lit8 p1, p1, -0x1

    .line 330
    if-ltz p1, :cond_43

    .line 332
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 333
    .local v1, "lead":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 334
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 338
    .end local v1    # "lead":C
    :cond_43
    :goto_43
    return v0

    .line 309
    .end local v0    # "single":C
    :cond_44
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static greylist-max-o charAt([CIII)I
    .registers 7
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I

    .line 359
    add-int/2addr p3, p1

    .line 360
    if-lt p3, p1, :cond_39

    if-ge p3, p2, :cond_39

    .line 364
    aget-char v0, p0, p3

    .line 365
    .local v0, "single":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 366
    return v0

    .line 372
    :cond_e
    const v1, 0xdbff

    if-gt v0, v1, :cond_26

    .line 373
    add-int/lit8 p3, p3, 0x1

    .line 374
    if-lt p3, p2, :cond_18

    .line 375
    return v0

    .line 377
    :cond_18
    aget-char v1, p0, p3

    .line 378
    .local v1, "trail":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 379
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 381
    .end local v1    # "trail":C
    :cond_25
    goto :goto_38

    .line 382
    :cond_26
    if-ne p3, p1, :cond_29

    .line 383
    return v0

    .line 385
    :cond_29
    add-int/lit8 p3, p3, -0x1

    .line 386
    aget-char v1, p0, p3

    .line 387
    .local v1, "lead":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 388
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 390
    .end local v1    # "lead":C
    :cond_38
    :goto_38
    return v0

    .line 361
    .end local v0    # "single":C
    :cond_39
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static greylist-max-o compareCodePoint(ILjava/lang/CharSequence;)I
    .registers 7
    .param p0, "codePoint"    # I
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 2566
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 2567
    return v0

    .line 2569
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2570
    .local v1, "strLen":I
    if-nez v1, :cond_b

    .line 2571
    return v0

    .line 2573
    :cond_b
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 2574
    .local v2, "second":I
    sub-int v3, p0, v2

    .line 2575
    .local v3, "diff":I
    if-eqz v3, :cond_15

    .line 2576
    return v3

    .line 2578
    :cond_15
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    if-ne v1, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, -0x1

    :goto_1d
    return v0
.end method

.method public static greylist-max-o countCodePoint(Ljava/lang/String;)I
    .registers 2
    .param p0, "source"    # Ljava/lang/String;

    .line 1042
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 1045
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Landroid/icu/text/UTF16;->findCodePointOffset(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1043
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o countCodePoint(Ljava/lang/StringBuffer;)I
    .registers 2
    .param p0, "source"    # Ljava/lang/StringBuffer;

    .line 1055
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 1058
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-static {p0, v0}, Landroid/icu/text/UTF16;->findCodePointOffset(Ljava/lang/StringBuffer;I)I

    move-result v0

    return v0

    .line 1056
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o countCodePoint([CII)I
    .registers 4
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 1071
    if-eqz p0, :cond_d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_d

    .line 1074
    :cond_6
    sub-int v0, p2, p1

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/UTF16;->findCodePointOffset([CIII)I

    move-result v0

    return v0

    .line 1072
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o delete([CII)I
    .registers 7
    .param p0, "target"    # [C
    .param p1, "limit"    # I
    .param p2, "offset16"    # I

    .line 1442
    const/4 v0, 0x1

    .line 1443
    .local v0, "count":I
    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2}, Landroid/icu/text/UTF16;->bounds([CIII)I

    move-result v2

    sparse-switch v2, :sswitch_data_22

    goto :goto_12

    .line 1448
    :sswitch_a
    add-int/lit8 v0, v0, 0x1

    .line 1449
    add-int/lit8 p2, p2, -0x1

    goto :goto_12

    .line 1445
    :sswitch_f
    add-int/lit8 v0, v0, 0x1

    .line 1446
    nop

    .line 1452
    :goto_12
    add-int v2, p2, v0

    add-int v3, p2, v0

    sub-int v3, p1, v3

    invoke-static {p0, v2, p0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1453
    sub-int v2, p1, v0

    aput-char v1, p0, v2

    .line 1454
    sub-int v1, p1, v0

    return v1

    :sswitch_data_22
    .sparse-switch
        0x2 -> :sswitch_f
        0x5 -> :sswitch_a
    .end sparse-switch
.end method

.method public static greylist-max-o delete(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .registers 4
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    .line 1417
    const/4 v0, 0x1

    .line 1418
    .local v0, "count":I
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    move-result v1

    sparse-switch v1, :sswitch_data_18

    goto :goto_11

    .line 1423
    :sswitch_9
    add-int/lit8 v0, v0, 0x1

    .line 1424
    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    .line 1420
    :sswitch_e
    add-int/lit8 v0, v0, 0x1

    .line 1421
    nop

    .line 1427
    :goto_11
    add-int v1, p1, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 1428
    return-object p0

    nop

    :sswitch_data_18
    .sparse-switch
        0x2 -> :sswitch_e
        0x5 -> :sswitch_9
    .end sparse-switch
.end method

.method public static greylist-max-o findCodePointOffset(Ljava/lang/String;I)I
    .registers 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I

    .line 837
    if-ltz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_3a

    .line 841
    const/4 v0, 0x0

    .line 843
    .local v0, "result":I
    const/4 v1, 0x0

    .line 845
    .local v1, "hadLeadSurrogate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, p1, :cond_24

    .line 846
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 847
    .local v3, "ch":C
    if-eqz v1, :cond_1b

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 848
    const/4 v1, 0x0

    goto :goto_21

    .line 850
    :cond_1b
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    .line 851
    add-int/lit8 v0, v0, 0x1

    .line 845
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 855
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne p1, v2, :cond_2b

    .line 856
    return v0

    .line 861
    :cond_2b
    if-eqz v1, :cond_39

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 862
    add-int/lit8 v0, v0, -0x1

    .line 865
    :cond_39
    return v0

    .line 838
    .end local v0    # "result":I
    .end local v1    # "hadLeadSurrogate":Z
    :cond_3a
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static greylist-max-o findCodePointOffset(Ljava/lang/StringBuffer;I)I
    .registers 7
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    .line 887
    if-ltz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p1, v0, :cond_3a

    .line 891
    const/4 v0, 0x0

    .line 893
    .local v0, "result":I
    const/4 v1, 0x0

    .line 895
    .local v1, "hadLeadSurrogate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, p1, :cond_24

    .line 896
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 897
    .local v3, "ch":C
    if-eqz v1, :cond_1b

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 898
    const/4 v1, 0x0

    goto :goto_21

    .line 900
    :cond_1b
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    .line 901
    add-int/lit8 v0, v0, 0x1

    .line 895
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 905
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_24
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ne p1, v2, :cond_2b

    .line 906
    return v0

    .line 911
    :cond_2b
    if-eqz v1, :cond_39

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 912
    add-int/lit8 v0, v0, -0x1

    .line 915
    :cond_39
    return v0

    .line 888
    .end local v0    # "result":I
    .end local v1    # "hadLeadSurrogate":Z
    :cond_3a
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static greylist-max-o findCodePointOffset([CIII)I
    .registers 9
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I

    .line 939
    add-int/2addr p3, p1

    .line 940
    if-gt p3, p2, :cond_2d

    .line 944
    const/4 v0, 0x0

    .line 946
    .local v0, "result":I
    const/4 v1, 0x0

    .line 948
    .local v1, "hadLeadSurrogate":Z
    move v2, p1

    .local v2, "i":I
    :goto_6
    if-ge v2, p3, :cond_1d

    .line 949
    aget-char v3, p0, v2

    .line 950
    .local v3, "ch":C
    if-eqz v1, :cond_14

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 951
    const/4 v1, 0x0

    goto :goto_1a

    .line 953
    :cond_14
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    .line 954
    add-int/lit8 v0, v0, 0x1

    .line 948
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 958
    .end local v2    # "i":I
    .end local v3    # "ch":C
    :cond_1d
    if-ne p3, p2, :cond_20

    .line 959
    return v0

    .line 964
    :cond_20
    if-eqz v1, :cond_2c

    aget-char v2, p0, p3

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 965
    add-int/lit8 v0, v0, -0x1

    .line 968
    :cond_2c
    return v0

    .line 941
    .end local v0    # "result":I
    .end local v1    # "hadLeadSurrogate":Z
    :cond_2d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static greylist-max-o findOffsetFromCodePoint(Ljava/lang/String;I)I
    .registers 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset32"    # I

    .line 734
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "result":I
    move v2, p1

    .line 735
    .local v2, "count":I
    if-ltz p1, :cond_38

    if-gt p1, v0, :cond_38

    .line 738
    :goto_a
    if-ge v1, v0, :cond_2f

    if-lez v2, :cond_2f

    .line 739
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 740
    .local v3, "ch":C
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_2a

    add-int/lit8 v4, v1, 0x1

    .line 741
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 742
    add-int/lit8 v1, v1, 0x1

    .line 745
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    .line 746
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 748
    .end local v3    # "ch":C
    :cond_2f
    if-nez v2, :cond_32

    .line 751
    return v1

    .line 749
    :cond_32
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 736
    :cond_38
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public static greylist-max-o findOffsetFromCodePoint(Ljava/lang/StringBuffer;I)I
    .registers 7
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset32"    # I

    .line 765
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "result":I
    move v2, p1

    .line 766
    .local v2, "count":I
    if-ltz p1, :cond_38

    if-gt p1, v0, :cond_38

    .line 769
    :goto_a
    if-ge v1, v0, :cond_2f

    if-lez v2, :cond_2f

    .line 770
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 771
    .local v3, "ch":C
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_2a

    add-int/lit8 v4, v1, 0x1

    .line 772
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 773
    add-int/lit8 v1, v1, 0x1

    .line 776
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 779
    .end local v3    # "ch":C
    :cond_2f
    if-nez v2, :cond_32

    .line 782
    return v1

    .line 780
    :cond_32
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 767
    :cond_38
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public static greylist-max-o findOffsetFromCodePoint([CIII)I
    .registers 8
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset32"    # I

    .line 798
    move v0, p1

    .local v0, "result":I
    move v1, p3

    .line 799
    .local v1, "count":I
    sub-int v2, p2, p1

    if-gt p3, v2, :cond_32

    .line 802
    :goto_6
    if-ge v0, p2, :cond_27

    if-lez v1, :cond_27

    .line 803
    aget-char v2, p0, v0

    .line 804
    .local v2, "ch":C
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_22

    add-int/lit8 v3, v0, 0x1

    if-ge v3, p2, :cond_22

    add-int/lit8 v3, v0, 0x1

    aget-char v3, p0, v3

    .line 805
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 806
    add-int/lit8 v0, v0, 0x1

    .line 809
    :cond_22
    add-int/lit8 v1, v1, -0x1

    .line 810
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 812
    .end local v2    # "ch":C
    :cond_27
    if-nez v1, :cond_2c

    .line 815
    sub-int v2, v0, p1

    return v2

    .line 813
    :cond_2c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 800
    :cond_32
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2
.end method

.method public static greylist-max-o getCharCount(I)I
    .registers 2
    .param p0, "char32"    # I

    .line 451
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_6

    .line 452
    const/4 v0, 0x1

    return v0

    .line 454
    :cond_6
    const/4 v0, 0x2

    return v0
.end method

.method public static greylist-max-o getLeadSurrogate(I)C
    .registers 3
    .param p0, "char32"    # I

    .line 613
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_c

    .line 614
    shr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    .line 616
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o getSingleCodePoint(Ljava/lang/CharSequence;)I
    .registers 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 2533
    const/4 v0, -0x1

    if-eqz p0, :cond_2a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2a

    .line 2535
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_17

    .line 2536
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 2537
    :cond_17
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1f

    .line 2538
    return v0

    .line 2542
    :cond_1f
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2543
    .local v1, "cp":I
    const v2, 0xffff

    if-le v1, v2, :cond_29

    .line 2544
    return v1

    .line 2546
    :cond_29
    return v0

    .line 2534
    .end local v1    # "cp":I
    :cond_2a
    :goto_2a
    return v0
.end method

.method public static greylist-max-o getTrailSurrogate(I)C
    .registers 3
    .param p0, "char32"    # I

    .line 629
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_c

    .line 630
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    .line 632
    :cond_c
    int-to-char v0, p0

    return v0
.end method

.method public static greylist-max-o hasMoreCodePointsThan(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "number"    # I

    .line 2026
    const/4 v0, 0x1

    if-gez p1, :cond_4

    .line 2027
    return v0

    .line 2029
    :cond_4
    const/4 v1, 0x0

    if-nez p0, :cond_8

    .line 2030
    return v1

    .line 2032
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2037
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    shr-int/2addr v3, v0

    if-le v3, p1, :cond_12

    .line 2038
    return v0

    .line 2042
    :cond_12
    sub-int v3, v2, p1

    .line 2043
    .local v3, "maxsupplementary":I
    if-gtz v3, :cond_17

    .line 2044
    return v1

    .line 2052
    :cond_17
    const/4 v4, 0x0

    .line 2054
    .local v4, "start":I
    :goto_18
    if-nez v2, :cond_1b

    .line 2055
    return v1

    .line 2057
    :cond_1b
    if-nez p1, :cond_1e

    .line 2058
    return v0

    .line 2060
    :cond_1e
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "start":I
    .local v5, "start":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    if-eq v5, v2, :cond_3f

    .line 2061
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2062
    add-int/lit8 v5, v5, 0x1

    .line 2063
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_3d

    .line 2065
    return v1

    .line 2063
    :cond_3d
    move v4, v5

    goto :goto_40

    .line 2068
    :cond_3f
    move v4, v5

    .end local v5    # "start":I
    .restart local v4    # "start":I
    :goto_40
    add-int/lit8 p1, p1, -0x1

    goto :goto_18
.end method

.method public static greylist-max-o hasMoreCodePointsThan(Ljava/lang/StringBuffer;I)Z
    .registers 8
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "number"    # I

    .line 2154
    const/4 v0, 0x1

    if-gez p1, :cond_4

    .line 2155
    return v0

    .line 2157
    :cond_4
    const/4 v1, 0x0

    if-nez p0, :cond_8

    .line 2158
    return v1

    .line 2160
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 2165
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    shr-int/2addr v3, v0

    if-le v3, p1, :cond_12

    .line 2166
    return v0

    .line 2170
    :cond_12
    sub-int v3, v2, p1

    .line 2171
    .local v3, "maxsupplementary":I
    if-gtz v3, :cond_17

    .line 2172
    return v1

    .line 2180
    :cond_17
    const/4 v4, 0x0

    .line 2182
    .local v4, "start":I
    :goto_18
    if-nez v2, :cond_1b

    .line 2183
    return v1

    .line 2185
    :cond_1b
    if-nez p1, :cond_1e

    .line 2186
    return v0

    .line 2188
    :cond_1e
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "start":I
    .local v5, "start":I
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    if-eq v5, v2, :cond_3f

    .line 2189
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2190
    add-int/lit8 v5, v5, 0x1

    .line 2191
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_3d

    .line 2193
    return v1

    .line 2191
    :cond_3d
    move v4, v5

    goto :goto_40

    .line 2196
    :cond_3f
    move v4, v5

    .end local v5    # "start":I
    .restart local v4    # "start":I
    :goto_40
    add-int/lit8 p1, p1, -0x1

    goto :goto_18
.end method

.method public static greylist-max-o hasMoreCodePointsThan([CIII)Z
    .registers 9
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "number"    # I

    .line 2090
    sub-int v0, p2, p1

    .line 2091
    .local v0, "length":I
    if-ltz v0, :cond_42

    if-ltz p1, :cond_42

    if-ltz p2, :cond_42

    .line 2095
    const/4 v1, 0x1

    if-gez p3, :cond_c

    .line 2096
    return v1

    .line 2098
    :cond_c
    const/4 v2, 0x0

    if-nez p0, :cond_10

    .line 2099
    return v2

    .line 2105
    :cond_10
    add-int/lit8 v3, v0, 0x1

    shr-int/2addr v3, v1

    if-le v3, p3, :cond_16

    .line 2106
    return v1

    .line 2110
    :cond_16
    sub-int v3, v0, p3

    .line 2111
    .local v3, "maxsupplementary":I
    if-gtz v3, :cond_1b

    .line 2112
    return v2

    .line 2121
    :cond_1b
    :goto_1b
    if-nez v0, :cond_1e

    .line 2122
    return v2

    .line 2124
    :cond_1e
    if-nez p3, :cond_21

    .line 2125
    return v1

    .line 2127
    :cond_21
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "start":I
    .local v4, "start":I
    aget-char p1, p0, p1

    invoke-static {p1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    if-eq v4, p2, :cond_3e

    aget-char p1, p0, v4

    .line 2128
    invoke-static {p1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 2129
    add-int/lit8 v4, v4, 0x1

    .line 2130
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_3c

    .line 2132
    return v2

    .line 2130
    :cond_3c
    move p1, v4

    goto :goto_3f

    .line 2135
    :cond_3e
    move p1, v4

    .end local v4    # "start":I
    .restart local p1    # "start":I
    :goto_3f
    add-int/lit8 p3, p3, -0x1

    goto :goto_1b

    .line 2092
    .end local v3    # "maxsupplementary":I
    :cond_42
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Start and limit indexes should be non-negative and start <= limit"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "char32"    # I

    .line 1480
    if-ltz p1, :cond_65

    const v0, 0x10ffff

    if-gt p1, v0, :cond_65

    .line 1484
    const v0, 0xd800

    if-lt p1, v0, :cond_5f

    const v0, 0xdfff

    const/high16 v1, 0x10000

    if-le p1, v0, :cond_16

    if-ge p1, v1, :cond_16

    goto :goto_5f

    .line 1489
    :cond_16
    if-ge p1, v1, :cond_56

    .line 1490
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1491
    .local v0, "result":I
    if-ltz v0, :cond_55

    .line 1492
    invoke-static {p1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_40

    add-int/lit8 v1, v0, 0x1

    .line 1493
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1494
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 1497
    :cond_40
    if-lez v0, :cond_55

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1498
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 1501
    :cond_55
    return v0

    .line 1504
    .end local v0    # "result":I
    :cond_56
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, "char32str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1486
    .end local v0    # "char32str":Ljava/lang/String;
    :cond_5f
    :goto_5f
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0

    .line 1481
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument char32 is not a valid codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o indexOf(Ljava/lang/String;II)I
    .registers 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "char32"    # I
    .param p2, "fromIndex"    # I

    .line 1579
    if-ltz p1, :cond_65

    const v0, 0x10ffff

    if-gt p1, v0, :cond_65

    .line 1583
    const v0, 0xd800

    if-lt p1, v0, :cond_5f

    const v0, 0xdfff

    const/high16 v1, 0x10000

    if-le p1, v0, :cond_16

    if-ge p1, v1, :cond_16

    goto :goto_5f

    .line 1588
    :cond_16
    if-ge p1, v1, :cond_56

    .line 1589
    int-to-char v0, p1

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1590
    .local v0, "result":I
    if-ltz v0, :cond_55

    .line 1591
    invoke-static {p1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_40

    add-int/lit8 v1, v0, 0x1

    .line 1592
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1593
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 1596
    :cond_40
    if-lez v0, :cond_55

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1597
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 1600
    :cond_55
    return v0

    .line 1603
    .end local v0    # "result":I
    :cond_56
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, "char32str":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1585
    .end local v0    # "char32str":Ljava/lang/String;
    :cond_5f
    :goto_5f
    int-to-char v0, p1

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0

    .line 1580
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument char32 is not a valid codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 1533
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1535
    .local v0, "strLength":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_20

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1536
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1539
    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1540
    .local v2, "result":I
    add-int v3, v2, v0

    .line 1541
    .local v3, "resultEnd":I
    if-ltz v2, :cond_6e

    .line 1543
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4f

    add-int/lit8 v4, v3, 0x1

    .line 1544
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1545
    add-int/lit8 v1, v3, 0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1548
    :cond_4f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    if-lez v2, :cond_6e

    add-int/lit8 v1, v2, -0x1

    .line 1549
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1550
    add-int/lit8 v1, v3, 0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1553
    :cond_6e
    return v2
.end method

.method public static greylist-max-o indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1634
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1636
    .local v0, "strLength":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_20

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1637
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1640
    :cond_20
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1641
    .local v2, "result":I
    add-int v3, v2, v0

    .line 1642
    .local v3, "resultEnd":I
    if-ltz v2, :cond_6c

    .line 1644
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4d

    .line 1645
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1646
    add-int/lit8 v1, v3, 0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1649
    :cond_4d
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    if-lez v2, :cond_6c

    add-int/lit8 v1, v2, -0x1

    .line 1650
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1651
    add-int/lit8 v1, v3, 0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1654
    :cond_6c
    return v2
.end method

.method public static greylist-max-o insert([CIII)I
    .registers 9
    .param p0, "target"    # [C
    .param p1, "limit"    # I
    .param p2, "offset16"    # I
    .param p3, "char32"    # I

    .line 1391
    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1392
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    if-eq p2, p1, :cond_10

    invoke-static {p0, v1, p1, p2}, Landroid/icu/text/UTF16;->bounds([CIII)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_10

    .line 1393
    add-int/lit8 p2, p2, 0x1

    .line 1395
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1396
    .local v2, "size":I
    add-int v3, p1, v2

    array-length v4, p0

    if-gt v3, v4, :cond_35

    .line 1399
    add-int v3, p2, v2

    sub-int v4, p1, p2

    invoke-static {p0, p2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1400
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, p0, p2

    .line 1401
    const/4 v1, 0x2

    if-ne v2, v1, :cond_32

    .line 1402
    add-int/lit8 v1, p2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, p0, v1

    .line 1404
    :cond_32
    add-int v1, p1, v2

    return v1

    .line 1397
    :cond_35
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int v3, p2, v2

    invoke-direct {v1, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method public static greylist-max-o insert(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .registers 6
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I
    .param p2, "char32"    # I

    .line 1363
    invoke-static {p2}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1364
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eq p1, v1, :cond_13

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    .line 1365
    add-int/lit8 p1, p1, 0x1

    .line 1367
    :cond_13
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1368
    return-object p0
.end method

.method public static blacklist isLeadSurrogate(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .line 600
    and-int/lit16 v0, p0, -0x400

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist isSurrogate(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .line 578
    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist isTrailSurrogate(I)Z
    .registers 3
    .param p0, "codePoint"    # I

    .line 589
    and-int/lit16 v0, p0, -0x400

    const v1, 0xdc00

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static greylist-max-o lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "char32"    # I

    .line 1679
    if-ltz p1, :cond_65

    const v0, 0x10ffff

    if-gt p1, v0, :cond_65

    .line 1683
    const v0, 0xd800

    if-lt p1, v0, :cond_5f

    const v0, 0xdfff

    const/high16 v1, 0x10000

    if-le p1, v0, :cond_16

    if-ge p1, v1, :cond_16

    goto :goto_5f

    .line 1688
    :cond_16
    if-ge p1, v1, :cond_56

    .line 1689
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1690
    .local v0, "result":I
    if-ltz v0, :cond_55

    .line 1691
    invoke-static {p1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_40

    add-int/lit8 v1, v0, 0x1

    .line 1692
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1693
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 1696
    :cond_40
    if-lez v0, :cond_55

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1697
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 1700
    :cond_55
    return v0

    .line 1703
    .end local v0    # "result":I
    :cond_56
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1704
    .local v0, "char32str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1685
    .end local v0    # "char32str":Ljava/lang/String;
    :cond_5f
    :goto_5f
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    return v0

    .line 1680
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument char32 is not a valid codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o lastIndexOf(Ljava/lang/String;II)I
    .registers 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "char32"    # I
    .param p2, "fromIndex"    # I

    .line 1788
    if-ltz p1, :cond_65

    const v0, 0x10ffff

    if-gt p1, v0, :cond_65

    .line 1792
    const v0, 0xd800

    if-lt p1, v0, :cond_5f

    const v0, 0xdfff

    const/high16 v1, 0x10000

    if-le p1, v0, :cond_16

    if-ge p1, v1, :cond_16

    goto :goto_5f

    .line 1797
    :cond_16
    if-ge p1, v1, :cond_56

    .line 1798
    int-to-char v0, p1

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 1799
    .local v0, "result":I
    if-ltz v0, :cond_55

    .line 1800
    invoke-static {p1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_40

    add-int/lit8 v1, v0, 0x1

    .line 1801
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1802
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 1805
    :cond_40
    if-lez v0, :cond_55

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1806
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v1

    return v1

    .line 1809
    :cond_55
    return v0

    .line 1812
    .end local v0    # "result":I
    :cond_56
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1813
    .local v0, "char32str":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1794
    .end local v0    # "char32str":Ljava/lang/String;
    :cond_5f
    :goto_5f
    int-to-char v0, p1

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0

    .line 1789
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument char32 is not a valid codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 1732
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1734
    .local v0, "strLength":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_20

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1735
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1738
    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1739
    .local v2, "result":I
    if-ltz v2, :cond_6e

    .line 1741
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4f

    add-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    .line 1742
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1743
    add-int/lit8 v1, v2, -0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1746
    :cond_4f
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    if-lez v2, :cond_6e

    add-int/lit8 v1, v2, -0x1

    .line 1747
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1748
    add-int/lit8 v1, v2, -0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1751
    :cond_6e
    return v2
.end method

.method public static greylist-max-o lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1853
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1855
    .local v0, "strLength":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_20

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1856
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1859
    :cond_20
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1860
    .local v2, "result":I
    if-ltz v2, :cond_6c

    .line 1862
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4d

    add-int v3, v2, v0

    .line 1863
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1864
    add-int/lit8 v1, v2, -0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1867
    :cond_4d
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    if-lez v2, :cond_6c

    add-int/lit8 v1, v2, -0x1

    .line 1868
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 1869
    add-int/lit8 v1, v2, -0x1

    invoke-static {p0, p1, v1}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1872
    :cond_6c
    return v2
.end method

.method public static greylist-max-o moveCodePointOffset(Ljava/lang/String;II)I
    .registers 8
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I
    .param p2, "shift32"    # I

    .line 1183
    move v0, p1

    .line 1184
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1187
    .local v1, "size":I
    if-ltz p1, :cond_73

    if-gt p1, v1, :cond_73

    .line 1190
    if-lez p2, :cond_3b

    .line 1191
    add-int v2, p2, p1

    if-gt v2, v1, :cond_35

    .line 1194
    move v2, p2

    .line 1195
    .local v2, "count":I
    :goto_10
    if-ge v0, v1, :cond_64

    if-lez v2, :cond_64

    .line 1196
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1197
    .local v3, "ch":C
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_30

    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_30

    add-int/lit8 v4, v0, 0x1

    .line 1198
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1199
    add-int/lit8 v0, v0, 0x1

    .line 1201
    :cond_30
    add-int/lit8 v2, v2, -0x1

    .line 1202
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1192
    .end local v2    # "count":I
    .end local v3    # "ch":C
    :cond_35
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 1205
    :cond_3b
    add-int v2, p1, p2

    if-ltz v2, :cond_6d

    .line 1208
    neg-int v2, p2

    .restart local v2    # "count":I
    :goto_40
    if-lez v2, :cond_64

    .line 1209
    add-int/lit8 v0, v0, -0x1

    .line 1210
    if-gez v0, :cond_47

    .line 1211
    goto :goto_64

    .line 1213
    :cond_47
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1214
    .restart local v3    # "ch":C
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_61

    if-lez v0, :cond_61

    add-int/lit8 v4, v0, -0x1

    .line 1215
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1216
    add-int/lit8 v0, v0, -0x1

    .line 1208
    :cond_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    .line 1220
    .end local v3    # "ch":C
    :cond_64
    :goto_64
    if-nez v2, :cond_67

    .line 1223
    return v0

    .line 1221
    :cond_67
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 1206
    .end local v2    # "count":I
    :cond_6d
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 1188
    :cond_73
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2
.end method

.method public static greylist-max-o moveCodePointOffset(Ljava/lang/StringBuffer;II)I
    .registers 8
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I
    .param p2, "shift32"    # I

    .line 1236
    move v0, p1

    .line 1237
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1240
    .local v1, "size":I
    if-ltz p1, :cond_73

    if-gt p1, v1, :cond_73

    .line 1243
    if-lez p2, :cond_3b

    .line 1244
    add-int v2, p2, p1

    if-gt v2, v1, :cond_35

    .line 1247
    move v2, p2

    .line 1248
    .local v2, "count":I
    :goto_10
    if-ge v0, v1, :cond_64

    if-lez v2, :cond_64

    .line 1249
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 1250
    .local v3, "ch":C
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_30

    add-int/lit8 v4, v0, 0x1

    if-ge v4, v1, :cond_30

    add-int/lit8 v4, v0, 0x1

    .line 1251
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1252
    add-int/lit8 v0, v0, 0x1

    .line 1254
    :cond_30
    add-int/lit8 v2, v2, -0x1

    .line 1255
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1245
    .end local v2    # "count":I
    .end local v3    # "ch":C
    :cond_35
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 1258
    :cond_3b
    add-int v2, p1, p2

    if-ltz v2, :cond_6d

    .line 1261
    neg-int v2, p2

    .restart local v2    # "count":I
    :goto_40
    if-lez v2, :cond_64

    .line 1262
    add-int/lit8 v0, v0, -0x1

    .line 1263
    if-gez v0, :cond_47

    .line 1264
    goto :goto_64

    .line 1266
    :cond_47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 1267
    .restart local v3    # "ch":C
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_61

    if-lez v0, :cond_61

    add-int/lit8 v4, v0, -0x1

    .line 1268
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1269
    add-int/lit8 v0, v0, -0x1

    .line 1261
    :cond_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    .line 1273
    .end local v3    # "ch":C
    :cond_64
    :goto_64
    if-nez v2, :cond_67

    .line 1276
    return v0

    .line 1274
    :cond_67
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 1259
    .end local v2    # "count":I
    :cond_6d
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 1241
    :cond_73
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2
.end method

.method public static greylist-max-o moveCodePointOffset([CIIII)I
    .registers 10
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I
    .param p4, "shift32"    # I

    .line 1293
    array-length v0, p0

    .line 1296
    .local v0, "size":I
    add-int v1, p3, p1

    .line 1297
    .local v1, "result":I
    if-ltz p1, :cond_7c

    if-lt p2, p1, :cond_7c

    .line 1300
    if-gt p2, v0, :cond_76

    .line 1303
    if-ltz p3, :cond_70

    if-gt v1, p2, :cond_70

    .line 1306
    if-lez p4, :cond_3b

    .line 1307
    add-int v2, p4, v1

    if-gt v2, v0, :cond_35

    .line 1310
    move v2, p4

    .line 1311
    .local v2, "count":I
    :goto_14
    if-ge v1, p2, :cond_60

    if-lez v2, :cond_60

    .line 1312
    aget-char v3, p0, v1

    .line 1313
    .local v3, "ch":C
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_30

    add-int/lit8 v4, v1, 0x1

    if-ge v4, p2, :cond_30

    add-int/lit8 v4, v1, 0x1

    aget-char v4, p0, v4

    .line 1314
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1315
    add-int/lit8 v1, v1, 0x1

    .line 1317
    :cond_30
    add-int/lit8 v2, v2, -0x1

    .line 1318
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1308
    .end local v2    # "count":I
    .end local v3    # "ch":C
    :cond_35
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 1321
    :cond_3b
    add-int v2, v1, p4

    if-lt v2, p1, :cond_6a

    .line 1324
    neg-int v2, p4

    .restart local v2    # "count":I
    :goto_40
    if-lez v2, :cond_60

    .line 1325
    add-int/lit8 v1, v1, -0x1

    .line 1326
    if-ge v1, p1, :cond_47

    .line 1327
    goto :goto_60

    .line 1329
    :cond_47
    aget-char v3, p0, v1

    .line 1330
    .restart local v3    # "ch":C
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    if-le v1, p1, :cond_5d

    add-int/lit8 v4, v1, -0x1

    aget-char v4, p0, v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1331
    add-int/lit8 v1, v1, -0x1

    .line 1324
    :cond_5d
    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    .line 1335
    .end local v3    # "ch":C
    :cond_60
    :goto_60
    if-nez v2, :cond_64

    .line 1338
    sub-int/2addr v1, p1

    .line 1339
    return v1

    .line 1336
    :cond_64
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 1322
    .end local v2    # "count":I
    :cond_6a
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 1304
    :cond_70
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 1301
    :cond_76
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 1298
    :cond_7c
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v2
.end method

.method public static greylist-max-o newString([III)Ljava/lang/String;
    .registers 14
    .param p0, "codePoints"    # [I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 2211
    if-ltz p2, :cond_5d

    .line 2214
    new-array v0, p2, [C

    .line 2215
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 2216
    .local v1, "w":I
    move v2, p1

    .local v2, "r":I
    add-int v3, p1, p2

    .local v3, "e":I
    :goto_8
    const/4 v4, 0x0

    if-ge v2, v3, :cond_57

    .line 2217
    aget v5, p0, v2

    .line 2218
    .local v5, "cp":I
    if-ltz v5, :cond_51

    const v6, 0x10ffff

    if-gt v5, v6, :cond_51

    .line 2223
    :goto_14
    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_1e

    .line 2224
    int-to-char v6, v5

    :try_start_19
    aput-char v6, v0, v1

    .line 2225
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 2227
    :cond_1e
    shr-int/lit8 v6, v5, 0xa

    const v7, 0xd7c0

    add-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v0, v1

    .line 2228
    add-int/lit8 v6, v1, 0x1

    and-int/lit16 v7, v5, 0x3ff

    const v8, 0xdc00

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v0, v6
    :try_end_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_32} :catch_38

    .line 2229
    add-int/lit8 v1, v1, 0x2

    .line 2231
    :goto_34
    nop

    .line 2216
    .end local v5    # "cp":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2232
    .restart local v5    # "cp":I
    :catch_38
    move-exception v6

    .line 2233
    .local v6, "ex":Ljava/lang/IndexOutOfBoundsException;
    array-length v7, p0

    int-to-double v7, v7

    add-int/lit8 v9, v1, 0x2

    int-to-double v9, v9

    mul-double/2addr v7, v9

    sub-int v9, v2, p1

    add-int/lit8 v9, v9, 0x1

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 2235
    .local v7, "newlen":I
    new-array v8, v7, [C

    .line 2236
    .local v8, "temp":[C
    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2237
    move-object v0, v8

    .line 2238
    .end local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v7    # "newlen":I
    .end local v8    # "temp":[C
    goto :goto_14

    .line 2219
    :cond_51
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2241
    .end local v2    # "r":I
    .end local v3    # "e":I
    .end local v5    # "cp":I
    :cond_57
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v4, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 2212
    .end local v0    # "chars":[C
    .end local v1    # "w":I
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static greylist-max-o replace(Ljava/lang/String;II)Ljava/lang/String;
    .registers 13
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "oldChar32"    # I
    .param p2, "newChar32"    # I

    .line 1903
    if-lez p1, :cond_46

    const v0, 0x10ffff

    if-gt p1, v0, :cond_46

    .line 1906
    if-lez p2, :cond_3e

    if-gt p2, v0, :cond_3e

    .line 1910
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1911
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 1912
    return-object p0

    .line 1914
    :cond_13
    invoke-static {p2}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1915
    .local v2, "newChar32Str":Ljava/lang/String;
    const/4 v3, 0x1

    .line 1916
    .local v3, "oldChar32Size":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1917
    .local v4, "newChar32Size":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v5, "result":Ljava/lang/StringBuffer;
    move v6, v0

    .line 1920
    .local v6, "resultIndex":I
    const/high16 v7, 0x10000

    if-lt p1, v7, :cond_27

    .line 1921
    const/4 v3, 0x2

    .line 1924
    :cond_27
    :goto_27
    if-eq v0, v1, :cond_39

    .line 1925
    add-int v7, v6, v3

    .line 1926
    .local v7, "endResultIndex":I
    invoke-virtual {v5, v6, v7, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1927
    add-int v8, v0, v3

    .line 1928
    .local v8, "lastEndIndex":I
    invoke-static {p0, p1, v8}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v0

    .line 1929
    add-int v9, v4, v0

    sub-int/2addr v9, v8

    add-int/2addr v6, v9

    .line 1930
    .end local v7    # "endResultIndex":I
    .end local v8    # "lastEndIndex":I
    goto :goto_27

    .line 1931
    :cond_39
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1907
    .end local v0    # "index":I
    .end local v2    # "newChar32Str":Ljava/lang/String;
    .end local v3    # "oldChar32Size":I
    .end local v4    # "newChar32Size":I
    .end local v5    # "result":Ljava/lang/StringBuffer;
    .end local v6    # "resultIndex":I
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument newChar32 is not a valid codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1904
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument oldChar32 is not a valid codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "oldStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;

    .line 1963
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1964
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1965
    return-object p0

    .line 1967
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1968
    .local v2, "oldStrSize":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1969
    .local v3, "newStrSize":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1970
    .local v4, "result":Ljava/lang/StringBuffer;
    move v5, v0

    .line 1972
    .local v5, "resultIndex":I
    :goto_16
    if-eq v0, v1, :cond_28

    .line 1973
    add-int v6, v5, v2

    .line 1974
    .local v6, "endResultIndex":I
    invoke-virtual {v4, v5, v6, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1975
    add-int v7, v0, v2

    .line 1976
    .local v7, "lastEndIndex":I
    invoke-static {p0, p1, v7}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1977
    add-int v8, v3, v0

    sub-int/2addr v8, v7

    add-int/2addr v5, v8

    .line 1978
    .end local v6    # "endResultIndex":I
    .end local v7    # "lastEndIndex":I
    goto :goto_16

    .line 1979
    :cond_28
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o reverse(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 7
    .param p0, "source"    # Ljava/lang/StringBuffer;

    .line 1994
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1995
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1996
    .local v1, "result":Ljava/lang/StringBuffer;
    move v2, v0

    .local v2, "i":I
    :goto_a
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_35

    .line 1997
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 1998
    .local v2, "ch":C
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_30

    if-lez v3, :cond_30

    .line 1999
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    .line 2000
    .local v4, "ch2":C
    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 2001
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2002
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2003
    add-int/lit8 v3, v3, -0x1

    .line 2004
    move v2, v3

    goto :goto_a

    .line 2007
    .end local v4    # "ch2":C
    :cond_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2008
    .end local v2    # "ch":C
    move v2, v3

    goto :goto_a

    .line 2009
    .end local v3    # "i":I
    :cond_35
    return-object v1
.end method

.method public static greylist-max-o setCharAt([CIII)I
    .registers 14
    .param p0, "target"    # [C
    .param p1, "limit"    # I
    .param p2, "offset16"    # I
    .param p3, "char32"    # I

    .line 1120
    if-ge p2, p1, :cond_7a

    .line 1123
    const/4 v0, 0x1

    .line 1124
    .local v0, "count":I
    aget-char v1, p0, p2

    .line 1126
    .local v1, "single":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1128
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_23

    array-length v2, p0

    add-int/lit8 v3, p2, 0x1

    if-le v2, v3, :cond_23

    add-int/lit8 v2, p2, 0x1

    aget-char v2, p0, v2

    .line 1129
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1134
    :cond_23
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_39

    if-lez p2, :cond_39

    add-int/lit8 v2, p2, -0x1

    aget-char v2, p0, v2

    .line 1135
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1136
    add-int/lit8 p2, p2, -0x1

    .line 1137
    add-int/lit8 v0, v0, 0x1

    .line 1142
    :cond_39
    :goto_39
    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, "str":Ljava/lang/String;
    move v3, p1

    .line 1144
    .local v3, "result":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1145
    .local v4, "strlength":I
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p0, p2

    .line 1146
    const/4 v6, 0x1

    if-ne v0, v4, :cond_58

    .line 1147
    const/4 v5, 0x2

    if-ne v0, v5, :cond_79

    .line 1148
    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p0, v5

    goto :goto_79

    .line 1153
    :cond_58
    add-int v7, p2, v0

    add-int v8, p2, v4

    add-int v9, p2, v0

    sub-int v9, p1, v9

    invoke-static {p0, v7, p0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1155
    if-ge v0, v4, :cond_75

    .line 1158
    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p0, v7

    .line 1159
    add-int/lit8 v3, v3, 0x1

    .line 1160
    array-length v6, p0

    if-ge v3, v6, :cond_79

    .line 1161
    aput-char v5, p0, v3

    goto :goto_79

    .line 1166
    :cond_75
    add-int/lit8 v3, v3, -0x1

    .line 1167
    aput-char v5, p0, v3

    .line 1170
    :cond_79
    :goto_79
    return v3

    .line 1121
    .end local v0    # "count":I
    .end local v1    # "single":C
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v4    # "strlength":I
    :cond_7a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public static greylist-max-o setCharAt(Ljava/lang/StringBuffer;II)V
    .registers 7
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I
    .param p2, "char32"    # I

    .line 1086
    const/4 v0, 0x1

    .line 1087
    .local v0, "count":I
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 1089
    .local v1, "single":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1091
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-le v2, v3, :cond_28

    add-int/lit8 v2, p1, 0x1

    .line 1092
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 1097
    :cond_28
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_40

    if-lez p1, :cond_40

    add-int/lit8 v2, p1, -0x1

    .line 1098
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1099
    add-int/lit8 p1, p1, -0x1

    .line 1100
    add-int/lit8 v0, v0, 0x1

    .line 1104
    :cond_40
    :goto_40
    add-int v2, p1, v0

    invoke-static {p2}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1105
    return-void
.end method

.method private static greylist-max-o toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "ch"    # I

    .line 2619
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_a

    .line 2620
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2623
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2624
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2625
    invoke-static {p0}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o valueOf(I)Ljava/lang/String;
    .registers 3
    .param p0, "char32"    # I

    .line 645
    if-ltz p0, :cond_c

    const v0, 0x10ffff

    if-gt p0, v0, :cond_c

    .line 648
    invoke-static {p0}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 646
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I

    .line 664
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 670
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 668
    :sswitch_e
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 666
    :sswitch_17
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_1e
    .sparse-switch
        0x2 -> :sswitch_17
        0x5 -> :sswitch_e
    .end sparse-switch
.end method

.method public static greylist-max-o valueOf(Ljava/lang/StringBuffer;I)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    .line 687
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 693
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 691
    :sswitch_e
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 689
    :sswitch_17
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_1e
    .sparse-switch
        0x2 -> :sswitch_17
        0x5 -> :sswitch_e
    .end sparse-switch
.end method

.method public static greylist-max-o valueOf([CIII)Ljava/lang/String;
    .registers 8
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I

    .line 714
    invoke-static {p0, p1, p2, p3}, Landroid/icu/text/UTF16;->bounds([CIII)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_22

    .line 720
    new-instance v0, Ljava/lang/String;

    add-int v2, p1, p3

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 718
    :sswitch_11
    new-instance v0, Ljava/lang/String;

    add-int v3, p1, p3

    sub-int/2addr v3, v1

    invoke-direct {v0, p0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 716
    :sswitch_1a
    new-instance v0, Ljava/lang/String;

    add-int v1, p1, p3

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :sswitch_data_22
    .sparse-switch
        0x2 -> :sswitch_1a
        0x5 -> :sswitch_11
    .end sparse-switch
.end method
