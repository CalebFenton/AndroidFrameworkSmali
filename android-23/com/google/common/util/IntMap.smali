.class public Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;
    }
.end annotation


# instance fields
.field private higher:Ljava/util/Hashtable;

.field private lower:[Ljava/lang/Object;

.field private lowerCount:I

.field private maxKey:I

.field private maxLowerKey:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/16 v0, 0x10

    #@2
    .line 102
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>(I)V

    #@5
    .line 103
    return-void
.end method

.method constructor <init>(I)V
    .locals 4
    .param p1, "initialLowerBufferSize"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/high16 v2, -0x80000000

    #@3
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    const/16 v0, 0x10

    #@8
    .line 113
    .local v0, "lowerBufferSize":I
    if-gtz p1, :cond_0

    #@a
    .line 116
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    #@c
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@e
    .line 117
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@10
    .line 118
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    #@12
    .line 119
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    #@14
    .line 120
    return-void

    #@15
    :cond_0
    const/16 v1, 0x80

    #@17
    .line 114
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result v0

    #@1b
    goto :goto_0
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)I
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@0
    .prologue
    .line 23
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    #@2
    return v0
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method private static compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z
    .locals 8
    .param p0, "h1"    # Ljava/util/Hashtable;
    .param p1, "h2"    # Ljava/util/Hashtable;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 337
    if-eq p0, p1, :cond_1

    #@4
    .line 340
    if-nez p0, :cond_2

    #@6
    .line 341
    :cond_0
    return v6

    #@7
    .line 338
    :cond_1
    return v7

    #@8
    .line 340
    :cond_2
    if-eqz p1, :cond_0

    #@a
    .line 343
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    #@d
    move-result v4

    #@e
    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    #@11
    move-result v5

    #@12
    if-ne v4, v5, :cond_4

    #@14
    .line 347
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@17
    move-result-object v0

    #@18
    .line 348
    .local v0, "h1Keys":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_5

    #@1e
    .line 356
    return v7

    #@1f
    .line 344
    .end local v0    # "h1Keys":Ljava/util/Enumeration;
    :cond_4
    return v6

    #@20
    .line 349
    .restart local v0    # "h1Keys":Ljava/util/Enumeration;
    :cond_5
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    .line 350
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    .line 351
    .local v1, "h1Value":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    .line 352
    .local v2, "h2Value":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v4

    #@30
    if-nez v4, :cond_3

    #@32
    .line 353
    return v6
.end method

.method private compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .param p1, "lower1"    # [Ljava/lang/Object;
    .param p2, "lower2"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 312
    array-length v2, p1

    #@2
    array-length v3, p2

    #@3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@6
    move-result v1

    #@7
    .local v1, "min":I
    const/4 v0, 0x0

    #@8
    .line 314
    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    #@a
    .line 321
    array-length v2, p1

    #@b
    array-length v3, p2

    #@c
    if-gt v2, v3, :cond_6

    #@e
    .line 325
    array-length v2, p1

    #@f
    array-length v3, p2

    #@10
    if-lt v2, v3, :cond_8

    #@12
    .line 330
    :cond_0
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 315
    :cond_1
    aget-object v2, p1, v0

    #@16
    if-eqz v2, :cond_3

    #@18
    :cond_2
    aget-object v2, p1, v0

    #@1a
    if-nez v2, :cond_5

    #@1c
    .line 314
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 315
    :cond_3
    aget-object v2, p2, v0

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 317
    :cond_4
    return v4

    #@24
    .line 315
    :cond_5
    aget-object v2, p1, v0

    #@26
    aget-object v3, p2, v0

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_4

    #@2e
    goto :goto_1

    #@2f
    .line 322
    :cond_6
    move v0, v1

    #@30
    :goto_2
    array-length v2, p1

    #@31
    if-ge v0, v2, :cond_0

    #@33
    .line 323
    aget-object v2, p1, v0

    #@35
    if-nez v2, :cond_7

    #@37
    .line 322
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_2

    #@3a
    .line 323
    :cond_7
    return v4

    #@3b
    .line 326
    :cond_8
    move v0, v1

    #@3c
    :goto_3
    array-length v2, p2

    #@3d
    if-ge v0, v2, :cond_0

    #@3f
    .line 327
    aget-object v2, p2, v0

    #@41
    if-nez v2, :cond_9

    #@43
    .line 326
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_3

    #@46
    .line 327
    :cond_9
    return v4
.end method

.method private expandLowerIfNecessary(I)Z
    .locals 5
    .param p1, "key"    # I

    #@0
    .prologue
    const/16 v3, 0x80

    #@2
    const/4 v4, 0x0

    #@3
    .line 366
    if-lt p1, v3, :cond_1

    #@5
    .line 377
    :cond_0
    return v4

    #@6
    .line 366
    :cond_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@8
    array-length v2, v2

    #@9
    if-lt p1, v2, :cond_0

    #@b
    if-lez p1, :cond_0

    #@d
    .line 367
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@f
    array-length v1, v2

    #@10
    .line 369
    .local v1, "size":I
    :cond_2
    shl-int/lit8 v1, v1, 0x1

    #@12
    .line 370
    if-le v1, p1, :cond_2

    #@14
    .line 371
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v1

    #@18
    .line 372
    new-array v0, v1, [Ljava/lang/Object;

    #@1a
    .line 373
    .local v0, "newLower":[Ljava/lang/Object;
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@1c
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@1e
    array-length v3, v3

    #@1f
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@22
    .line 374
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@24
    .line 375
    const/4 v2, 0x1

    #@25
    return v2
.end method


# virtual methods
.method public clear()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/high16 v2, -0x80000000

    #@3
    const/4 v0, 0x0

    #@4
    .line 170
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@6
    array-length v1, v1

    #@7
    if-lt v0, v1, :cond_0

    #@9
    .line 173
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@b
    if-nez v1, :cond_1

    #@d
    .line 174
    :goto_1
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    #@f
    .line 175
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    #@11
    const/4 v1, 0x0

    #@12
    .line 176
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@14
    .line 177
    return-void

    #@15
    .line 171
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@17
    aput-object v3, v1, v0

    #@19
    .line 170
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 173
    :cond_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@1e
    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    #@21
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 297
    if-eq p0, p1, :cond_1

    #@4
    .line 300
    if-nez p1, :cond_2

    #@6
    .line 301
    :cond_0
    return v2

    #@7
    .line 298
    :cond_1
    return v1

    #@8
    .line 300
    :cond_2
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@a
    if-eqz v3, :cond_0

    #@c
    move-object v0, p1

    #@d
    .line 303
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    #@f
    .line 304
    .local v0, "peer":Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->size()I

    #@12
    move-result v3

    #@13
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->size()I

    #@16
    move-result v4

    #@17
    if-ne v3, v4, :cond_4

    #@19
    .line 307
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@1b
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@1d
    invoke-direct {p0, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_5

    #@23
    :goto_0
    move v1, v2

    #@24
    :cond_3
    return v1

    #@25
    .line 305
    :cond_4
    return v2

    #@26
    .line 307
    :cond_5
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@28
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@2a
    invoke-static {v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_3

    #@30
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 187
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 189
    :cond_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    #@7
    if-gt p1, v0, :cond_2

    #@9
    .line 191
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@b
    if-nez v0, :cond_3

    #@d
    .line 194
    return-object v1

    #@e
    .line 187
    :cond_1
    if-ltz p1, :cond_0

    #@10
    .line 188
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@12
    aget-object v0, v0, p1

    #@14
    return-object v0

    #@15
    .line 190
    :cond_2
    return-object v1

    #@16
    .line 192
    :cond_3
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@18
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .local v0, "hashCode":I
    const/4 v1, 0x0

    #@2
    .line 276
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@4
    array-length v3, v3

    #@5
    if-lt v1, v3, :cond_1

    #@7
    .line 284
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@9
    if-eqz v3, :cond_0

    #@b
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    #@10
    move-result v3

    #@11
    add-int/2addr v0, v3

    #@12
    .end local v0    # "hashCode":I
    :cond_0
    return v0

    #@13
    .line 277
    .restart local v0    # "hashCode":I
    :cond_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@15
    aget-object v2, v3, v1

    #@17
    .line 278
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_2

    #@19
    .line 276
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 279
    :cond_2
    mul-int/lit8 v3, v0, 0x1f

    #@1e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@21
    move-result v4

    #@22
    add-int/2addr v3, v4

    #@23
    add-int v0, v3, v1

    #@25
    goto :goto_1
.end method

.method public keys()Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;
    .locals 1

    #@0
    .prologue
    .line 137
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;

    #@2
    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;-><init>(Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;)V

    #@5
    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 209
    if-eqz p2, :cond_1

    #@2
    .line 213
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    #@4
    if-gt p1, v0, :cond_2

    #@6
    .line 216
    :goto_0
    if-gez p1, :cond_3

    #@8
    :cond_0
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->expandLowerIfNecessary(I)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_4

    #@e
    .line 226
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@10
    if-eqz v0, :cond_7

    #@12
    .line 229
    :goto_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@14
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 231
    :goto_2
    return-void

    #@1c
    .line 210
    :cond_1
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->remove(I)Ljava/lang/Object;

    #@1f
    .line 211
    return-void

    #@20
    .line 214
    :cond_2
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxKey:I

    #@22
    goto :goto_0

    #@23
    .line 216
    :cond_3
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@25
    array-length v0, v0

    #@26
    if-ge p1, v0, :cond_0

    #@28
    .line 217
    :cond_4
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    #@2a
    if-gt p1, v0, :cond_5

    #@2c
    .line 221
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@2e
    aget-object v0, v0, p1

    #@30
    if-eqz v0, :cond_6

    #@32
    .line 224
    :goto_3
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@34
    aput-object p2, v0, p1

    #@36
    goto :goto_2

    #@37
    .line 218
    :cond_5
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->maxLowerKey:I

    #@39
    .line 220
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@3b
    add-int/lit8 v0, v0, 0x1

    #@3d
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@3f
    goto :goto_3

    #@40
    .line 222
    :cond_6
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@42
    add-int/lit8 v0, v0, 0x1

    #@44
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@46
    goto :goto_3

    #@47
    .line 227
    :cond_7
    new-instance v0, Ljava/util/Hashtable;

    #@49
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@4c
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@4e
    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 243
    .local v0, "deleted":Ljava/lang/Object;
    if-gez p1, :cond_1

    #@4
    .line 249
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@6
    if-nez v1, :cond_3

    #@8
    .line 252
    .end local v0    # "deleted":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@9
    .line 243
    .restart local v0    # "deleted":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@b
    array-length v1, v1

    #@c
    if-ge p1, v1, :cond_0

    #@e
    .line 244
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@10
    aget-object v0, v1, p1

    #@12
    .line 245
    if-nez v0, :cond_2

    #@14
    .line 248
    :goto_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@16
    aput-object v2, v1, p1

    #@18
    goto :goto_0

    #@19
    .line 246
    :cond_2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@1b
    add-int/lit8 v1, v1, -0x1

    #@1d
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@1f
    goto :goto_1

    #@20
    .line 250
    :cond_3
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@22
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@6
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lowerCount:I

    #@10
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v2, "IntMap{lower:"

    #@5
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@9
    .line 383
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@b
    array-length v2, v2

    #@c
    if-lt v1, v2, :cond_0

    #@e
    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, ", higher:"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->higher:Ljava/util/Hashtable;

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, "}"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    return-object v2

    #@33
    .line 384
    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@35
    aget-object v2, v2, v1

    #@37
    if-nez v2, :cond_1

    #@39
    .line 383
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 385
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@3f
    const-string/jumbo v2, "=>"

    #@42
    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@45
    .line 387
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->lower:[Ljava/lang/Object;

    #@47
    aget-object v2, v2, v1

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@4c
    const-string/jumbo v2, ", "

    #@4f
    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@52
    goto :goto_1
.end method
