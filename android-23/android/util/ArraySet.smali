.class public final Landroid/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 224
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 225
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@5
    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    #@7
    .line 226
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@9
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@b
    .line 227
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    #@e
    .line 224
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 234
    if-nez p1, :cond_0

    #@6
    .line 235
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@8
    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    #@a
    .line 236
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@c
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@e
    .line 240
    :goto_0
    iput v1, p0, Landroid/util/ArraySet;->mSize:I

    #@10
    .line 233
    return-void

    #@11
    .line 238
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    #@14
    goto :goto_0
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 247
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    #@3
    .line 248
    if-eqz p1, :cond_0

    #@5
    .line 249
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    #@8
    .line 246
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 255
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    #@3
    .line 256
    if-eqz p1, :cond_0

    #@5
    .line 257
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@8
    .line 254
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 4
    .param p1, "size"    # I

    #@0
    .prologue
    .line 154
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/16 v1, 0x8

    #@2
    if-ne p1, v1, :cond_2

    #@4
    .line 155
    const-class v2, Landroid/util/ArraySet;

    #@6
    monitor-enter v2

    #@7
    .line 156
    :try_start_0
    sget-object v1, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 157
    sget-object v0, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@d
    .line 158
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@f
    .line 159
    const/4 v1, 0x0

    #@10
    aget-object v1, v0, v1

    #@12
    check-cast v1, [Ljava/lang/Object;

    #@14
    sput-object v1, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@16
    .line 160
    const/4 v1, 0x1

    #@17
    aget-object v1, v0, v1

    #@19
    check-cast v1, [I

    #@1b
    iput-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    #@1d
    .line 161
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
    .line 162
    sget v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    #@27
    add-int/lit8 v1, v1, -0x1

    #@29
    sput v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    monitor-exit v2

    #@2c
    .line 165
    return-void

    #@2d
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_0
    monitor-exit v2

    #@2e
    .line 184
    :cond_1
    new-array v1, p1, [I

    #@30
    iput-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    #@32
    .line 185
    new-array v1, p1, [Ljava/lang/Object;

    #@34
    iput-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@36
    .line 153
    return-void

    #@37
    .line 155
    :catchall_0
    move-exception v1

    #@38
    monitor-exit v2

    #@39
    throw v1

    #@3a
    .line 168
    :cond_2
    const/4 v1, 0x4

    #@3b
    if-ne p1, v1, :cond_1

    #@3d
    .line 169
    const-class v2, Landroid/util/ArraySet;

    #@3f
    monitor-enter v2

    #@40
    .line 170
    :try_start_1
    sget-object v1, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@42
    if-eqz v1, :cond_0

    #@44
    .line 171
    sget-object v0, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@46
    .line 172
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@48
    .line 173
    const/4 v1, 0x0

    #@49
    aget-object v1, v0, v1

    #@4b
    check-cast v1, [Ljava/lang/Object;

    #@4d
    sput-object v1, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@4f
    .line 174
    const/4 v1, 0x1

    #@50
    aget-object v1, v0, v1

    #@52
    check-cast v1, [I

    #@54
    iput-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    #@56
    .line 175
    const/4 v1, 0x0

    #@57
    const/4 v3, 0x1

    #@58
    aput-object v1, v0, v3

    #@5a
    const/4 v1, 0x0

    #@5b
    const/4 v3, 0x0

    #@5c
    aput-object v1, v0, v3

    #@5e
    .line 176
    sget v1, Landroid/util/ArraySet;->mBaseCacheSize:I

    #@60
    add-int/lit8 v1, v1, -0x1

    #@62
    sput v1, Landroid/util/ArraySet;->mBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@64
    monitor-exit v2

    #@65
    .line 179
    return-void

    #@66
    .line 169
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    #@67
    monitor-exit v2

    #@68
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
    .line 189
    array-length v1, p0

    #@4
    const/16 v2, 0x8

    #@6
    if-ne v1, v2, :cond_3

    #@8
    .line 190
    const-class v2, Landroid/util/ArraySet;

    #@a
    monitor-enter v2

    #@b
    .line 191
    :try_start_0
    sget v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 192
    sget-object v1, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object v1, p1, v3

    #@14
    .line 193
    const/4 v1, 0x1

    #@15
    aput-object p0, p1, v1

    #@17
    .line 194
    add-int/lit8 v0, p2, -0x1

    #@19
    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    #@1b
    .line 195
    const/4 v1, 0x0

    #@1c
    aput-object v1, p1, v0

    #@1e
    .line 194
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_0

    #@21
    .line 197
    :cond_0
    sput-object p1, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@23
    .line 198
    sget v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    sput v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .end local v0    # "i":I
    :cond_1
    :goto_1
    monitor-exit v2

    #@2a
    .line 188
    :cond_2
    return-void

    #@2b
    .line 190
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1

    #@2e
    .line 203
    :cond_3
    array-length v1, p0

    #@2f
    const/4 v2, 0x4

    #@30
    if-ne v1, v2, :cond_2

    #@32
    .line 204
    const-class v2, Landroid/util/ArraySet;

    #@34
    monitor-enter v2

    #@35
    .line 205
    :try_start_1
    sget v1, Landroid/util/ArraySet;->mBaseCacheSize:I

    #@37
    if-ge v1, v3, :cond_1

    #@39
    .line 206
    sget-object v1, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@3b
    const/4 v3, 0x0

    #@3c
    aput-object v1, p1, v3

    #@3e
    .line 207
    const/4 v1, 0x1

    #@3f
    aput-object p0, p1, v1

    #@41
    .line 208
    add-int/lit8 v0, p2, -0x1

    #@43
    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    #@45
    .line 209
    const/4 v1, 0x0

    #@46
    aput-object v1, p1, v0

    #@48
    .line 208
    add-int/lit8 v0, v0, -0x1

    #@4a
    goto :goto_2

    #@4b
    .line 211
    :cond_4
    sput-object p1, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@4d
    .line 212
    sget v1, Landroid/util/ArraySet;->mBaseCacheSize:I

    #@4f
    add-int/lit8 v1, v1, 0x1

    #@51
    sput v1, Landroid/util/ArraySet;->mBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@53
    goto :goto_1

    #@54
    .line 204
    .end local v0    # "i":I
    :catchall_1
    move-exception v1

    #@55
    monitor-exit v2

    #@56
    throw v1
.end method

.method private getCollection()Landroid/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 610
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 611
    new-instance v0, Landroid/util/ArraySet$1;

    #@6
    invoke-direct {v0, p0}, Landroid/util/ArraySet$1;-><init>(Landroid/util/ArraySet;)V

    #@9
    iput-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    #@b
    .line 658
    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    #@d
    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    #@0
    .prologue
    .line 78
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    #@2
    .line 81
    .local v0, "N":I
    if-nez v0, :cond_0

    #@4
    .line 82
    const/4 v4, -0x1

    #@5
    return v4

    #@6
    .line 85
    :cond_0
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@8
    invoke-static {v4, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@b
    move-result v3

    #@c
    .line 88
    .local v3, "index":I
    if-gez v3, :cond_1

    #@e
    .line 89
    return v3

    #@f
    .line 93
    :cond_1
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@11
    aget-object v4, v4, v3

    #@13
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 94
    return v3

    #@1a
    .line 99
    :cond_2
    add-int/lit8 v1, v3, 0x1

    #@1c
    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@1e
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@20
    aget v4, v4, v1

    #@22
    if-ne v4, p2, :cond_4

    #@24
    .line 100
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@26
    aget-object v4, v4, v1

    #@28
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_3

    #@2e
    return v1

    #@2f
    .line 99
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 104
    :cond_4
    add-int/lit8 v2, v3, -0x1

    #@34
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    #@36
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@38
    aget v4, v4, v2

    #@3a
    if-ne v4, p2, :cond_6

    #@3c
    .line 105
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@3e
    aget-object v4, v4, v2

    #@40
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_5

    #@46
    return v2

    #@47
    .line 104
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@49
    goto :goto_1

    #@4a
    .line 112
    :cond_6
    not-int v4, v1

    #@4b
    return v4
.end method

.method private indexOfNull()I
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 116
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    #@3
    .line 119
    .local v0, "N":I
    if-nez v0, :cond_0

    #@5
    .line 120
    const/4 v4, -0x1

    #@6
    return v4

    #@7
    .line 123
    :cond_0
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@9
    invoke-static {v4, v0, v5}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@c
    move-result v3

    #@d
    .line 126
    .local v3, "index":I
    if-gez v3, :cond_1

    #@f
    .line 127
    return v3

    #@10
    .line 131
    :cond_1
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@12
    aget-object v4, v4, v3

    #@14
    if-nez v4, :cond_2

    #@16
    .line 132
    return v3

    #@17
    .line 137
    :cond_2
    add-int/lit8 v1, v3, 0x1

    #@19
    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@1b
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@1d
    aget v4, v4, v1

    #@1f
    if-nez v4, :cond_4

    #@21
    .line 138
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@23
    aget-object v4, v4, v1

    #@25
    if-nez v4, :cond_3

    #@27
    return v1

    #@28
    .line 137
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 142
    :cond_4
    add-int/lit8 v2, v3, -0x1

    #@2d
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    #@2f
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@31
    aget v4, v4, v2

    #@33
    if-nez v4, :cond_6

    #@35
    .line 143
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@37
    aget-object v4, v4, v2

    #@39
    if-nez v4, :cond_5

    #@3b
    return v2

    #@3c
    .line 142
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 150
    :cond_6
    not-int v4, v1

    #@40
    return v4
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const/4 v7, 0x0

    #@1
    .line 342
    if-nez p1, :cond_0

    #@3
    .line 343
    const/4 v0, 0x0

    #@4
    .line 344
    .local v0, "hash":I
    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    #@7
    move-result v1

    #@8
    .line 349
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 350
    return v7

    #@b
    .line 346
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@e
    move-result v0

    #@f
    .line 347
    .restart local v0    # "hash":I
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    #@12
    move-result v1

    #@13
    .restart local v1    # "index":I
    goto :goto_0

    #@14
    .line 353
    :cond_1
    not-int v1, v1

    #@15
    .line 354
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@17
    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    #@19
    array-length v6, v6

    #@1a
    if-lt v5, v6, :cond_3

    #@1c
    .line 355
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@1e
    const/16 v6, 0x8

    #@20
    if-lt v5, v6, :cond_5

    #@22
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@24
    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    #@26
    shr-int/lit8 v6, v6, 0x1

    #@28
    add-int v2, v5, v6

    #@2a
    .line 360
    .local v2, "n":I
    :goto_1
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@2c
    .line 361
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@2e
    .line 362
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/util/ArraySet;->allocArrays(I)V

    #@31
    .line 364
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@33
    array-length v5, v5

    #@34
    if-lez v5, :cond_2

    #@36
    .line 366
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@38
    array-length v6, v4

    #@39
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@3c
    .line 367
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@3e
    array-length v6, v3

    #@3f
    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@42
    .line 370
    :cond_2
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@44
    invoke-static {v4, v3, v5}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@47
    .line 373
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_3
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@49
    if-ge v1, v5, :cond_4

    #@4b
    .line 376
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@4d
    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    #@4f
    add-int/lit8 v7, v1, 0x1

    #@51
    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    #@53
    sub-int/2addr v8, v1

    #@54
    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    #@57
    .line 377
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@59
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@5b
    add-int/lit8 v7, v1, 0x1

    #@5d
    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    #@5f
    sub-int/2addr v8, v1

    #@60
    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@63
    .line 380
    :cond_4
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@65
    aput v0, v5, v1

    #@67
    .line 381
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@69
    aput-object p1, v5, v1

    #@6b
    .line 382
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@6d
    add-int/lit8 v5, v5, 0x1

    #@6f
    iput v5, p0, Landroid/util/ArraySet;->mSize:I

    #@71
    .line 383
    const/4 v5, 0x1

    #@72
    return v5

    #@73
    .line 356
    :cond_5
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@75
    const/4 v6, 0x4

    #@76
    if-lt v5, v6, :cond_6

    #@78
    const/16 v2, 0x8

    #@7a
    .restart local v2    # "n":I
    goto :goto_1

    #@7b
    .end local v2    # "n":I
    :cond_6
    const/4 v2, 0x4

    #@7c
    .restart local v2    # "n":I
    goto :goto_1
.end method

.method public addAll(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    const/4 v4, 0x0

    #@1
    .line 391
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    #@3
    .line 392
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@5
    add-int/2addr v2, v0

    #@6
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    #@9
    .line 393
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@b
    if-nez v2, :cond_1

    #@d
    .line 394
    if-lez v0, :cond_0

    #@f
    .line 395
    iget-object v2, p1, Landroid/util/ArraySet;->mHashes:[I

    #@11
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    #@13
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@16
    .line 396
    iget-object v2, p1, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@18
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@1a
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 397
    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    #@1f
    .line 390
    :cond_0
    return-void

    #@20
    .line 400
    :cond_1
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@23
    .line 401
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2a
    .line 400
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 696
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@5
    move-result v4

    #@6
    add-int/2addr v3, v4

    #@7
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->ensureCapacity(I)V

    #@a
    .line 697
    const/4 v0, 0x0

    #@b
    .line 698
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .end local v0    # "added":Z
    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    .line 699
    .local v1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    or-int/2addr v0, v3

    #@1e
    .local v0, "added":Z
    goto :goto_0

    #@1f
    .line 701
    .end local v0    # "added":Z
    .end local v1    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 266
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 267
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    #@7
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@9
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@b
    invoke-static {v0, v1, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@e
    .line 268
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@10
    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    #@12
    .line 269
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@16
    .line 270
    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    #@18
    .line 265
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 299
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

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

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 681
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 682
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 683
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 684
    const/4 v1, 0x0

    #@15
    return v1

    #@16
    .line 687
    :cond_1
    const/4 v1, 0x1

    #@17
    return v1
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v4, 0x0

    #@1
    .line 279
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@3
    array-length v2, v2

    #@4
    if-ge v2, p1, :cond_1

    #@6
    .line 280
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    #@8
    .line 281
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@a
    .line 282
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    #@d
    .line 283
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@f
    if-lez v2, :cond_0

    #@11
    .line 284
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@13
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@15
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@18
    .line 285
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@1a
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@1c
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 287
    :cond_0
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@21
    invoke-static {v1, v0, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@24
    .line 278
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 535
    if-ne p0, p1, :cond_0

    #@4
    .line 536
    return v8

    #@5
    .line 538
    :cond_0
    instance-of v5, p1, Ljava/util/Set;

    #@7
    if-eqz v5, :cond_4

    #@9
    move-object v4, p1

    #@a
    .line 539
    check-cast v4, Ljava/util/Set;

    #@c
    .line 540
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    #@f
    move-result v5

    #@10
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@13
    move-result v6

    #@14
    if-eq v5, v6, :cond_1

    #@16
    .line 541
    return v7

    #@17
    .line 545
    :cond_1
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@1a
    if-ge v0, v5, :cond_3

    #@1c
    .line 546
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    .line 547
    .local v3, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result v5

    #@24
    if-nez v5, :cond_2

    #@26
    .line 548
    return v7

    #@27
    .line 545
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 553
    .end local v3    # "mine":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v1

    #@2b
    .line 554
    .local v1, "ignored":Ljava/lang/ClassCastException;
    return v7

    #@2c
    .line 551
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    #@2d
    .line 552
    .local v2, "ignored":Ljava/lang/NullPointerException;
    return v7

    #@2e
    .line 556
    .end local v2    # "ignored":Ljava/lang/NullPointerException;
    :cond_3
    return v8

    #@2f
    .line 558
    .end local v0    # "i":I
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_4
    return v7
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 566
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    #@2
    .line 567
    .local v0, "hashes":[I
    const/4 v2, 0x0

    #@3
    .line 568
    .local v2, "result":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@6
    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@8
    .line 569
    aget v4, v0, v1

    #@a
    add-int/2addr v2, v4

    #@b
    .line 568
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 571
    :cond_0
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 309
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-nez p1, :cond_0

    #@2
    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

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
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 326
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    #@3
    if-gtz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 670
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 414
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 415
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@7
    .line 416
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@a
    .line 417
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 419
    :cond_0
    return v1
.end method

.method public removeAll(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 484
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    #@2
    .line 488
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@4
    .line 489
    .local v2, "originalSize":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 490
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@e
    .line 489
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 492
    :cond_0
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@13
    if-eq v2, v3, :cond_1

    #@15
    const/4 v3, 0x1

    #@16
    :goto_1
    return v3

    #@17
    :cond_1
    const/4 v3, 0x0

    #@18
    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 711
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    #@1
    .line 712
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4
    move-result-object v2

    #@5
    .end local v0    # "removed":Z
    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    .line 713
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@12
    move-result v3

    #@13
    or-int/2addr v0, v3

    #@14
    .local v0, "removed":Z
    goto :goto_0

    #@15
    .line 715
    .end local v0    # "removed":Z
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/16 v6, 0x8

    #@2
    const/4 v7, 0x0

    #@3
    .line 428
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@5
    aget-object v3, v4, p1

    #@7
    .line 429
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@9
    const/4 v5, 0x1

    #@a
    if-gt v4, v5, :cond_1

    #@c
    .line 432
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@e
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@10
    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    #@12
    invoke-static {v4, v5, v6}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@15
    .line 433
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    #@17
    iput-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@19
    .line 434
    sget-object v4, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@1b
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@1d
    .line 435
    iput v7, p0, Landroid/util/ArraySet;->mSize:I

    #@1f
    .line 472
    :cond_0
    :goto_0
    return-object v3

    #@20
    .line 437
    :cond_1
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@22
    array-length v4, v4

    #@23
    if-le v4, v6, :cond_4

    #@25
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@27
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@29
    array-length v5, v5

    #@2a
    div-int/lit8 v5, v5, 0x3

    #@2c
    if-ge v4, v5, :cond_4

    #@2e
    .line 441
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@30
    if-le v4, v6, :cond_3

    #@32
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@34
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@36
    shr-int/lit8 v5, v5, 0x1

    #@38
    add-int v0, v4, v5

    #@3a
    .line 445
    .local v0, "n":I
    :goto_1
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@3c
    .line 446
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@3e
    .line 447
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/util/ArraySet;->allocArrays(I)V

    #@41
    .line 449
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@43
    add-int/lit8 v4, v4, -0x1

    #@45
    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    #@47
    .line 450
    if-lez p1, :cond_2

    #@49
    .line 452
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@4b
    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@4e
    .line 453
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@50
    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@53
    .line 455
    :cond_2
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@55
    if-ge p1, v4, :cond_0

    #@57
    .line 458
    add-int/lit8 v4, p1, 0x1

    #@59
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@5b
    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    #@5d
    sub-int/2addr v6, p1

    #@5e
    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@61
    .line 459
    add-int/lit8 v4, p1, 0x1

    #@63
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@65
    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    #@67
    sub-int/2addr v6, p1

    #@68
    invoke-static {v1, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6b
    goto :goto_0

    #@6c
    .line 441
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_3
    const/16 v0, 0x8

    #@6e
    .restart local v0    # "n":I
    goto :goto_1

    #@6f
    .line 462
    .end local v0    # "n":I
    :cond_4
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@71
    add-int/lit8 v4, v4, -0x1

    #@73
    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    #@75
    .line 463
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@77
    if-ge p1, v4, :cond_5

    #@79
    .line 466
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@7b
    add-int/lit8 v5, p1, 0x1

    #@7d
    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    #@7f
    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    #@81
    sub-int/2addr v7, p1

    #@82
    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy([II[III)V

    #@85
    .line 467
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@87
    add-int/lit8 v5, p1, 0x1

    #@89
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@8b
    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    #@8d
    sub-int/2addr v7, p1

    #@8e
    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@91
    .line 469
    :cond_5
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@93
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@95
    const/4 v6, 0x0

    #@96
    aput-object v6, v4, v5

    #@98
    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 726
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 727
    .local v1, "removed":Z
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@3
    add-int/lit8 v0, v2, -0x1

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@7
    .line 728
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@9
    aget-object v2, v2, v0

    #@b
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_0

    #@11
    .line 729
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@14
    .line 730
    const/4 v1, 0x1

    #@15
    .line 727
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 733
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 500
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    #@2
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 505
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    #@3
    new-array v0, v1, [Ljava/lang/Object;

    #@5
    .line 506
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@7
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@9
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 507
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    #@1
    .line 512
    array-length v1, p1

    #@2
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@4
    if-ge v1, v2, :cond_0

    #@6
    .line 514
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@10
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [Ljava/lang/Object;

    #@16
    .line 515
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    #@17
    .line 517
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@19
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@1b
    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e
    .line 518
    array-length v1, p1

    #@1f
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@21
    if-le v1, v2, :cond_1

    #@23
    .line 519
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    #@25
    const/4 v2, 0x0

    #@26
    aput-object v2, p1, v1

    #@28
    .line 521
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 583
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 584
    const-string/jumbo v3, "{}"

    #@9
    return-object v3

    #@a
    .line 587
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@e
    mul-int/lit8 v3, v3, 0xe

    #@10
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 588
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    #@15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 589
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@1b
    if-ge v1, v3, :cond_3

    #@1d
    .line 590
    if-lez v1, :cond_1

    #@1f
    .line 591
    const-string/jumbo v3, ", "

    #@22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 593
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    .line 594
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    #@2b
    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    .line 589
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 597
    :cond_2
    const-string/jumbo v3, "(this Set)"

    #@34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    goto :goto_1

    #@38
    .line 600
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v3, 0x7d

    #@3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    return-object v3
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 318
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method
