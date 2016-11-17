.class public final Landroid/icu/util/CompactByteArray;
.super Ljava/lang/Object;
.source "CompactByteArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BLOCKCOUNT:I = 0x80

.field private static final BLOCKMASK:I = 0x7f

.field private static final BLOCKSHIFT:I = 0x7

.field private static final INDEXCOUNT:I = 0x200

.field private static final INDEXSHIFT:I = 0x9

.field public static final UNICODECOUNT:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field defaultValue:B

.field private hashes:[I

.field private indices:[C

.field private isCompact:Z

.field private values:[B


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/util/CompactByteArray;-><init>(B)V

    #@4
    .line 52
    return-void
.end method

.method public constructor <init>(B)V
    .locals 5
    .param p1, "defaultValue"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/high16 v2, 0x10000

    #@2
    const/4 v4, 0x0

    #@3
    const/16 v3, 0x200

    #@5
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 67
    new-array v1, v2, [B

    #@a
    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@c
    .line 68
    new-array v1, v3, [C

    #@e
    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@10
    .line 69
    new-array v1, v3, [I

    #@12
    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@14
    .line 70
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@17
    .line 71
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@19
    aput-byte p1, v1, v0

    #@1b
    .line 70
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 73
    :cond_0
    const/4 v0, 0x0

    #@1f
    :goto_1
    if-ge v0, v3, :cond_1

    #@21
    .line 74
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@23
    shl-int/lit8 v2, v0, 0x7

    #@25
    int-to-char v2, v2

    #@26
    aput-char v2, v1, v0

    #@28
    .line 75
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@2a
    aput v4, v1, v0

    #@2c
    .line 73
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 77
    :cond_1
    iput-boolean v4, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    #@31
    .line 79
    iput-byte p1, p0, Landroid/icu/util/CompactByteArray;->defaultValue:B

    #@33
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "indexArray"    # Ljava/lang/String;
    .param p2, "valueArray"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-static {p1}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    #@3
    move-result-object v0

    #@4
    .line 123
    invoke-static {p2}, Landroid/icu/impl/Utility;->RLEStringToByteArray(Ljava/lang/String;)[B

    #@7
    move-result-object v1

    #@8
    .line 122
    invoke-direct {p0, v0, v1}, Landroid/icu/util/CompactByteArray;-><init>([C[B)V

    #@b
    .line 120
    return-void
.end method

.method public constructor <init>([C[B)V
    .locals 4
    .param p1, "indexArray"    # [C
    .param p2, "newValues"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x200

    #@2
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 95
    array-length v2, p1

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "Index out of bounds."

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 97
    :cond_0
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@14
    .line 98
    aget-char v1, p1, v0

    #@16
    .line 99
    .local v1, "index":C
    if-ltz v1, :cond_1

    #@18
    array-length v2, p2

    #@19
    add-int/lit16 v2, v2, 0x80

    #@1b
    if-lt v1, v2, :cond_2

    #@1d
    .line 100
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v3, "Index out of bounds."

    #@22
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 102
    .end local v1    # "index":C
    :cond_3
    iput-object p1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@2b
    .line 103
    iput-object p2, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@2d
    .line 104
    const/4 v2, 0x1

    #@2e
    iput-boolean v2, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    #@30
    .line 92
    return-void
.end method

.method static final arrayRegionMatches([BI[BII)Z
    .locals 5
    .param p0, "source"    # [B
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [B
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 256
    add-int v2, p1, p4

    #@2
    .line 257
    .local v2, "sourceEnd":I
    sub-int v0, p3, p1

    #@4
    .line 258
    .local v0, "delta":I
    move v1, p1

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 259
    aget-byte v3, p0, v1

    #@9
    add-int v4, v1, v0

    #@b
    aget-byte v4, p2, v4

    #@d
    if-eq v3, v4, :cond_0

    #@f
    .line 260
    const/4 v3, 0x0

    #@10
    return v3

    #@11
    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 262
    :cond_1
    const/4 v3, 0x1

    #@15
    return v3
.end method

.method private final blockTouched(I)Z
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 278
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@3
    aget v1, v1, p1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private expand()V
    .locals 6

    #@0
    .prologue
    const/high16 v4, 0x10000

    #@2
    const/16 v5, 0x200

    #@4
    .line 373
    iget-boolean v3, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 375
    new-array v3, v5, [I

    #@a
    iput-object v3, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@c
    .line 376
    new-array v1, v4, [B

    #@e
    .line 377
    .local v1, "tempArray":[B
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@11
    .line 378
    int-to-char v3, v0

    #@12
    invoke-virtual {p0, v3}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    #@15
    move-result v2

    #@16
    .line 379
    .local v2, "value":B
    aput-byte v2, v1, v0

    #@18
    .line 380
    shr-int/lit8 v3, v0, 0x7

    #@1a
    invoke-direct {p0, v3, v2}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    #@1d
    .line 377
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 382
    .end local v2    # "value":B
    :cond_0
    const/4 v0, 0x0

    #@21
    :goto_1
    if-ge v0, v5, :cond_1

    #@23
    .line 383
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@25
    shl-int/lit8 v4, v0, 0x7

    #@27
    int-to-char v4, v4

    #@28
    aput-char v4, v3, v0

    #@2a
    .line 382
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 385
    :cond_1
    const/4 v3, 0x0

    #@2e
    iput-object v3, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@30
    .line 386
    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@32
    .line 387
    const/4 v3, 0x0

    #@33
    iput-boolean v3, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    #@35
    .line 370
    .end local v0    # "i":I
    .end local v1    # "tempArray":[B
    :cond_2
    return-void
.end method

.method private final touchBlock(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@2
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@4
    aget v1, v1, p1

    #@6
    shl-int/lit8 v2, p2, 0x1

    #@8
    add-int/2addr v1, v2

    #@9
    or-int/lit8 v1, v1, 0x1

    #@b
    aput v1, v0, p1

    #@d
    .line 269
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 314
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/util/CompactByteArray;

    #@6
    .line 315
    .local v1, "other":Landroid/icu/util/CompactByteArray;
    iget-object v2, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@8
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [B

    #@e
    iput-object v2, v1, Landroid/icu/util/CompactByteArray;->values:[B

    #@10
    .line 316
    iget-object v2, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@12
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, [C

    #@18
    iput-object v2, v1, Landroid/icu/util/CompactByteArray;->indices:[C

    #@1a
    .line 317
    iget-object v2, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@1c
    if-eqz v2, :cond_0

    #@1e
    iget-object v2, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@20
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, [I

    #@26
    iput-object v2, v1, Landroid/icu/util/CompactByteArray;->hashes:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 318
    :cond_0
    return-object v1

    #@29
    .line 319
    .end local v1    # "other":Landroid/icu/util/CompactByteArray;
    :catch_0
    move-exception v0

    #@2a
    .line 320
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@2c
    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@2f
    throw v2
.end method

.method public compact()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 185
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/icu/util/CompactByteArray;->compact(Z)V

    #@4
    .line 184
    return-void
.end method

.method public compact(Z)V
    .locals 14
    .param p1, "exhaustive"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v13, 0x80

    #@2
    const/4 v12, 0x0

    #@3
    const v11, 0xffff

    #@6
    .line 196
    iget-boolean v9, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    #@8
    if-nez v9, :cond_5

    #@a
    .line 197
    const/4 v5, 0x0

    #@b
    .line 198
    .local v5, "limitCompacted":I
    const/4 v1, 0x0

    #@c
    .line 199
    .local v1, "iBlockStart":I
    const v2, 0xffff

    #@f
    .line 201
    .local v2, "iUntouched":C
    const/4 v0, 0x0

    #@10
    .end local v2    # "iUntouched":C
    .local v0, "i":I
    :goto_0
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@12
    array-length v9, v9

    #@13
    if-ge v0, v9, :cond_4

    #@15
    .line 202
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@17
    aput-char v11, v9, v0

    #@19
    .line 203
    invoke-direct {p0, v0}, Landroid/icu/util/CompactByteArray;->blockTouched(I)Z

    #@1c
    move-result v8

    #@1d
    .line 204
    .local v8, "touched":Z
    if-nez v8, :cond_1

    #@1f
    if-eq v2, v11, :cond_1

    #@21
    .line 208
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@23
    aput-char v2, v9, v0

    #@25
    .line 201
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@27
    add-int/lit16 v1, v1, 0x80

    #@29
    goto :goto_0

    #@2a
    .line 210
    :cond_1
    const/4 v4, 0x0

    #@2b
    .line 211
    .local v4, "jBlockStart":I
    const/4 v3, 0x0

    #@2c
    .line 212
    .local v3, "j":I
    const/4 v3, 0x0

    #@2d
    :goto_2
    if-ge v3, v5, :cond_2

    #@2f
    .line 214
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@31
    aget v9, v9, v0

    #@33
    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@35
    aget v10, v10, v3

    #@37
    if-ne v9, v10, :cond_3

    #@39
    .line 215
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@3b
    .line 216
    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@3d
    .line 215
    invoke-static {v9, v1, v10, v4, v13}, Landroid/icu/util/CompactByteArray;->arrayRegionMatches([BI[BII)Z

    #@40
    move-result v9

    #@41
    .line 214
    if-eqz v9, :cond_3

    #@43
    .line 217
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@45
    int-to-char v10, v4

    #@46
    aput-char v10, v9, v0

    #@48
    .line 221
    :cond_2
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@4a
    aget-char v9, v9, v0

    #@4c
    if-ne v9, v11, :cond_0

    #@4e
    .line 223
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@50
    .line 224
    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@52
    .line 223
    invoke-static {v9, v1, v10, v4, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@55
    .line 225
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@57
    int-to-char v10, v4

    #@58
    aput-char v10, v9, v0

    #@5a
    .line 226
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@5c
    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@5e
    aget v10, v10, v0

    #@60
    aput v10, v9, v3

    #@62
    .line 227
    add-int/lit8 v5, v5, 0x1

    #@64
    .line 229
    if-nez v8, :cond_0

    #@66
    .line 232
    int-to-char v2, v4

    #@67
    .local v2, "iUntouched":C
    goto :goto_1

    #@68
    .line 213
    .end local v2    # "iUntouched":C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@6a
    add-int/lit16 v4, v4, 0x80

    #@6c
    goto :goto_2

    #@6d
    .line 238
    .end local v3    # "j":I
    .end local v4    # "jBlockStart":I
    .end local v8    # "touched":Z
    :cond_4
    mul-int/lit16 v6, v5, 0x80

    #@6f
    .line 239
    .local v6, "newSize":I
    new-array v7, v6, [B

    #@71
    .line 240
    .local v7, "result":[B
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@73
    invoke-static {v9, v12, v7, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@76
    .line 241
    iput-object v7, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@78
    .line 242
    const/4 v9, 0x1

    #@79
    iput-boolean v9, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    #@7b
    .line 243
    const/4 v9, 0x0

    #@7c
    iput-object v9, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    #@7e
    .line 194
    .end local v0    # "i":I
    .end local v1    # "iBlockStart":I
    .end local v5    # "limitCompacted":I
    .end local v6    # "newSize":I
    .end local v7    # "result":[B
    :cond_5
    return-void
.end method

.method public elementAt(C)B
    .locals 3
    .param p1, "index"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@2
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@4
    shr-int/lit8 v2, p1, 0x7

    #@6
    aget-char v1, v1, v2

    #@8
    const v2, 0xffff

    #@b
    and-int/2addr v1, v2

    #@c
    .line 137
    and-int/lit8 v2, p1, 0x7f

    #@e
    .line 136
    add-int/2addr v1, v2

    #@f
    aget-byte v0, v0, v1

    #@11
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 334
    if-nez p1, :cond_0

    #@4
    return v4

    #@5
    .line 335
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 336
    return v5

    #@8
    .line 337
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    if-eq v2, v3, :cond_2

    #@12
    .line 338
    return v4

    #@13
    :cond_2
    move-object v1, p1

    #@14
    .line 339
    check-cast v1, Landroid/icu/util/CompactByteArray;

    #@16
    .line 340
    .local v1, "other":Landroid/icu/util/CompactByteArray;
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    const/high16 v2, 0x10000

    #@19
    if-ge v0, v2, :cond_4

    #@1b
    .line 342
    int-to-char v2, v0

    #@1c
    invoke-virtual {p0, v2}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    #@1f
    move-result v2

    #@20
    int-to-char v3, v0

    #@21
    invoke-virtual {v1, v3}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    #@24
    move-result v3

    #@25
    if-eq v2, v3, :cond_3

    #@27
    .line 343
    return v4

    #@28
    .line 340
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 345
    :cond_4
    return v5
.end method

.method public getIndexArray()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    #@2
    return-object v0
.end method

.method public getValueArray()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 355
    const/4 v2, 0x0

    #@1
    .line 356
    .local v2, "result":I
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@3
    array-length v3, v3

    #@4
    div-int/lit8 v3, v3, 0x10

    #@6
    const/4 v4, 0x3

    #@7
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    #@a
    move-result v1

    #@b
    .line 357
    .local v1, "increment":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@e
    array-length v3, v3

    #@f
    if-ge v0, v3, :cond_0

    #@11
    .line 358
    mul-int/lit8 v3, v2, 0x25

    #@13
    iget-object v4, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@15
    aget-byte v4, v4, v0

    #@17
    add-int v2, v3, v4

    #@19
    .line 357
    add-int/2addr v0, v1

    #@1a
    goto :goto_0

    #@1b
    .line 360
    :cond_0
    return v2
.end method

.method public setElementAt(CB)V
    .locals 1
    .param p1, "index"    # C
    .param p2, "value"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 152
    invoke-direct {p0}, Landroid/icu/util/CompactByteArray;->expand()V

    #@7
    .line 153
    :cond_0
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@9
    aput-byte p2, v0, p1

    #@b
    .line 154
    shr-int/lit8 v0, p1, 0x7

    #@d
    invoke-direct {p0, v0, p2}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    #@10
    .line 149
    return-void
.end method

.method public setElementAt(CCB)V
    .locals 2
    .param p1, "start"    # C
    .param p2, "end"    # C
    .param p3, "value"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 170
    iget-boolean v1, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 171
    invoke-direct {p0}, Landroid/icu/util/CompactByteArray;->expand()V

    #@7
    .line 173
    :cond_0
    move v0, p1

    #@8
    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    #@a
    .line 174
    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    #@c
    aput-byte p3, v1, v0

    #@e
    .line 175
    shr-int/lit8 v1, v0, 0x7

    #@10
    invoke-direct {p0, v1, p3}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    #@13
    .line 173
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 167
    :cond_1
    return-void
.end method
