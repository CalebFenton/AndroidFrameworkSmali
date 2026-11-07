.class public final Landroid/icu/util/CompactByteArray;
.super Ljava/lang/Object;
.source "CompactByteArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o BLOCKCOUNT:I = 0x80

.field private static final greylist-max-o BLOCKMASK:I = 0x7f

.field private static final greylist-max-o BLOCKSHIFT:I = 0x7

.field private static final greylist-max-o INDEXCOUNT:I = 0x200

.field private static final greylist-max-o INDEXSHIFT:I = 0x9

.field public static final greylist-max-o UNICODECOUNT:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field greylist-max-o defaultValue:B

.field private greylist-max-o hashes:[I

.field private greylist-max-o indices:[C

.field private greylist-max-o isCompact:Z

.field private greylist-max-o values:[B


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/CompactByteArray;-><init>(B)V

    .line 57
    return-void
.end method

.method public constructor greylist-max-o <init>(B)V
    .registers 7
    .param p1, "defaultValue"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/high16 v0, 0x10000

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 70
    const/16 v1, 0x200

    new-array v2, v1, [C

    iput-object v2, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    .line 71
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_1d

    .line 73
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aput-byte p1, v3, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 75
    :cond_1d
    const/4 v0, 0x0

    .end local v2    # "i":I
    .local v0, "i":I
    :goto_1e
    const/4 v2, 0x0

    if-ge v0, v1, :cond_2f

    .line 76
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    shl-int/lit8 v4, v0, 0x7

    int-to-char v4, v4

    aput-char v4, v3, v0

    .line 77
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aput v2, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 79
    :cond_2f
    iput-boolean v2, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    .line 81
    iput-byte p1, p0, Landroid/icu/util/CompactByteArray;->defaultValue:B

    .line 82
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "indexArray"    # Ljava/lang/String;
    .param p2, "valueArray"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-static {p1}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    move-result-object v0

    .line 125
    invoke-static {p2}, Landroid/icu/impl/Utility;->RLEStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 124
    invoke-direct {p0, v0, v1}, Landroid/icu/util/CompactByteArray;-><init>([C[B)V

    .line 126
    return-void
.end method

.method public constructor greylist-max-o <init>([C[B)V
    .registers 8
    .param p1, "indexArray"    # [C
    .param p2, "newValues"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    array-length v0, p1

    const-string v1, "Index out of bounds."

    const/16 v2, 0x200

    if-ne v0, v2, :cond_25

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_1d

    .line 100
    aget-char v3, p1, v0

    .line 101
    .local v3, "index":C
    array-length v4, p2

    add-int/lit16 v4, v4, 0x80

    if-ge v3, v4, :cond_17

    .line 99
    .end local v3    # "index":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 102
    .restart local v3    # "index":C
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .end local v3    # "index":C
    :cond_1d
    iput-object p1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    .line 105
    iput-object p2, p0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    .line 107
    return-void

    .line 98
    .end local v0    # "i":I
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final greylist-max-o arrayRegionMatches([BI[BII)Z
    .registers 10
    .param p0, "source"    # [B
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [B
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    .line 258
    add-int v0, p1, p4

    .line 259
    .local v0, "sourceEnd":I
    sub-int v1, p3, p1

    .line 260
    .local v1, "delta":I
    move v2, p1

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_14

    .line 261
    aget-byte v3, p0, v2

    add-int v4, v2, v1

    aget-byte v4, p2, v4

    if-eq v3, v4, :cond_11

    .line 262
    const/4 v3, 0x0

    return v3

    .line 260
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 264
    .end local v2    # "i":I
    :cond_14
    const/4 v2, 0x1

    return v2
.end method

.method private final greylist-max-o blockTouched(I)Z
    .registers 3
    .param p1, "i"    # I

    .line 280
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v0, v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o expand()V
    .registers 7

    .line 378
    iget-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-eqz v0, :cond_35

    .line 380
    const/16 v0, 0x200

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    .line 381
    const/high16 v1, 0x10000

    new-array v2, v1, [B

    .line 382
    .local v2, "tempArray":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_20

    .line 383
    int-to-char v4, v3

    invoke-virtual {p0, v4}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    move-result v4

    .line 384
    .local v4, "value":B
    aput-byte v4, v2, v3

    .line 385
    shr-int/lit8 v5, v3, 0x7

    invoke-direct {p0, v5, v4}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    .line 382
    .end local v4    # "value":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 387
    :cond_20
    const/4 v1, 0x0

    .end local v3    # "i":I
    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_2d

    .line 388
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    shl-int/lit8 v4, v1, 0x7

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 390
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 391
    iput-object v2, p0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    .line 394
    .end local v1    # "i":I
    .end local v2    # "tempArray":[B
    :cond_35
    return-void
.end method

.method private final greylist-max-o touchBlock(II)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 272
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v1, v1, p1

    shl-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 273
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CompactByteArray;

    .line 318
    .local v0, "other":Landroid/icu/util/CompactByteArray;
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 319
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Landroid/icu/util/CompactByteArray;->indices:[C

    .line 320
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/icu/util/CompactByteArray;->hashes:[I
    :try_end_28
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_28} :catch_29

    .line 321
    :cond_28
    return-object v0

    .line 322
    .end local v0    # "other":Landroid/icu/util/CompactByteArray;
    :catch_29
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o compact()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/util/CompactByteArray;->compact(Z)V

    .line 188
    return-void
.end method

.method public greylist-max-o compact(Z)V
    .registers 13
    .param p1, "exhaustive"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    iget-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-nez v0, :cond_7f

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "limitCompacted":I
    const/4 v1, 0x0

    .line 201
    .local v1, "iBlockStart":I
    const v2, 0xffff

    .line 203
    .local v2, "iUntouched":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    iget-object v4, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    array-length v4, v4

    if-ge v3, v4, :cond_6d

    .line 204
    iget-object v4, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    const v5, 0xffff

    aput-char v5, v4, v3

    .line 205
    invoke-direct {p0, v3}, Landroid/icu/util/CompactByteArray;->blockTouched(I)Z

    move-result v4

    .line 206
    .local v4, "touched":Z
    if-nez v4, :cond_23

    if-eq v2, v5, :cond_23

    .line 210
    iget-object v5, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    aput-char v2, v5, v3

    goto :goto_68

    .line 212
    :cond_23
    const/4 v6, 0x0

    .line 213
    .local v6, "jBlockStart":I
    const/4 v7, 0x0

    .line 214
    .local v7, "j":I
    const/4 v7, 0x0

    :goto_26
    const/16 v8, 0x80

    if-ge v7, v0, :cond_49

    .line 216
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v9, v9, v3

    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v10, v10, v7

    if-ne v9, v10, :cond_44

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 217
    invoke-static {v9, v1, v10, v6, v8}, Landroid/icu/util/CompactByteArray;->arrayRegionMatches([BI[BII)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 219
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    int-to-char v10, v6

    aput-char v10, v9, v3

    .line 220
    goto :goto_49

    .line 215
    :cond_44
    add-int/lit8 v7, v7, 0x1

    add-int/lit16 v6, v6, 0x80

    goto :goto_26

    .line 223
    :cond_49
    :goto_49
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    aget-char v9, v9, v3

    if-ne v9, v5, :cond_68

    .line 225
    iget-object v5, p0, Landroid/icu/util/CompactByteArray;->values:[B

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    invoke-static {v5, v1, v9, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget-object v5, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    int-to-char v8, v6

    aput-char v8, v5, v3

    .line 228
    iget-object v5, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    iget-object v8, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v8, v8, v3

    aput v8, v5, v7

    .line 229
    add-int/lit8 v0, v0, 0x1

    .line 231
    if-nez v4, :cond_68

    .line 234
    int-to-char v2, v6

    .line 203
    .end local v4    # "touched":Z
    .end local v6    # "jBlockStart":I
    .end local v7    # "j":I
    :cond_68
    :goto_68
    add-int/lit8 v3, v3, 0x1

    add-int/lit16 v1, v1, 0x80

    goto :goto_a

    .line 240
    .end local v3    # "i":I
    :cond_6d
    mul-int/lit16 v3, v0, 0x80

    .line 241
    .local v3, "newSize":I
    new-array v4, v3, [B

    .line 242
    .local v4, "result":[B
    iget-object v5, p0, Landroid/icu/util/CompactByteArray;->values:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iput-object v4, p0, Landroid/icu/util/CompactByteArray;->values:[B

    .line 244
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    .line 245
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    .line 247
    .end local v0    # "limitCompacted":I
    .end local v1    # "iBlockStart":I
    .end local v2    # "iUntouched":C
    .end local v3    # "newSize":I
    .end local v4    # "result":[B
    :cond_7f
    return-void
.end method

.method public greylist-max-o elementAt(C)B
    .registers 5
    .param p1, "index"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    shr-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    and-int/lit8 v2, p1, 0x7f

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 339
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 340
    return v1

    .line 341
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 342
    return v0

    .line 343
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/icu/util/CompactByteArray;

    .line 344
    .local v2, "other":Landroid/icu/util/CompactByteArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_2b

    .line 346
    int-to-char v4, v3

    invoke-virtual {p0, v4}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    move-result v4

    int-to-char v5, v3

    invoke-virtual {v2, v5}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    move-result v5

    if-eq v4, v5, :cond_28

    .line 347
    return v0

    .line 344
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 349
    .end local v3    # "i":I
    :cond_2b
    return v1
.end method

.method public greylist-max-o getIndexArray()[C
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    return-object v0
.end method

.method public greylist-max-o getValueArray()[B
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "result":I
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x10

    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 362
    .local v1, "increment":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->values:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1b

    .line 363
    mul-int/lit8 v3, v0, 0x25

    iget-object v4, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aget-byte v4, v4, v2

    add-int v0, v3, v4

    .line 362
    add-int/2addr v2, v1

    goto :goto_c

    .line 365
    .end local v2    # "i":I
    :cond_1b
    return v0
.end method

.method public greylist-max-o setElementAt(CB)V
    .registers 4
    .param p1, "index"    # C
    .param p2, "value"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    iget-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-eqz v0, :cond_7

    .line 154
    invoke-direct {p0}, Landroid/icu/util/CompactByteArray;->expand()V

    .line 155
    :cond_7
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aput-byte p2, v0, p1

    .line 156
    shr-int/lit8 v0, p1, 0x7

    invoke-direct {p0, v0, p2}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    .line 157
    return-void
.end method

.method public greylist-max-o setElementAt(CCB)V
    .registers 6
    .param p1, "start"    # C
    .param p2, "end"    # C
    .param p3, "value"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-eqz v0, :cond_7

    .line 173
    invoke-direct {p0}, Landroid/icu/util/CompactByteArray;->expand()V

    .line 175
    :cond_7
    move v0, p1

    .local v0, "i":I
    :goto_8
    if-gt v0, p2, :cond_16

    .line 176
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aput-byte p3, v1, v0

    .line 177
    shr-int/lit8 v1, v0, 0x7

    invoke-direct {p0, v1, p3}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 179
    :cond_16
    return-void
.end method
