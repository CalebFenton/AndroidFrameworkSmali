.class public final Landroid/icu/impl/coll/CollationSettings;
.super Landroid/icu/impl/coll/SharedObject;
.source "CollationSettings.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist ALTERNATE_MASK:I = 0xc

.field public static final blacklist BACKWARD_SECONDARY:I = 0x800

.field public static final blacklist CASE_FIRST:I = 0x200

.field public static final blacklist CASE_FIRST_AND_UPPER_MASK:I = 0x300

.field public static final blacklist CASE_LEVEL:I = 0x400

.field public static final blacklist CHECK_FCD:I = 0x1

.field private static final blacklist EMPTY_INT_ARRAY:[I

.field static final blacklist MAX_VARIABLE_MASK:I = 0x70

.field static final blacklist MAX_VARIABLE_SHIFT:I = 0x4

.field static final blacklist MAX_VAR_CURRENCY:I = 0x3

.field static final blacklist MAX_VAR_PUNCT:I = 0x1

.field static final blacklist MAX_VAR_SPACE:I = 0x0

.field static final blacklist MAX_VAR_SYMBOL:I = 0x2

.field public static final blacklist NUMERIC:I = 0x2

.field static final blacklist SHIFTED:I = 0x4

.field static final blacklist STRENGTH_MASK:I = 0xf000

.field static final blacklist STRENGTH_SHIFT:I = 0xc

.field static final blacklist UPPER_FIRST:I = 0x100


# instance fields
.field public blacklist fastLatinOptions:I

.field public blacklist fastLatinPrimaries:[C

.field blacklist minHighNoReorder:J

.field public blacklist options:I

.field public blacklist reorderCodes:[I

.field blacklist reorderRanges:[J

.field public blacklist reorderTable:[B

.field public blacklist variableTop:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    nop

    .line 482
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Landroid/icu/impl/coll/SharedObject;-><init>()V

    .line 441
    const/16 v0, 0x2010

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 475
    sget-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    .line 485
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    .line 488
    const/16 v0, 0x180

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    .line 95
    return-void
.end method

.method static blacklist getStrength(I)I
    .registers 2
    .param p0, "options"    # I

    .line 332
    shr-int/lit8 v0, p0, 0xc

    return v0
.end method

.method static blacklist getTertiaryMask(I)I
    .registers 2
    .param p0, "options"    # I

    .line 418
    invoke-static {p0}, Landroid/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 419
    const v0, 0xff3f

    goto :goto_c

    :cond_a
    const/16 v0, 0x3f3f

    .line 418
    :goto_c
    return v0
.end method

.method static blacklist isTertiaryWithCaseBits(I)Z
    .registers 3
    .param p0, "options"    # I

    .line 414
    and-int/lit16 v0, p0, 0x600

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist reorderEx(J)J
    .registers 11
    .param p1, "p"    # J

    .line 295
    nop

    .line 296
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    return-wide p1

    .line 299
    :cond_8
    const-wide/32 v0, 0xffff

    or-long/2addr v0, p1

    .line 301
    .local v0, "q":J
    const/4 v2, 0x0

    .line 302
    .local v2, "i":I
    :goto_d
    iget-object v3, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    aget-wide v3, v3, v2

    move-wide v5, v3

    .local v5, "r":J
    cmp-long v3, v0, v3

    if-ltz v3, :cond_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 303
    :cond_19
    long-to-int v3, v5

    int-to-short v3, v3

    int-to-long v3, v3

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private static blacklist reorderTableHasSplitBytes([B)Z
    .registers 3
    .param p0, "table"    # [B

    .line 276
    nop

    .line 277
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x100

    if-ge v0, v1, :cond_f

    .line 278
    aget-byte v1, p0, v0

    if-nez v1, :cond_c

    .line 279
    const/4 v1, 0x1

    return v1

    .line 277
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 282
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setReorderArrays([I[III[B)V
    .registers 6
    .param p1, "codes"    # [I
    .param p2, "ranges"    # [I
    .param p3, "rangesStart"    # I
    .param p4, "rangesLength"    # I
    .param p5, "table"    # [B

    .line 241
    if-nez p1, :cond_4

    .line 242
    sget-object p1, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    .line 244
    :cond_4
    nop

    .line 245
    iput-object p5, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 246
    iput-object p1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    .line 247
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    .line 248
    return-void
.end method

.method private blacklist setReorderRanges([III)V
    .registers 12
    .param p1, "ranges"    # [I
    .param p2, "rangesStart"    # I
    .param p3, "rangesLength"    # I

    .line 251
    if-nez p3, :cond_6

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    goto :goto_1f

    .line 254
    :cond_6
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "rangesStart":I
    .local v3, "rangesStart":I
    aget p2, p1, p2

    int-to-long v4, p2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 258
    if-lt v2, p3, :cond_20

    move p2, v3

    .line 260
    .end local v2    # "i":I
    .end local v3    # "rangesStart":I
    .restart local p2    # "rangesStart":I
    :goto_1f
    return-void

    .line 258
    .end local p2    # "rangesStart":I
    .restart local v2    # "i":I
    .restart local v3    # "rangesStart":I
    :cond_20
    move v0, v2

    move p2, v3

    goto :goto_b
.end method

.method static blacklist sortsTertiaryUpperCaseFirst(I)Z
    .registers 3
    .param p0, "options"    # I

    .line 425
    and-int/lit16 v0, p0, 0x700

    const/16 v1, 0x300

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method blacklist aliasReordering(Landroid/icu/impl/coll/CollationData;[II[B)V
    .registers 14
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "codesAndRanges"    # [I
    .param p3, "codesLength"    # I
    .param p4, "table"    # [B

    .line 139
    array-length v0, p2

    if-ne p3, v0, :cond_5

    .line 140
    move-object v0, p2

    .local v0, "codes":[I
    goto :goto_9

    .line 142
    .end local v0    # "codes":[I
    :cond_5
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 144
    .restart local v0    # "codes":[I
    :goto_9
    move v1, p3

    .line 145
    .local v1, "rangesStart":I
    array-length v2, p2

    .line 146
    .local v2, "rangesLimit":I
    sub-int v3, v2, v1

    .line 147
    .local v3, "rangesLength":I
    if-eqz p4, :cond_5b

    if-nez v3, :cond_18

    .line 149
    invoke-static {p4}, Landroid/icu/impl/coll/CollationSettings;->reorderTableHasSplitBytes([B)Z

    move-result v4

    if-nez v4, :cond_5b

    :goto_17
    goto :goto_2b

    :cond_18
    const/4 v4, 0x2

    if-lt v3, v4, :cond_5b

    aget v4, p2, v1

    const v5, 0xffff

    and-int/2addr v4, v5

    if-nez v4, :cond_5b

    add-int/lit8 v4, v2, -0x1

    aget v4, p2, v4

    and-int/2addr v4, v5

    if-eqz v4, :cond_5b

    goto :goto_17

    .line 154
    :goto_2b
    iput-object p4, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 155
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    .line 158
    move v4, v1

    .line 159
    .local v4, "firstSplitByteRangeIndex":I
    :goto_30
    if-ge v4, v2, :cond_3c

    aget v5, p2, v4

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    if-nez v5, :cond_3c

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 164
    :cond_3c
    if-ne v4, v2, :cond_47

    .line 165
    nop

    .line 166
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    .line 167
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    goto :goto_5a

    .line 169
    :cond_47
    nop

    .line 170
    add-int/lit8 v5, v2, -0x1

    aget v5, p2, v5

    int-to-long v5, v5

    const-wide v7, 0xffff0000L

    and-long/2addr v5, v7

    iput-wide v5, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    .line 171
    sub-int v5, v2, v4

    invoke-direct {p0, p2, v4, v5}, Landroid/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    .line 174
    :goto_5a
    return-void

    .line 177
    .end local v4    # "firstSplitByteRangeIndex":I
    :cond_5b
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    .line 178
    return-void
.end method

.method public blacklist clone()Landroid/icu/impl/coll/CollationSettings;
    .registers 3

    .line 99
    invoke-super {p0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    .line 102
    .local v0, "newSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    .line 103
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Landroid/icu/impl/coll/SharedObject;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->clone()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->clone()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copyReorderingFrom(Landroid/icu/impl/coll/CollationSettings;)V
    .registers 4
    .param p1, "other"    # Landroid/icu/impl/coll/CollationSettings;

    .line 263
    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v0

    if-nez v0, :cond_a

    .line 264
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    .line 265
    return-void

    .line 267
    :cond_a
    iget-wide v0, p1, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    .line 268
    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 269
    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    .line 270
    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    .line 271
    return-void
.end method

.method public blacklist dontCheckFCD()Z
    .registers 3

    .line 429
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 109
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 110
    :cond_13
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    .line 111
    .local v1, "o":Landroid/icu/impl/coll/CollationSettings;
    iget v2, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    iget v3, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    if-eq v2, v3, :cond_1d

    return v0

    .line 112
    :cond_1d
    iget v2, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_2c

    iget-wide v2, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    iget-wide v4, v1, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2c

    return v0

    .line 113
    :cond_2c
    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    iget-object v3, v1, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_37

    return v0

    .line 114
    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getAlternateHandling()Z
    .registers 2

    .line 386
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist getCaseFirst()I
    .registers 2

    .line 368
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x300

    return v0
.end method

.method public blacklist getFlag(I)Z
    .registers 3
    .param p1, "bit"    # I

    .line 353
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist getMaxVariable()I
    .registers 2

    .line 407
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x70

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getStrength()I
    .registers 2

    .line 336
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-static {v0}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v0

    return v0
.end method

.method blacklist hasBackwardSecondary()Z
    .registers 2

    .line 433
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasReordering()Z
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 119
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    shl-int/lit8 v0, v0, 0x8

    .line 120
    .local v0, "h":I
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_f

    int-to-long v1, v0

    iget-wide v3, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    xor-long/2addr v1, v3

    long-to-int v0, v1

    .line 121
    :cond_f
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v1, v1

    xor-int/2addr v0, v1

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_22

    .line 123
    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    aget v2, v2, v1

    shl-int/2addr v2, v1

    xor-int/2addr v0, v2

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 125
    .end local v1    # "i":I
    :cond_22
    return v0
.end method

.method public blacklist isNumeric()Z
    .registers 2

    .line 437
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist reorder(J)J
    .registers 10
    .param p1, "p"    # J

    .line 286
    iget-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    long-to-int v1, p1

    const/16 v2, 0x18

    ushr-int/2addr v1, v2

    aget-byte v0, v0, v1

    .line 287
    .local v0, "b":B
    if-nez v0, :cond_16

    const-wide/16 v3, 0x1

    cmp-long v1, p1, v3

    if-gtz v1, :cond_11

    goto :goto_16

    .line 290
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationSettings;->reorderEx(J)J

    move-result-wide v1

    return-wide v1

    .line 288
    :cond_16
    :goto_16
    int-to-long v3, v0

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    shl-long v1, v3, v2

    const-wide/32 v3, 0xffffff

    and-long/2addr v3, p1

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public blacklist resetReordering()V
    .registers 4

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    .line 132
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    .line 133
    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    .line 134
    sget-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    .line 135
    return-void
.end method

.method public blacklist setAlternateHandlingDefault(I)V
    .registers 4
    .param p1, "defaultOptions"    # I

    .line 381
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, -0xd

    .line 382
    .local v0, "noAlternate":I
    and-int/lit8 v1, p1, 0xc

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 383
    return-void
.end method

.method public blacklist setAlternateHandlingShifted(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 372
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, -0xd

    .line 373
    .local v0, "noAlternate":I
    if-eqz p1, :cond_b

    .line 374
    or-int/lit8 v1, v0, 0x4

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    goto :goto_d

    .line 376
    :cond_b
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 378
    :goto_d
    return-void
.end method

.method public blacklist setCaseFirst(I)V
    .registers 4
    .param p1, "value"    # I

    .line 357
    nop

    .line 358
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, -0x301

    .line 359
    .local v0, "noCaseFirst":I
    or-int v1, v0, p1

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 360
    return-void
.end method

.method public blacklist setCaseFirstDefault(I)V
    .registers 4
    .param p1, "defaultOptions"    # I

    .line 363
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, -0x301

    .line 364
    .local v0, "noCaseFirst":I
    and-int/lit16 v1, p1, 0x300

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 365
    return-void
.end method

.method public blacklist setFlag(IZ)V
    .registers 5
    .param p1, "bit"    # I
    .param p2, "value"    # Z

    .line 341
    if-eqz p2, :cond_8

    .line 342
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    goto :goto_e

    .line 344
    :cond_8
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 346
    :goto_e
    return-void
.end method

.method public blacklist setFlagDefault(II)V
    .registers 5
    .param p1, "bit"    # I
    .param p2, "defaultOptions"    # I

    .line 349
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    not-int v1, p1

    and-int/2addr v0, v1

    and-int v1, p2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 350
    return-void
.end method

.method public blacklist setMaxVariable(II)V
    .registers 7
    .param p1, "value"    # I
    .param p2, "defaultOptions"    # I

    .line 390
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, -0x71

    .line 391
    .local v0, "noMax":I
    packed-switch p1, :pswitch_data_2e

    .line 402
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal maxVariable value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :pswitch_20
    shl-int/lit8 v1, p1, 0x4

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 397
    goto :goto_2c

    .line 399
    :pswitch_26
    and-int/lit8 v1, p2, 0x70

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 400
    nop

    .line 404
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_26
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist setReordering(Landroid/icu/impl/coll/CollationData;[I)V
    .registers 14
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "codes"    # [I

    .line 181
    array-length v0, p2

    if-eqz v0, :cond_78

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    aget v0, p2, v1

    const/16 v2, 0x67

    if-ne v0, v2, :cond_11

    move-object v4, p2

    goto/16 :goto_79

    .line 185
    :cond_11
    new-instance v0, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector32;-><init>()V

    .line 186
    .local v0, "rangesList":Landroid/icu/impl/coll/UVector32;
    invoke-virtual {p1, p2, v0}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([ILandroid/icu/impl/coll/UVector32;)V

    .line 187
    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v2

    .line 188
    .local v2, "rangesLength":I
    if-nez v2, :cond_23

    .line 189
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    .line 190
    return-void

    .line 192
    :cond_23
    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v5

    .line 197
    .local v5, "ranges":[I
    nop

    .line 198
    nop

    .line 199
    add-int/lit8 v3, v2, -0x1

    aget v3, v5, v3

    int-to-long v3, v3

    const-wide v6, 0xffff0000L

    and-long/2addr v3, v6

    iput-wide v3, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    .line 203
    const/16 v3, 0x100

    new-array v8, v3, [B

    .line 204
    .local v8, "table":[B
    const/4 v3, 0x0

    .line 205
    .local v3, "b":I
    const/4 v4, -0x1

    .line 206
    .local v4, "firstSplitByteRangeIndex":I
    const/4 v6, 0x0

    move v9, v4

    .end local v4    # "firstSplitByteRangeIndex":I
    .local v6, "i":I
    .local v9, "firstSplitByteRangeIndex":I
    :goto_3e
    if-ge v6, v2, :cond_5d

    .line 207
    aget v4, v5, v6

    .line 208
    .local v4, "pair":I
    ushr-int/lit8 v7, v4, 0x18

    .line 209
    .local v7, "limit1":I
    :goto_44
    if-ge v3, v7, :cond_4e

    .line 210
    add-int v10, v3, v4

    int-to-byte v10, v10

    aput-byte v10, v8, v3

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 214
    :cond_4e
    const/high16 v10, 0xff0000

    and-int/2addr v10, v4

    if-eqz v10, :cond_5a

    .line 215
    aput-byte v1, v8, v7

    .line 216
    add-int/lit8 v3, v7, 0x1

    .line 217
    if-gez v9, :cond_5a

    .line 218
    move v9, v6

    .line 206
    .end local v4    # "pair":I
    .end local v7    # "limit1":I
    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_5d
    move v10, v3

    .line 222
    .end local v3    # "b":I
    .end local v6    # "i":I
    .local v10, "b":I
    :goto_5e
    const/16 v3, 0xff

    if-gt v10, v3, :cond_68

    .line 223
    int-to-byte v3, v10

    aput-byte v3, v8, v10

    .line 224
    add-int/lit8 v10, v10, 0x1

    goto :goto_5e

    .line 227
    :cond_68
    if-gez v9, :cond_6e

    .line 229
    move v2, v1

    move v6, v1

    move v7, v2

    .local v1, "rangesStart":I
    goto :goto_72

    .line 232
    .end local v1    # "rangesStart":I
    :cond_6e
    move v1, v9

    .line 233
    .restart local v1    # "rangesStart":I
    sub-int/2addr v2, v9

    move v6, v1

    move v7, v2

    .line 235
    .end local v1    # "rangesStart":I
    .end local v2    # "rangesLength":I
    .local v6, "rangesStart":I
    .local v7, "rangesLength":I
    :goto_72
    move-object v3, p0

    move-object v4, p2

    .end local p2    # "codes":[I
    .local v4, "codes":[I
    invoke-direct/range {v3 .. v8}, Landroid/icu/impl/coll/CollationSettings;->setReorderArrays([I[III[B)V

    .line 236
    return-void

    .line 181
    .end local v0    # "rangesList":Landroid/icu/impl/coll/UVector32;
    .end local v4    # "codes":[I
    .end local v5    # "ranges":[I
    .end local v6    # "rangesStart":I
    .end local v7    # "rangesLength":I
    .end local v8    # "table":[B
    .end local v9    # "firstSplitByteRangeIndex":I
    .end local v10    # "b":I
    .restart local p2    # "codes":[I
    :cond_78
    move-object v4, p2

    .line 182
    .end local p2    # "codes":[I
    .restart local v4    # "codes":[I
    :goto_79
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    .line 183
    return-void
.end method

.method public blacklist setStrength(I)V
    .registers 6
    .param p1, "value"    # I

    .line 312
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const v1, -0xf001

    and-int/2addr v0, v1

    .line 313
    .local v0, "noStrength":I
    sparse-switch p1, :sswitch_data_2a

    .line 322
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal strength value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :sswitch_22
    shl-int/lit8 v1, p1, 0xc

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 320
    nop

    .line 324
    return-void

    nop

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_22
        0x1 -> :sswitch_22
        0x2 -> :sswitch_22
        0x3 -> :sswitch_22
        0xf -> :sswitch_22
    .end sparse-switch
.end method

.method public blacklist setStrengthDefault(I)V
    .registers 4
    .param p1, "defaultOptions"    # I

    .line 327
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const v1, -0xf001

    and-int/2addr v0, v1

    .line 328
    .local v0, "noStrength":I
    const v1, 0xf000

    and-int/2addr v1, p1

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 329
    return-void
.end method
