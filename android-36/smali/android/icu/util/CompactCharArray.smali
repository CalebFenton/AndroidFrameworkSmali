.class public final Landroid/icu/util/CompactCharArray;
.super Ljava/lang/Object;
.source "CompactCharArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o BLOCKCOUNT:I = 0x20

.field static final greylist-max-o BLOCKMASK:I = 0x1f

.field public static final greylist-max-o BLOCKSHIFT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o INDEXCOUNT:I = 0x800

.field static final greylist-max-o INDEXSHIFT:I = 0xb

.field public static final greylist-max-o UNICODECOUNT:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field greylist-max-o defaultValue:C

.field private greylist-max-o hashes:[I

.field private greylist-max-o indices:[C

.field private greylist-max-o isCompact:Z

.field private greylist-max-o values:[C


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/CompactCharArray;-><init>(C)V

    .line 58
    return-void
.end method

.method public constructor greylist-max-o <init>(C)V
    .registers 7
    .param p1, "defaultValue"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/high16 v0, 0x10000

    new-array v1, v0, [C

    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    .line 71
    const/16 v1, 0x800

    new-array v2, v1, [C

    iput-object v2, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    .line 72
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    .line 73
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_1d

    .line 74
    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aput-char p1, v3, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 76
    :cond_1d
    const/4 v0, 0x0

    .end local v2    # "i":I
    .local v0, "i":I
    :goto_1e
    const/4 v2, 0x0

    if-ge v0, v1, :cond_2f

    .line 77
    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    shl-int/lit8 v4, v0, 0x5

    int-to-char v4, v4

    aput-char v4, v3, v0

    .line 78
    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    aput v2, v3, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 80
    :cond_2f
    iput-boolean v2, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    .line 82
    iput-char p1, p0, Landroid/icu/util/CompactCharArray;->defaultValue:C

    .line 83
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "indexArray"    # Ljava/lang/String;
    .param p2, "valueArray"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-static {p1}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    move-result-object v0

    .line 126
    invoke-static {p2}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    move-result-object v1

    .line 125
    invoke-direct {p0, v0, v1}, Landroid/icu/util/CompactCharArray;-><init>([C[C)V

    .line 127
    return-void
.end method

.method public constructor greylist-max-o <init>([C[C)V
    .registers 8
    .param p1, "indexArray"    # [C
    .param p2, "newValues"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    array-length v0, p1

    const-string v1, "Index out of bounds."

    const/16 v2, 0x800

    if-ne v0, v2, :cond_25

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_1d

    .line 101
    aget-char v3, p1, v0

    .line 102
    .local v3, "index":C
    array-length v4, p2

    add-int/lit8 v4, v4, 0x20

    if-ge v3, v4, :cond_17

    .line 100
    .end local v3    # "index":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 103
    .restart local v3    # "index":C
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v3    # "index":C
    :cond_1d
    iput-object p1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    .line 106
    iput-object p2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    .line 108
    return-void

    .line 99
    .end local v0    # "i":I
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o FindOverlappingPosition(I[CI)I
    .registers 7
    .param p1, "start"    # I
    .param p2, "tempValues"    # [C
    .param p3, "tempCount"    # I

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_17

    .line 263
    const/16 v1, 0x20

    .line 264
    .local v1, "currentCount":I
    add-int/lit8 v2, v0, 0x20

    if-le v2, p3, :cond_b

    .line 265
    sub-int v1, p3, v0

    .line 267
    :cond_b
    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    invoke-static {v2, p1, p2, v0, v1}, Landroid/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 268
    return v0

    .line 262
    .end local v1    # "currentCount":I
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    .end local v0    # "i":I
    :cond_17
    return p3
.end method

.method static final greylist-max-o arrayRegionMatches([CI[CII)Z
    .registers 10
    .param p0, "source"    # [C
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [C
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    .line 282
    add-int v0, p1, p4

    .line 283
    .local v0, "sourceEnd":I
    sub-int v1, p3, p1

    .line 284
    .local v1, "delta":I
    move v2, p1

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_14

    .line 285
    aget-char v3, p0, v2

    add-int v4, v2, v1

    aget-char v4, p2, v4

    if-eq v3, v4, :cond_11

    .line 286
    const/4 v3, 0x0

    return v3

    .line 284
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 288
    .end local v2    # "i":I
    :cond_14
    const/4 v2, 0x1

    return v2
.end method

.method private final greylist-max-o blockTouched(I)Z
    .registers 3
    .param p1, "i"    # I

    .line 304
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

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
    .registers 6

    .line 403
    iget-boolean v0, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    if-eqz v0, :cond_30

    .line 405
    const/16 v0, 0x800

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    .line 406
    const/high16 v1, 0x10000

    new-array v2, v1, [C

    .line 407
    .local v2, "tempArray":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1b

    .line 408
    int-to-char v4, v3

    invoke-virtual {p0, v4}, Landroid/icu/util/CompactCharArray;->elementAt(C)C

    move-result v4

    aput-char v4, v2, v3

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 410
    :cond_1b
    const/4 v1, 0x0

    .end local v3    # "i":I
    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_28

    .line 411
    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    shl-int/lit8 v4, v1, 0x5

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 413
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/CompactCharArray;->values:[C

    .line 414
    iput-object v2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    .line 417
    .end local v1    # "i":I
    .end local v2    # "tempArray":[C
    :cond_30
    return-void
.end method

.method private final greylist-max-o touchBlock(II)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "value"    # I

    .line 296
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    aget v1, v1, p1

    shl-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 297
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CompactCharArray;

    .line 342
    .local v0, "other":Landroid/icu/util/CompactCharArray;
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Landroid/icu/util/CompactCharArray;->values:[C

    .line 343
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Landroid/icu/util/CompactCharArray;->indices:[C

    .line 344
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/icu/util/CompactCharArray;->hashes:[I
    :try_end_28
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_28} :catch_29

    .line 345
    :cond_28
    return-object v0

    .line 346
    .end local v0    # "other":Landroid/icu/util/CompactCharArray;
    :catch_29
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o compact()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/CompactCharArray;->compact(Z)V

    .line 190
    return-void
.end method

.method public greylist-max-o compact(Z)V
    .registers 14
    .param p1, "exhaustive"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    iget-boolean v0, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    if-nez v0, :cond_90

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "iBlockStart":I
    const v1, 0xffff

    .line 203
    .local v1, "iUntouched":C
    const/4 v2, 0x0

    .line 205
    .local v2, "newSize":I
    if-eqz p1, :cond_10

    const/high16 v3, 0x10000

    new-array v3, v3, [C

    goto :goto_12

    :cond_10
    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->values:[C

    .line 207
    .local v3, "target":[C
    :goto_12
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    iget-object v5, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    array-length v5, v5

    if-ge v4, v5, :cond_82

    .line 208
    iget-object v5, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    const v6, 0xffff

    aput-char v6, v5, v4

    .line 209
    invoke-direct {p0, v4}, Landroid/icu/util/CompactCharArray;->blockTouched(I)Z

    move-result v5

    .line 210
    .local v5, "touched":Z
    if-nez v5, :cond_2c

    if-eq v1, v6, :cond_2c

    .line 214
    iget-object v6, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    aput-char v1, v6, v4

    goto :goto_7d

    .line 216
    :cond_2c
    const/4 v7, 0x0

    .line 218
    .local v7, "jBlockStart":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2e
    if-ge v8, v4, :cond_53

    .line 219
    iget-object v9, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    aget v9, v9, v4

    iget-object v10, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    aget v10, v10, v8

    if-ne v9, v10, :cond_4e

    iget-object v9, p0, Landroid/icu/util/CompactCharArray;->values:[C

    iget-object v10, p0, Landroid/icu/util/CompactCharArray;->values:[C

    .line 220
    const/16 v11, 0x20

    invoke-static {v9, v0, v10, v7, v11}, Landroid/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 222
    iget-object v9, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    iget-object v10, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    aget-char v10, v10, v8

    aput-char v10, v9, v4

    .line 218
    :cond_4e
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x20

    goto :goto_2e

    .line 225
    .end local v8    # "j":I
    :cond_53
    iget-object v8, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    aget-char v8, v8, v4

    if-ne v8, v6, :cond_7d

    .line 227
    if-eqz p1, :cond_60

    .line 229
    invoke-direct {p0, v0, v3, v2}, Landroid/icu/util/CompactCharArray;->FindOverlappingPosition(I[CI)I

    move-result v6

    .local v6, "dest":I
    goto :goto_61

    .line 233
    .end local v6    # "dest":I
    :cond_60
    move v6, v2

    .line 235
    .restart local v6    # "dest":I
    :goto_61
    add-int/lit8 v8, v6, 0x20

    .line 236
    .local v8, "limit":I
    if-le v8, v2, :cond_75

    .line 237
    move v9, v2

    .local v9, "j":I
    :goto_66
    if-ge v9, v8, :cond_74

    .line 238
    iget-object v10, p0, Landroid/icu/util/CompactCharArray;->values:[C

    add-int v11, v0, v9

    sub-int/2addr v11, v6

    aget-char v10, v10, v11

    aput-char v10, v3, v9

    .line 237
    add-int/lit8 v9, v9, 0x1

    goto :goto_66

    .line 240
    .end local v9    # "j":I
    :cond_74
    move v2, v8

    .line 242
    :cond_75
    iget-object v9, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    int-to-char v10, v6

    aput-char v10, v9, v4

    .line 243
    if-nez v5, :cond_7d

    .line 246
    int-to-char v1, v7

    .line 207
    .end local v5    # "touched":Z
    .end local v6    # "dest":I
    .end local v7    # "jBlockStart":I
    .end local v8    # "limit":I
    :cond_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x20

    goto :goto_13

    .line 252
    .end local v4    # "i":I
    :cond_82
    new-array v4, v2, [C

    .line 253
    .local v4, "result":[C
    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iput-object v4, p0, Landroid/icu/util/CompactCharArray;->values:[C

    .line 255
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    .line 256
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    .line 258
    .end local v0    # "iBlockStart":I
    .end local v1    # "iUntouched":C
    .end local v2    # "newSize":I
    .end local v3    # "target":[C
    .end local v4    # "result":[C
    :cond_90
    return-void
.end method

.method public greylist-max-o elementAt(C)C
    .registers 4
    .param p1, "index"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/lit8 v1, p1, 0x1f

    add-int/2addr v0, v1

    .line 141
    .local v0, "ix":I
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    array-length v1, v1

    if-lt v0, v1, :cond_15

    iget-char v1, p0, Landroid/icu/util/CompactCharArray;->defaultValue:C

    goto :goto_19

    :cond_15
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aget-char v1, v1, v0

    :goto_19
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 363
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 364
    return v1

    .line 365
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 366
    return v0

    .line 367
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/icu/util/CompactCharArray;

    .line 368
    .local v2, "other":Landroid/icu/util/CompactCharArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_2b

    .line 370
    int-to-char v4, v3

    invoke-virtual {p0, v4}, Landroid/icu/util/CompactCharArray;->elementAt(C)C

    move-result v4

    int-to-char v5, v3

    invoke-virtual {v2, v5}, Landroid/icu/util/CompactCharArray;->elementAt(C)C

    move-result v5

    if-eq v4, v5, :cond_28

    .line 371
    return v0

    .line 368
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 373
    .end local v3    # "i":I
    :cond_2b
    return v1
.end method

.method public greylist-max-o getIndexArray()[C
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    return-object v0
.end method

.method public greylist-max-o getValueArray()[C
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->values:[C

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "result":I
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    array-length v1, v1

    div-int/lit8 v1, v1, 0x10

    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 386
    .local v1, "increment":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->values:[C

    array-length v3, v3

    if-ge v2, v3, :cond_1b

    .line 387
    mul-int/lit8 v3, v0, 0x25

    iget-object v4, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aget-char v4, v4, v2

    add-int v0, v3, v4

    .line 386
    add-int/2addr v2, v1

    goto :goto_c

    .line 389
    .end local v2    # "i":I
    :cond_1b
    return v0
.end method

.method public greylist-max-o setElementAt(CC)V
    .registers 4
    .param p1, "index"    # C
    .param p2, "value"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-boolean v0, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    if-eqz v0, :cond_7

    .line 156
    invoke-direct {p0}, Landroid/icu/util/CompactCharArray;->expand()V

    .line 157
    :cond_7
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aput-char p2, v0, p1

    .line 158
    shr-int/lit8 v0, p1, 0x5

    invoke-direct {p0, v0, p2}, Landroid/icu/util/CompactCharArray;->touchBlock(II)V

    .line 159
    return-void
.end method

.method public greylist-max-o setElementAt(CCC)V
    .registers 6
    .param p1, "start"    # C
    .param p2, "end"    # C
    .param p3, "value"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    iget-boolean v0, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    if-eqz v0, :cond_7

    .line 175
    invoke-direct {p0}, Landroid/icu/util/CompactCharArray;->expand()V

    .line 177
    :cond_7
    move v0, p1

    .local v0, "i":I
    :goto_8
    if-gt v0, p2, :cond_16

    .line 178
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aput-char p3, v1, v0

    .line 179
    shr-int/lit8 v1, v0, 0x5

    invoke-direct {p0, v1, p3}, Landroid/icu/util/CompactCharArray;->touchBlock(II)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 181
    :cond_16
    return-void
.end method
