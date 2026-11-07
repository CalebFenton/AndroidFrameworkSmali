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
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o BASE_SIZE:I = 0x4

.field private static final greylist-max-o CACHE_SIZE:I = 0xa

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ArraySet"

.field static greylist-max-o sBaseCache:[Ljava/lang/Object;

.field private static final blacklist sBaseCacheLock:Ljava/lang/Object;

.field static greylist-max-o sBaseCacheSize:I

.field static greylist-max-o sTwiceBaseCache:[Ljava/lang/Object;

.field private static final blacklist sTwiceBaseCacheLock:Ljava/lang/Object;

.field static greylist-max-o sTwiceBaseCacheSize:I


# instance fields
.field greylist-max-p mArray:[Ljava/lang/Object;

.field private greylist-max-o mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field greylist-max-p mHashes:[I

.field private final greylist-max-o mIdentityHashCode:Z

.field greylist-max-p mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 291
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    .line 292
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 298
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    .line 299
    return-void
.end method

.method public constructor greylist-max-o <init>(IZ)V
    .registers 4
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    .line 302
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-boolean p2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    .line 304
    if-nez p1, :cond_10

    .line 305
    sget-object v0, Landroid/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 306
    sget-object v0, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_13

    .line 308
    :cond_10
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 310
    :goto_13
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 311
    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 317
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 318
    if-eqz p1, :cond_8

    .line 319
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 321
    :cond_8
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 328
    if-eqz p1, :cond_8

    .line 329
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 331
    :cond_8
    return-void
.end method

.method public constructor whitelist <init>([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 337
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 338
    if-eqz p1, :cond_11

    .line 339
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    .line 340
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 343
    :cond_11
    return-void
.end method

.method private greylist-max-p allocArrays(I)V
    .registers 10
    .param p1, "size"    # I

    .line 185
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_5e

    .line 186
    sget-object v0, Landroid/util/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_a
    sget-object v4, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_59

    .line 188
    sget-object v4, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_5b

    .line 190
    .local v4, "array":[Ljava/lang/Object;
    :try_start_10
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 191
    aget-object v5, v4, v3

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 192
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 193
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    if-eqz v5, :cond_2d

    .line 194
    aput-object v1, v4, v2

    aput-object v1, v4, v3

    .line 195
    sget v5, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr v5, v2

    sput v5, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_2b} :catch_2e
    .catchall {:try_start_10 .. :try_end_2b} :catchall_5b

    .line 200
    :try_start_2b
    monitor-exit v0

    return-void

    .line 203
    :cond_2d
    goto :goto_2f

    .line 202
    :catch_2e
    move-exception v5

    .line 206
    :goto_2f
    const-string v5, "ArraySet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v2, v4, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sput-object v1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 209
    sput v3, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 211
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_59
    monitor-exit v0

    goto :goto_b8

    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_2b .. :try_end_5d} :catchall_5b

    throw v1

    .line 212
    :cond_5e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_b8

    .line 213
    sget-object v0, Landroid/util/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_64
    sget-object v4, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_b3

    .line 215
    sget-object v4, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_b5

    .line 217
    .restart local v4    # "array":[Ljava/lang/Object;
    :try_start_6a
    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 218
    aget-object v5, v4, v3

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 219
    aget-object v5, v4, v2

    check-cast v5, [I

    iput-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 220
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    if-eqz v5, :cond_87

    .line 221
    aput-object v1, v4, v2

    aput-object v1, v4, v3

    .line 222
    sget v5, Landroid/util/ArraySet;->sBaseCacheSize:I

    sub-int/2addr v5, v2

    sput v5, Landroid/util/ArraySet;->sBaseCacheSize:I
    :try_end_85
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_85} :catch_88
    .catchall {:try_start_6a .. :try_end_85} :catchall_b5

    .line 227
    :try_start_85
    monitor-exit v0

    return-void

    .line 230
    :cond_87
    goto :goto_89

    .line 229
    :catch_88
    move-exception v5

    .line 233
    :goto_89
    const-string v5, "ArraySet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v2, v4, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sput-object v1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 236
    sput v3, Landroid/util/ArraySet;->sBaseCacheSize:I

    .line 238
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_b3
    monitor-exit v0

    goto :goto_b8

    :catchall_b5
    move-exception v1

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_85 .. :try_end_b7} :catchall_b5

    throw v1

    .line 241
    :cond_b8
    :goto_b8
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 242
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 243
    return-void
.end method

.method private blacklist binarySearch([II)I
    .registers 5
    .param p1, "hashes"    # [I
    .param p2, "hash"    # I

    .line 98
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    :try_start_0
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {p1, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 99
    :catch_7
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private static greylist-max-p freeArrays([I[Ljava/lang/Object;I)V
    .registers 10
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 251
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2d

    .line 252
    sget-object v0, Landroid/util/ArraySet;->sTwiceBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_e
    sget v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_28

    .line 254
    sget-object v1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 255
    aput-object p0, p1, v6

    .line 256
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_1a
    if-lt v1, v3, :cond_21

    .line 257
    aput-object v2, p1, v1

    .line 256
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 259
    .end local v1    # "i":I
    :cond_21
    sput-object p1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 260
    sget v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 266
    :cond_28
    monitor-exit v0

    goto :goto_53

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_2a

    throw v1

    .line 267
    :cond_2d
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_53

    .line 268
    sget-object v0, Landroid/util/ArraySet;->sBaseCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_34
    sget v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    if-ge v1, v5, :cond_4e

    .line 270
    sget-object v1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 271
    aput-object p0, p1, v6

    .line 272
    add-int/lit8 v1, p2, -0x1

    .restart local v1    # "i":I
    :goto_40
    if-lt v1, v3, :cond_47

    .line 273
    aput-object v2, p1, v1

    .line 272
    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    .line 275
    .end local v1    # "i":I
    :cond_47
    sput-object p1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 276
    sget v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    .line 282
    :cond_4e
    monitor-exit v0

    goto :goto_53

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_34 .. :try_end_52} :catchall_50

    throw v1

    .line 284
    :cond_53
    :goto_53
    return-void
.end method

.method private greylist-max-o getCollection()Landroid/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 874
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_b

    .line 875
    new-instance v0, Landroid/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/util/ArraySet$1;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    .line 922
    :cond_b
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method

.method private blacklist getNewShrunkenSize()I
    .registers 3

    .line 597
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_d

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    :cond_d
    return v1
.end method

.method private greylist-max-p indexOf(Ljava/lang/Object;I)I
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 107
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 110
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 111
    const/4 v1, -0x1

    return v1

    .line 114
    :cond_6
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-direct {p0, v1, p2}, Landroid/util/ArraySet;->binarySearch([II)I

    move-result v1

    .line 117
    .local v1, "index":I
    if-gez v1, :cond_f

    .line 118
    return v1

    .line 122
    :cond_f
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 123
    return v1

    .line 128
    :cond_1a
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_1c
    if-ge v2, v0, :cond_32

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_32

    .line 129
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return v2

    .line 128
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 133
    :cond_32
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_34
    if-ltz v3, :cond_4a

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_4a

    .line 134
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    return v3

    .line 133
    :cond_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 141
    .end local v3    # "i":I
    :cond_4a
    not-int v3, v2

    return v3
.end method

.method private greylist-max-p indexOfNull()I
    .registers 6

    .line 146
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 149
    .local v0, "N":I
    if-nez v0, :cond_6

    .line 150
    const/4 v1, -0x1

    return v1

    .line 153
    :cond_6
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/util/ArraySet;->binarySearch([II)I

    move-result v1

    .line 156
    .local v1, "index":I
    if-gez v1, :cond_10

    .line 157
    return v1

    .line 161
    :cond_10
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_17

    .line 162
    return v1

    .line 167
    :cond_17
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_19
    if-ge v2, v0, :cond_2b

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2b

    .line 168
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_28

    return v2

    .line 167
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 172
    :cond_2b
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2d
    if-ltz v3, :cond_3f

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_3f

    .line 173
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_3c

    return v3

    .line 172
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    .line 180
    .end local v3    # "i":I
    :cond_3f
    not-int v3, v2

    return v3
.end method

.method private blacklist shouldShrink()Z
    .registers 3

    .line 587
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v0, v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_12

    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 456
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 459
    .local v0, "oSize":I
    if-nez p1, :cond_a

    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, "hash":I
    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v2

    .local v2, "index":I
    goto :goto_1b

    .line 463
    .end local v1    # "hash":I
    .end local v2    # "index":I
    :cond_a
    iget-boolean v1, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v1, :cond_13

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_17

    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 464
    .restart local v1    # "hash":I
    :goto_17
    invoke-direct {p0, p1, v1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    .line 466
    .restart local v2    # "index":I
    :goto_1b
    const/4 v3, 0x0

    if-ltz v2, :cond_1f

    .line 467
    return v3

    .line 470
    :cond_1f
    not-int v2, v2

    .line 471
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-lt v0, v4, :cond_59

    .line 472
    const/16 v4, 0x8

    if-lt v0, v4, :cond_2d

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_32

    .line 473
    :cond_2d
    const/4 v5, 0x4

    if-lt v0, v5, :cond_31

    goto :goto_32

    :cond_31
    move v4, v5

    :goto_32
    nop

    .line 477
    .local v4, "n":I
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 478
    .local v5, "ohashes":[I
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 479
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 481
    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v7, :cond_53

    .line 485
    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v7, v7

    if-lez v7, :cond_4f

    .line 487
    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v8, v5

    invoke-static {v5, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v8, v6

    invoke-static {v6, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    :cond_4f
    invoke-static {v5, v6, v0}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_59

    .line 482
    :cond_53
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 494
    .end local v4    # "n":I
    .end local v5    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    :cond_59
    :goto_59
    if-ge v2, v0, :cond_71

    .line 498
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v0, v2

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    :cond_71
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v3, :cond_89

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v3, v3

    if-ge v2, v3, :cond_89

    .line 506
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aput v1, v3, v2

    .line 507
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 508
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    .line 509
    return v4

    .line 503
    :cond_89
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist addAll(Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 551
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    .line 552
    .local v0, "N":I
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 553
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v1, :cond_2a

    .line 554
    if-lez v0, :cond_37

    .line 555
    iget-object v1, p1, Landroid/util/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    iget-object v1, p1, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v1, :cond_24

    .line 560
    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    goto :goto_37

    .line 558
    :cond_24
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 563
    :cond_2a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v0, :cond_37

    .line 564
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 567
    .end local v1    # "i":I
    :cond_37
    :goto_37
    return-void
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 960
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 963
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 964
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    goto :goto_f

    .line 965
    :cond_1f
    return v0
.end method

.method public greylist-max-o append(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 518
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 519
    .local v0, "oSize":I
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    .line 520
    .local v1, "index":I
    if-nez p1, :cond_8

    const/4 v2, 0x0

    goto :goto_15

    .line 521
    :cond_8
    iget-boolean v2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v2, :cond_11

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_15
    nop

    .line 522
    .local v2, "hash":I
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v3, v3

    if-ge v1, v3, :cond_40

    .line 525
    if-lez v1, :cond_29

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-le v3, v2, :cond_29

    .line 533
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 534
    return-void

    .line 537
    :cond_29
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v3, :cond_3a

    .line 541
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    .line 542
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    aput v2, v3, v1

    .line 543
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 544
    return-void

    .line 538
    :cond_3a
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 523
    :cond_40
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Array is full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api clear()V
    .registers 5

    .line 350
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-eqz v0, :cond_18

    .line 351
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 352
    .local v0, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 353
    .local v1, "oarray":[Ljava/lang/Object;
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    .line 354
    .local v2, "osize":I
    sget-object v3, Landroid/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 355
    sget-object v3, Landroid/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 356
    const/4 v3, 0x0

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    .line 357
    invoke-static {v0, v1, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 359
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "osize":I
    :cond_18
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v0, :cond_1d

    .line 362
    return-void

    .line 360
    :cond_1d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 393
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 945
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 946
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 947
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 948
    const/4 v1, 0x0

    return v1

    .line 951
    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist ensureCapacity(I)V
    .registers 8
    .param p1, "minimumCapacity"    # I

    .line 369
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 370
    .local v0, "oSize":I
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v1, v1

    if-ge v1, p1, :cond_26

    .line 371
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 372
    .local v1, "ohashes":[I
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 373
    .local v2, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 374
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-lez v3, :cond_21

    .line 375
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    :cond_21
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v2, v3}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 380
    .end local v1    # "ohashes":[I
    .end local v2    # "oarray":[Ljava/lang/Object;
    :cond_26
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v1, v0, :cond_2b

    .line 383
    return-void

    .line 381
    :cond_2b
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 799
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 800
    return v0

    .line 802
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 803
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 804
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_17

    .line 805
    return v2

    .line 809
    :cond_17
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    :try_start_18
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_2a

    .line 810
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 811
    .local v4, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_24} :catch_2e
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_24} :catch_2c

    if-nez v5, :cond_27

    .line 812
    return v2

    .line 809
    .end local v4    # "mine":Ljava/lang/Object;, "TE;"
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 819
    .end local v3    # "i":I
    :cond_2a
    nop

    .line 820
    return v0

    .line 817
    :catch_2c
    move-exception v0

    .line 818
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 815
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_2e
    move-exception v0

    .line 816
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 822
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_30
    return v2
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 758
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_12

    .line 762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_11

    .line 763
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 765
    .end local v0    # "i":I
    :cond_11
    return-void

    .line 759
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 830
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 831
    .local v0, "hashes":[I
    const/4 v1, 0x0

    .line 832
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    .local v3, "s":I
    :goto_6
    if-ge v2, v3, :cond_e

    .line 833
    aget v4, v0, v2

    add-int/2addr v1, v4

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 835
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_e
    return v1
.end method

.method public whitelist indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 403
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-nez p1, :cond_7

    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v0

    goto :goto_18

    .line 404
    :cond_7
    iget-boolean v0, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_14
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    .line 403
    :goto_18
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 444
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 934
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 577
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 578
    .local v0, "index":I
    if-ltz v0, :cond_b

    .line 579
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 580
    const/4 v1, 0x1

    return v1

    .line 582
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist removeAll(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 675
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    .line 679
    .local v0, "N":I
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    .line 680
    .local v1, "originalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_11

    .line 681
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 683
    .end local v2    # "i":I
    :cond_11
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-eq v1, v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 975
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 976
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 977
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 978
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_5

    .line 979
    :cond_15
    return v0
.end method

.method public whitelist removeAt(I)Ljava/lang/Object;
    .registers 11
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 612
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 615
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 617
    :cond_f
    :goto_f
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 618
    .local v0, "oSize":I
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 619
    .local v1, "old":Ljava/lang/Object;
    const/4 v2, 0x1

    if-gt v0, v2, :cond_1c

    .line 622
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    goto :goto_74

    .line 624
    :cond_1c
    add-int/lit8 v2, v0, -0x1

    .line 625
    .local v2, "nSize":I
    invoke-direct {p0}, Landroid/util/ArraySet;->shouldShrink()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 627
    invoke-direct {p0}, Landroid/util/ArraySet;->getNewShrunkenSize()I

    move-result v3

    .line 631
    .local v3, "n":I
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 632
    .local v4, "ohashes":[I
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 633
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 635
    if-lez p1, :cond_3c

    .line 637
    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    const/4 v7, 0x0

    invoke-static {v4, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    :cond_3c
    if-ge p1, v2, :cond_50

    .line 645
    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    sub-int v8, v2, p1

    invoke-static {v4, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    sub-int v8, v2, p1

    invoke-static {v5, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_50
    goto :goto_6e

    .line 649
    :cond_51
    if-ge p1, v2, :cond_69

    .line 653
    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    sub-int v6, v2, p1

    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    sub-int v6, v2, p1

    invoke-static {v3, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    :cond_69
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 658
    :goto_6e
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ne v0, v3, :cond_75

    .line 661
    iput v2, p0, Landroid/util/ArraySet;->mSize:I

    .line 663
    .end local v2    # "nSize":I
    :goto_74
    return-object v1

    .line 659
    .restart local v2    # "nSize":I
    :cond_75
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 694
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 695
    return v1

    .line 700
    :cond_6
    const/4 v0, 0x0

    .line 701
    .local v0, "replaceIndex":I
    const/4 v2, 0x0

    .line 702
    .local v2, "numRemoved":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_31

    .line 703
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 704
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 706
    :cond_1a
    if-eq v0, v3, :cond_2c

    .line 707
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v5, v5, v3

    aput-object v5, v4, v0

    .line 708
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v5, v5, v3

    aput v5, v4, v0

    .line 710
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    .line 702
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 714
    .end local v3    # "i":I
    :cond_31
    if-nez v2, :cond_34

    .line 715
    return v1

    .line 716
    :cond_34
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3d

    .line 717
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 718
    return v4

    .line 721
    :cond_3d
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    .line 722
    invoke-direct {p0}, Landroid/util/ArraySet;->shouldShrink()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 724
    invoke-direct {p0}, Landroid/util/ArraySet;->getNewShrunkenSize()I

    move-result v3

    .line 725
    .local v3, "n":I
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 726
    .local v5, "ohashes":[I
    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 727
    .local v6, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 729
    iget-object v7, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v5, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 730
    iget-object v7, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v6, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 731
    .end local v3    # "n":I
    .end local v5    # "ohashes":[I
    .end local v6    # "oarray":[Ljava/lang/Object;
    goto :goto_71

    .line 735
    :cond_62
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    .local v1, "i":I
    :goto_64
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_71

    .line 736
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v3, v1

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 739
    .end local v1    # "i":I
    :cond_71
    :goto_71
    return v4
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 990
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 991
    .local v0, "removed":Z
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_5
    if-ltz v1, :cond_18

    .line 992
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 993
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 994
    const/4 v0, 0x1

    .line 991
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 997
    .end local v1    # "i":I
    :cond_18
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 747
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    return v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 5

    .line 769
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 770
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 776
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_17

    .line 777
    nop

    .line 778
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 779
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 781
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_17
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    array-length v0, p1

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-le v0, v1, :cond_29

    .line 783
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 785
    :cond_29
    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 847
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 848
    const-string/jumbo v0, "{}"

    return-object v0

    .line 851
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 852
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_36

    .line 854
    if-lez v1, :cond_24

    .line 855
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :cond_24
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 858
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2e

    .line 859
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 861
    :cond_2e
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .end local v2    # "value":Ljava/lang/Object;
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 864
    .end local v1    # "i":I
    :cond_36
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 419
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-lt p1, v0, :cond_f

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_9

    goto :goto_f

    .line 422
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 424
    :cond_f
    :goto_f
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist valueAtUnchecked(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 436
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
