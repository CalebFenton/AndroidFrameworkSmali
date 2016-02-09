.class public final Landroid/icu/util/CompactCharArray;
.super Ljava/lang/Object;
.source "CompactCharArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final BLOCKCOUNT:I = 0x20

.field static final BLOCKMASK:I = 0x1f

.field public static final BLOCKSHIFT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final INDEXCOUNT:I = 0x800

.field static final INDEXSHIFT:I = 0xb

.field public static final UNICODECOUNT:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field defaultValue:C

.field private hashes:[I

.field private indices:[C

.field private isCompact:Z

.field private values:[C


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/icu/util/CompactCharArray;-><init>(C)V

    #@4
    .line 51
    return-void
.end method

.method public constructor <init>(C)V
    .locals 5
    .param p1, "defaultValue"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/high16 v2, 0x10000

    #@2
    const/4 v4, 0x0

    #@3
    const/16 v3, 0x800

    #@5
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 66
    new-array v1, v2, [C

    #@a
    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@c
    .line 67
    new-array v1, v3, [C

    #@e
    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@10
    .line 68
    new-array v1, v3, [I

    #@12
    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    #@14
    .line 69
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@17
    .line 70
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@19
    aput-char p1, v1, v0

    #@1b
    .line 69
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 72
    :cond_0
    const/4 v0, 0x0

    #@1f
    :goto_1
    if-ge v0, v3, :cond_1

    #@21
    .line 73
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@23
    shl-int/lit8 v2, v0, 0x5

    #@25
    int-to-char v2, v2

    #@26
    aput-char v2, v1, v0

    #@28
    .line 74
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    #@2a
    aput v4, v1, v0

    #@2c
    .line 72
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 76
    :cond_1
    iput-boolean v4, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    #@31
    .line 78
    iput-char p1, p0, Landroid/icu/util/CompactCharArray;->defaultValue:C

    #@33
    .line 63
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
    .line 121
    invoke-static {p1}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    #@3
    move-result-object v0

    #@4
    .line 122
    invoke-static {p2}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    #@7
    move-result-object v1

    #@8
    .line 121
    invoke-direct {p0, v0, v1}, Landroid/icu/util/CompactCharArray;-><init>([C[C)V

    #@b
    .line 119
    return-void
.end method

.method public constructor <init>([C[C)V
    .locals 4
    .param p1, "indexArray"    # [C
    .param p2, "newValues"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x800

    #@2
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 94
    array-length v2, p1

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "Index out of bounds."

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 96
    :cond_0
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@14
    .line 97
    aget-char v1, p1, v0

    #@16
    .line 98
    .local v1, "index":C
    if-ltz v1, :cond_1

    #@18
    array-length v2, p2

    #@19
    add-int/lit8 v2, v2, 0x20

    #@1b
    if-lt v1, v2, :cond_2

    #@1d
    .line 99
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v3, "Index out of bounds."

    #@22
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 96
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 101
    .end local v1    # "index":C
    :cond_3
    iput-object p1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@2b
    .line 102
    iput-object p2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@2d
    .line 103
    const/4 v2, 0x1

    #@2e
    iput-boolean v2, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    #@30
    .line 91
    return-void
.end method

.method private FindOverlappingPosition(I[CI)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "tempValues"    # [C
    .param p3, "tempCount"    # I

    #@0
    .prologue
    .line 258
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    #@3
    .line 259
    const/16 v0, 0x20

    #@5
    .line 260
    .local v0, "currentCount":I
    add-int/lit8 v2, v1, 0x20

    #@7
    if-le v2, p3, :cond_0

    #@9
    .line 261
    sub-int v0, p3, v1

    #@b
    .line 263
    :cond_0
    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@d
    invoke-static {v2, p1, p2, v1, v0}, Landroid/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 264
    return v1

    #@14
    .line 258
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 266
    .end local v0    # "currentCount":I
    :cond_2
    return p3
.end method

.method static final arrayRegionMatches([CI[CII)Z
    .locals 5
    .param p0, "source"    # [C
    .param p1, "sourceStart"    # I
    .param p2, "target"    # [C
    .param p3, "targetStart"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 278
    add-int v2, p1, p4

    #@2
    .line 279
    .local v2, "sourceEnd":I
    sub-int v0, p3, p1

    #@4
    .line 280
    .local v0, "delta":I
    move v1, p1

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@7
    .line 281
    aget-char v3, p0, v1

    #@9
    add-int v4, v1, v0

    #@b
    aget-char v4, p2, v4

    #@d
    if-eq v3, v4, :cond_0

    #@f
    .line 282
    const/4 v3, 0x0

    #@10
    return v3

    #@11
    .line 280
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 284
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
    .line 300
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

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
    .locals 5

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/16 v4, 0x800

    #@4
    .line 396
    iget-boolean v2, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    #@6
    if-eqz v2, :cond_2

    #@8
    .line 398
    new-array v2, v4, [I

    #@a
    iput-object v2, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    #@c
    .line 399
    new-array v1, v3, [C

    #@e
    .line 400
    .local v1, "tempArray":[C
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@11
    .line 401
    int-to-char v2, v0

    #@12
    invoke-virtual {p0, v2}, Landroid/icu/util/CompactCharArray;->elementAt(C)C

    #@15
    move-result v2

    #@16
    aput-char v2, v1, v0

    #@18
    .line 400
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 403
    :cond_0
    const/4 v0, 0x0

    #@1c
    :goto_1
    if-ge v0, v4, :cond_1

    #@1e
    .line 404
    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@20
    shl-int/lit8 v3, v0, 0x5

    #@22
    int-to-char v3, v3

    #@23
    aput-char v3, v2, v0

    #@25
    .line 403
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_1

    #@28
    .line 406
    :cond_1
    const/4 v2, 0x0

    #@29
    iput-object v2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@2b
    .line 407
    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@2d
    .line 408
    const/4 v2, 0x0

    #@2e
    iput-boolean v2, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    #@30
    .line 393
    .end local v0    # "i":I
    .end local v1    # "tempArray":[C
    :cond_2
    return-void
.end method

.method private final touchBlock(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    #@2
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

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
    .line 291
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 336
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/util/CompactCharArray;

    #@6
    .line 337
    .local v1, "other":Landroid/icu/util/CompactCharArray;
    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@8
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [C

    #@e
    iput-object v2, v1, Landroid/icu/util/CompactCharArray;->values:[C

    #@10
    .line 338
    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@12
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, [C

    #@18
    iput-object v2, v1, Landroid/icu/util/CompactCharArray;->indices:[C

    #@1a
    .line 339
    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    #@1c
    if-eqz v2, :cond_0

    #@1e
    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    #@20
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, [I

    #@26
    iput-object v2, v1, Landroid/icu/util/CompactCharArray;->hashes:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 340
    :cond_0
    return-object v1

    #@29
    .line 341
    .end local v1    # "other":Landroid/icu/util/CompactCharArray;
    :catch_0
    move-exception v0

    #@2a
    .line 342
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
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/icu/util/CompactCharArray;->compact(Z)V

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
    .line 196
    iget-boolean v11, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    #@2
    if-nez v11, :cond_9

    #@4
    .line 197
    const/4 v2, 0x0

    #@5
    .line 198
    .local v2, "iBlockStart":I
    const v3, 0xffff

    #@8
    .line 199
    .local v3, "iUntouched":C
    const/4 v7, 0x0

    #@9
    .line 201
    .local v7, "newSize":I
    if-eqz p1, :cond_1

    #@b
    const/high16 v11, 0x10000

    #@d
    new-array v9, v11, [C

    #@f
    .line 203
    .local v9, "target":[C
    :goto_0
    const/4 v1, 0x0

    #@10
    .end local v3    # "iUntouched":C
    .local v1, "i":I
    :goto_1
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@12
    array-length v11, v11

    #@13
    if-ge v1, v11, :cond_8

    #@15
    .line 204
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@17
    const v12, 0xffff

    #@1a
    aput-char v12, v11, v1

    #@1c
    .line 205
    invoke-direct {p0, v1}, Landroid/icu/util/CompactCharArray;->blockTouched(I)Z

    #@1f
    move-result v10

    #@20
    .line 206
    .local v10, "touched":Z
    if-nez v10, :cond_2

    #@22
    const v11, 0xffff

    #@25
    if-eq v3, v11, :cond_2

    #@27
    .line 210
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@29
    aput-char v3, v11, v1

    #@2b
    .line 203
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@2d
    add-int/lit8 v2, v2, 0x20

    #@2f
    goto :goto_1

    #@30
    .line 201
    .end local v1    # "i":I
    .end local v9    # "target":[C
    .end local v10    # "touched":Z
    .restart local v3    # "iUntouched":C
    :cond_1
    iget-object v9, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@32
    .restart local v9    # "target":[C
    goto :goto_0

    #@33
    .line 212
    .end local v3    # "iUntouched":C
    .restart local v1    # "i":I
    .restart local v10    # "touched":Z
    :cond_2
    const/4 v5, 0x0

    #@34
    .line 214
    .local v5, "jBlockStart":I
    const/4 v4, 0x0

    #@35
    .local v4, "j":I
    :goto_3
    if-ge v4, v1, :cond_4

    #@37
    .line 215
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    #@39
    aget v11, v11, v1

    #@3b
    iget-object v12, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    #@3d
    aget v12, v12, v4

    #@3f
    if-ne v11, v12, :cond_3

    #@41
    .line 216
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@43
    .line 217
    iget-object v12, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@45
    const/16 v13, 0x20

    #@47
    .line 216
    invoke-static {v11, v2, v12, v5, v13}, Landroid/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z

    #@4a
    move-result v11

    #@4b
    .line 215
    if-eqz v11, :cond_3

    #@4d
    .line 218
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@4f
    iget-object v12, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@51
    aget-char v12, v12, v4

    #@53
    aput-char v12, v11, v1

    #@55
    .line 214
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@57
    add-int/lit8 v5, v5, 0x20

    #@59
    goto :goto_3

    #@5a
    .line 221
    :cond_4
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@5c
    aget-char v11, v11, v1

    #@5e
    const v12, 0xffff

    #@61
    if-ne v11, v12, :cond_0

    #@63
    .line 223
    if-eqz p1, :cond_5

    #@65
    .line 225
    invoke-direct {p0, v2, v9, v7}, Landroid/icu/util/CompactCharArray;->FindOverlappingPosition(I[CI)I

    #@68
    move-result v0

    #@69
    .line 231
    .local v0, "dest":I
    :goto_4
    add-int/lit8 v6, v0, 0x20

    #@6b
    .line 232
    .local v6, "limit":I
    if-le v6, v7, :cond_7

    #@6d
    .line 233
    move v4, v7

    #@6e
    :goto_5
    if-ge v4, v6, :cond_6

    #@70
    .line 234
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@72
    add-int v12, v2, v4

    #@74
    sub-int/2addr v12, v0

    #@75
    aget-char v11, v11, v12

    #@77
    aput-char v11, v9, v4

    #@79
    .line 233
    add-int/lit8 v4, v4, 0x1

    #@7b
    goto :goto_5

    #@7c
    .line 229
    .end local v0    # "dest":I
    .end local v6    # "limit":I
    :cond_5
    move v0, v7

    #@7d
    .restart local v0    # "dest":I
    goto :goto_4

    #@7e
    .line 236
    .restart local v6    # "limit":I
    :cond_6
    move v7, v6

    #@7f
    .line 238
    :cond_7
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@81
    int-to-char v12, v0

    #@82
    aput-char v12, v11, v1

    #@84
    .line 239
    if-nez v10, :cond_0

    #@86
    .line 242
    int-to-char v3, v5

    #@87
    .local v3, "iUntouched":C
    goto :goto_2

    #@88
    .line 248
    .end local v0    # "dest":I
    .end local v3    # "iUntouched":C
    .end local v4    # "j":I
    .end local v5    # "jBlockStart":I
    .end local v6    # "limit":I
    .end local v10    # "touched":Z
    :cond_8
    new-array v8, v7, [C

    #@8a
    .line 249
    .local v8, "result":[C
    const/4 v11, 0x0

    #@8b
    const/4 v12, 0x0

    #@8c
    invoke-static {v9, v11, v8, v12, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@8f
    .line 250
    iput-object v8, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@91
    .line 251
    const/4 v11, 0x1

    #@92
    iput-boolean v11, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    #@94
    .line 252
    const/4 v11, 0x0

    #@95
    iput-object v11, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    #@97
    .line 194
    .end local v1    # "i":I
    .end local v2    # "iBlockStart":I
    .end local v7    # "newSize":I
    .end local v8    # "result":[C
    .end local v9    # "target":[C
    :cond_9
    return-void
.end method

.method public elementAt(C)C
    .locals 3
    .param p1, "index"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 135
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@2
    shr-int/lit8 v2, p1, 0x5

    #@4
    aget-char v1, v1, v2

    #@6
    const v2, 0xffff

    #@9
    and-int/2addr v1, v2

    #@a
    .line 136
    and-int/lit8 v2, p1, 0x1f

    #@c
    .line 135
    add-int v0, v1, v2

    #@e
    .line 137
    .local v0, "ix":I
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@10
    array-length v1, v1

    #@11
    if-lt v0, v1, :cond_0

    #@13
    iget-char v1, p0, Landroid/icu/util/CompactCharArray;->defaultValue:C

    #@15
    :goto_0
    return v1

    #@16
    :cond_0
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@18
    aget-char v1, v1, v0

    #@1a
    goto :goto_0
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
    .line 356
    if-nez p1, :cond_0

    #@4
    return v4

    #@5
    .line 357
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 358
    return v5

    #@8
    .line 359
    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/CompactCharArray;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    if-eq v2, v3, :cond_2

    #@12
    .line 360
    return v4

    #@13
    :cond_2
    move-object v1, p1

    #@14
    .line 361
    check-cast v1, Landroid/icu/util/CompactCharArray;

    #@16
    .line 362
    .local v1, "other":Landroid/icu/util/CompactCharArray;
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    const/high16 v2, 0x10000

    #@19
    if-ge v0, v2, :cond_4

    #@1b
    .line 364
    int-to-char v2, v0

    #@1c
    invoke-virtual {p0, v2}, Landroid/icu/util/CompactCharArray;->elementAt(C)C

    #@1f
    move-result v2

    #@20
    int-to-char v3, v0

    #@21
    invoke-virtual {v1, v3}, Landroid/icu/util/CompactCharArray;->elementAt(C)C

    #@24
    move-result v3

    #@25
    if-eq v2, v3, :cond_3

    #@27
    .line 365
    return v4

    #@28
    .line 362
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 367
    :cond_4
    return v5
.end method

.method public getIndexArray()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    #@2
    return-object v0
.end method

.method public getValueArray()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 377
    const/4 v2, 0x0

    #@1
    .line 378
    .local v2, "result":I
    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->values:[C

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
    .line 379
    .local v1, "increment":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@e
    array-length v3, v3

    #@f
    if-ge v0, v3, :cond_0

    #@11
    .line 380
    mul-int/lit8 v3, v2, 0x25

    #@13
    iget-object v4, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@15
    aget-char v4, v4, v0

    #@17
    add-int v2, v3, v4

    #@19
    .line 379
    add-int/2addr v0, v1

    #@1a
    goto :goto_0

    #@1b
    .line 382
    :cond_0
    return v2
.end method

.method public setElementAt(CC)V
    .locals 1
    .param p1, "index"    # C
    .param p2, "value"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 152
    invoke-direct {p0}, Landroid/icu/util/CompactCharArray;->expand()V

    #@7
    .line 153
    :cond_0
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@9
    aput-char p2, v0, p1

    #@b
    .line 154
    shr-int/lit8 v0, p1, 0x5

    #@d
    invoke-direct {p0, v0, p2}, Landroid/icu/util/CompactCharArray;->touchBlock(II)V

    #@10
    .line 149
    return-void
.end method

.method public setElementAt(CCC)V
    .locals 2
    .param p1, "start"    # C
    .param p2, "end"    # C
    .param p3, "value"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 170
    iget-boolean v1, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 171
    invoke-direct {p0}, Landroid/icu/util/CompactCharArray;->expand()V

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
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    #@c
    aput-char p3, v1, v0

    #@e
    .line 175
    shr-int/lit8 v1, v0, 0x5

    #@10
    invoke-direct {p0, v1, p3}, Landroid/icu/util/CompactCharArray;->touchBlock(II)V

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
