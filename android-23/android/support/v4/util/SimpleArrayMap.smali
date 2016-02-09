.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 208
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 209
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    #@5
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@7
    .line 210
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@9
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@b
    .line 211
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@e
    .line 208
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 218
    if-nez p1, :cond_0

    #@6
    .line 219
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    #@8
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@a
    .line 220
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@c
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@e
    .line 224
    :goto_0
    iput v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@10
    .line 217
    return-void

    #@11
    .line 222
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    #@14
    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Landroid/support/v4/util/SimpleArrayMap;

    #@0
    .prologue
    .line 231
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    #@3
    .line 232
    if-eqz p1, :cond_0

    #@5
    .line 233
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    #@8
    .line 230
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 4
    .param p1, "size"    # I

    #@0
    .prologue
    .line 138
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/16 v1, 0x8

    #@2
    if-ne p1, v1, :cond_2

    #@4
    .line 139
    const-class v2, Landroid/support/v4/util/ArrayMap;

    #@6
    monitor-enter v2

    #@7
    .line 140
    :try_start_0
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 141
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@d
    .line 142
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@f
    .line 143
    const/4 v1, 0x0

    #@10
    aget-object v1, v0, v1

    #@12
    check-cast v1, [Ljava/lang/Object;

    #@14
    sput-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@16
    .line 144
    const/4 v1, 0x1

    #@17
    aget-object v1, v0, v1

    #@19
    check-cast v1, [I

    #@1b
    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@1d
    .line 145
    const/4 v1, 0x0

    #@1e
    const/4 v3, 0x1

    #@1f
    aput-object v1, v0, v3

    #@21
    const/4 v1, 0x0

    #@22
    const/4 v3, 0x0

    #@23
    aput-object v1, v0, v3

    #@25
    .line 146
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@27
    add-int/lit8 v1, v1, -0x1

    #@29
    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v2

    #@2c
    .line 149
    return-void

    #@2d
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_0
    monitor-exit v2

    #@2e
    .line 168
    :cond_1
    new-array v1, p1, [I

    #@30
    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@32
    .line 169
    shl-int/lit8 v1, p1, 0x1

    #@34
    new-array v1, v1, [Ljava/lang/Object;

    #@36
    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@38
    .line 137
    return-void

    #@39
    .line 139
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit v2

    #@3b
    throw v1

    #@3c
    .line 152
    :cond_2
    const/4 v1, 0x4

    #@3d
    if-ne p1, v1, :cond_1

    #@3f
    .line 153
    const-class v2, Landroid/support/v4/util/ArrayMap;

    #@41
    monitor-enter v2

    #@42
    .line 154
    :try_start_1
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@44
    if-eqz v1, :cond_0

    #@46
    .line 155
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@48
    .line 156
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@4a
    .line 157
    const/4 v1, 0x0

    #@4b
    aget-object v1, v0, v1

    #@4d
    check-cast v1, [Ljava/lang/Object;

    #@4f
    sput-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@51
    .line 158
    const/4 v1, 0x1

    #@52
    aget-object v1, v0, v1

    #@54
    check-cast v1, [I

    #@56
    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@58
    .line 159
    const/4 v1, 0x0

    #@59
    const/4 v3, 0x1

    #@5a
    aput-object v1, v0, v3

    #@5c
    const/4 v1, 0x0

    #@5d
    const/4 v3, 0x0

    #@5e
    aput-object v1, v0, v3

    #@60
    .line 160
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    #@62
    add-int/lit8 v1, v1, -0x1

    #@64
    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@66
    monitor-exit v2

    #@67
    .line 163
    return-void

    #@68
    .line 153
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    #@69
    monitor-exit v2

    #@6a
    throw v1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 5
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    #@0
    .prologue
    const/16 v3, 0xa

    #@2
    const/4 v4, 0x2

    #@3
    .line 173
    array-length v1, p0

    #@4
    const/16 v2, 0x8

    #@6
    if-ne v1, v2, :cond_3

    #@8
    .line 174
    const-class v2, Landroid/support/v4/util/ArrayMap;

    #@a
    monitor-enter v2

    #@b
    .line 175
    :try_start_0
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 176
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object v1, p1, v3

    #@14
    .line 177
    const/4 v1, 0x1

    #@15
    aput-object p0, p1, v1

    #@17
    .line 178
    shl-int/lit8 v1, p2, 0x1

    #@19
    add-int/lit8 v0, v1, -0x1

    #@1b
    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    #@1d
    .line 179
    const/4 v1, 0x0

    #@1e
    aput-object v1, p1, v0

    #@20
    .line 178
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_0

    #@23
    .line 181
    :cond_0
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@25
    .line 182
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .end local v0    # "i":I
    :cond_1
    :goto_1
    monitor-exit v2

    #@2c
    .line 172
    :cond_2
    return-void

    #@2d
    .line 174
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1

    #@30
    .line 187
    :cond_3
    array-length v1, p0

    #@31
    const/4 v2, 0x4

    #@32
    if-ne v1, v2, :cond_2

    #@34
    .line 188
    const-class v2, Landroid/support/v4/util/ArrayMap;

    #@36
    monitor-enter v2

    #@37
    .line 189
    :try_start_1
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    #@39
    if-ge v1, v3, :cond_1

    #@3b
    .line 190
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@3d
    const/4 v3, 0x0

    #@3e
    aput-object v1, p1, v3

    #@40
    .line 191
    const/4 v1, 0x1

    #@41
    aput-object p0, p1, v1

    #@43
    .line 192
    shl-int/lit8 v1, p2, 0x1

    #@45
    add-int/lit8 v0, v1, -0x1

    #@47
    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    #@49
    .line 193
    const/4 v1, 0x0

    #@4a
    aput-object v1, p1, v0

    #@4c
    .line 192
    add-int/lit8 v0, v0, -0x1

    #@4e
    goto :goto_2

    #@4f
    .line 195
    :cond_4
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@51
    .line 196
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    #@53
    add-int/lit8 v1, v1, 0x1

    #@55
    sput v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@57
    goto :goto_1

    #@58
    .line 188
    .end local v0    # "i":I
    :catchall_1
    move-exception v1

    #@59
    monitor-exit v2

    #@5a
    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 241
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 242
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@7
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@9
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@b
    invoke-static {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@e
    .line 243
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    #@10
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@12
    .line 244
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@16
    .line 245
    iput v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@18
    .line 240
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 273
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 313
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 254
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@3
    array-length v2, v2

    #@4
    if-ge v2, p1, :cond_1

    #@6
    .line 255
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@8
    .line 256
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@a
    .line 257
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    #@d
    .line 258
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@f
    if-lez v2, :cond_0

    #@11
    .line 259
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@13
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@15
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18
    .line 260
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@1a
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@1c
    shl-int/lit8 v3, v3, 0x1

    #@1e
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    .line 262
    :cond_0
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@23
    invoke-static {v1, v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@26
    .line 253
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 532
    if-ne p0, p1, :cond_0

    #@4
    .line 533
    return v10

    #@5
    .line 535
    :cond_0
    instance-of v7, p1, Ljava/util/Map;

    #@7
    if-eqz v7, :cond_6

    #@9
    move-object v4, p1

    #@a
    .line 536
    check-cast v4, Ljava/util/Map;

    #@c
    .line 537
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    #@f
    move-result v7

    #@10
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@13
    move-result v8

    #@14
    if-eq v7, v8, :cond_1

    #@16
    .line 538
    return v9

    #@17
    .line 542
    :cond_1
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@1a
    if-ge v0, v7, :cond_5

    #@1c
    .line 543
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    .line 544
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@23
    move-result-object v5

    #@24
    .line 545
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    .line 546
    .local v6, "theirs":Ljava/lang/Object;
    if-nez v5, :cond_4

    #@2a
    .line 547
    if-nez v6, :cond_3

    #@2c
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_3

    #@32
    .line 542
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 548
    :cond_3
    return v9

    #@36
    .line 550
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    move-result v7

    #@3a
    if-nez v7, :cond_2

    #@3c
    .line 551
    return v9

    #@3d
    .line 556
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@3e
    .line 557
    .local v1, "ignored":Ljava/lang/ClassCastException;
    return v9

    #@3f
    .line 554
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    #@40
    .line 555
    .local v2, "ignored":Ljava/lang/NullPointerException;
    return v9

    #@41
    .line 559
    .end local v2    # "ignored":Ljava/lang/NullPointerException;
    :cond_5
    return v10

    #@42
    .line 561
    .end local v0    # "i":I
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    return v9
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 323
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 324
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@8
    shl-int/lit8 v2, v0, 0x1

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    aget-object v1, v1, v2

    #@e
    :goto_0
    return-object v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    #@0
    .prologue
    .line 569
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@2
    .line 570
    .local v1, "hashes":[I
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@4
    .line 571
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@5
    .line 572
    .local v3, "result":I
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    const/4 v5, 0x1

    #@7
    .local v5, "v":I
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@9
    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@b
    .line 573
    aget-object v6, v0, v5

    #@d
    .line 574
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    #@f
    if-nez v6, :cond_0

    #@11
    const/4 v7, 0x0

    #@12
    :goto_1
    xor-int/2addr v7, v8

    #@13
    add-int/2addr v3, v7

    #@14
    .line 572
    add-int/lit8 v2, v2, 0x1

    #@16
    add-int/lit8 v5, v5, 0x2

    #@18
    goto :goto_0

    #@19
    .line 574
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    #@1c
    move-result v7

    #@1d
    goto :goto_1

    #@1e
    .line 576
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    #@0
    .prologue
    .line 62
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2
    .line 65
    .local v0, "N":I
    if-nez v0, :cond_0

    #@4
    .line 66
    const/4 v4, -0x1

    #@5
    return v4

    #@6
    .line 69
    :cond_0
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@8
    invoke-static {v4, v0, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    #@b
    move-result v3

    #@c
    .line 72
    .local v3, "index":I
    if-gez v3, :cond_1

    #@e
    .line 73
    return v3

    #@f
    .line 77
    :cond_1
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@11
    shl-int/lit8 v5, v3, 0x1

    #@13
    aget-object v4, v4, v5

    #@15
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 78
    return v3

    #@1c
    .line 83
    :cond_2
    add-int/lit8 v1, v3, 0x1

    #@1e
    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@20
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@22
    aget v4, v4, v1

    #@24
    if-ne v4, p2, :cond_4

    #@26
    .line 84
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@28
    shl-int/lit8 v5, v1, 0x1

    #@2a
    aget-object v4, v4, v5

    #@2c
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_3

    #@32
    return v1

    #@33
    .line 83
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 88
    :cond_4
    add-int/lit8 v2, v3, -0x1

    #@38
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    #@3a
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@3c
    aget v4, v4, v2

    #@3e
    if-ne v4, p2, :cond_6

    #@40
    .line 89
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@42
    shl-int/lit8 v5, v2, 0x1

    #@44
    aget-object v4, v4, v5

    #@46
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_5

    #@4c
    return v2

    #@4d
    .line 88
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@4f
    goto :goto_1

    #@50
    .line 96
    :cond_6
    not-int v4, v1

    #@51
    return v4
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 283
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method indexOfNull()I
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 100
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@3
    .line 103
    .local v0, "N":I
    if-nez v0, :cond_0

    #@5
    .line 104
    const/4 v4, -0x1

    #@6
    return v4

    #@7
    .line 107
    :cond_0
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@9
    invoke-static {v4, v0, v5}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    #@c
    move-result v3

    #@d
    .line 110
    .local v3, "index":I
    if-gez v3, :cond_1

    #@f
    .line 111
    return v3

    #@10
    .line 115
    :cond_1
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@12
    shl-int/lit8 v5, v3, 0x1

    #@14
    aget-object v4, v4, v5

    #@16
    if-nez v4, :cond_2

    #@18
    .line 116
    return v3

    #@19
    .line 121
    :cond_2
    add-int/lit8 v1, v3, 0x1

    #@1b
    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@1d
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@1f
    aget v4, v4, v1

    #@21
    if-nez v4, :cond_4

    #@23
    .line 122
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@25
    shl-int/lit8 v5, v1, 0x1

    #@27
    aget-object v4, v4, v5

    #@29
    if-nez v4, :cond_3

    #@2b
    return v1

    #@2c
    .line 121
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 126
    :cond_4
    add-int/lit8 v2, v3, -0x1

    #@31
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    #@33
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@35
    aget v4, v4, v2

    #@37
    if-nez v4, :cond_6

    #@39
    .line 127
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@3b
    shl-int/lit8 v5, v2, 0x1

    #@3d
    aget-object v4, v4, v5

    #@3f
    if-nez v4, :cond_5

    #@41
    return v2

    #@42
    .line 126
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@44
    goto :goto_1

    #@45
    .line 134
    :cond_6
    not-int v4, v1

    #@46
    return v4
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 287
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2
    mul-int/lit8 v0, v3, 0x2

    #@4
    .line 288
    .local v0, "N":I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    .line 289
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    #@8
    .line 290
    const/4 v2, 0x1

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@b
    .line 291
    aget-object v3, v1, v2

    #@d
    if-nez v3, :cond_0

    #@f
    .line 292
    shr-int/lit8 v3, v2, 0x1

    #@11
    return v3

    #@12
    .line 290
    :cond_0
    add-int/lit8 v2, v2, 0x2

    #@14
    goto :goto_0

    #@15
    .line 296
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    #@16
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    #@18
    .line 297
    aget-object v3, v1, v2

    #@1a
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 298
    shr-int/lit8 v3, v2, 0x1

    #@22
    return v3

    #@23
    .line 296
    :cond_2
    add-int/lit8 v2, v2, 0x2

    #@25
    goto :goto_1

    #@26
    .line 302
    :cond_3
    const/4 v3, -0x1

    #@27
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 362
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@3
    if-gtz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 333
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@2
    shl-int/lit8 v1, p1, 0x1

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v11, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 376
    if-nez p1, :cond_0

    #@4
    .line 377
    const/4 v0, 0x0

    #@5
    .line 378
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    #@8
    move-result v1

    #@9
    .line 383
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 384
    shl-int/lit8 v6, v1, 0x1

    #@d
    add-int/lit8 v1, v6, 0x1

    #@f
    .line 385
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@11
    aget-object v5, v6, v1

    #@13
    .line 386
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@15
    aput-object p2, v6, v1

    #@17
    .line 387
    return-object v5

    #@18
    .line 380
    .end local v0    # "hash":I
    .end local v1    # "index":I
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@1b
    move-result v0

    #@1c
    .line 381
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@1f
    move-result v1

    #@20
    .restart local v1    # "index":I
    goto :goto_0

    #@21
    .line 390
    :cond_1
    not-int v1, v1

    #@22
    .line 391
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@24
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@26
    array-length v7, v7

    #@27
    if-lt v6, v7, :cond_3

    #@29
    .line 392
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2b
    const/16 v7, 0x8

    #@2d
    if-lt v6, v7, :cond_5

    #@2f
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@31
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@33
    shr-int/lit8 v7, v7, 0x1

    #@35
    add-int v2, v6, v7

    #@37
    .line 397
    .local v2, "n":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@39
    .line 398
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@3b
    .line 399
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    #@3e
    .line 401
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@40
    array-length v6, v6

    #@41
    if-lez v6, :cond_2

    #@43
    .line 403
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@45
    array-length v7, v4

    #@46
    invoke-static {v4, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@49
    .line 404
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@4b
    array-length v7, v3

    #@4c
    invoke-static {v3, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4f
    .line 407
    :cond_2
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@51
    invoke-static {v4, v3, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@54
    .line 410
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_3
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@56
    if-ge v1, v6, :cond_4

    #@58
    .line 413
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@5a
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@5c
    add-int/lit8 v8, v1, 0x1

    #@5e
    iget v9, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@60
    sub-int/2addr v9, v1

    #@61
    invoke-static {v6, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@64
    .line 414
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@66
    shl-int/lit8 v7, v1, 0x1

    #@68
    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6a
    add-int/lit8 v9, v1, 0x1

    #@6c
    shl-int/lit8 v9, v9, 0x1

    #@6e
    iget v10, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@70
    sub-int/2addr v10, v1

    #@71
    shl-int/lit8 v10, v10, 0x1

    #@73
    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@76
    .line 417
    :cond_4
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@78
    aput v0, v6, v1

    #@7a
    .line 418
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@7c
    shl-int/lit8 v7, v1, 0x1

    #@7e
    aput-object p1, v6, v7

    #@80
    .line 419
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@82
    shl-int/lit8 v7, v1, 0x1

    #@84
    add-int/lit8 v7, v7, 0x1

    #@86
    aput-object p2, v6, v7

    #@88
    .line 420
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@8a
    add-int/lit8 v6, v6, 0x1

    #@8c
    iput v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@8e
    .line 421
    return-object v11

    #@8f
    .line 393
    :cond_5
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@91
    const/4 v7, 0x4

    #@92
    if-lt v6, v7, :cond_6

    #@94
    const/16 v2, 0x8

    #@96
    .restart local v2    # "n":I
    goto :goto_1

    #@97
    .end local v2    # "n":I
    :cond_6
    const/4 v2, 0x4

    #@98
    .restart local v2    # "n":I
    goto :goto_1
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    #@1
    .line 429
    iget v0, p1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@3
    .line 430
    .local v0, "N":I
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@5
    add-int/2addr v2, v0

    #@6
    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    #@9
    .line 431
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@b
    if-nez v2, :cond_1

    #@d
    .line 432
    if-lez v0, :cond_0

    #@f
    .line 433
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@11
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@13
    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 434
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@18
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@1a
    shl-int/lit8 v4, v0, 0x1

    #@1c
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 435
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@21
    .line 428
    :cond_0
    return-void

    #@22
    .line 438
    :cond_1
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@25
    .line 439
    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {p1, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 438
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 451
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 452
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 453
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 456
    :cond_0
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 10
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    const/4 v9, 0x0

    #@1
    const/16 v6, 0x8

    #@3
    const/4 v7, 0x0

    #@4
    .line 465
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    shl-int/lit8 v5, p1, 0x1

    #@8
    add-int/lit8 v5, v5, 0x1

    #@a
    aget-object v3, v4, v5

    #@c
    .line 466
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@e
    const/4 v5, 0x1

    #@f
    if-gt v4, v5, :cond_1

    #@11
    .line 469
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@13
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@15
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@17
    invoke-static {v4, v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@1a
    .line 470
    sget-object v4, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    #@1c
    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@1e
    .line 471
    sget-object v4, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@20
    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@22
    .line 472
    iput v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@24
    .line 512
    :cond_0
    :goto_0
    return-object v3

    #@25
    .line 474
    :cond_1
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@27
    array-length v4, v4

    #@28
    if-le v4, v6, :cond_4

    #@2a
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2c
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@2e
    array-length v5, v5

    #@2f
    div-int/lit8 v5, v5, 0x3

    #@31
    if-ge v4, v5, :cond_4

    #@33
    .line 478
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@35
    if-le v4, v6, :cond_3

    #@37
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@39
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@3b
    shr-int/lit8 v5, v5, 0x1

    #@3d
    add-int v0, v4, v5

    #@3f
    .line 482
    .local v0, "n":I
    :goto_1
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@41
    .line 483
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@43
    .line 484
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    #@46
    .line 486
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@48
    add-int/lit8 v4, v4, -0x1

    #@4a
    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@4c
    .line 487
    if-lez p1, :cond_2

    #@4e
    .line 489
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@50
    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@53
    .line 490
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@55
    shl-int/lit8 v5, p1, 0x1

    #@57
    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5a
    .line 492
    :cond_2
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@5c
    if-ge p1, v4, :cond_0

    #@5e
    .line 495
    add-int/lit8 v4, p1, 0x1

    #@60
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@62
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@64
    sub-int/2addr v6, p1

    #@65
    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@68
    .line 496
    add-int/lit8 v4, p1, 0x1

    #@6a
    shl-int/lit8 v4, v4, 0x1

    #@6c
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6e
    shl-int/lit8 v6, p1, 0x1

    #@70
    .line 497
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@72
    sub-int/2addr v7, p1

    #@73
    shl-int/lit8 v7, v7, 0x1

    #@75
    .line 496
    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@78
    goto :goto_0

    #@79
    .line 478
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_3
    const/16 v0, 0x8

    #@7b
    .restart local v0    # "n":I
    goto :goto_1

    #@7c
    .line 500
    .end local v0    # "n":I
    :cond_4
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@7e
    add-int/lit8 v4, v4, -0x1

    #@80
    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@82
    .line 501
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@84
    if-ge p1, v4, :cond_5

    #@86
    .line 504
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@88
    add-int/lit8 v5, p1, 0x1

    #@8a
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@8c
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@8e
    sub-int/2addr v7, p1

    #@8f
    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@92
    .line 505
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@94
    add-int/lit8 v5, p1, 0x1

    #@96
    shl-int/lit8 v5, v5, 0x1

    #@98
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@9a
    shl-int/lit8 v7, p1, 0x1

    #@9c
    .line 506
    iget v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@9e
    sub-int/2addr v8, p1

    #@9f
    shl-int/lit8 v8, v8, 0x1

    #@a1
    .line 505
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a4
    .line 508
    :cond_5
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@a6
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@a8
    shl-int/lit8 v5, v5, 0x1

    #@aa
    aput-object v9, v4, v5

    #@ac
    .line 509
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@ae
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@b0
    shl-int/lit8 v5, v5, 0x1

    #@b2
    add-int/lit8 v5, v5, 0x1

    #@b4
    aput-object v9, v4, v5

    #@b6
    goto/16 :goto_0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 352
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    #@2
    add-int/lit8 p1, v1, 0x1

    #@4
    .line 353
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    aget-object v0, v1, p1

    #@8
    .line 354
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@a
    aput-object p2, v1, p1

    #@c
    .line 355
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 519
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 588
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 589
    const-string/jumbo v4, "{}"

    #@9
    return-object v4

    #@a
    .line 592
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@e
    mul-int/lit8 v4, v4, 0x1c

    #@10
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 593
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    #@15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 594
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@1b
    if-ge v1, v4, :cond_4

    #@1d
    .line 595
    if-lez v1, :cond_1

    #@1f
    .line 596
    const-string/jumbo v4, ", "

    #@22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 598
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    .line 599
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    #@2b
    .line 600
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    .line 604
    :goto_1
    const/16 v4, 0x3d

    #@30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 605
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    .line 606
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3

    #@39
    .line 607
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    .line 594
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 602
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v4, "(this Map)"

    #@42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    goto :goto_1

    #@46
    .line 609
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v4, "(this Map)"

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    goto :goto_2

    #@4d
    .line 612
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v4, 0x7d

    #@4f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    .line 613
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    return-object v4
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 342
    .local p0, "this":Landroid/support/v4/util/SimpleArrayMap;, "Landroid/support/v4/util/SimpleArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@2
    shl-int/lit8 v1, p1, 0x1

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method
