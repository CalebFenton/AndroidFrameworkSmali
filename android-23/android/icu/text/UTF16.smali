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
.field public static final CODEPOINT_MAX_VALUE:I = 0x10ffff

.field public static final CODEPOINT_MIN_VALUE:I = 0x0

.field private static final LEAD_SURROGATE_BITMASK:I = -0x400

.field private static final LEAD_SURROGATE_BITS:I = 0xd800

.field public static final LEAD_SURROGATE_BOUNDARY:I = 0x2

.field public static final LEAD_SURROGATE_MAX_VALUE:I = 0xdbff

.field public static final LEAD_SURROGATE_MIN_VALUE:I = 0xd800

.field private static final LEAD_SURROGATE_OFFSET_:I = 0xd7c0

.field private static final LEAD_SURROGATE_SHIFT_:I = 0xa

.field public static final SINGLE_CHAR_BOUNDARY:I = 0x1

.field public static final SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field private static final SURROGATE_BITMASK:I = -0x800

.field private static final SURROGATE_BITS:I = 0xd800

.field public static final SURROGATE_MAX_VALUE:I = 0xdfff

.field public static final SURROGATE_MIN_VALUE:I = 0xd800

.field private static final TRAIL_SURROGATE_BITMASK:I = -0x400

.field private static final TRAIL_SURROGATE_BITS:I = 0xdc00

.field public static final TRAIL_SURROGATE_BOUNDARY:I = 0x5

.field private static final TRAIL_SURROGATE_MASK_:I = 0x3ff

.field public static final TRAIL_SURROGATE_MAX_VALUE:I = 0xdfff

.field public static final TRAIL_SURROGATE_MIN_VALUE:I = 0xdc00


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static _charAt(Ljava/lang/CharSequence;IC)I
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "offset16"    # I
    .param p2, "single"    # C

    #@0
    .prologue
    const v4, 0xdfff

    #@3
    const v3, 0xdbff

    #@6
    .line 281
    if-le p2, v4, :cond_0

    #@8
    .line 282
    return p2

    #@9
    .line 289
    :cond_0
    if-gt p2, v3, :cond_1

    #@b
    .line 290
    add-int/lit8 p1, p1, 0x1

    #@d
    .line 291
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v2

    #@11
    if-eq v2, p1, :cond_2

    #@13
    .line 292
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@16
    move-result v1

    #@17
    .line 293
    .local v1, "trail":C
    const v2, 0xdc00

    #@1a
    if-lt v1, v2, :cond_2

    #@1c
    .line 294
    if-gt v1, v4, :cond_2

    #@1e
    .line 295
    invoke-static {p2, v1}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 299
    .end local v1    # "trail":C
    :cond_1
    add-int/lit8 p1, p1, -0x1

    #@25
    .line 300
    if-ltz p1, :cond_2

    #@27
    .line 302
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@2a
    move-result v0

    #@2b
    .line 303
    .local v0, "lead":C
    const v2, 0xd800

    #@2e
    if-lt v0, v2, :cond_2

    #@30
    .line 304
    if-gt v0, v3, :cond_2

    #@32
    .line 305
    invoke-static {v0, p2}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@35
    move-result v2

    #@36
    return v2

    #@37
    .line 309
    .end local v0    # "lead":C
    :cond_2
    return p2
.end method

.method private static _charAt(Ljava/lang/String;IC)I
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I
    .param p2, "single"    # C

    #@0
    .prologue
    const v4, 0xdfff

    #@3
    const v3, 0xdbff

    #@6
    .line 227
    if-le p2, v4, :cond_0

    #@8
    .line 228
    return p2

    #@9
    .line 235
    :cond_0
    if-gt p2, v3, :cond_1

    #@b
    .line 236
    add-int/lit8 p1, p1, 0x1

    #@d
    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@10
    move-result v2

    #@11
    if-eq v2, p1, :cond_2

    #@13
    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v1

    #@17
    .line 239
    .local v1, "trail":C
    const v2, 0xdc00

    #@1a
    if-lt v1, v2, :cond_2

    #@1c
    if-gt v1, v4, :cond_2

    #@1e
    .line 240
    invoke-static {p2, v1}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 244
    .end local v1    # "trail":C
    :cond_1
    add-int/lit8 p1, p1, -0x1

    #@25
    .line 245
    if-ltz p1, :cond_2

    #@27
    .line 247
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@2a
    move-result v0

    #@2b
    .line 248
    .local v0, "lead":C
    const v2, 0xd800

    #@2e
    if-lt v0, v2, :cond_2

    #@30
    if-gt v0, v3, :cond_2

    #@32
    .line 249
    invoke-static {v0, p2}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@35
    move-result v2

    #@36
    return v2

    #@37
    .line 253
    .end local v0    # "lead":C
    :cond_2
    return p2
.end method

.method public static append([CII)I
    .locals 3
    .param p0, "target"    # [C
    .param p1, "limit"    # I
    .param p2, "char32"    # I

    #@0
    .prologue
    .line 1073
    if-ltz p2, :cond_0

    #@2
    const v1, 0x10ffff

    #@5
    if-le p2, v1, :cond_1

    #@7
    .line 1074
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v2, "Illegal codepoint"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 1077
    :cond_1
    const/high16 v1, 0x10000

    #@12
    if-lt p2, v1, :cond_2

    #@14
    .line 1078
    add-int/lit8 v0, p1, 0x1

    #@16
    .end local p1    # "limit":I
    .local v0, "limit":I
    invoke-static {p2}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@19
    move-result v1

    #@1a
    aput-char v1, p0, p1

    #@1c
    .line 1079
    add-int/lit8 p1, v0, 0x1

    #@1e
    .end local v0    # "limit":I
    .restart local p1    # "limit":I
    invoke-static {p2}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@21
    move-result v1

    #@22
    aput-char v1, p0, v0

    #@24
    .line 1083
    :goto_0
    return p1

    #@25
    .line 1081
    :cond_2
    add-int/lit8 v0, p1, 0x1

    #@27
    .end local p1    # "limit":I
    .restart local v0    # "limit":I
    int-to-char v1, p2

    #@28
    aput-char v1, p0, p1

    #@2a
    move p1, v0

    #@2b
    .end local v0    # "limit":I
    .restart local p1    # "limit":I
    goto :goto_0
.end method

.method public static append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 3
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "char32"    # I

    #@0
    .prologue
    .line 1032
    if-ltz p1, :cond_0

    #@2
    const v0, 0x10ffff

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 1033
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Illegal codepoint: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 1037
    :cond_1
    const/high16 v0, 0x10000

    #@27
    if-lt p1, v0, :cond_2

    #@29
    .line 1038
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@2c
    move-result v0

    #@2d
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 1039
    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@33
    move-result v0

    #@34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@37
    .line 1043
    :goto_0
    return-object p0

    #@38
    .line 1041
    :cond_2
    int-to-char v0, p1

    #@39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3c
    goto :goto_0
.end method

.method public static appendCodePoint(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "cp"    # I

    #@0
    .prologue
    .line 1057
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static bounds(Ljava/lang/String;I)I
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 500
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@3
    move-result v0

    #@4
    .line 501
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 502
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 503
    add-int/lit8 p1, p1, 0x1

    #@12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    if-ge p1, v1, :cond_1

    #@18
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 504
    const/4 v1, 0x2

    #@23
    return v1

    #@24
    .line 508
    :cond_0
    add-int/lit8 p1, p1, -0x1

    #@26
    .line 509
    if-ltz p1, :cond_1

    #@28
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v1

    #@2c
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 510
    const/4 v1, 0x5

    #@33
    return v1

    #@34
    .line 514
    :cond_1
    const/4 v1, 0x1

    #@35
    return v1
.end method

.method public static bounds(Ljava/lang/StringBuffer;I)I
    .locals 2
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 536
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@3
    move-result v0

    #@4
    .line 537
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 538
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 539
    add-int/lit8 p1, p1, 0x1

    #@12
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@15
    move-result v1

    #@16
    if-ge p1, v1, :cond_1

    #@18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@1b
    move-result v1

    #@1c
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 540
    const/4 v1, 0x2

    #@23
    return v1

    #@24
    .line 544
    :cond_0
    add-int/lit8 p1, p1, -0x1

    #@26
    .line 545
    if-ltz p1, :cond_1

    #@28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@2b
    move-result v1

    #@2c
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 546
    const/4 v1, 0x5

    #@33
    return v1

    #@34
    .line 550
    :cond_1
    const/4 v1, 0x1

    #@35
    return v1
.end method

.method public static bounds([CIII)I
    .locals 2
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I

    #@0
    .prologue
    .line 576
    add-int/2addr p3, p1

    #@1
    .line 577
    if-lt p3, p1, :cond_0

    #@3
    if-lt p3, p2, :cond_1

    #@5
    .line 578
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    invoke-direct {v1, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@a
    throw v1

    #@b
    .line 580
    :cond_1
    aget-char v0, p0, p3

    #@d
    .line 581
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 582
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 583
    add-int/lit8 p3, p3, 0x1

    #@1b
    .line 584
    if-ge p3, p2, :cond_3

    #@1d
    aget-char v1, p0, p3

    #@1f
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 585
    const/4 v1, 0x2

    #@26
    return v1

    #@27
    .line 588
    :cond_2
    add-int/lit8 p3, p3, -0x1

    #@29
    .line 589
    if-lt p3, p1, :cond_3

    #@2b
    aget-char v1, p0, p3

    #@2d
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_3

    #@33
    .line 590
    const/4 v1, 0x5

    #@34
    return v1

    #@35
    .line 594
    :cond_3
    const/4 v1, 0x1

    #@36
    return v1
.end method

.method public static charAt(Landroid/icu/text/Replaceable;I)I
    .locals 4
    .param p0, "source"    # Landroid/icu/text/Replaceable;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 432
    if-ltz p1, :cond_0

    #@2
    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    #@5
    move-result v3

    #@6
    if-lt p1, v3, :cond_1

    #@8
    .line 433
    :cond_0
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@d
    throw v3

    #@e
    .line 436
    :cond_1
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@11
    move-result v1

    #@12
    .line 437
    .local v1, "single":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_2

    #@18
    .line 438
    return v1

    #@19
    .line 445
    :cond_2
    const v3, 0xdbff

    #@1c
    if-gt v1, v3, :cond_3

    #@1e
    .line 446
    add-int/lit8 p1, p1, 0x1

    #@20
    .line 447
    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    #@23
    move-result v3

    #@24
    if-eq v3, p1, :cond_4

    #@26
    .line 448
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@29
    move-result v2

    #@2a
    .line 449
    .local v2, "trail":C
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_4

    #@30
    .line 450
    invoke-static {v1, v2}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@33
    move-result v3

    #@34
    return v3

    #@35
    .line 453
    .end local v2    # "trail":C
    :cond_3
    add-int/lit8 p1, p1, -0x1

    #@37
    .line 454
    if-ltz p1, :cond_4

    #@39
    .line 456
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@3c
    move-result v0

    #@3d
    .line 457
    .local v0, "lead":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_4

    #@43
    .line 458
    invoke-static {v0, v1}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@46
    move-result v3

    #@47
    return v3

    #@48
    .line 462
    .end local v0    # "lead":C
    :cond_4
    return v1
.end method

.method public static charAt(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 273
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@3
    move-result v0

    #@4
    .line 274
    .local v0, "single":C
    const v1, 0xd800

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 275
    return v0

    #@a
    .line 277
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/icu/text/UTF16;->_charAt(Ljava/lang/CharSequence;IC)I

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public static charAt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@3
    move-result v0

    #@4
    .line 220
    .local v0, "single":C
    const v1, 0xd800

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 221
    return v0

    #@a
    .line 223
    :cond_0
    invoke-static {p0, p1, v0}, Landroid/icu/text/UTF16;->_charAt(Ljava/lang/String;IC)I

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public static charAt(Ljava/lang/StringBuffer;I)I
    .locals 4
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 329
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v3

    #@6
    if-lt p1, v3, :cond_1

    #@8
    .line 330
    :cond_0
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@d
    throw v3

    #@e
    .line 333
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@11
    move-result v1

    #@12
    .line 334
    .local v1, "single":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_2

    #@18
    .line 335
    return v1

    #@19
    .line 342
    :cond_2
    const v3, 0xdbff

    #@1c
    if-gt v1, v3, :cond_3

    #@1e
    .line 343
    add-int/lit8 p1, p1, 0x1

    #@20
    .line 344
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@23
    move-result v3

    #@24
    if-eq v3, p1, :cond_4

    #@26
    .line 345
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@29
    move-result v2

    #@2a
    .line 346
    .local v2, "trail":C
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_4

    #@30
    .line 347
    invoke-static {v1, v2}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@33
    move-result v3

    #@34
    return v3

    #@35
    .line 350
    .end local v2    # "trail":C
    :cond_3
    add-int/lit8 p1, p1, -0x1

    #@37
    .line 351
    if-ltz p1, :cond_4

    #@39
    .line 353
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@3c
    move-result v0

    #@3d
    .line 354
    .local v0, "lead":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_4

    #@43
    .line 355
    invoke-static {v0, v1}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@46
    move-result v3

    #@47
    return v3

    #@48
    .line 359
    .end local v0    # "lead":C
    :cond_4
    return v1
.end method

.method public static charAt([CIII)I
    .locals 4
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I

    #@0
    .prologue
    .line 381
    add-int/2addr p3, p1

    #@1
    .line 382
    if-lt p3, p1, :cond_0

    #@3
    if-lt p3, p2, :cond_1

    #@5
    .line 383
    :cond_0
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@7
    invoke-direct {v3, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@a
    throw v3

    #@b
    .line 386
    :cond_1
    aget-char v1, p0, p3

    #@d
    .line 387
    .local v1, "single":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@10
    move-result v3

    #@11
    if-nez v3, :cond_2

    #@13
    .line 388
    return v1

    #@14
    .line 394
    :cond_2
    const v3, 0xdbff

    #@17
    if-gt v1, v3, :cond_4

    #@19
    .line 395
    add-int/lit8 p3, p3, 0x1

    #@1b
    .line 396
    if-lt p3, p2, :cond_3

    #@1d
    .line 397
    return v1

    #@1e
    .line 399
    :cond_3
    aget-char v2, p0, p3

    #@20
    .line 400
    .local v2, "trail":C
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_6

    #@26
    .line 401
    invoke-static {v1, v2}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@29
    move-result v3

    #@2a
    return v3

    #@2b
    .line 404
    .end local v2    # "trail":C
    :cond_4
    if-ne p3, p1, :cond_5

    #@2d
    .line 405
    return v1

    #@2e
    .line 407
    :cond_5
    add-int/lit8 p3, p3, -0x1

    #@30
    .line 408
    aget-char v0, p0, p3

    #@32
    .line 409
    .local v0, "lead":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_6

    #@38
    .line 410
    invoke-static {v0, v1}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@3b
    move-result v3

    #@3c
    return v3

    #@3d
    .line 412
    .end local v0    # "lead":C
    :cond_6
    return v1
.end method

.method public static compareCodePoint(ILjava/lang/CharSequence;)I
    .locals 5
    .param p0, "codePoint"    # I
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2659
    if-nez p1, :cond_0

    #@4
    .line 2660
    return v4

    #@5
    .line 2662
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v2

    #@9
    .line 2663
    .local v2, "strLen":I
    if-nez v2, :cond_1

    #@b
    .line 2664
    return v4

    #@c
    .line 2666
    :cond_1
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@f
    move-result v1

    #@10
    .line 2667
    .local v1, "second":I
    sub-int v0, p0, v1

    #@12
    .line 2668
    .local v0, "diff":I
    if-eqz v0, :cond_2

    #@14
    .line 2669
    return v0

    #@15
    .line 2671
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    #@18
    move-result v4

    #@19
    if-ne v2, v4, :cond_3

    #@1b
    :goto_0
    return v3

    #@1c
    :cond_3
    const/4 v3, -0x1

    #@1d
    goto :goto_0
.end method

.method public static countCodePoint(Ljava/lang/String;)I
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1094
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1095
    :cond_0
    return v1

    #@a
    .line 1097
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    invoke-static {p0, v0}, Landroid/icu/text/UTF16;->findCodePointOffset(Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public static countCodePoint(Ljava/lang/StringBuffer;)I
    .locals 2
    .param p0, "source"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1108
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 1109
    :cond_0
    return v1

    #@a
    .line 1111
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@d
    move-result v0

    #@e
    invoke-static {p0, v0}, Landroid/icu/text/UTF16;->findCodePointOffset(Ljava/lang/StringBuffer;I)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public static countCodePoint([CII)I
    .locals 2
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1125
    if-eqz p0, :cond_0

    #@3
    array-length v0, p0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 1126
    :cond_0
    return v1

    #@7
    .line 1128
    :cond_1
    sub-int v0, p2, p1

    #@9
    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/UTF16;->findCodePointOffset([CIII)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public static delete([CII)I
    .locals 4
    .param p0, "target"    # [C
    .param p1, "limit"    # I
    .param p2, "offset16"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1505
    const/4 v0, 0x1

    #@2
    .line 1506
    .local v0, "count":I
    invoke-static {p0, v3, p1, p2}, Landroid/icu/text/UTF16;->bounds([CIII)I

    #@5
    move-result v1

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 1515
    :goto_0
    :pswitch_0
    add-int v1, p2, v0

    #@b
    add-int v2, p2, v0

    #@d
    sub-int v2, p1, v2

    #@f
    invoke-static {p0, v1, p0, p2, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@12
    .line 1516
    sub-int v1, p1, v0

    #@14
    aput-char v3, p0, v1

    #@16
    .line 1517
    sub-int v1, p1, v0

    #@18
    return v1

    #@19
    .line 1508
    :pswitch_1
    const/4 v0, 0x2

    #@1a
    .line 1509
    goto :goto_0

    #@1b
    .line 1511
    :pswitch_2
    const/4 v0, 0x2

    #@1c
    .line 1512
    add-int/lit8 p2, p2, -0x1

    #@1e
    .line 1513
    goto :goto_0

    #@1f
    .line 1506
    nop

    #@20
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static delete(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 2
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 1479
    const/4 v0, 0x1

    #@1
    .line 1480
    .local v0, "count":I
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    #@4
    move-result v1

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 1489
    :goto_0
    :pswitch_0
    add-int v1, p1, v0

    #@a
    invoke-virtual {p0, p1, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    #@d
    .line 1490
    return-object p0

    #@e
    .line 1482
    :pswitch_1
    const/4 v0, 0x2

    #@f
    .line 1483
    goto :goto_0

    #@10
    .line 1485
    :pswitch_2
    const/4 v0, 0x2

    #@11
    .line 1486
    add-int/lit8 p1, p1, -0x1

    #@13
    .line 1487
    goto :goto_0

    #@14
    .line 1480
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static findCodePointOffset(Ljava/lang/String;I)I
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 877
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v4

    #@6
    if-le p1, v4, :cond_1

    #@8
    .line 878
    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@d
    throw v4

    #@e
    .line 881
    :cond_1
    const/4 v3, 0x0

    #@f
    .line 883
    .local v3, "result":I
    const/4 v1, 0x0

    #@10
    .line 885
    .local v1, "hadLeadSurrogate":Z
    const/4 v2, 0x0

    #@11
    .end local v1    # "hadLeadSurrogate":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_3

    #@13
    .line 886
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 887
    .local v0, "ch":C
    if-eqz v1, :cond_2

    #@19
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 888
    const/4 v1, 0x0

    #@20
    .line 885
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 890
    :cond_2
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@26
    move-result v1

    #@27
    .line 891
    .local v1, "hadLeadSurrogate":Z
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 895
    .end local v0    # "ch":C
    .end local v1    # "hadLeadSurrogate":Z
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2d
    move-result v4

    #@2e
    if-ne p1, v4, :cond_4

    #@30
    .line 896
    return v3

    #@31
    .line 901
    :cond_4
    if-eqz v1, :cond_5

    #@33
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v4

    #@37
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_5

    #@3d
    .line 902
    add-int/lit8 v3, v3, -0x1

    #@3f
    .line 905
    :cond_5
    return v3
.end method

.method public static findCodePointOffset(Ljava/lang/StringBuffer;I)I
    .locals 5
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 931
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v4

    #@6
    if-le p1, v4, :cond_1

    #@8
    .line 932
    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@d
    throw v4

    #@e
    .line 935
    :cond_1
    const/4 v3, 0x0

    #@f
    .line 937
    .local v3, "result":I
    const/4 v1, 0x0

    #@10
    .line 939
    .local v1, "hadLeadSurrogate":Z
    const/4 v2, 0x0

    #@11
    .end local v1    # "hadLeadSurrogate":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_3

    #@13
    .line 940
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 941
    .local v0, "ch":C
    if-eqz v1, :cond_2

    #@19
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 942
    const/4 v1, 0x0

    #@20
    .line 939
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 944
    :cond_2
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@26
    move-result v1

    #@27
    .line 945
    .local v1, "hadLeadSurrogate":Z
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 949
    .end local v0    # "ch":C
    .end local v1    # "hadLeadSurrogate":Z
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@2d
    move-result v4

    #@2e
    if-ne p1, v4, :cond_4

    #@30
    .line 950
    return v3

    #@31
    .line 955
    :cond_4
    if-eqz v1, :cond_5

    #@33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@36
    move-result v4

    #@37
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_5

    #@3d
    .line 956
    add-int/lit8 v3, v3, -0x1

    #@3f
    .line 959
    :cond_5
    return v3
.end method

.method public static findCodePointOffset([CIII)I
    .locals 5
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I

    #@0
    .prologue
    .line 987
    add-int/2addr p3, p1

    #@1
    .line 988
    if-le p3, p2, :cond_0

    #@3
    .line 989
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@5
    invoke-direct {v4, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@8
    throw v4

    #@9
    .line 992
    :cond_0
    const/4 v3, 0x0

    #@a
    .line 994
    .local v3, "result":I
    const/4 v1, 0x0

    #@b
    .line 996
    .local v1, "hadLeadSurrogate":Z
    move v2, p1

    #@c
    .end local v1    # "hadLeadSurrogate":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_2

    #@e
    .line 997
    aget-char v0, p0, v2

    #@10
    .line 998
    .local v0, "ch":C
    if-eqz v1, :cond_1

    #@12
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 999
    const/4 v1, 0x0

    #@19
    .line 996
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1001
    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@1f
    move-result v1

    #@20
    .line 1002
    .local v1, "hadLeadSurrogate":Z
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_1

    #@23
    .line 1006
    .end local v0    # "ch":C
    .end local v1    # "hadLeadSurrogate":Z
    :cond_2
    if-ne p3, p2, :cond_3

    #@25
    .line 1007
    return v3

    #@26
    .line 1012
    :cond_3
    if-eqz v1, :cond_4

    #@28
    aget-char v4, p0, p3

    #@2a
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_4

    #@30
    .line 1013
    add-int/lit8 v3, v3, -0x1

    #@32
    .line 1016
    :cond_4
    return v3
.end method

.method public static findOffsetFromCodePoint(Ljava/lang/String;I)I
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset32"    # I

    #@0
    .prologue
    .line 768
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    .local v3, "size":I
    const/4 v2, 0x0

    #@5
    .local v2, "result":I
    move v1, p1

    #@6
    .line 769
    .local v1, "count":I
    if-ltz p1, :cond_0

    #@8
    if-le p1, v3, :cond_1

    #@a
    .line 770
    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@c
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@f
    throw v4

    #@10
    .line 772
    :cond_1
    :goto_0
    if-ge v2, v3, :cond_3

    #@12
    if-lez v1, :cond_3

    #@14
    .line 773
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v0

    #@18
    .line 774
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_2

    #@1e
    add-int/lit8 v4, v2, 0x1

    #@20
    if-ge v4, v3, :cond_2

    #@22
    .line 775
    add-int/lit8 v4, v2, 0x1

    #@24
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v4

    #@28
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@2b
    move-result v4

    #@2c
    .line 774
    if-eqz v4, :cond_2

    #@2e
    .line 776
    add-int/lit8 v2, v2, 0x1

    #@30
    .line 779
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@32
    .line 780
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 782
    .end local v0    # "ch":C
    :cond_3
    if-eqz v1, :cond_4

    #@37
    .line 783
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@39
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@3c
    throw v4

    #@3d
    .line 785
    :cond_4
    return v2
.end method

.method public static findOffsetFromCodePoint(Ljava/lang/StringBuffer;I)I
    .locals 5
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset32"    # I

    #@0
    .prologue
    .line 800
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v3

    #@4
    .local v3, "size":I
    const/4 v2, 0x0

    #@5
    .local v2, "result":I
    move v1, p1

    #@6
    .line 801
    .local v1, "count":I
    if-ltz p1, :cond_0

    #@8
    if-le p1, v3, :cond_1

    #@a
    .line 802
    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@c
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@f
    throw v4

    #@10
    .line 804
    :cond_1
    :goto_0
    if-ge v2, v3, :cond_3

    #@12
    if-lez v1, :cond_3

    #@14
    .line 805
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@17
    move-result v0

    #@18
    .line 806
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_2

    #@1e
    add-int/lit8 v4, v2, 0x1

    #@20
    if-ge v4, v3, :cond_2

    #@22
    .line 807
    add-int/lit8 v4, v2, 0x1

    #@24
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    #@27
    move-result v4

    #@28
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@2b
    move-result v4

    #@2c
    .line 806
    if-eqz v4, :cond_2

    #@2e
    .line 808
    add-int/lit8 v2, v2, 0x1

    #@30
    .line 811
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@32
    .line 812
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 814
    .end local v0    # "ch":C
    :cond_3
    if-eqz v1, :cond_4

    #@37
    .line 815
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@39
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@3c
    throw v4

    #@3d
    .line 817
    :cond_4
    return v2
.end method

.method public static findOffsetFromCodePoint([CIII)I
    .locals 4
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset32"    # I

    #@0
    .prologue
    .line 834
    move v2, p1

    #@1
    .local v2, "result":I
    move v1, p3

    #@2
    .line 835
    .local v1, "count":I
    sub-int v3, p2, p1

    #@4
    if-le p3, v3, :cond_0

    #@6
    .line 836
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v3, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@b
    throw v3

    #@c
    .line 838
    :cond_0
    :goto_0
    if-ge v2, p2, :cond_2

    #@e
    if-lez v1, :cond_2

    #@10
    .line 839
    aget-char v0, p0, v2

    #@12
    .line 840
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    add-int/lit8 v3, v2, 0x1

    #@1a
    if-ge v3, p2, :cond_1

    #@1c
    .line 841
    add-int/lit8 v3, v2, 0x1

    #@1e
    aget-char v3, p0, v3

    #@20
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@23
    move-result v3

    #@24
    .line 840
    if-eqz v3, :cond_1

    #@26
    .line 842
    add-int/lit8 v2, v2, 0x1

    #@28
    .line 845
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@2a
    .line 846
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 848
    .end local v0    # "ch":C
    :cond_2
    if-eqz v1, :cond_3

    #@2f
    .line 849
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@31
    invoke-direct {v3, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@34
    throw v3

    #@35
    .line 851
    :cond_3
    sub-int v3, v2, p1

    #@37
    return v3
.end method

.method public static getCharCount(I)I
    .locals 1
    .param p0, "char32"    # I

    #@0
    .prologue
    .line 475
    const/high16 v0, 0x10000

    #@2
    if-ge p0, v0, :cond_0

    #@4
    .line 476
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 478
    :cond_0
    const/4 v0, 0x2

    #@7
    return v0
.end method

.method public static getLeadSurrogate(I)C
    .locals 2
    .param p0, "char32"    # I

    #@0
    .prologue
    .line 641
    const/high16 v0, 0x10000

    #@2
    if-lt p0, v0, :cond_0

    #@4
    .line 642
    shr-int/lit8 v0, p0, 0xa

    #@6
    const v1, 0xd7c0

    #@9
    add-int/2addr v0, v1

    #@a
    int-to-char v0, v0

    #@b
    return v0

    #@c
    .line 644
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 2624
    if-eqz p0, :cond_0

    #@4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_1

    #@a
    .line 2625
    :cond_0
    return v3

    #@b
    .line 2626
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x1

    #@10
    if-ne v1, v2, :cond_2

    #@12
    .line 2627
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 2628
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@1a
    move-result v1

    #@1b
    const/4 v2, 0x2

    #@1c
    if-le v1, v2, :cond_3

    #@1e
    .line 2629
    return v3

    #@1f
    .line 2633
    :cond_3
    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@22
    move-result v0

    #@23
    .line 2634
    .local v0, "cp":I
    const v1, 0xffff

    #@26
    if-le v0, v1, :cond_4

    #@28
    .line 2635
    return v0

    #@29
    .line 2637
    :cond_4
    return v3
.end method

.method public static getTrailSurrogate(I)C
    .locals 2
    .param p0, "char32"    # I

    #@0
    .prologue
    .line 658
    const/high16 v0, 0x10000

    #@2
    if-lt p0, v0, :cond_0

    #@4
    .line 659
    and-int/lit16 v0, p0, 0x3ff

    #@6
    const v1, 0xdc00

    #@9
    add-int/2addr v0, v1

    #@a
    int-to-char v0, v0

    #@b
    return v0

    #@c
    .line 661
    :cond_0
    int-to-char v0, p0

    #@d
    return v0
.end method

.method public static hasMoreCodePointsThan(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "number"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2101
    if-gez p1, :cond_0

    #@4
    .line 2102
    return v6

    #@5
    .line 2104
    :cond_0
    if-nez p0, :cond_1

    #@7
    .line 2105
    return v5

    #@8
    .line 2107
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    .line 2112
    .local v0, "length":I
    add-int/lit8 v4, v0, 0x1

    #@e
    shr-int/lit8 v4, v4, 0x1

    #@10
    if-le v4, p1, :cond_2

    #@12
    .line 2113
    return v6

    #@13
    .line 2117
    :cond_2
    sub-int v1, v0, p1

    #@15
    .line 2118
    .local v1, "maxsupplementary":I
    if-gtz v1, :cond_3

    #@17
    .line 2119
    return v5

    #@18
    .line 2127
    :cond_3
    const/4 v2, 0x0

    #@19
    .local v2, "start":I
    move v3, v2

    #@1a
    .line 2129
    .end local v2    # "start":I
    .local v3, "start":I
    :goto_0
    if-nez v0, :cond_4

    #@1c
    .line 2130
    return v5

    #@1d
    .line 2132
    :cond_4
    if-nez p1, :cond_5

    #@1f
    .line 2133
    return v6

    #@20
    .line 2135
    :cond_5
    add-int/lit8 v2, v3, 0x1

    #@22
    .end local v3    # "start":I
    .restart local v2    # "start":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v4

    #@26
    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_6

    #@2c
    if-eq v2, v0, :cond_6

    #@2e
    .line 2136
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v4

    #@32
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@35
    move-result v4

    #@36
    .line 2135
    if-eqz v4, :cond_6

    #@38
    .line 2137
    add-int/lit8 v2, v2, 0x1

    #@3a
    .line 2138
    add-int/lit8 v1, v1, -0x1

    #@3c
    if-gtz v1, :cond_6

    #@3e
    .line 2140
    return v5

    #@3f
    .line 2143
    :cond_6
    add-int/lit8 p1, p1, -0x1

    #@41
    move v3, v2

    #@42
    .end local v2    # "start":I
    .restart local v3    # "start":I
    goto :goto_0
.end method

.method public static hasMoreCodePointsThan(Ljava/lang/StringBuffer;I)Z
    .locals 7
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "number"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2231
    if-gez p1, :cond_0

    #@4
    .line 2232
    return v6

    #@5
    .line 2234
    :cond_0
    if-nez p0, :cond_1

    #@7
    .line 2235
    return v5

    #@8
    .line 2237
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@b
    move-result v0

    #@c
    .line 2242
    .local v0, "length":I
    add-int/lit8 v4, v0, 0x1

    #@e
    shr-int/lit8 v4, v4, 0x1

    #@10
    if-le v4, p1, :cond_2

    #@12
    .line 2243
    return v6

    #@13
    .line 2247
    :cond_2
    sub-int v1, v0, p1

    #@15
    .line 2248
    .local v1, "maxsupplementary":I
    if-gtz v1, :cond_3

    #@17
    .line 2249
    return v5

    #@18
    .line 2257
    :cond_3
    const/4 v2, 0x0

    #@19
    .local v2, "start":I
    move v3, v2

    #@1a
    .line 2259
    .end local v2    # "start":I
    .local v3, "start":I
    :goto_0
    if-nez v0, :cond_4

    #@1c
    .line 2260
    return v5

    #@1d
    .line 2262
    :cond_4
    if-nez p1, :cond_5

    #@1f
    .line 2263
    return v6

    #@20
    .line 2265
    :cond_5
    add-int/lit8 v2, v3, 0x1

    #@22
    .end local v3    # "start":I
    .restart local v2    # "start":I
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    #@25
    move-result v4

    #@26
    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_6

    #@2c
    if-eq v2, v0, :cond_6

    #@2e
    .line 2266
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@31
    move-result v4

    #@32
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@35
    move-result v4

    #@36
    .line 2265
    if-eqz v4, :cond_6

    #@38
    .line 2267
    add-int/lit8 v2, v2, 0x1

    #@3a
    .line 2268
    add-int/lit8 v1, v1, -0x1

    #@3c
    if-gtz v1, :cond_6

    #@3e
    .line 2270
    return v5

    #@3f
    .line 2273
    :cond_6
    add-int/lit8 p1, p1, -0x1

    #@41
    move v3, v2

    #@42
    .end local v2    # "start":I
    .restart local v3    # "start":I
    goto :goto_0
.end method

.method public static hasMoreCodePointsThan([CIII)Z
    .locals 6
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "number"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2166
    sub-int v0, p2, p1

    #@4
    .line 2167
    .local v0, "length":I
    if-ltz v0, :cond_0

    #@6
    if-gez p1, :cond_1

    #@8
    .line 2168
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@a
    .line 2169
    const-string/jumbo v4, "Start and limit indexes should be non-negative and start <= limit"

    #@d
    .line 2168
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 2167
    :cond_1
    if-ltz p2, :cond_0

    #@13
    .line 2171
    if-gez p3, :cond_2

    #@15
    .line 2172
    return v5

    #@16
    .line 2174
    :cond_2
    if-nez p0, :cond_3

    #@18
    .line 2175
    return v4

    #@19
    .line 2181
    :cond_3
    add-int/lit8 v3, v0, 0x1

    #@1b
    shr-int/lit8 v3, v3, 0x1

    #@1d
    if-le v3, p3, :cond_4

    #@1f
    .line 2182
    return v5

    #@20
    .line 2186
    :cond_4
    sub-int v1, v0, p3

    #@22
    .line 2187
    .local v1, "maxsupplementary":I
    if-gtz v1, :cond_6

    #@24
    .line 2188
    return v4

    #@25
    .line 2211
    :cond_5
    add-int/lit8 p3, p3, -0x1

    #@27
    :cond_6
    move v2, p1

    #@28
    .line 2197
    .end local p1    # "start":I
    .local v2, "start":I
    if-nez v0, :cond_7

    #@2a
    .line 2198
    return v4

    #@2b
    .line 2200
    :cond_7
    if-nez p3, :cond_8

    #@2d
    .line 2201
    return v5

    #@2e
    .line 2203
    :cond_8
    add-int/lit8 p1, v2, 0x1

    #@30
    .end local v2    # "start":I
    .restart local p1    # "start":I
    aget-char v3, p0, v2

    #@32
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_5

    #@38
    if-eq p1, p2, :cond_5

    #@3a
    .line 2204
    aget-char v3, p0, p1

    #@3c
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@3f
    move-result v3

    #@40
    .line 2203
    if-eqz v3, :cond_5

    #@42
    .line 2205
    add-int/lit8 p1, p1, 0x1

    #@44
    .line 2206
    add-int/lit8 v1, v1, -0x1

    #@46
    if-gtz v1, :cond_5

    #@48
    .line 2208
    return v4
.end method

.method public static indexOf(Ljava/lang/String;I)I
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "char32"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    .line 1544
    if-ltz p1, :cond_0

    #@4
    const v2, 0x10ffff

    #@7
    if-le p1, v2, :cond_1

    #@9
    .line 1545
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v3, "Argument char32 is not a valid codepoint"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 1548
    :cond_1
    const v2, 0xd800

    #@15
    if-lt p1, v2, :cond_2

    #@17
    .line 1549
    const v2, 0xdfff

    #@1a
    if-le p1, v2, :cond_3

    #@1c
    if-ge p1, v3, :cond_3

    #@1e
    .line 1550
    :cond_2
    int-to-char v2, p1

    #@1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 1553
    :cond_3
    if-ge p1, v3, :cond_6

    #@26
    .line 1554
    int-to-char v2, p1

    #@27
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@2a
    move-result v1

    #@2b
    .line 1555
    .local v1, "result":I
    if-ltz v1, :cond_5

    #@2d
    .line 1556
    int-to-char v2, p1

    #@2e
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_4

    #@34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@37
    move-result v2

    #@38
    add-int/lit8 v2, v2, -0x1

    #@3a
    if-ge v1, v2, :cond_4

    #@3c
    .line 1557
    add-int/lit8 v2, v1, 0x1

    #@3e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v2

    #@42
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@45
    move-result v2

    #@46
    .line 1556
    if-eqz v2, :cond_4

    #@48
    .line 1558
    add-int/lit8 v2, v1, 0x1

    #@4a
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    #@4d
    move-result v2

    #@4e
    return v2

    #@4f
    .line 1561
    :cond_4
    if-lez v1, :cond_5

    #@51
    add-int/lit8 v2, v1, -0x1

    #@53
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v2

    #@57
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_5

    #@5d
    .line 1562
    add-int/lit8 v2, v1, 0x1

    #@5f
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    #@62
    move-result v2

    #@63
    return v2

    #@64
    .line 1565
    :cond_5
    return v1

    #@65
    .line 1568
    .end local v1    # "result":I
    :cond_6
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 1569
    .local v0, "char32str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6c
    move-result v2

    #@6d
    return v2
.end method

.method public static indexOf(Ljava/lang/String;II)I
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "char32"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    .line 1645
    if-ltz p1, :cond_0

    #@4
    const v2, 0x10ffff

    #@7
    if-le p1, v2, :cond_1

    #@9
    .line 1646
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v3, "Argument char32 is not a valid codepoint"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 1649
    :cond_1
    const v2, 0xd800

    #@15
    if-lt p1, v2, :cond_2

    #@17
    .line 1650
    const v2, 0xdfff

    #@1a
    if-le p1, v2, :cond_3

    #@1c
    if-ge p1, v3, :cond_3

    #@1e
    .line 1651
    :cond_2
    int-to-char v2, p1

    #@1f
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->indexOf(II)I

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 1654
    :cond_3
    if-ge p1, v3, :cond_6

    #@26
    .line 1655
    int-to-char v2, p1

    #@27
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->indexOf(II)I

    #@2a
    move-result v1

    #@2b
    .line 1656
    .local v1, "result":I
    if-ltz v1, :cond_5

    #@2d
    .line 1657
    int-to-char v2, p1

    #@2e
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_4

    #@34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@37
    move-result v2

    #@38
    add-int/lit8 v2, v2, -0x1

    #@3a
    if-ge v1, v2, :cond_4

    #@3c
    .line 1658
    add-int/lit8 v2, v1, 0x1

    #@3e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v2

    #@42
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@45
    move-result v2

    #@46
    .line 1657
    if-eqz v2, :cond_4

    #@48
    .line 1659
    add-int/lit8 v2, v1, 0x1

    #@4a
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    #@4d
    move-result v2

    #@4e
    return v2

    #@4f
    .line 1662
    :cond_4
    if-lez v1, :cond_5

    #@51
    add-int/lit8 v2, v1, -0x1

    #@53
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v2

    #@57
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_5

    #@5d
    .line 1663
    add-int/lit8 v2, v1, 0x1

    #@5f
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    #@62
    move-result v2

    #@63
    return v2

    #@64
    .line 1666
    :cond_5
    return v1

    #@65
    .line 1669
    .end local v1    # "result":I
    :cond_6
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 1670
    .local v0, "char32str":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@6c
    move-result v2

    #@6d
    return v2
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1598
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 1600
    .local v2, "strLength":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v3

    #@9
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    add-int/lit8 v3, v2, -0x1

    #@11
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 1604
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1e
    move-result v0

    #@1f
    .line 1605
    .local v0, "result":I
    add-int v1, v0, v2

    #@21
    .line 1606
    .local v1, "resultEnd":I
    if-ltz v0, :cond_3

    #@23
    .line 1608
    add-int/lit8 v3, v2, -0x1

    #@25
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v3

    #@29
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@32
    move-result v3

    #@33
    add-int/lit8 v3, v3, -0x1

    #@35
    if-ge v0, v3, :cond_2

    #@37
    .line 1609
    add-int/lit8 v3, v1, 0x1

    #@39
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v3

    #@3d
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@40
    move-result v3

    #@41
    .line 1608
    if-eqz v3, :cond_2

    #@43
    .line 1610
    add-int/lit8 v3, v1, 0x1

    #@45
    invoke-static {p0, p1, v3}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@48
    move-result v3

    #@49
    return v3

    #@4a
    .line 1601
    .end local v0    # "result":I
    .end local v1    # "resultEnd":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@4d
    move-result v3

    #@4e
    return v3

    #@4f
    .line 1613
    .restart local v0    # "result":I
    .restart local v1    # "resultEnd":I
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@52
    move-result v3

    #@53
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@56
    move-result v3

    #@57
    if-eqz v3, :cond_3

    #@59
    if-lez v0, :cond_3

    #@5b
    .line 1614
    add-int/lit8 v3, v0, -0x1

    #@5d
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@60
    move-result v3

    #@61
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@64
    move-result v3

    #@65
    .line 1613
    if-eqz v3, :cond_3

    #@67
    .line 1615
    add-int/lit8 v3, v1, 0x1

    #@69
    invoke-static {p0, p1, v3}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@6c
    move-result v3

    #@6d
    return v3

    #@6e
    .line 1618
    :cond_3
    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1701
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 1703
    .local v2, "strLength":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v3

    #@9
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    add-int/lit8 v3, v2, -0x1

    #@11
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v3

    #@15
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 1707
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@1e
    move-result v0

    #@1f
    .line 1708
    .local v0, "result":I
    add-int v1, v0, v2

    #@21
    .line 1709
    .local v1, "resultEnd":I
    if-ltz v0, :cond_3

    #@23
    .line 1711
    add-int/lit8 v3, v2, -0x1

    #@25
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@28
    move-result v3

    #@29
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_2

    #@2f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@32
    move-result v3

    #@33
    add-int/lit8 v3, v3, -0x1

    #@35
    if-ge v0, v3, :cond_2

    #@37
    .line 1712
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v3

    #@3b
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@3e
    move-result v3

    #@3f
    .line 1711
    if-eqz v3, :cond_2

    #@41
    .line 1713
    add-int/lit8 v3, v1, 0x1

    #@43
    invoke-static {p0, p1, v3}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@46
    move-result v3

    #@47
    return v3

    #@48
    .line 1704
    .end local v0    # "result":I
    .end local v1    # "resultEnd":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@4b
    move-result v3

    #@4c
    return v3

    #@4d
    .line 1716
    .restart local v0    # "result":I
    .restart local v1    # "resultEnd":I
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v3

    #@51
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_3

    #@57
    if-lez v0, :cond_3

    #@59
    .line 1717
    add-int/lit8 v3, v0, -0x1

    #@5b
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v3

    #@5f
    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@62
    move-result v3

    #@63
    .line 1716
    if-eqz v3, :cond_3

    #@65
    .line 1718
    add-int/lit8 v3, v1, 0x1

    #@67
    invoke-static {p0, p1, v3}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@6a
    move-result v3

    #@6b
    return v3

    #@6c
    .line 1721
    :cond_3
    return v0
.end method

.method public static insert([CIII)I
    .locals 5
    .param p0, "target"    # [C
    .param p1, "limit"    # I
    .param p2, "offset16"    # I
    .param p3, "char32"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1452
    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 1453
    .local v1, "str":Ljava/lang/String;
    if-eq p2, p1, :cond_0

    #@7
    invoke-static {p0, v4, p1, p2}, Landroid/icu/text/UTF16;->bounds([CIII)I

    #@a
    move-result v2

    #@b
    const/4 v3, 0x5

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 1454
    add-int/lit8 p2, p2, 0x1

    #@10
    .line 1456
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@13
    move-result v0

    #@14
    .line 1457
    .local v0, "size":I
    add-int v2, p1, v0

    #@16
    array-length v3, p0

    #@17
    if-le v2, v3, :cond_1

    #@19
    .line 1458
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@1b
    add-int v3, p2, v0

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@20
    throw v2

    #@21
    .line 1460
    :cond_1
    add-int v2, p2, v0

    #@23
    sub-int v3, p1, p2

    #@25
    invoke-static {p0, p2, p0, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@28
    .line 1461
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v2

    #@2c
    aput-char v2, p0, p2

    #@2e
    .line 1462
    const/4 v2, 0x2

    #@2f
    if-ne v0, v2, :cond_2

    #@31
    .line 1463
    add-int/lit8 v2, p2, 0x1

    #@33
    const/4 v3, 0x1

    #@34
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v3

    #@38
    aput-char v3, p0, v2

    #@3a
    .line 1465
    :cond_2
    add-int v2, p1, v0

    #@3c
    return v2
.end method

.method public static insert(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .locals 3
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I
    .param p2, "char32"    # I

    #@0
    .prologue
    .line 1423
    invoke-static {p2}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1424
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@7
    move-result v1

    #@8
    if-eq p1, v1, :cond_0

    #@a
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x5

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 1425
    add-int/lit8 p1, p1, 0x1

    #@13
    .line 1427
    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 1428
    return-object p0
.end method

.method public static isLeadSurrogate(C)Z
    .locals 2
    .param p0, "char16"    # C

    #@0
    .prologue
    .line 627
    and-int/lit16 v0, p0, -0x400

    #@2
    const v1, 0xd800

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static isSurrogate(C)Z
    .locals 2
    .param p0, "char16"    # C

    #@0
    .prologue
    .line 605
    and-int/lit16 v0, p0, -0x800

    #@2
    const v1, 0xd800

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static isTrailSurrogate(C)Z
    .locals 2
    .param p0, "char16"    # C

    #@0
    .prologue
    .line 616
    and-int/lit16 v0, p0, -0x400

    #@2
    const v1, 0xdc00

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;I)I
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "char32"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    .line 1747
    if-ltz p1, :cond_0

    #@4
    const v2, 0x10ffff

    #@7
    if-le p1, v2, :cond_1

    #@9
    .line 1748
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v3, "Argument char32 is not a valid codepoint"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 1751
    :cond_1
    const v2, 0xd800

    #@15
    if-lt p1, v2, :cond_2

    #@17
    .line 1752
    const v2, 0xdfff

    #@1a
    if-le p1, v2, :cond_3

    #@1c
    if-ge p1, v3, :cond_3

    #@1e
    .line 1753
    :cond_2
    int-to-char v2, p1

    #@1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 1756
    :cond_3
    if-ge p1, v3, :cond_6

    #@26
    .line 1757
    int-to-char v2, p1

    #@27
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@2a
    move-result v1

    #@2b
    .line 1758
    .local v1, "result":I
    if-ltz v1, :cond_5

    #@2d
    .line 1759
    int-to-char v2, p1

    #@2e
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_4

    #@34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@37
    move-result v2

    #@38
    add-int/lit8 v2, v2, -0x1

    #@3a
    if-ge v1, v2, :cond_4

    #@3c
    .line 1760
    add-int/lit8 v2, v1, 0x1

    #@3e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v2

    #@42
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@45
    move-result v2

    #@46
    .line 1759
    if-eqz v2, :cond_4

    #@48
    .line 1761
    add-int/lit8 v2, v1, -0x1

    #@4a
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    #@4d
    move-result v2

    #@4e
    return v2

    #@4f
    .line 1764
    :cond_4
    if-lez v1, :cond_5

    #@51
    add-int/lit8 v2, v1, -0x1

    #@53
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v2

    #@57
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_5

    #@5d
    .line 1765
    add-int/lit8 v2, v1, -0x1

    #@5f
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    #@62
    move-result v2

    #@63
    return v2

    #@64
    .line 1768
    :cond_5
    return v1

    #@65
    .line 1771
    .end local v1    # "result":I
    :cond_6
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 1772
    .local v0, "char32str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@6c
    move-result v2

    #@6d
    return v2
.end method

.method public static lastIndexOf(Ljava/lang/String;II)I
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "char32"    # I
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    .line 1858
    if-ltz p1, :cond_0

    #@4
    const v2, 0x10ffff

    #@7
    if-le p1, v2, :cond_1

    #@9
    .line 1859
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v3, "Argument char32 is not a valid codepoint"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 1862
    :cond_1
    const v2, 0xd800

    #@15
    if-lt p1, v2, :cond_2

    #@17
    .line 1863
    const v2, 0xdfff

    #@1a
    if-le p1, v2, :cond_3

    #@1c
    if-ge p1, v3, :cond_3

    #@1e
    .line 1864
    :cond_2
    int-to-char v2, p1

    #@1f
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->lastIndexOf(II)I

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 1867
    :cond_3
    if-ge p1, v3, :cond_6

    #@26
    .line 1868
    int-to-char v2, p1

    #@27
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->lastIndexOf(II)I

    #@2a
    move-result v1

    #@2b
    .line 1869
    .local v1, "result":I
    if-ltz v1, :cond_5

    #@2d
    .line 1870
    int-to-char v2, p1

    #@2e
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_4

    #@34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@37
    move-result v2

    #@38
    add-int/lit8 v2, v2, -0x1

    #@3a
    if-ge v1, v2, :cond_4

    #@3c
    .line 1871
    add-int/lit8 v2, v1, 0x1

    #@3e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@41
    move-result v2

    #@42
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@45
    move-result v2

    #@46
    .line 1870
    if-eqz v2, :cond_4

    #@48
    .line 1872
    add-int/lit8 v2, v1, -0x1

    #@4a
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    #@4d
    move-result v2

    #@4e
    return v2

    #@4f
    .line 1875
    :cond_4
    if-lez v1, :cond_5

    #@51
    add-int/lit8 v2, v1, -0x1

    #@53
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@56
    move-result v2

    #@57
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_5

    #@5d
    .line 1876
    add-int/lit8 v2, v1, -0x1

    #@5f
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    #@62
    move-result v2

    #@63
    return v2

    #@64
    .line 1879
    :cond_5
    return v1

    #@65
    .line 1882
    .end local v1    # "result":I
    :cond_6
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 1883
    .local v0, "char32str":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@6c
    move-result v2

    #@6d
    return v2
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1801
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    .line 1803
    .local v1, "strLength":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v2

    #@9
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    add-int/lit8 v2, v1, -0x1

    #@11
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v2

    #@15
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 1807
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@1e
    move-result v0

    #@1f
    .line 1808
    .local v0, "result":I
    if-ltz v0, :cond_3

    #@21
    .line 1810
    add-int/lit8 v2, v1, -0x1

    #@23
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v2

    #@27
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_2

    #@2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@30
    move-result v2

    #@31
    add-int/lit8 v2, v2, -0x1

    #@33
    if-ge v0, v2, :cond_2

    #@35
    .line 1811
    add-int v2, v0, v1

    #@37
    add-int/lit8 v2, v2, 0x1

    #@39
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v2

    #@3d
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@40
    move-result v2

    #@41
    .line 1810
    if-eqz v2, :cond_2

    #@43
    .line 1812
    add-int/lit8 v2, v0, -0x1

    #@45
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@48
    move-result v2

    #@49
    return v2

    #@4a
    .line 1804
    .end local v0    # "result":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@4d
    move-result v2

    #@4e
    return v2

    #@4f
    .line 1815
    .restart local v0    # "result":I
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@52
    move-result v2

    #@53
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_3

    #@59
    if-lez v0, :cond_3

    #@5b
    .line 1816
    add-int/lit8 v2, v0, -0x1

    #@5d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@60
    move-result v2

    #@61
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@64
    move-result v2

    #@65
    .line 1815
    if-eqz v2, :cond_3

    #@67
    .line 1817
    add-int/lit8 v2, v0, -0x1

    #@69
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@6c
    move-result v2

    #@6d
    return v2

    #@6e
    .line 1820
    :cond_3
    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1924
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    .line 1926
    .local v1, "strLength":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v2

    #@9
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    add-int/lit8 v2, v1, -0x1

    #@11
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v2

    #@15
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 1930
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@1e
    move-result v0

    #@1f
    .line 1931
    .local v0, "result":I
    if-ltz v0, :cond_3

    #@21
    .line 1933
    add-int/lit8 v2, v1, -0x1

    #@23
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v2

    #@27
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_2

    #@2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@30
    move-result v2

    #@31
    add-int/lit8 v2, v2, -0x1

    #@33
    if-ge v0, v2, :cond_2

    #@35
    .line 1934
    add-int v2, v0, v1

    #@37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v2

    #@3b
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@3e
    move-result v2

    #@3f
    .line 1933
    if-eqz v2, :cond_2

    #@41
    .line 1935
    add-int/lit8 v2, v0, -0x1

    #@43
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@46
    move-result v2

    #@47
    return v2

    #@48
    .line 1927
    .end local v0    # "result":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    #@4b
    move-result v2

    #@4c
    return v2

    #@4d
    .line 1938
    .restart local v0    # "result":I
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v2

    #@51
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_3

    #@57
    if-lez v0, :cond_3

    #@59
    .line 1939
    add-int/lit8 v2, v0, -0x1

    #@5b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v2

    #@5f
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@62
    move-result v2

    #@63
    .line 1938
    if-eqz v2, :cond_3

    #@65
    .line 1940
    add-int/lit8 v2, v0, -0x1

    #@67
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@6a
    move-result v2

    #@6b
    return v2

    #@6c
    .line 1943
    :cond_3
    return v0
.end method

.method public static moveCodePointOffset(Ljava/lang/String;II)I
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I
    .param p2, "shift32"    # I

    #@0
    .prologue
    .line 1240
    move v2, p1

    #@1
    .line 1241
    .local v2, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 1244
    .local v3, "size":I
    if-ltz p1, :cond_0

    #@7
    if-le p1, v3, :cond_1

    #@9
    .line 1245
    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@b
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@e
    throw v4

    #@f
    .line 1247
    :cond_1
    if-lez p2, :cond_4

    #@11
    .line 1248
    add-int v4, p2, p1

    #@13
    if-le v4, v3, :cond_2

    #@15
    .line 1249
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@17
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@1a
    throw v4

    #@1b
    .line 1251
    :cond_2
    move v1, p2

    #@1c
    .line 1252
    .local v1, "count":I
    :goto_0
    if-ge v2, v3, :cond_6

    #@1e
    if-lez v1, :cond_6

    #@20
    .line 1253
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@23
    move-result v0

    #@24
    .line 1254
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_3

    #@2a
    add-int/lit8 v4, v2, 0x1

    #@2c
    if-ge v4, v3, :cond_3

    #@2e
    .line 1255
    add-int/lit8 v4, v2, 0x1

    #@30
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v4

    #@34
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@37
    move-result v4

    #@38
    .line 1254
    if-eqz v4, :cond_3

    #@3a
    .line 1256
    add-int/lit8 v2, v2, 0x1

    #@3c
    .line 1258
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@3e
    .line 1259
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1262
    .end local v0    # "ch":C
    .end local v1    # "count":I
    :cond_4
    add-int v4, p1, p2

    #@43
    if-gez v4, :cond_5

    #@45
    .line 1263
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@47
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@4a
    throw v4

    #@4b
    .line 1265
    :cond_5
    neg-int v1, p2

    #@4c
    .restart local v1    # "count":I
    :goto_1
    if-lez v1, :cond_6

    #@4e
    .line 1266
    add-int/lit8 v2, v2, -0x1

    #@50
    .line 1267
    if-gez v2, :cond_7

    #@52
    .line 1277
    :cond_6
    if-eqz v1, :cond_9

    #@54
    .line 1278
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@56
    invoke-direct {v4, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@59
    throw v4

    #@5a
    .line 1270
    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@5d
    move-result v0

    #@5e
    .line 1271
    .restart local v0    # "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_8

    #@64
    if-lez v2, :cond_8

    #@66
    .line 1272
    add-int/lit8 v4, v2, -0x1

    #@68
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@6b
    move-result v4

    #@6c
    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@6f
    move-result v4

    #@70
    .line 1271
    if-eqz v4, :cond_8

    #@72
    .line 1273
    add-int/lit8 v2, v2, -0x1

    #@74
    .line 1265
    :cond_8
    add-int/lit8 v1, v1, -0x1

    #@76
    goto :goto_1

    #@77
    .line 1280
    .end local v0    # "ch":C
    :cond_9
    return v2
.end method

.method public static moveCodePointOffset(Ljava/lang/StringBuffer;II)I
    .locals 5
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I
    .param p2, "shift32"    # I

    #@0
    .prologue
    .line 1294
    move v2, p1

    #@1
    .line 1295
    .local v2, "result":I
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@4
    move-result v3

    #@5
    .line 1298
    .local v3, "size":I
    if-ltz p1, :cond_0

    #@7
    if-le p1, v3, :cond_1

    #@9
    .line 1299
    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@b
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@e
    throw v4

    #@f
    .line 1301
    :cond_1
    if-lez p2, :cond_4

    #@11
    .line 1302
    add-int v4, p2, p1

    #@13
    if-le v4, v3, :cond_2

    #@15
    .line 1303
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@17
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@1a
    throw v4

    #@1b
    .line 1305
    :cond_2
    move v1, p2

    #@1c
    .line 1306
    .local v1, "count":I
    :goto_0
    if-ge v2, v3, :cond_6

    #@1e
    if-lez v1, :cond_6

    #@20
    .line 1307
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@23
    move-result v0

    #@24
    .line 1308
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_3

    #@2a
    add-int/lit8 v4, v2, 0x1

    #@2c
    if-ge v4, v3, :cond_3

    #@2e
    .line 1309
    add-int/lit8 v4, v2, 0x1

    #@30
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    #@33
    move-result v4

    #@34
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@37
    move-result v4

    #@38
    .line 1308
    if-eqz v4, :cond_3

    #@3a
    .line 1310
    add-int/lit8 v2, v2, 0x1

    #@3c
    .line 1312
    :cond_3
    add-int/lit8 v1, v1, -0x1

    #@3e
    .line 1313
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 1316
    .end local v0    # "ch":C
    .end local v1    # "count":I
    :cond_4
    add-int v4, p1, p2

    #@43
    if-gez v4, :cond_5

    #@45
    .line 1317
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@47
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@4a
    throw v4

    #@4b
    .line 1319
    :cond_5
    neg-int v1, p2

    #@4c
    .restart local v1    # "count":I
    :goto_1
    if-lez v1, :cond_6

    #@4e
    .line 1320
    add-int/lit8 v2, v2, -0x1

    #@50
    .line 1321
    if-gez v2, :cond_7

    #@52
    .line 1331
    :cond_6
    if-eqz v1, :cond_9

    #@54
    .line 1332
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@56
    invoke-direct {v4, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@59
    throw v4

    #@5a
    .line 1324
    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@5d
    move-result v0

    #@5e
    .line 1325
    .restart local v0    # "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_8

    #@64
    if-lez v2, :cond_8

    #@66
    .line 1326
    add-int/lit8 v4, v2, -0x1

    #@68
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    #@6b
    move-result v4

    #@6c
    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@6f
    move-result v4

    #@70
    .line 1325
    if-eqz v4, :cond_8

    #@72
    .line 1327
    add-int/lit8 v2, v2, -0x1

    #@74
    .line 1319
    :cond_8
    add-int/lit8 v1, v1, -0x1

    #@76
    goto :goto_1

    #@77
    .line 1334
    .end local v0    # "ch":C
    :cond_9
    return v2
.end method

.method public static moveCodePointOffset([CIIII)I
    .locals 5
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I
    .param p4, "shift32"    # I

    #@0
    .prologue
    .line 1352
    array-length v3, p0

    #@1
    .line 1355
    .local v3, "size":I
    add-int v2, p3, p1

    #@3
    .line 1356
    .local v2, "result":I
    if-ltz p1, :cond_0

    #@5
    if-ge p2, p1, :cond_1

    #@7
    .line 1357
    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@9
    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@c
    throw v4

    #@d
    .line 1359
    :cond_1
    if-le p2, v3, :cond_2

    #@f
    .line 1360
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@11
    invoke-direct {v4, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@14
    throw v4

    #@15
    .line 1362
    :cond_2
    if-ltz p3, :cond_3

    #@17
    if-le v2, p2, :cond_4

    #@19
    .line 1363
    :cond_3
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@1b
    invoke-direct {v4, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@1e
    throw v4

    #@1f
    .line 1365
    :cond_4
    if-lez p4, :cond_7

    #@21
    .line 1366
    add-int v4, p4, v2

    #@23
    if-le v4, v3, :cond_5

    #@25
    .line 1367
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@27
    invoke-direct {v4, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@2a
    throw v4

    #@2b
    .line 1369
    :cond_5
    move v1, p4

    #@2c
    .line 1370
    .local v1, "count":I
    :goto_0
    if-ge v2, p2, :cond_9

    #@2e
    if-lez v1, :cond_9

    #@30
    .line 1371
    aget-char v0, p0, v2

    #@32
    .line 1372
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_6

    #@38
    add-int/lit8 v4, v2, 0x1

    #@3a
    if-ge v4, p2, :cond_6

    #@3c
    .line 1373
    add-int/lit8 v4, v2, 0x1

    #@3e
    aget-char v4, p0, v4

    #@40
    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@43
    move-result v4

    #@44
    .line 1372
    if-eqz v4, :cond_6

    #@46
    .line 1374
    add-int/lit8 v2, v2, 0x1

    #@48
    .line 1376
    :cond_6
    add-int/lit8 v1, v1, -0x1

    #@4a
    .line 1377
    add-int/lit8 v2, v2, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 1380
    .end local v0    # "ch":C
    .end local v1    # "count":I
    :cond_7
    add-int v4, v2, p4

    #@4f
    if-ge v4, p1, :cond_8

    #@51
    .line 1381
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@53
    invoke-direct {v4, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@56
    throw v4

    #@57
    .line 1383
    :cond_8
    neg-int v1, p4

    #@58
    .restart local v1    # "count":I
    :goto_1
    if-lez v1, :cond_9

    #@5a
    .line 1384
    add-int/lit8 v2, v2, -0x1

    #@5c
    .line 1385
    if-ge v2, p1, :cond_a

    #@5e
    .line 1394
    :cond_9
    if-eqz v1, :cond_c

    #@60
    .line 1395
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    #@62
    invoke-direct {v4, p4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@65
    throw v4

    #@66
    .line 1388
    :cond_a
    aget-char v0, p0, v2

    #@68
    .line 1389
    .restart local v0    # "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_b

    #@6e
    if-le v2, p1, :cond_b

    #@70
    add-int/lit8 v4, v2, -0x1

    #@72
    aget-char v4, p0, v4

    #@74
    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@77
    move-result v4

    #@78
    if-eqz v4, :cond_b

    #@7a
    .line 1390
    add-int/lit8 v2, v2, -0x1

    #@7c
    .line 1383
    :cond_b
    add-int/lit8 v1, v1, -0x1

    #@7e
    goto :goto_1

    #@7f
    .line 1397
    .end local v0    # "ch":C
    :cond_c
    sub-int/2addr v2, p1

    #@80
    .line 1398
    return v2
.end method

.method public static newString([III)Ljava/lang/String;
    .locals 13
    .param p0, "codePoints"    # [I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 2289
    if-gez p2, :cond_0

    #@3
    .line 2290
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@5
    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@8
    throw v8

    #@9
    .line 2292
    :cond_0
    new-array v0, p2, [C

    #@b
    .line 2293
    .local v0, "chars":[C
    const/4 v7, 0x0

    #@c
    .line 2294
    .local v7, "w":I
    move v5, p1

    #@d
    .local v5, "r":I
    add-int v2, p1, p2

    #@f
    .local v2, "e":I
    :goto_0
    if-ge v5, v2, :cond_4

    #@11
    .line 2295
    aget v1, p0, v5

    #@13
    .line 2296
    .local v1, "cp":I
    if-ltz v1, :cond_1

    #@15
    const v8, 0x10ffff

    #@18
    if-le v1, v8, :cond_2

    #@1a
    .line 2297
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1f
    throw v8

    #@20
    .line 2310
    :catch_0
    move-exception v3

    #@21
    .line 2311
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    array-length v8, p0

    #@22
    int-to-double v8, v8

    #@23
    add-int/lit8 v10, v7, 0x2

    #@25
    int-to-double v10, v10

    #@26
    mul-double/2addr v8, v10

    #@27
    .line 2312
    sub-int v10, v5, p1

    #@29
    add-int/lit8 v10, v10, 0x1

    #@2b
    int-to-double v10, v10

    #@2c
    .line 2311
    div-double/2addr v8, v10

    #@2d
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    #@30
    move-result-wide v8

    #@31
    double-to-int v4, v8

    #@32
    .line 2313
    .local v4, "newlen":I
    new-array v6, v4, [C

    #@34
    .line 2314
    .local v6, "temp":[C
    invoke-static {v0, v12, v6, v12, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@37
    .line 2315
    move-object v0, v6

    #@38
    .line 2301
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "newlen":I
    .end local v6    # "temp":[C
    :cond_2
    const/high16 v8, 0x10000

    #@3a
    if-ge v1, v8, :cond_3

    #@3c
    .line 2302
    int-to-char v8, v1

    #@3d
    :try_start_0
    aput-char v8, v0, v7

    #@3f
    .line 2303
    add-int/lit8 v7, v7, 0x1

    #@41
    .line 2294
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@43
    goto :goto_0

    #@44
    .line 2305
    :cond_3
    shr-int/lit8 v8, v1, 0xa

    #@46
    const v9, 0xd7c0

    #@49
    add-int/2addr v8, v9

    #@4a
    int-to-char v8, v8

    #@4b
    aput-char v8, v0, v7

    #@4d
    .line 2306
    add-int/lit8 v8, v7, 0x1

    #@4f
    and-int/lit16 v9, v1, 0x3ff

    #@51
    const v10, 0xdc00

    #@54
    add-int/2addr v9, v10

    #@55
    int-to-char v9, v9

    #@56
    aput-char v9, v0, v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 2307
    add-int/lit8 v7, v7, 0x2

    #@5a
    goto :goto_1

    #@5b
    .line 2319
    .end local v1    # "cp":I
    :cond_4
    new-instance v8, Ljava/lang/String;

    #@5d
    invoke-direct {v8, v0, v12, v7}, Ljava/lang/String;-><init>([CII)V

    #@60
    return-object v8
.end method

.method public static replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 10
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "oldChar32"    # I
    .param p2, "newChar32"    # I

    #@0
    .prologue
    const v8, 0x10ffff

    #@3
    const/4 v9, -0x1

    #@4
    .line 1975
    if-lez p1, :cond_0

    #@6
    if-le p1, v8, :cond_1

    #@8
    .line 1976
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v9, "Argument oldChar32 is not a valid codepoint"

    #@d
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v8

    #@11
    .line 1978
    :cond_1
    if-lez p2, :cond_2

    #@13
    if-le p2, v8, :cond_3

    #@15
    .line 1979
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v9, "Argument newChar32 is not a valid codepoint"

    #@1a
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v8

    #@1e
    .line 1982
    :cond_3
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;I)I

    #@21
    move-result v1

    #@22
    .line 1983
    .local v1, "index":I
    if-ne v1, v9, :cond_4

    #@24
    .line 1984
    return-object p0

    #@25
    .line 1986
    :cond_4
    invoke-static {p2}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    .line 1987
    .local v4, "newChar32Str":Ljava/lang/String;
    const/4 v5, 0x1

    #@2a
    .line 1988
    .local v5, "oldChar32Size":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2d
    move-result v3

    #@2e
    .line 1989
    .local v3, "newChar32Size":I
    new-instance v6, Ljava/lang/StringBuffer;

    #@30
    invoke-direct {v6, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@33
    .line 1990
    .local v6, "result":Ljava/lang/StringBuffer;
    move v7, v1

    #@34
    .line 1992
    .local v7, "resultIndex":I
    const/high16 v8, 0x10000

    #@36
    if-lt p1, v8, :cond_5

    #@38
    .line 1993
    const/4 v5, 0x2

    #@39
    .line 1996
    :cond_5
    :goto_0
    if-eq v1, v9, :cond_6

    #@3b
    .line 1997
    add-int v0, v7, v5

    #@3d
    .line 1998
    .local v0, "endResultIndex":I
    invoke-virtual {v6, v7, v0, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    .line 1999
    add-int v2, v1, v5

    #@42
    .line 2000
    .local v2, "lastEndIndex":I
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    #@45
    move-result v1

    #@46
    .line 2001
    add-int v8, v3, v1

    #@48
    sub-int/2addr v8, v2

    #@49
    add-int/2addr v7, v8

    #@4a
    goto :goto_0

    #@4b
    .line 2003
    .end local v0    # "endResultIndex":I
    .end local v2    # "lastEndIndex":I
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    return-object v8
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "oldStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 2036
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    #@4
    move-result v1

    #@5
    .line 2037
    .local v1, "index":I
    if-ne v1, v8, :cond_0

    #@7
    .line 2038
    return-object p0

    #@8
    .line 2040
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v4

    #@c
    .line 2041
    .local v4, "oldStrSize":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@f
    move-result v3

    #@10
    .line 2042
    .local v3, "newStrSize":I
    new-instance v5, Ljava/lang/StringBuffer;

    #@12
    invoke-direct {v5, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@15
    .line 2043
    .local v5, "result":Ljava/lang/StringBuffer;
    move v6, v1

    #@16
    .line 2045
    .local v6, "resultIndex":I
    :goto_0
    if-eq v1, v8, :cond_1

    #@18
    .line 2046
    add-int v0, v6, v4

    #@1a
    .line 2047
    .local v0, "endResultIndex":I
    invoke-virtual {v5, v6, v0, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    .line 2048
    add-int v2, v1, v4

    #@1f
    .line 2049
    .local v2, "lastEndIndex":I
    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    #@22
    move-result v1

    #@23
    .line 2050
    add-int v7, v3, v1

    #@25
    sub-int/2addr v7, v2

    #@26
    add-int/2addr v6, v7

    #@27
    goto :goto_0

    #@28
    .line 2052
    .end local v0    # "endResultIndex":I
    .end local v2    # "lastEndIndex":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2b
    move-result-object v7

    #@2c
    return-object v7
.end method

.method public static reverse(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 7
    .param p0, "source"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 2068
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v4

    #@4
    .line 2069
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuffer;

    #@6
    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    #@9
    .line 2070
    .local v5, "result":Ljava/lang/StringBuffer;
    move v2, v4

    #@a
    .local v2, "i":I
    move v3, v2

    #@b
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    #@d
    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_1

    #@f
    .line 2071
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 2072
    .local v0, "ch":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_0

    #@19
    if-lez v2, :cond_0

    #@1b
    .line 2073
    add-int/lit8 v6, v2, -0x1

    #@1d
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    #@20
    move-result v1

    #@21
    .line 2074
    .local v1, "ch2":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@24
    move-result v6

    #@25
    if-eqz v6, :cond_0

    #@27
    .line 2075
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2a
    .line 2076
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2d
    .line 2077
    add-int/lit8 v2, v2, -0x1

    #@2f
    .end local v1    # "ch2":C
    :goto_1
    move v3, v2

    #@30
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@31
    .line 2081
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@34
    goto :goto_1

    #@35
    .line 2083
    .end local v0    # "ch":C
    :cond_1
    return-object v5
.end method

.method public static setCharAt([CIII)I
    .locals 10
    .param p0, "target"    # [C
    .param p1, "limit"    # I
    .param p2, "offset16"    # I
    .param p3, "char32"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1176
    if-lt p2, p1, :cond_0

    #@4
    .line 1177
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@6
    invoke-direct {v5, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@9
    throw v5

    #@a
    .line 1179
    :cond_0
    const/4 v0, 0x1

    #@b
    .line 1180
    .local v0, "count":I
    aget-char v2, p0, p2

    #@d
    .line 1182
    .local v2, "single":C
    invoke-static {v2}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    .line 1184
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_3

    #@19
    array-length v5, p0

    #@1a
    add-int/lit8 v6, p2, 0x1

    #@1c
    if-le v5, v6, :cond_3

    #@1e
    .line 1185
    add-int/lit8 v5, p2, 0x1

    #@20
    aget-char v5, p0, v5

    #@22
    invoke-static {v5}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@25
    move-result v5

    #@26
    .line 1184
    if-eqz v5, :cond_3

    #@28
    .line 1186
    const/4 v0, 0x2

    #@29
    .line 1198
    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 1199
    .local v3, "str":Ljava/lang/String;
    move v1, p1

    #@2e
    .line 1200
    .local v1, "result":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@31
    move-result v4

    #@32
    .line 1201
    .local v4, "strlength":I
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v5

    #@36
    aput-char v5, p0, p2

    #@38
    .line 1202
    if-ne v0, v4, :cond_4

    #@3a
    .line 1203
    const/4 v5, 0x2

    #@3b
    if-ne v0, v5, :cond_2

    #@3d
    .line 1204
    add-int/lit8 v5, p2, 0x1

    #@3f
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v6

    #@43
    aput-char v6, p0, v5

    #@45
    .line 1226
    :cond_2
    :goto_1
    return v1

    #@46
    .line 1190
    .end local v1    # "result":I
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "strlength":I
    :cond_3
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_1

    #@4c
    if-lez p2, :cond_1

    #@4e
    .line 1191
    add-int/lit8 v5, p2, -0x1

    #@50
    aget-char v5, p0, v5

    #@52
    invoke-static {v5}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@55
    move-result v5

    #@56
    .line 1190
    if-eqz v5, :cond_1

    #@58
    .line 1192
    add-int/lit8 p2, p2, -0x1

    #@5a
    .line 1193
    const/4 v0, 0x2

    #@5b
    goto :goto_0

    #@5c
    .line 1209
    .restart local v1    # "result":I
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "strlength":I
    :cond_4
    add-int v5, p2, v0

    #@5e
    add-int v6, p2, v4

    #@60
    .line 1210
    add-int v7, p2, v0

    #@62
    .line 1209
    sub-int v7, p1, v7

    #@64
    invoke-static {p0, v5, p0, v6, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@67
    .line 1211
    if-ge v0, v4, :cond_5

    #@69
    .line 1214
    add-int/lit8 v5, p2, 0x1

    #@6b
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    #@6e
    move-result v6

    #@6f
    aput-char v6, p0, v5

    #@71
    .line 1215
    add-int/lit8 v1, v1, 0x1

    #@73
    .line 1216
    array-length v5, p0

    #@74
    if-ge v1, v5, :cond_2

    #@76
    .line 1217
    aput-char v8, p0, v1

    #@78
    goto :goto_1

    #@79
    .line 1222
    :cond_5
    add-int/lit8 v1, v1, -0x1

    #@7b
    .line 1223
    aput-char v8, p0, v1

    #@7d
    goto :goto_1
.end method

.method public static setCharAt(Ljava/lang/StringBuffer;II)V
    .locals 4
    .param p0, "target"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I
    .param p2, "char32"    # I

    #@0
    .prologue
    .line 1141
    const/4 v0, 0x1

    #@1
    .line 1142
    .local v0, "count":I
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    #@4
    move-result v1

    #@5
    .line 1144
    .local v1, "single":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1146
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    #@14
    move-result v2

    #@15
    add-int/lit8 v3, p1, 0x1

    #@17
    if-le v2, v3, :cond_1

    #@19
    .line 1147
    add-int/lit8 v2, p1, 0x1

    #@1b
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@1e
    move-result v2

    #@1f
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@22
    move-result v2

    #@23
    .line 1146
    if-eqz v2, :cond_1

    #@25
    .line 1148
    const/4 v0, 0x2

    #@26
    .line 1159
    :cond_0
    :goto_0
    add-int v2, p1, v0

    #@28
    invoke-static {p2}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {p0, p1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 1140
    return-void

    #@30
    .line 1152
    :cond_1
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_0

    #@36
    if-lez p1, :cond_0

    #@38
    .line 1153
    add-int/lit8 v2, p1, -0x1

    #@3a
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    #@3d
    move-result v2

    #@3e
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@41
    move-result v2

    #@42
    .line 1152
    if-eqz v2, :cond_0

    #@44
    .line 1154
    add-int/lit8 p1, p1, -0x1

    #@46
    .line 1155
    const/4 v0, 0x2

    #@47
    goto :goto_0
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 2712
    const/high16 v1, 0x10000

    #@2
    if-ge p0, v1, :cond_0

    #@4
    .line 2713
    int-to-char v1, p0

    #@5
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 2716
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 2717
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@12
    move-result v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 2718
    invoke-static {p0}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 2719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 2
    .param p0, "char32"    # I

    #@0
    .prologue
    .line 675
    if-ltz p0, :cond_0

    #@2
    const v0, 0x10ffff

    #@5
    if-le p0, v0, :cond_1

    #@7
    .line 676
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "Illegal codepoint"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 678
    :cond_1
    invoke-static {p0}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 695
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/String;I)I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 701
    :pswitch_0
    add-int/lit8 v0, p1, 0x1

    #@9
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 697
    :pswitch_1
    add-int/lit8 v0, p1, 0x2

    #@10
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 699
    :pswitch_2
    add-int/lit8 v0, p1, -0x1

    #@17
    add-int/lit8 v1, p1, 0x1

    #@19
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 695
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/StringBuffer;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/StringBuffer;
    .param p1, "offset16"    # I

    #@0
    .prologue
    .line 719
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 725
    :pswitch_0
    add-int/lit8 v0, p1, 0x1

    #@9
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 721
    :pswitch_1
    add-int/lit8 v0, p1, 0x2

    #@10
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 723
    :pswitch_2
    add-int/lit8 v0, p1, -0x1

    #@17
    add-int/lit8 v1, p1, 0x1

    #@19
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0

    #@1e
    .line 719
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf([CIII)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "offset16"    # I

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 747
    invoke-static {p0, p1, p2, p3}, Landroid/icu/text/UTF16;->bounds([CIII)I

    #@4
    move-result v0

    #@5
    packed-switch v0, :pswitch_data_0

    #@8
    .line 753
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    #@a
    add-int v1, p1, p3

    #@c
    const/4 v2, 0x1

    #@d
    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    #@10
    return-object v0

    #@11
    .line 749
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    #@13
    add-int v1, p1, p3

    #@15
    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    #@18
    return-object v0

    #@19
    .line 751
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    #@1b
    add-int v1, p1, p3

    #@1d
    add-int/lit8 v1, v1, -0x1

    #@1f
    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    #@22
    return-object v0

    #@23
    .line 747
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
