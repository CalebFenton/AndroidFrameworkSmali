.class public final Landroid/icu/impl/coll/CollationSettings;
.super Landroid/icu/impl/coll/SharedObject;
.source "CollationSettings.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final ALTERNATE_MASK:I = 0xc

.field public static final BACKWARD_SECONDARY:I = 0x800

.field public static final CASE_FIRST:I = 0x200

.field public static final CASE_FIRST_AND_UPPER_MASK:I = 0x300

.field public static final CASE_LEVEL:I = 0x400

.field public static final CHECK_FCD:I = 0x1

.field private static final EMPTY_INT_ARRAY:[I

.field static final MAX_VARIABLE_MASK:I = 0x70

.field static final MAX_VARIABLE_SHIFT:I = 0x4

.field static final MAX_VAR_CURRENCY:I = 0x3

.field static final MAX_VAR_PUNCT:I = 0x1

.field static final MAX_VAR_SPACE:I = 0x0

.field static final MAX_VAR_SYMBOL:I = 0x2

.field public static final NUMERIC:I = 0x2

.field static final SHIFTED:I = 0x4

.field static final STRENGTH_MASK:I = 0xf000

.field static final STRENGTH_SHIFT:I = 0xc

.field static final UPPER_FIRST:I = 0x100


# instance fields
.field public fastLatinOptions:I

.field public fastLatinPrimaries:[C

.field minHighNoReorder:J

.field public options:I

.field public reorderCodes:[I

.field reorderRanges:[J

.field public reorderTable:[B

.field public variableTop:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Landroid/icu/impl/coll/CollationSettings;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    move v0, v1

    #@a
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    #@c
    .line 480
    new-array v0, v1, [I

    #@e
    sput-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    #@10
    .line 22
    return-void

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Landroid/icu/impl/coll/SharedObject;-><init>()V

    #@3
    .line 439
    const/16 v0, 0x2010

    #@5
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@7
    .line 473
    sget-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    #@9
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@b
    .line 483
    const/4 v0, -0x1

    #@c
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    #@e
    .line 486
    const/16 v0, 0x180

    #@10
    new-array v0, v0, [C

    #@12
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@14
    .line 91
    return-void
.end method

.method static getStrength(I)I
    .locals 1
    .param p0, "options"    # I

    #@0
    .prologue
    .line 330
    shr-int/lit8 v0, p0, 0xc

    #@2
    return v0
.end method

.method static getTertiaryMask(I)I
    .locals 1
    .param p0, "options"    # I

    #@0
    .prologue
    .line 416
    invoke-static {p0}, Landroid/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 417
    const v0, 0xff3f

    #@9
    .line 416
    :goto_0
    return v0

    #@a
    .line 417
    :cond_0
    const/16 v0, 0x3f3f

    #@c
    goto :goto_0
.end method

.method static isTertiaryWithCaseBits(I)Z
    .locals 2
    .param p0, "options"    # I

    #@0
    .prologue
    .line 412
    and-int/lit16 v0, p0, 0x600

    #@2
    const/16 v1, 0x200

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private reorderEx(J)J
    .locals 11
    .param p1, "p"    # J

    #@0
    .prologue
    .line 293
    sget-boolean v1, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    #@2
    if-nez v1, :cond_1

    #@4
    iget-wide v6, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@6
    const-wide/16 v8, 0x0

    #@8
    cmp-long v1, v6, v8

    #@a
    if-lez v1, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :goto_0
    if-nez v1, :cond_1

    #@f
    new-instance v1, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0

    #@17
    .line 294
    :cond_1
    iget-wide v6, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@19
    cmp-long v1, p1, v6

    #@1b
    if-ltz v1, :cond_2

    #@1d
    return-wide p1

    #@1e
    .line 297
    :cond_2
    const-wide/32 v6, 0xffff

    #@21
    or-long v2, p1, v6

    #@23
    .line 299
    .local v2, "q":J
    const/4 v0, 0x0

    #@24
    .line 300
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    #@26
    aget-wide v4, v1, v0

    #@28
    .local v4, "r":J
    cmp-long v1, v2, v4

    #@2a
    if-ltz v1, :cond_3

    #@2c
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 301
    :cond_3
    long-to-int v1, v4

    #@30
    int-to-short v1, v1

    #@31
    int-to-long v6, v1

    #@32
    const/16 v1, 0x18

    #@34
    shl-long/2addr v6, v1

    #@35
    add-long/2addr v6, p1

    #@36
    return-wide v6
.end method

.method private static reorderTableHasSplitBytes([B)Z
    .locals 4
    .param p0, "table"    # [B

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 274
    sget-boolean v1, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    #@4
    if-nez v1, :cond_1

    #@6
    aget-byte v1, p0, v3

    #@8
    if-nez v1, :cond_0

    #@a
    move v1, v2

    #@b
    :goto_0
    if-nez v1, :cond_1

    #@d
    new-instance v1, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v1

    #@13
    :cond_0
    move v1, v3

    #@14
    goto :goto_0

    #@15
    .line 275
    :cond_1
    const/4 v0, 0x1

    #@16
    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    #@18
    if-ge v0, v1, :cond_3

    #@1a
    .line 276
    aget-byte v1, p0, v0

    #@1c
    if-nez v1, :cond_2

    #@1e
    .line 277
    return v2

    #@1f
    .line 275
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_1

    #@22
    .line 280
    :cond_3
    return v3
.end method

.method private setReorderArrays([I[III[B)V
    .locals 4
    .param p1, "codes"    # [I
    .param p2, "ranges"    # [I
    .param p3, "rangesStart"    # I
    .param p4, "rangesLength"    # I
    .param p5, "table"    # [B

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 239
    if-nez p1, :cond_0

    #@4
    .line 240
    sget-object p1, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    #@6
    .line 242
    :cond_0
    sget-boolean v2, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    #@8
    if-nez v2, :cond_4

    #@a
    array-length v2, p1

    #@b
    if-nez v2, :cond_1

    #@d
    move v3, v0

    #@e
    :goto_0
    if-nez p5, :cond_2

    #@10
    move v2, v0

    #@11
    :goto_1
    if-ne v3, v2, :cond_3

    #@13
    :goto_2
    if-nez v0, :cond_4

    #@15
    new-instance v0, Ljava/lang/AssertionError;

    #@17
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1a
    throw v0

    #@1b
    :cond_1
    move v3, v1

    #@1c
    goto :goto_0

    #@1d
    :cond_2
    move v2, v1

    #@1e
    goto :goto_1

    #@1f
    :cond_3
    move v0, v1

    #@20
    goto :goto_2

    #@21
    .line 243
    :cond_4
    iput-object p5, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    #@23
    .line 244
    iput-object p1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@25
    .line 245
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    #@28
    .line 237
    return-void
.end method

.method private setReorderRanges([III)V
    .locals 8
    .param p1, "ranges"    # [I
    .param p2, "rangesStart"    # I
    .param p3, "rangesLength"    # I

    #@0
    .prologue
    .line 249
    if-nez p3, :cond_0

    #@2
    .line 250
    const/4 v3, 0x0

    #@3
    iput-object v3, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    #@5
    .line 248
    :goto_0
    return-void

    #@6
    .line 252
    :cond_0
    new-array v3, p3, [J

    #@8
    iput-object v3, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    #@a
    .line 253
    const/4 v0, 0x0

    #@b
    .line 255
    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    #@d
    add-int/lit8 v1, v0, 0x1

    #@f
    .end local v0    # "i":I
    .local v1, "i":I
    add-int/lit8 v2, p2, 0x1

    #@11
    .end local p2    # "rangesStart":I
    .local v2, "rangesStart":I
    aget v4, p1, p2

    #@13
    int-to-long v4, v4

    #@14
    const-wide v6, 0xffffffffL

    #@19
    and-long/2addr v4, v6

    #@1a
    aput-wide v4, v3, v0

    #@1c
    .line 256
    if-ge v1, p3, :cond_1

    #@1e
    move v0, v1

    #@1f
    .end local v1    # "i":I
    .restart local v0    # "i":I
    move p2, v2

    #@20
    .end local v2    # "rangesStart":I
    .restart local p2    # "rangesStart":I
    goto :goto_1

    #@21
    .end local v0    # "i":I
    .end local p2    # "rangesStart":I
    .restart local v1    # "i":I
    .restart local v2    # "rangesStart":I
    :cond_1
    move p2, v2

    #@22
    .end local v2    # "rangesStart":I
    .restart local p2    # "rangesStart":I
    goto :goto_0
.end method

.method static sortsTertiaryUpperCaseFirst(I)Z
    .locals 2
    .param p0, "options"    # I

    #@0
    .prologue
    .line 423
    and-int/lit16 v0, p0, 0x700

    #@2
    const/16 v1, 0x300

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method


# virtual methods
.method aliasReordering(Landroid/icu/impl/coll/CollationData;[II[B)V
    .locals 10
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "codesAndRanges"    # [I
    .param p3, "codesLength"    # I
    .param p4, "table"    # [B

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const v8, 0xffff

    #@4
    const/4 v5, 0x1

    #@5
    const/4 v6, 0x0

    #@6
    .line 135
    array-length v7, p2

    #@7
    if-ne p3, v7, :cond_1

    #@9
    .line 136
    move-object v0, p2

    #@a
    .line 142
    .local v0, "codes":[I
    :goto_0
    move v4, p3

    #@b
    .line 143
    .local v4, "rangesStart":I
    array-length v3, p2

    #@c
    .line 144
    .local v3, "rangesLimit":I
    sub-int v2, v3, v4

    #@e
    .line 145
    .local v2, "rangesLength":I
    if-eqz p4, :cond_0

    #@10
    .line 146
    if-nez v2, :cond_2

    #@12
    .line 147
    invoke-static {p4}, Landroid/icu/impl/coll/CollationSettings;->reorderTableHasSplitBytes([B)Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_3

    #@18
    .line 175
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    #@1b
    .line 133
    return-void

    #@1c
    .line 139
    .end local v0    # "codes":[I
    .end local v2    # "rangesLength":I
    .end local v3    # "rangesLimit":I
    .end local v4    # "rangesStart":I
    :cond_1
    new-array v0, p3, [I

    #@1e
    .line 140
    .restart local v0    # "codes":[I
    invoke-static {p2, v6, v0, v6, p3}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    goto :goto_0

    #@22
    .line 148
    .restart local v2    # "rangesLength":I
    .restart local v3    # "rangesLimit":I
    .restart local v4    # "rangesStart":I
    :cond_2
    const/4 v7, 0x2

    #@23
    if-lt v2, v7, :cond_0

    #@25
    .line 150
    aget v7, p2, v4

    #@27
    and-int/2addr v7, v8

    #@28
    if-nez v7, :cond_0

    #@2a
    .line 151
    add-int/lit8 v7, v3, -0x1

    #@2c
    aget v7, p2, v7

    #@2e
    and-int/2addr v7, v8

    #@2f
    if-eqz v7, :cond_0

    #@31
    .line 152
    :cond_3
    iput-object p4, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    #@33
    .line 153
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@35
    .line 156
    move v1, v4

    #@36
    .line 157
    .local v1, "firstSplitByteRangeIndex":I
    :goto_1
    if-ge v1, v3, :cond_4

    #@38
    .line 158
    aget v7, p2, v1

    #@3a
    const/high16 v8, 0xff0000

    #@3c
    and-int/2addr v7, v8

    #@3d
    if-nez v7, :cond_4

    #@3f
    .line 160
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_1

    #@42
    .line 162
    :cond_4
    if-ne v1, v3, :cond_7

    #@44
    .line 163
    sget-boolean v7, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    #@46
    if-nez v7, :cond_6

    #@48
    invoke-static {p4}, Landroid/icu/impl/coll/CollationSettings;->reorderTableHasSplitBytes([B)Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_5

    #@4e
    :goto_2
    if-nez v6, :cond_6

    #@50
    new-instance v5, Ljava/lang/AssertionError;

    #@52
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@55
    throw v5

    #@56
    :cond_5
    move v6, v5

    #@57
    goto :goto_2

    #@58
    .line 164
    :cond_6
    const-wide/16 v6, 0x0

    #@5a
    iput-wide v6, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@5c
    .line 165
    iput-object v9, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    #@5e
    .line 172
    :goto_3
    return-void

    #@5f
    .line 167
    :cond_7
    sget-boolean v7, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    #@61
    if-nez v7, :cond_9

    #@63
    aget v7, p2, v1

    #@65
    ushr-int/lit8 v7, v7, 0x18

    #@67
    aget-byte v7, p4, v7

    #@69
    if-nez v7, :cond_8

    #@6b
    :goto_4
    if-nez v5, :cond_9

    #@6d
    new-instance v5, Ljava/lang/AssertionError;

    #@6f
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@72
    throw v5

    #@73
    :cond_8
    move v5, v6

    #@74
    goto :goto_4

    #@75
    .line 168
    :cond_9
    add-int/lit8 v5, v3, -0x1

    #@77
    aget v5, p2, v5

    #@79
    int-to-long v6, v5

    #@7a
    const-wide v8, 0xffff0000L

    #@7f
    and-long/2addr v6, v8

    #@80
    iput-wide v6, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@82
    .line 170
    sub-int v5, v3, v1

    #@84
    .line 169
    invoke-direct {p0, p2, v1, v5}, Landroid/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    #@87
    goto :goto_3
.end method

.method public clone()Landroid/icu/impl/coll/CollationSettings;
    .locals 2

    #@0
    .prologue
    .line 95
    invoke-super {p0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@6
    .line 98
    .local v0, "newSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, [C

    #@e
    iput-object v1, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@10
    .line 99
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/icu/impl/coll/SharedObject;
    .locals 1

    #@0
    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->clone()Landroid/icu/impl/coll/CollationSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copyReorderingFrom(Landroid/icu/impl/coll/CollationSettings;)V
    .locals 2
    .param p1, "other"    # Landroid/icu/impl/coll/CollationSettings;

    #@0
    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 262
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    #@9
    .line 263
    return-void

    #@a
    .line 265
    :cond_0
    iget-wide v0, p1, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@c
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@e
    .line 266
    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    #@10
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    #@12
    .line 267
    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    #@14
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    #@16
    .line 268
    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@18
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@1a
    .line 260
    return-void
.end method

.method public dontCheckFCD()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 427
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 104
    if-nez p1, :cond_0

    #@3
    return v6

    #@4
    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    return v6

    #@13
    :cond_1
    move-object v0, p1

    #@14
    .line 106
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@16
    .line 107
    .local v0, "o":Landroid/icu/impl/coll/CollationSettings;
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@18
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@1a
    if-eq v1, v2, :cond_2

    #@1c
    return v6

    #@1d
    .line 108
    :cond_2
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@1f
    and-int/lit8 v1, v1, 0xc

    #@21
    if-eqz v1, :cond_3

    #@23
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@25
    iget-wide v4, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@27
    cmp-long v1, v2, v4

    #@29
    if-eqz v1, :cond_3

    #@2b
    return v6

    #@2c
    .line 109
    :cond_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@2e
    iget-object v2, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@30
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_4

    #@36
    return v6

    #@37
    .line 110
    :cond_4
    const/4 v1, 0x1

    #@38
    return v1
.end method

.method public getAlternateHandling()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 384
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@3
    and-int/lit8 v1, v1, 0xc

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getCaseFirst()I
    .locals 1

    #@0
    .prologue
    .line 366
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    and-int/lit16 v0, v0, 0x300

    #@4
    return v0
.end method

.method public getFlag(I)Z
    .locals 2
    .param p1, "bit"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 351
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@3
    and-int/2addr v1, p1

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public getMaxVariable()I
    .locals 1

    #@0
    .prologue
    .line 405
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    and-int/lit8 v0, v0, 0x70

    #@4
    shr-int/lit8 v0, v0, 0x4

    #@6
    return v0
.end method

.method public getStrength()I
    .locals 1

    #@0
    .prologue
    .line 334
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    invoke-static {v0}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method hasBackwardSecondary()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 431
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@3
    and-int/lit16 v1, v1, 0x800

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public hasReordering()Z
    .locals 1

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 115
    iget v2, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    shl-int/lit8 v0, v2, 0x8

    #@4
    .line 116
    .local v0, "h":I
    iget v2, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@6
    and-int/lit8 v2, v2, 0xc

    #@8
    if-eqz v2, :cond_0

    #@a
    int-to-long v2, v0

    #@b
    iget-wide v4, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@d
    xor-long/2addr v2, v4

    #@e
    long-to-int v0, v2

    #@f
    .line 117
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@11
    array-length v2, v2

    #@12
    xor-int/2addr v0, v2

    #@13
    .line 118
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@16
    array-length v2, v2

    #@17
    if-ge v1, v2, :cond_1

    #@19
    .line 119
    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@1b
    aget v2, v2, v1

    #@1d
    shl-int/2addr v2, v1

    #@1e
    xor-int/2addr v0, v2

    #@1f
    .line 118
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 121
    :cond_1
    return v0
.end method

.method public isNumeric()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 435
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public reorder(J)J
    .locals 7
    .param p1, "p"    # J

    #@0
    .prologue
    .line 284
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    #@2
    long-to-int v2, p1

    #@3
    ushr-int/lit8 v2, v2, 0x18

    #@5
    aget-byte v0, v1, v2

    #@7
    .line 285
    .local v0, "b":B
    if-nez v0, :cond_0

    #@9
    const-wide/16 v2, 0x1

    #@b
    cmp-long v1, p1, v2

    #@d
    if-gtz v1, :cond_1

    #@f
    .line 286
    :cond_0
    int-to-long v2, v0

    #@10
    const-wide/16 v4, 0xff

    #@12
    and-long/2addr v2, v4

    #@13
    const/16 v1, 0x18

    #@15
    shl-long/2addr v2, v1

    #@16
    const-wide/32 v4, 0xffffff

    #@19
    and-long/2addr v4, p1

    #@1a
    or-long/2addr v2, v4

    #@1b
    return-wide v2

    #@1c
    .line 288
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationSettings;->reorderEx(J)J

    #@1f
    move-result-wide v2

    #@20
    return-wide v2
.end method

.method public resetReordering()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 127
    iput-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    #@3
    .line 128
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@7
    .line 129
    iput-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    #@9
    .line 130
    sget-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    #@b
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@d
    .line 124
    return-void
.end method

.method public setAlternateHandlingDefault(I)V
    .locals 2
    .param p1, "defaultOptions"    # I

    #@0
    .prologue
    .line 379
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    and-int/lit8 v0, v1, -0xd

    #@4
    .line 380
    .local v0, "noAlternate":I
    and-int/lit8 v1, p1, 0xc

    #@6
    or-int/2addr v1, v0

    #@7
    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@9
    .line 378
    return-void
.end method

.method public setAlternateHandlingShifted(Z)V
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 370
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    and-int/lit8 v0, v1, -0xd

    #@4
    .line 371
    .local v0, "noAlternate":I
    if-eqz p1, :cond_0

    #@6
    .line 372
    or-int/lit8 v1, v0, 0x4

    #@8
    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@a
    .line 369
    :goto_0
    return-void

    #@b
    .line 374
    :cond_0
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@d
    goto :goto_0
.end method

.method public setCaseFirst(I)V
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 355
    sget-boolean v3, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    #@4
    if-nez v3, :cond_2

    #@6
    if-eqz p1, :cond_0

    #@8
    const/16 v3, 0x200

    #@a
    if-ne p1, v3, :cond_1

    #@c
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    #@e
    new-instance v1, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v1

    #@14
    :cond_1
    const/16 v3, 0x300

    #@16
    if-eq p1, v3, :cond_0

    #@18
    move v1, v2

    #@19
    goto :goto_0

    #@1a
    .line 356
    :cond_2
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@1c
    and-int/lit16 v0, v1, -0x301

    #@1e
    .line 357
    .local v0, "noCaseFirst":I
    or-int v1, v0, p1

    #@20
    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@22
    .line 354
    return-void
.end method

.method public setCaseFirstDefault(I)V
    .locals 2
    .param p1, "defaultOptions"    # I

    #@0
    .prologue
    .line 361
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    and-int/lit16 v0, v1, -0x301

    #@4
    .line 362
    .local v0, "noCaseFirst":I
    and-int/lit16 v1, p1, 0x300

    #@6
    or-int/2addr v1, v0

    #@7
    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@9
    .line 360
    return-void
.end method

.method public setFlag(IZ)V
    .locals 2
    .param p1, "bit"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 339
    if-eqz p2, :cond_0

    #@2
    .line 340
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@7
    .line 338
    :goto_0
    return-void

    #@8
    .line 342
    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@e
    goto :goto_0
.end method

.method public setFlagDefault(II)V
    .locals 2
    .param p1, "bit"    # I
    .param p2, "defaultOptions"    # I

    #@0
    .prologue
    .line 347
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    and-int v1, p2, p1

    #@6
    or-int/2addr v0, v1

    #@7
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@9
    .line 346
    return-void
.end method

.method public setMaxVariable(II)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "defaultOptions"    # I

    #@0
    .prologue
    .line 388
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    and-int/lit8 v0, v1, -0x71

    #@4
    .line 389
    .local v0, "noMax":I
    packed-switch p1, :pswitch_data_0

    #@7
    .line 400
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "illegal maxVariable value "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 394
    :pswitch_0
    shl-int/lit8 v1, p1, 0x4

    #@23
    or-int/2addr v1, v0

    #@24
    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@26
    .line 387
    :goto_0
    return-void

    #@27
    .line 397
    :pswitch_1
    and-int/lit8 v1, p2, 0x70

    #@29
    or-int/2addr v1, v0

    #@2a
    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2c
    goto :goto_0

    #@2d
    .line 389
    nop

    #@2e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setReordering(Landroid/icu/impl/coll/CollationData;[I)V
    .locals 16
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "codes"    # [I

    #@0
    .prologue
    .line 179
    move-object/from16 v0, p2

    #@2
    array-length v2, v0

    #@3
    if-eqz v2, :cond_0

    #@5
    move-object/from16 v0, p2

    #@7
    array-length v2, v0

    #@8
    const/4 v3, 0x1

    #@9
    if-ne v2, v3, :cond_1

    #@b
    const/4 v2, 0x0

    #@c
    aget v2, p2, v2

    #@e
    const/16 v3, 0x67

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 180
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    #@15
    .line 181
    return-void

    #@16
    .line 183
    :cond_1
    new-instance v13, Landroid/icu/impl/coll/UVector32;

    #@18
    invoke-direct {v13}, Landroid/icu/impl/coll/UVector32;-><init>()V

    #@1b
    .line 184
    .local v13, "rangesList":Landroid/icu/impl/coll/UVector32;
    move-object/from16 v0, p1

    #@1d
    move-object/from16 v1, p2

    #@1f
    invoke-virtual {v0, v1, v13}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([ILandroid/icu/impl/coll/UVector32;)V

    #@22
    .line 185
    invoke-virtual {v13}, Landroid/icu/impl/coll/UVector32;->size()I

    #@25
    move-result v6

    #@26
    .line 186
    .local v6, "rangesLength":I
    if-nez v6, :cond_2

    #@28
    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    #@2b
    .line 188
    return-void

    #@2c
    .line 190
    :cond_2
    invoke-virtual {v13}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    #@2f
    move-result-object v4

    #@30
    .line 195
    .local v4, "ranges":[I
    sget-boolean v2, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    #@32
    if-nez v2, :cond_4

    #@34
    const/4 v2, 0x2

    #@35
    if-lt v6, v2, :cond_3

    #@37
    const/4 v2, 0x1

    #@38
    :goto_0
    if-nez v2, :cond_4

    #@3a
    new-instance v2, Ljava/lang/AssertionError;

    #@3c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@3f
    throw v2

    #@40
    :cond_3
    const/4 v2, 0x0

    #@41
    goto :goto_0

    #@42
    .line 196
    :cond_4
    sget-boolean v2, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    #@44
    if-nez v2, :cond_6

    #@46
    const/4 v2, 0x0

    #@47
    aget v2, v4, v2

    #@49
    const v3, 0xffff

    #@4c
    and-int/2addr v2, v3

    #@4d
    if-nez v2, :cond_5

    #@4f
    add-int/lit8 v2, v6, -0x1

    #@51
    aget v2, v4, v2

    #@53
    const v3, 0xffff

    #@56
    and-int/2addr v2, v3

    #@57
    if-eqz v2, :cond_5

    #@59
    const/4 v2, 0x1

    #@5a
    :goto_1
    if-nez v2, :cond_6

    #@5c
    new-instance v2, Ljava/lang/AssertionError;

    #@5e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@61
    throw v2

    #@62
    :cond_5
    const/4 v2, 0x0

    #@63
    goto :goto_1

    #@64
    .line 197
    :cond_6
    add-int/lit8 v2, v6, -0x1

    #@66
    aget v2, v4, v2

    #@68
    int-to-long v2, v2

    #@69
    const-wide v14, 0xffff0000L

    #@6e
    and-long/2addr v2, v14

    #@6f
    move-object/from16 v0, p0

    #@71
    iput-wide v2, v0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    #@73
    .line 201
    const/16 v2, 0x100

    #@75
    new-array v7, v2, [B

    #@77
    .line 202
    .local v7, "table":[B
    const/4 v8, 0x0

    #@78
    .line 203
    .local v8, "b":I
    const/4 v9, -0x1

    #@79
    .line 204
    .local v9, "firstSplitByteRangeIndex":I
    const/4 v10, 0x0

    #@7a
    .local v10, "i":I
    :goto_2
    if-ge v10, v6, :cond_9

    #@7c
    .line 205
    aget v12, v4, v10

    #@7e
    .line 206
    .local v12, "pair":I
    ushr-int/lit8 v11, v12, 0x18

    #@80
    .line 207
    .local v11, "limit1":I
    :goto_3
    if-ge v8, v11, :cond_7

    #@82
    .line 208
    add-int v2, v8, v12

    #@84
    int-to-byte v2, v2

    #@85
    aput-byte v2, v7, v8

    #@87
    .line 209
    add-int/lit8 v8, v8, 0x1

    #@89
    goto :goto_3

    #@8a
    .line 212
    :cond_7
    const/high16 v2, 0xff0000

    #@8c
    and-int/2addr v2, v12

    #@8d
    if-eqz v2, :cond_8

    #@8f
    .line 213
    const/4 v2, 0x0

    #@90
    aput-byte v2, v7, v11

    #@92
    .line 214
    add-int/lit8 v8, v11, 0x1

    #@94
    .line 215
    if-gez v9, :cond_8

    #@96
    .line 216
    move v9, v10

    #@97
    .line 204
    :cond_8
    add-int/lit8 v10, v10, 0x1

    #@99
    goto :goto_2

    #@9a
    .line 220
    .end local v11    # "limit1":I
    .end local v12    # "pair":I
    :cond_9
    :goto_4
    const/16 v2, 0xff

    #@9c
    if-gt v8, v2, :cond_a

    #@9e
    .line 221
    int-to-byte v2, v8

    #@9f
    aput-byte v2, v7, v8

    #@a1
    .line 222
    add-int/lit8 v8, v8, 0x1

    #@a3
    goto :goto_4

    #@a4
    .line 225
    :cond_a
    if-gez v9, :cond_b

    #@a6
    .line 227
    const/4 v6, 0x0

    #@a7
    const/4 v5, 0x0

    #@a8
    .local v5, "rangesStart":I
    :goto_5
    move-object/from16 v2, p0

    #@aa
    move-object/from16 v3, p2

    #@ac
    .line 233
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/CollationSettings;->setReorderArrays([I[III[B)V

    #@af
    .line 178
    return-void

    #@b0
    .line 230
    .end local v5    # "rangesStart":I
    :cond_b
    move v5, v9

    #@b1
    .line 231
    .restart local v5    # "rangesStart":I
    sub-int/2addr v6, v9

    #@b2
    goto :goto_5
.end method

.method public setStrength(I)V
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    .line 310
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    const v2, -0xf001

    #@5
    and-int v0, v1, v2

    #@7
    .line 311
    .local v0, "noStrength":I
    sparse-switch p1, :sswitch_data_0

    #@a
    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "illegal strength value "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 317
    :sswitch_0
    shl-int/lit8 v1, p1, 0xc

    #@26
    or-int/2addr v1, v0

    #@27
    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@29
    .line 309
    return-void

    #@2a
    .line 311
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public setStrengthDefault(I)V
    .locals 3
    .param p1, "defaultOptions"    # I

    #@0
    .prologue
    .line 325
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@2
    const v2, -0xf001

    #@5
    and-int v0, v1, v2

    #@7
    .line 326
    .local v0, "noStrength":I
    const v1, 0xf000

    #@a
    and-int/2addr v1, p1

    #@b
    or-int/2addr v1, v0

    #@c
    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@e
    .line 324
    return-void
.end method
