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

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 244
    invoke-direct {p0, v0, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    #@4
    .line 243
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 251
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    #@4
    .line 250
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v1, 0x0

    #@1
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 256
    iput-boolean p2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    #@6
    .line 257
    if-nez p1, :cond_0

    #@8
    .line 258
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@a
    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    #@c
    .line 259
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@e
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@10
    .line 263
    :goto_0
    iput v1, p0, Landroid/util/ArraySet;->mSize:I

    #@12
    .line 255
    return-void

    #@13
    .line 261
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    #@16
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
    .line 270
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    #@3
    .line 271
    if-eqz p1, :cond_0

    #@5
    .line 272
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    #@8
    .line 269
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
    .line 278
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    #@3
    .line 279
    if-eqz p1, :cond_0

    #@5
    .line 280
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@8
    .line 277
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 6
    .param p1, "size"    # I

    #@0
    .prologue
    .line 155
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/16 v2, 0x8

    #@2
    if-ne p1, v2, :cond_2

    #@4
    .line 156
    const-class v3, Landroid/util/ArraySet;

    #@6
    monitor-enter v3

    #@7
    .line 157
    :try_start_0
    sget-object v2, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 158
    sget-object v0, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 160
    .local v0, "array":[Ljava/lang/Object;
    :try_start_1
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@f
    .line 161
    const/4 v2, 0x0

    #@10
    aget-object v2, v0, v2

    #@12
    check-cast v2, [Ljava/lang/Object;

    #@14
    sput-object v2, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@16
    .line 162
    const/4 v2, 0x1

    #@17
    aget-object v2, v0, v2

    #@19
    check-cast v2, [I

    #@1b
    iput-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@1d
    .line 163
    const/4 v2, 0x0

    #@1e
    const/4 v4, 0x1

    #@1f
    aput-object v2, v0, v4

    #@21
    const/4 v2, 0x0

    #@22
    const/4 v4, 0x0

    #@23
    aput-object v2, v0, v4

    #@25
    .line 164
    sget v2, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    #@27
    add-int/lit8 v2, v2, -0x1

    #@29
    sput v2, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit v3

    #@2c
    .line 167
    return-void

    #@2d
    .line 168
    :catch_0
    move-exception v1

    #@2e
    .line 172
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_2
    const-string/jumbo v2, "ArraySet"

    #@31
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v5, "Found corrupt ArraySet cache: [0]="

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const/4 v5, 0x0

    #@3e
    aget-object v5, v0, v5

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 173
    const-string/jumbo v5, " [1]="

    #@47
    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 173
    const/4 v5, 0x1

    #@4c
    aget-object v5, v0, v5

    #@4e
    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    .line 174
    const/4 v2, 0x0

    #@5a
    sput-object v2, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@5c
    .line 175
    const/4 v2, 0x0

    #@5d
    sput v2, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5f
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    monitor-exit v3

    #@60
    .line 203
    :cond_1
    new-array v2, p1, [I

    #@62
    iput-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@64
    .line 204
    new-array v2, p1, [Ljava/lang/Object;

    #@66
    iput-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@68
    .line 154
    return-void

    #@69
    .line 156
    :catchall_0
    move-exception v2

    #@6a
    monitor-exit v3

    #@6b
    throw v2

    #@6c
    .line 178
    :cond_2
    const/4 v2, 0x4

    #@6d
    if-ne p1, v2, :cond_1

    #@6f
    .line 179
    const-class v3, Landroid/util/ArraySet;

    #@71
    monitor-enter v3

    #@72
    .line 180
    :try_start_3
    sget-object v2, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@74
    if-eqz v2, :cond_0

    #@76
    .line 181
    sget-object v0, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@78
    .line 183
    .restart local v0    # "array":[Ljava/lang/Object;
    :try_start_4
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@7a
    .line 184
    const/4 v2, 0x0

    #@7b
    aget-object v2, v0, v2

    #@7d
    check-cast v2, [Ljava/lang/Object;

    #@7f
    sput-object v2, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@81
    .line 185
    const/4 v2, 0x1

    #@82
    aget-object v2, v0, v2

    #@84
    check-cast v2, [I

    #@86
    iput-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@88
    .line 186
    const/4 v2, 0x0

    #@89
    const/4 v4, 0x1

    #@8a
    aput-object v2, v0, v4

    #@8c
    const/4 v2, 0x0

    #@8d
    const/4 v4, 0x0

    #@8e
    aput-object v2, v0, v4

    #@90
    .line 187
    sget v2, Landroid/util/ArraySet;->mBaseCacheSize:I

    #@92
    add-int/lit8 v2, v2, -0x1

    #@94
    sput v2, Landroid/util/ArraySet;->mBaseCacheSize:I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@96
    monitor-exit v3

    #@97
    .line 190
    return-void

    #@98
    .line 191
    :catch_1
    move-exception v1

    #@99
    .line 195
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    :try_start_5
    const-string/jumbo v2, "ArraySet"

    #@9c
    new-instance v4, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v5, "Found corrupt ArraySet cache: [0]="

    #@a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    const/4 v5, 0x0

    #@a9
    aget-object v5, v0, v5

    #@ab
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v4

    #@af
    .line 196
    const-string/jumbo v5, " [1]="

    #@b2
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    .line 196
    const/4 v5, 0x1

    #@b7
    aget-object v5, v0, v5

    #@b9
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v4

    #@bd
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v4

    #@c1
    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@c4
    .line 197
    const/4 v2, 0x0

    #@c5
    sput-object v2, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@c7
    .line 198
    const/4 v2, 0x0

    #@c8
    sput v2, Landroid/util/ArraySet;->mBaseCacheSize:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@ca
    goto :goto_0

    #@cb
    .line 179
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catchall_1
    move-exception v2

    #@cc
    monitor-exit v3

    #@cd
    throw v2
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
    .line 208
    array-length v1, p0

    #@4
    const/16 v2, 0x8

    #@6
    if-ne v1, v2, :cond_3

    #@8
    .line 209
    const-class v2, Landroid/util/ArraySet;

    #@a
    monitor-enter v2

    #@b
    .line 210
    :try_start_0
    sget v1, Landroid/util/ArraySet;->mTwiceBaseCacheSize:I

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 211
    sget-object v1, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object v1, p1, v3

    #@14
    .line 212
    const/4 v1, 0x1

    #@15
    aput-object p0, p1, v1

    #@17
    .line 213
    add-int/lit8 v0, p2, -0x1

    #@19
    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    #@1b
    .line 214
    const/4 v1, 0x0

    #@1c
    aput-object v1, p1, v0

    #@1e
    .line 213
    add-int/lit8 v0, v0, -0x1

    #@20
    goto :goto_0

    #@21
    .line 216
    :cond_0
    sput-object p1, Landroid/util/ArraySet;->mTwiceBaseCache:[Ljava/lang/Object;

    #@23
    .line 217
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
    .line 207
    :cond_2
    return-void

    #@2b
    .line 209
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit v2

    #@2d
    throw v1

    #@2e
    .line 222
    :cond_3
    array-length v1, p0

    #@2f
    const/4 v2, 0x4

    #@30
    if-ne v1, v2, :cond_2

    #@32
    .line 223
    const-class v2, Landroid/util/ArraySet;

    #@34
    monitor-enter v2

    #@35
    .line 224
    :try_start_1
    sget v1, Landroid/util/ArraySet;->mBaseCacheSize:I

    #@37
    if-ge v1, v3, :cond_1

    #@39
    .line 225
    sget-object v1, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@3b
    const/4 v3, 0x0

    #@3c
    aput-object v1, p1, v3

    #@3e
    .line 226
    const/4 v1, 0x1

    #@3f
    aput-object p0, p1, v1

    #@41
    .line 227
    add-int/lit8 v0, p2, -0x1

    #@43
    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    #@45
    .line 228
    const/4 v1, 0x0

    #@46
    aput-object v1, p1, v0

    #@48
    .line 227
    add-int/lit8 v0, v0, -0x1

    #@4a
    goto :goto_2

    #@4b
    .line 230
    :cond_4
    sput-object p1, Landroid/util/ArraySet;->mBaseCache:[Ljava/lang/Object;

    #@4d
    .line 231
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
    .line 223
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
    .line 663
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 664
    new-instance v0, Landroid/util/ArraySet$1;

    #@6
    invoke-direct {v0, p0}, Landroid/util/ArraySet$1;-><init>(Landroid/util/ArraySet;)V

    #@9
    iput-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    #@b
    .line 711
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
    .line 79
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    #@2
    .line 82
    .local v0, "N":I
    if-nez v0, :cond_0

    #@4
    .line 83
    const/4 v4, -0x1

    #@5
    return v4

    #@6
    .line 86
    :cond_0
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@8
    invoke-static {v4, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@b
    move-result v3

    #@c
    .line 89
    .local v3, "index":I
    if-gez v3, :cond_1

    #@e
    .line 90
    return v3

    #@f
    .line 94
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
    .line 95
    return v3

    #@1a
    .line 100
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
    .line 101
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
    .line 100
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 105
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
    .line 106
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
    .line 105
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@49
    goto :goto_1

    #@4a
    .line 113
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
    .line 117
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    #@3
    .line 120
    .local v0, "N":I
    if-nez v0, :cond_0

    #@5
    .line 121
    const/4 v4, -0x1

    #@6
    return v4

    #@7
    .line 124
    :cond_0
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@9
    invoke-static {v4, v0, v5}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@c
    move-result v3

    #@d
    .line 127
    .local v3, "index":I
    if-gez v3, :cond_1

    #@f
    .line 128
    return v3

    #@10
    .line 132
    :cond_1
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@12
    aget-object v4, v4, v3

    #@14
    if-nez v4, :cond_2

    #@16
    .line 133
    return v3

    #@17
    .line 138
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
    .line 139
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@23
    aget-object v4, v4, v1

    #@25
    if-nez v4, :cond_3

    #@27
    return v1

    #@28
    .line 138
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 143
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
    .line 144
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@37
    aget-object v4, v4, v2

    #@39
    if-nez v4, :cond_5

    #@3b
    return v2

    #@3c
    .line 143
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@3e
    goto :goto_1

    #@3f
    .line 151
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
    .line 366
    if-nez p1, :cond_0

    #@3
    .line 367
    const/4 v0, 0x0

    #@4
    .line 368
    .local v0, "hash":I
    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    #@7
    move-result v1

    #@8
    .line 373
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_2

    #@a
    .line 374
    return v7

    #@b
    .line 370
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    iget-boolean v5, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    #@d
    if-eqz v5, :cond_1

    #@f
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@12
    move-result v0

    #@13
    .line 371
    .restart local v0    # "hash":I
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    #@16
    move-result v1

    #@17
    .restart local v1    # "index":I
    goto :goto_0

    #@18
    .line 370
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@1b
    move-result v0

    #@1c
    goto :goto_1

    #@1d
    .line 377
    .restart local v0    # "hash":I
    .restart local v1    # "index":I
    :cond_2
    not-int v1, v1

    #@1e
    .line 378
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@20
    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    #@22
    array-length v6, v6

    #@23
    if-lt v5, v6, :cond_4

    #@25
    .line 379
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@27
    const/16 v6, 0x8

    #@29
    if-lt v5, v6, :cond_6

    #@2b
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@2d
    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    #@2f
    shr-int/lit8 v6, v6, 0x1

    #@31
    add-int v2, v5, v6

    #@33
    .line 384
    .local v2, "n":I
    :goto_2
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@35
    .line 385
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@37
    .line 386
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/util/ArraySet;->allocArrays(I)V

    #@3a
    .line 388
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@3c
    array-length v5, v5

    #@3d
    if-lez v5, :cond_3

    #@3f
    .line 390
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@41
    array-length v6, v4

    #@42
    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@45
    .line 391
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@47
    array-length v6, v3

    #@48
    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4b
    .line 394
    :cond_3
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@4d
    invoke-static {v4, v3, v5}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@50
    .line 397
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_4
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@52
    if-ge v1, v5, :cond_5

    #@54
    .line 400
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@56
    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    #@58
    add-int/lit8 v7, v1, 0x1

    #@5a
    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    #@5c
    sub-int/2addr v8, v1

    #@5d
    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    #@60
    .line 401
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@62
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@64
    add-int/lit8 v7, v1, 0x1

    #@66
    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    #@68
    sub-int/2addr v8, v1

    #@69
    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6c
    .line 404
    :cond_5
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    #@6e
    aput v0, v5, v1

    #@70
    .line 405
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@72
    aput-object p1, v5, v1

    #@74
    .line 406
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@76
    add-int/lit8 v5, v5, 0x1

    #@78
    iput v5, p0, Landroid/util/ArraySet;->mSize:I

    #@7a
    .line 407
    const/4 v5, 0x1

    #@7b
    return v5

    #@7c
    .line 380
    :cond_6
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    #@7e
    const/4 v6, 0x4

    #@7f
    if-lt v5, v6, :cond_7

    #@81
    const/16 v2, 0x8

    #@83
    .restart local v2    # "n":I
    goto :goto_2

    #@84
    .end local v2    # "n":I
    :cond_7
    const/4 v2, 0x4

    #@85
    .restart local v2    # "n":I
    goto :goto_2
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
    .line 444
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    #@3
    .line 445
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@5
    add-int/2addr v2, v0

    #@6
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    #@9
    .line 446
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@b
    if-nez v2, :cond_1

    #@d
    .line 447
    if-lez v0, :cond_0

    #@f
    .line 448
    iget-object v2, p1, Landroid/util/ArraySet;->mHashes:[I

    #@11
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    #@13
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@16
    .line 449
    iget-object v2, p1, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@18
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@1a
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 450
    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    #@1f
    .line 443
    :cond_0
    return-void

    #@20
    .line 453
    :cond_1
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@23
    .line 454
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2a
    .line 453
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
    .line 749
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
    .line 750
    const/4 v0, 0x0

    #@b
    .line 751
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
    .line 752
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
    .line 754
    .end local v0    # "added":Z
    .end local v1    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 416
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    #@2
    .line 417
    .local v1, "index":I
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 419
    .local v0, "hash":I
    :goto_0
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@7
    array-length v2, v2

    #@8
    if-lt v1, v2, :cond_2

    #@a
    .line 420
    new-instance v2, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v3, "Array is full"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 418
    .end local v0    # "hash":I
    :cond_0
    iget-boolean v2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1a
    move-result v0

    #@1b
    .restart local v0    # "hash":I
    goto :goto_0

    #@1c
    .end local v0    # "hash":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@1f
    move-result v0

    #@20
    .restart local v0    # "hash":I
    goto :goto_0

    #@21
    .line 422
    :cond_2
    if-lez v1, :cond_3

    #@23
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@25
    add-int/lit8 v3, v1, -0x1

    #@27
    aget v2, v2, v3

    #@29
    if-le v2, v0, :cond_3

    #@2b
    .line 431
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2e
    .line 432
    return-void

    #@2f
    .line 434
    :cond_3
    add-int/lit8 v2, v1, 0x1

    #@31
    iput v2, p0, Landroid/util/ArraySet;->mSize:I

    #@33
    .line 435
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@35
    aput v0, v2, v1

    #@37
    .line 436
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@39
    aput-object p1, v2, v1

    #@3b
    .line 415
    return-void
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 289
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 290
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    #@7
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@9
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@b
    invoke-static {v0, v1, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@e
    .line 291
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@10
    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    #@12
    .line 292
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@16
    .line 293
    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    #@18
    .line 288
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
    .line 322
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
    .line 734
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    .line 735
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 736
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
    .line 737
    const/4 v1, 0x0

    #@15
    return v1

    #@16
    .line 740
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
    .line 302
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@3
    array-length v2, v2

    #@4
    if-ge v2, p1, :cond_1

    #@6
    .line 303
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    #@8
    .line 304
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@a
    .line 305
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    #@d
    .line 306
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@f
    if-lez v2, :cond_0

    #@11
    .line 307
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@13
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@15
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@18
    .line 308
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@1a
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@1c
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 310
    :cond_0
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@21
    invoke-static {v1, v0, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@24
    .line 301
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
    .line 588
    if-ne p0, p1, :cond_0

    #@4
    .line 589
    return v8

    #@5
    .line 591
    :cond_0
    instance-of v5, p1, Ljava/util/Set;

    #@7
    if-eqz v5, :cond_4

    #@9
    move-object v4, p1

    #@a
    .line 592
    check-cast v4, Ljava/util/Set;

    #@c
    .line 593
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
    .line 594
    return v7

    #@17
    .line 598
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
    .line 599
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    .line 600
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
    .line 601
    return v7

    #@27
    .line 598
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 606
    .end local v3    # "mine":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v1

    #@2b
    .line 607
    .local v1, "ignored":Ljava/lang/ClassCastException;
    return v7

    #@2c
    .line 604
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    #@2d
    .line 605
    .local v2, "ignored":Ljava/lang/NullPointerException;
    return v7

    #@2e
    .line 609
    .end local v2    # "ignored":Ljava/lang/NullPointerException;
    :cond_3
    return v8

    #@2f
    .line 611
    .end local v0    # "i":I
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_4
    return v7
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 619
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    #@2
    .line 620
    .local v0, "hashes":[I
    const/4 v2, 0x0

    #@3
    .line 621
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
    .line 622
    aget v4, v0, v1

    #@a
    add-int/2addr v2, v4

    #@b
    .line 621
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 624
    :cond_0
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 332
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
    .line 333
    :cond_0
    iget-boolean v0, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    #@9
    if-eqz v0, :cond_1

    #@b
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v0

    #@f
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    #@12
    move-result v0

    #@13
    goto :goto_0

    #@14
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@17
    move-result v0

    #@18
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    #@1
    .line 350
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
    .line 723
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
    .line 467
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 468
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@7
    .line 469
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@a
    .line 470
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 472
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
    .line 537
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    #@2
    .line 541
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@4
    .line 542
    .local v2, "originalSize":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@7
    .line 543
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@e
    .line 542
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 545
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
    .line 764
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    #@1
    .line 765
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
    .line 766
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
    .line 768
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
    .line 481
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@5
    aget-object v3, v4, p1

    #@7
    .line 482
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@9
    const/4 v5, 0x1

    #@a
    if-gt v4, v5, :cond_1

    #@c
    .line 485
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@e
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@10
    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    #@12
    invoke-static {v4, v5, v6}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    #@15
    .line 486
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    #@17
    iput-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@19
    .line 487
    sget-object v4, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@1b
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@1d
    .line 488
    iput v7, p0, Landroid/util/ArraySet;->mSize:I

    #@1f
    .line 525
    :cond_0
    :goto_0
    return-object v3

    #@20
    .line 490
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
    .line 494
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
    .line 498
    .local v0, "n":I
    :goto_1
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    #@3c
    .line 499
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@3e
    .line 500
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/util/ArraySet;->allocArrays(I)V

    #@41
    .line 502
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@43
    add-int/lit8 v4, v4, -0x1

    #@45
    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    #@47
    .line 503
    if-lez p1, :cond_2

    #@49
    .line 505
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    #@4b
    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@4e
    .line 506
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@50
    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@53
    .line 508
    :cond_2
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@55
    if-ge p1, v4, :cond_0

    #@57
    .line 511
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
    .line 512
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
    .line 494
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_3
    const/16 v0, 0x8

    #@6e
    .restart local v0    # "n":I
    goto :goto_1

    #@6f
    .line 515
    .end local v0    # "n":I
    :cond_4
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@71
    add-int/lit8 v4, v4, -0x1

    #@73
    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    #@75
    .line 516
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    #@77
    if-ge p1, v4, :cond_5

    #@79
    .line 519
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
    .line 520
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
    .line 522
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
    .line 779
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    #@1
    .line 780
    .local v1, "removed":Z
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@3
    add-int/lit8 v0, v2, -0x1

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@7
    .line 781
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
    .line 782
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    #@14
    .line 783
    const/4 v1, 0x1

    #@15
    .line 780
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 786
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 553
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
    .line 558
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    #@3
    new-array v0, v1, [Ljava/lang/Object;

    #@5
    .line 559
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@7
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@9
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@c
    .line 560
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
    .line 565
    array-length v1, p1

    #@2
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@4
    if-ge v1, v2, :cond_0

    #@6
    .line 567
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
    .line 568
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    #@17
    .line 570
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@19
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@1b
    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e
    .line 571
    array-length v1, p1

    #@1f
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    #@21
    if-le v1, v2, :cond_1

    #@23
    .line 572
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    #@25
    const/4 v2, 0x0

    #@26
    aput-object v2, p1, v1

    #@28
    .line 574
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 636
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 637
    const-string/jumbo v3, "{}"

    #@9
    return-object v3

    #@a
    .line 640
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@e
    mul-int/lit8 v3, v3, 0xe

    #@10
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 641
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    #@15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 642
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    #@1b
    if-ge v1, v3, :cond_3

    #@1d
    .line 643
    if-lez v1, :cond_1

    #@1f
    .line 644
    const-string/jumbo v3, ", "

    #@22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 646
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    .line 647
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    #@2b
    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    .line 642
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 650
    :cond_2
    const-string/jumbo v3, "(this Set)"

    #@34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    goto :goto_1

    #@38
    .line 653
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v3, 0x7d

    #@3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    .line 654
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
    .line 342
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method
