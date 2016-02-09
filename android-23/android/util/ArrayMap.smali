.class public final Landroid/util/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field public static final EMPTY:Landroid/util/ArrayMap;

.field static final EMPTY_IMMUTABLE_INTS:[I

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

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
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Z)V

    #@6
    sput-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    #@8
    .line 81
    const/4 v0, 0x0

    #@9
    new-array v0, v0, [I

    #@b
    sput-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    #@d
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 238
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 239
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@5
    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@7
    .line 240
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@9
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@b
    .line 241
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    #@e
    .line 238
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 248
    if-nez p1, :cond_0

    #@6
    .line 249
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@8
    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@a
    .line 250
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@c
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@e
    .line 254
    :goto_0
    iput v1, p0, Landroid/util/ArrayMap;->mSize:I

    #@10
    .line 247
    return-void

    #@11
    .line 252
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    #@14
    goto :goto_0
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 270
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    #@3
    .line 271
    if-eqz p1, :cond_0

    #@5
    .line 272
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    #@8
    .line 269
    :cond_0
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "immutable"    # Z

    #@0
    .prologue
    .line 257
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 261
    if-eqz p1, :cond_0

    #@5
    sget-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    #@7
    :goto_0
    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@9
    .line 262
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@b
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@d
    .line 263
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    #@10
    .line 257
    return-void

    #@11
    .line 261
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@13
    goto :goto_0
.end method

.method private allocArrays(I)V
    .locals 4
    .param p1, "size"    # I

    #@0
    .prologue
    .line 165
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@2
    sget-object v2, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 166
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v2, "ArrayMap is immutable"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 168
    :cond_0
    const/16 v1, 0x8

    #@11
    if-ne p1, v1, :cond_3

    #@13
    .line 169
    const-class v2, Landroid/util/ArrayMap;

    #@15
    monitor-enter v2

    #@16
    .line 170
    :try_start_0
    sget-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 171
    sget-object v0, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@1c
    .line 172
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@1e
    .line 173
    const/4 v1, 0x0

    #@1f
    aget-object v1, v0, v1

    #@21
    check-cast v1, [Ljava/lang/Object;

    #@23
    sput-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@25
    .line 174
    const/4 v1, 0x1

    #@26
    aget-object v1, v0, v1

    #@28
    check-cast v1, [I

    #@2a
    iput-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@2c
    .line 175
    const/4 v1, 0x0

    #@2d
    const/4 v3, 0x1

    #@2e
    aput-object v1, v0, v3

    #@30
    const/4 v1, 0x0

    #@31
    const/4 v3, 0x0

    #@32
    aput-object v1, v0, v3

    #@34
    .line 176
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    #@36
    add-int/lit8 v1, v1, -0x1

    #@38
    sput v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    monitor-exit v2

    #@3b
    .line 179
    return-void

    #@3c
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_1
    monitor-exit v2

    #@3d
    .line 198
    :cond_2
    new-array v1, p1, [I

    #@3f
    iput-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@41
    .line 199
    shl-int/lit8 v1, p1, 0x1

    #@43
    new-array v1, v1, [Ljava/lang/Object;

    #@45
    iput-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@47
    .line 164
    return-void

    #@48
    .line 169
    :catchall_0
    move-exception v1

    #@49
    monitor-exit v2

    #@4a
    throw v1

    #@4b
    .line 182
    :cond_3
    const/4 v1, 0x4

    #@4c
    if-ne p1, v1, :cond_2

    #@4e
    .line 183
    const-class v2, Landroid/util/ArrayMap;

    #@50
    monitor-enter v2

    #@51
    .line 184
    :try_start_1
    sget-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@53
    if-eqz v1, :cond_1

    #@55
    .line 185
    sget-object v0, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@57
    .line 186
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@59
    .line 187
    const/4 v1, 0x0

    #@5a
    aget-object v1, v0, v1

    #@5c
    check-cast v1, [Ljava/lang/Object;

    #@5e
    sput-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@60
    .line 188
    const/4 v1, 0x1

    #@61
    aget-object v1, v0, v1

    #@63
    check-cast v1, [I

    #@65
    iput-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@67
    .line 189
    const/4 v1, 0x0

    #@68
    const/4 v3, 0x1

    #@69
    aput-object v1, v0, v3

    #@6b
    const/4 v1, 0x0

    #@6c
    const/4 v3, 0x0

    #@6d
    aput-object v1, v0, v3

    #@6f
    .line 190
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    #@71
    add-int/lit8 v1, v1, -0x1

    #@73
    sput v1, Landroid/util/ArrayMap;->mBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@75
    monitor-exit v2

    #@76
    .line 193
    return-void

    #@77
    .line 183
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    #@78
    monitor-exit v2

    #@79
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
    .line 203
    array-length v1, p0

    #@4
    const/16 v2, 0x8

    #@6
    if-ne v1, v2, :cond_3

    #@8
    .line 204
    const-class v2, Landroid/util/ArrayMap;

    #@a
    monitor-enter v2

    #@b
    .line 205
    :try_start_0
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 206
    sget-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object v1, p1, v3

    #@14
    .line 207
    const/4 v1, 0x1

    #@15
    aput-object p0, p1, v1

    #@17
    .line 208
    shl-int/lit8 v1, p2, 0x1

    #@19
    add-int/lit8 v0, v1, -0x1

    #@1b
    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    #@1d
    .line 209
    const/4 v1, 0x0

    #@1e
    aput-object v1, p1, v0

    #@20
    .line 208
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_0

    #@23
    .line 211
    :cond_0
    sput-object p1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@25
    .line 212
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    #@27
    add-int/lit8 v1, v1, 0x1

    #@29
    sput v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .end local v0    # "i":I
    :cond_1
    :goto_1
    monitor-exit v2

    #@2c
    .line 202
    :cond_2
    return-void

    #@2d
    .line 204
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1

    #@30
    .line 217
    :cond_3
    array-length v1, p0

    #@31
    const/4 v2, 0x4

    #@32
    if-ne v1, v2, :cond_2

    #@34
    .line 218
    const-class v2, Landroid/util/ArrayMap;

    #@36
    monitor-enter v2

    #@37
    .line 219
    :try_start_1
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    #@39
    if-ge v1, v3, :cond_1

    #@3b
    .line 220
    sget-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@3d
    const/4 v3, 0x0

    #@3e
    aput-object v1, p1, v3

    #@40
    .line 221
    const/4 v1, 0x1

    #@41
    aput-object p0, p1, v1

    #@43
    .line 222
    shl-int/lit8 v1, p2, 0x1

    #@45
    add-int/lit8 v0, v1, -0x1

    #@47
    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    #@49
    .line 223
    const/4 v1, 0x0

    #@4a
    aput-object v1, p1, v0

    #@4c
    .line 222
    add-int/lit8 v0, v0, -0x1

    #@4e
    goto :goto_2

    #@4f
    .line 225
    :cond_4
    sput-object p1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@51
    .line 226
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    #@53
    add-int/lit8 v1, v1, 0x1

    #@55
    sput v1, Landroid/util/ArrayMap;->mBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@57
    goto :goto_1

    #@58
    .line 218
    .end local v0    # "i":I
    :catchall_1
    move-exception v1

    #@59
    monitor-exit v2

    #@5a
    throw v1
.end method

.method private getCollection()Landroid/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 749
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 750
    new-instance v0, Landroid/util/ArrayMap$1;

    #@6
    invoke-direct {v0, p0}, Landroid/util/ArrayMap$1;-><init>(Landroid/util/ArrayMap;)V

    #@9
    iput-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    #@b
    .line 797
    :cond_0
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    #@d
    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 490
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    #@2
    .line 491
    .local v2, "index":I
    if-nez p1, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    .line 492
    .local v1, "hash":I
    :goto_0
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@7
    array-length v3, v3

    #@8
    if-lt v2, v3, :cond_1

    #@a
    .line 493
    new-instance v3, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v4, "Array is full"

    #@f
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v3

    #@13
    .line 491
    .end local v1    # "hash":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@16
    move-result v1

    #@17
    .restart local v1    # "hash":I
    goto :goto_0

    #@18
    .line 495
    :cond_1
    if-lez v2, :cond_2

    #@1a
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@1c
    add-int/lit8 v4, v2, -0x1

    #@1e
    aget v3, v3, v4

    #@20
    if-le v3, v1, :cond_2

    #@22
    .line 496
    new-instance v0, Ljava/lang/RuntimeException;

    #@24
    const-string/jumbo v3, "here"

    #@27
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    .line 497
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    #@2d
    .line 498
    const-string/jumbo v3, "ArrayMap"

    #@30
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, "New hash "

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 499
    const-string/jumbo v5, " is before end of array hash "

    #@43
    .line 498
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    .line 499
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@49
    add-int/lit8 v6, v2, -0x1

    #@4b
    aget v5, v5, v6

    #@4d
    .line 498
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 500
    const-string/jumbo v5, " at index "

    #@54
    .line 498
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    .line 500
    const-string/jumbo v5, " key "

    #@5f
    .line 498
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    .line 501
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 502
    return-void

    #@72
    .line 504
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    add-int/lit8 v3, v2, 0x1

    #@74
    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    #@76
    .line 505
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@78
    aput v1, v3, v2

    #@7a
    .line 506
    shl-int/lit8 v2, v2, 0x1

    #@7c
    .line 507
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@7e
    aput-object p1, v3, v2

    #@80
    .line 508
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@82
    add-int/lit8 v4, v2, 0x1

    #@84
    aput-object p2, v3, v4

    #@86
    .line 489
    return-void
.end method

.method public clear()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 281
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 282
    iget-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@7
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@9
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    #@b
    invoke-static {v0, v1, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@e
    .line 283
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@10
    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@12
    .line 284
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@14
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@16
    .line 285
    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    #@18
    .line 280
    :cond_0
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 807
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 329
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

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
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 370
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

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
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 309
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@3
    array-length v2, v2

    #@4
    if-ge v2, p1, :cond_1

    #@6
    .line 310
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@8
    .line 311
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@a
    .line 312
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    #@d
    .line 313
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    #@f
    if-lez v2, :cond_0

    #@11
    .line 314
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@13
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    #@15
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@18
    .line 315
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@1a
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    #@1c
    shl-int/lit8 v3, v3, 0x1

    #@1e
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    .line 317
    :cond_0
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    #@23
    invoke-static {v1, v0, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@26
    .line 308
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 857
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/util/MapCollections;->getEntrySet()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 659
    if-ne p0, p1, :cond_0

    #@4
    .line 660
    return v10

    #@5
    .line 662
    :cond_0
    instance-of v7, p1, Ljava/util/Map;

    #@7
    if-eqz v7, :cond_6

    #@9
    move-object v4, p1

    #@a
    .line 663
    check-cast v4, Ljava/util/Map;

    #@c
    .line 664
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    #@f
    move-result v7

    #@10
    invoke-interface {v4}, Ljava/util/Map;->size()I

    #@13
    move-result v8

    #@14
    if-eq v7, v8, :cond_1

    #@16
    .line 665
    return v9

    #@17
    .line 669
    :cond_1
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    #@1a
    if-ge v0, v7, :cond_5

    #@1c
    .line 670
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    .line 671
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@23
    move-result-object v5

    #@24
    .line 672
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    .line 673
    .local v6, "theirs":Ljava/lang/Object;
    if-nez v5, :cond_4

    #@2a
    .line 674
    if-nez v6, :cond_3

    #@2c
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_3

    #@32
    .line 669
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 675
    :cond_3
    return v9

    #@36
    .line 677
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
    .line 678
    return v9

    #@3d
    .line 683
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :catch_0
    move-exception v1

    #@3e
    .line 684
    .local v1, "ignored":Ljava/lang/ClassCastException;
    return v9

    #@3f
    .line 681
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    #@40
    .line 682
    .local v2, "ignored":Ljava/lang/NullPointerException;
    return v9

    #@41
    .line 686
    .end local v2    # "ignored":Ljava/lang/NullPointerException;
    :cond_5
    return v10

    #@42
    .line 688
    .end local v0    # "i":I
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    return v9
.end method

.method public erase()V
    .locals 5

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    #@1
    .line 294
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    #@3
    if-lez v3, :cond_1

    #@5
    .line 295
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    #@7
    shl-int/lit8 v0, v3, 0x1

    #@9
    .line 296
    .local v0, "N":I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@b
    .line 297
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@e
    .line 298
    const/4 v3, 0x0

    #@f
    aput-object v3, v1, v2

    #@11
    .line 297
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 300
    :cond_0
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@16
    .line 293
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_1
    return-void
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
    .line 381
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 382
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

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
    .line 696
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@2
    .line 697
    .local v1, "hashes":[I
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@4
    .line 698
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@5
    .line 699
    .local v3, "result":I
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    const/4 v5, 0x1

    #@7
    .local v5, "v":I
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@9
    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_1

    #@b
    .line 700
    aget-object v6, v0, v5

    #@d
    .line 701
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
    .line 699
    add-int/lit8 v2, v2, 0x1

    #@16
    add-int/lit8 v5, v5, 0x2

    #@18
    goto :goto_0

    #@19
    .line 701
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    #@1c
    move-result v7

    #@1d
    goto :goto_1

    #@1e
    .line 703
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
    .line 89
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    #@2
    .line 92
    .local v0, "N":I
    if-nez v0, :cond_0

    #@4
    .line 93
    const/4 v4, -0x1

    #@5
    return v4

    #@6
    .line 96
    :cond_0
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@8
    invoke-static {v4, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@b
    move-result v3

    #@c
    .line 99
    .local v3, "index":I
    if-gez v3, :cond_1

    #@e
    .line 100
    return v3

    #@f
    .line 104
    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

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
    .line 105
    return v3

    #@1c
    .line 110
    :cond_2
    add-int/lit8 v1, v3, 0x1

    #@1e
    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@20
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@22
    aget v4, v4, v1

    #@24
    if-ne v4, p2, :cond_4

    #@26
    .line 111
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

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
    .line 110
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 115
    :cond_4
    add-int/lit8 v2, v3, -0x1

    #@38
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    #@3a
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@3c
    aget v4, v4, v2

    #@3e
    if-ne v4, p2, :cond_6

    #@40
    .line 116
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

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
    .line 115
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@4f
    goto :goto_1

    #@50
    .line 123
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
    .line 339
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

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
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@e
    move-result v0

    #@f
    goto :goto_0
.end method

.method indexOfNull()I
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 127
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    #@3
    .line 130
    .local v0, "N":I
    if-nez v0, :cond_0

    #@5
    .line 131
    const/4 v4, -0x1

    #@6
    return v4

    #@7
    .line 134
    :cond_0
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@9
    invoke-static {v4, v0, v5}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    #@c
    move-result v3

    #@d
    .line 137
    .local v3, "index":I
    if-gez v3, :cond_1

    #@f
    .line 138
    return v3

    #@10
    .line 142
    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@12
    shl-int/lit8 v5, v3, 0x1

    #@14
    aget-object v4, v4, v5

    #@16
    if-nez v4, :cond_2

    #@18
    .line 143
    return v3

    #@19
    .line 148
    :cond_2
    add-int/lit8 v1, v3, 0x1

    #@1b
    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    #@1d
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@1f
    aget v4, v4, v1

    #@21
    if-nez v4, :cond_4

    #@23
    .line 149
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@25
    shl-int/lit8 v5, v1, 0x1

    #@27
    aget-object v4, v4, v5

    #@29
    if-nez v4, :cond_3

    #@2b
    return v1

    #@2c
    .line 148
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 153
    :cond_4
    add-int/lit8 v2, v3, -0x1

    #@31
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    #@33
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@35
    aget v4, v4, v2

    #@37
    if-nez v4, :cond_6

    #@39
    .line 154
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@3b
    shl-int/lit8 v5, v2, 0x1

    #@3d
    aget-object v4, v4, v5

    #@3f
    if-nez v4, :cond_5

    #@41
    return v2

    #@42
    .line 153
    :cond_5
    add-int/lit8 v2, v2, -0x1

    #@44
    goto :goto_1

    #@45
    .line 161
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
    .line 343
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    #@2
    mul-int/lit8 v0, v3, 0x2

    #@4
    .line 344
    .local v0, "N":I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    .line 345
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    #@8
    .line 346
    const/4 v2, 0x1

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    #@b
    .line 347
    aget-object v3, v1, v2

    #@d
    if-nez v3, :cond_0

    #@f
    .line 348
    shr-int/lit8 v3, v2, 0x1

    #@11
    return v3

    #@12
    .line 346
    :cond_0
    add-int/lit8 v2, v2, 0x2

    #@14
    goto :goto_0

    #@15
    .line 352
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    #@16
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    #@18
    .line 353
    aget-object v3, v1, v2

    #@1a
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_2

    #@20
    .line 354
    shr-int/lit8 v3, v2, 0x1

    #@22
    return v3

    #@23
    .line 352
    :cond_2
    add-int/lit8 v2, v2, 0x2

    #@25
    goto :goto_1

    #@26
    .line 358
    :cond_3
    const/4 v3, -0x1

    #@27
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 421
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

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
    .line 391
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@2
    shl-int/lit8 v1, p1, 0x1

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 870
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    #@7
    move-result-object v0

    #@8
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
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v11, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 436
    if-nez p1, :cond_0

    #@4
    .line 437
    const/4 v0, 0x0

    #@5
    .line 438
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    #@8
    move-result v1

    #@9
    .line 443
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 444
    shl-int/lit8 v6, v1, 0x1

    #@d
    add-int/lit8 v1, v6, 0x1

    #@f
    .line 445
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@11
    aget-object v5, v6, v1

    #@13
    .line 446
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@15
    aput-object p2, v6, v1

    #@17
    .line 447
    return-object v5

    #@18
    .line 440
    .end local v0    # "hash":I
    .end local v1    # "index":I
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@1b
    move-result v0

    #@1c
    .line 441
    .restart local v0    # "hash":I
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@1f
    move-result v1

    #@20
    .restart local v1    # "index":I
    goto :goto_0

    #@21
    .line 450
    :cond_1
    not-int v1, v1

    #@22
    .line 451
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    #@24
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@26
    array-length v7, v7

    #@27
    if-lt v6, v7, :cond_3

    #@29
    .line 452
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    #@2b
    const/16 v7, 0x8

    #@2d
    if-lt v6, v7, :cond_5

    #@2f
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    #@31
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    #@33
    shr-int/lit8 v7, v7, 0x1

    #@35
    add-int v2, v6, v7

    #@37
    .line 457
    .local v2, "n":I
    :goto_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@39
    .line 458
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@3b
    .line 459
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/util/ArrayMap;->allocArrays(I)V

    #@3e
    .line 461
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@40
    array-length v6, v6

    #@41
    if-lez v6, :cond_2

    #@43
    .line 463
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@45
    array-length v7, v4

    #@46
    invoke-static {v4, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy([II[III)V

    #@49
    .line 464
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@4b
    array-length v7, v3

    #@4c
    invoke-static {v3, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4f
    .line 467
    :cond_2
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    #@51
    invoke-static {v4, v3, v6}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@54
    .line 470
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_3
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    #@56
    if-ge v1, v6, :cond_4

    #@58
    .line 473
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@5a
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@5c
    add-int/lit8 v8, v1, 0x1

    #@5e
    iget v9, p0, Landroid/util/ArrayMap;->mSize:I

    #@60
    sub-int/2addr v9, v1

    #@61
    invoke-static {v6, v1, v7, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@64
    .line 474
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@66
    shl-int/lit8 v7, v1, 0x1

    #@68
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@6a
    add-int/lit8 v9, v1, 0x1

    #@6c
    shl-int/lit8 v9, v9, 0x1

    #@6e
    iget v10, p0, Landroid/util/ArrayMap;->mSize:I

    #@70
    sub-int/2addr v10, v1

    #@71
    shl-int/lit8 v10, v10, 0x1

    #@73
    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@76
    .line 477
    :cond_4
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@78
    aput v0, v6, v1

    #@7a
    .line 478
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@7c
    shl-int/lit8 v7, v1, 0x1

    #@7e
    aput-object p1, v6, v7

    #@80
    .line 479
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@82
    shl-int/lit8 v7, v1, 0x1

    #@84
    add-int/lit8 v7, v7, 0x1

    #@86
    aput-object p2, v6, v7

    #@88
    .line 480
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    #@8a
    add-int/lit8 v6, v6, 0x1

    #@8c
    iput v6, p0, Landroid/util/ArrayMap;->mSize:I

    #@8e
    .line 481
    return-object v11

    #@8f
    .line 453
    :cond_5
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

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

.method public putAll(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    #@1
    .line 554
    iget v0, p1, Landroid/util/ArrayMap;->mSize:I

    #@3
    .line 555
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    #@5
    add-int/2addr v2, v0

    #@6
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    #@9
    .line 556
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    #@b
    if-nez v2, :cond_1

    #@d
    .line 557
    if-lez v0, :cond_0

    #@f
    .line 558
    iget-object v2, p1, Landroid/util/ArrayMap;->mHashes:[I

    #@11
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@13
    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@16
    .line 559
    iget-object v2, p1, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@18
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@1a
    shl-int/lit8 v4, v0, 0x1

    #@1c
    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    .line 560
    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    #@21
    .line 553
    :cond_0
    return-void

    #@22
    .line 563
    :cond_1
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@25
    .line 564
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 563
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 816
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    #@2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@5
    move-result v3

    #@6
    add-int/2addr v2, v3

    #@7
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    #@a
    .line 817
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/Map$Entry;

    #@1e
    .line 818
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    goto :goto_0

    #@2a
    .line 815
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
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
    .line 577
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 578
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@6
    .line 579
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 582
    :cond_0
    const/4 v1, 0x0

    #@c
    return-object v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 828
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    #@3
    move-result v0

    #@4
    return v0
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
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v9, 0x0

    #@1
    const/16 v6, 0x8

    #@3
    const/4 v7, 0x0

    #@4
    .line 591
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    shl-int/lit8 v5, p1, 0x1

    #@8
    add-int/lit8 v5, v5, 0x1

    #@a
    aget-object v3, v4, v5

    #@c
    .line 592
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@e
    const/4 v5, 0x1

    #@f
    if-gt v4, v5, :cond_1

    #@11
    .line 595
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@13
    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@15
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    #@17
    invoke-static {v4, v5, v6}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@1a
    .line 596
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    #@1c
    iput-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@1e
    .line 597
    sget-object v4, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@20
    iput-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@22
    .line 598
    iput v7, p0, Landroid/util/ArrayMap;->mSize:I

    #@24
    .line 638
    :cond_0
    :goto_0
    return-object v3

    #@25
    .line 600
    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@27
    array-length v4, v4

    #@28
    if-le v4, v6, :cond_4

    #@2a
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@2c
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@2e
    array-length v5, v5

    #@2f
    div-int/lit8 v5, v5, 0x3

    #@31
    if-ge v4, v5, :cond_4

    #@33
    .line 604
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@35
    if-le v4, v6, :cond_3

    #@37
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@39
    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    #@3b
    shr-int/lit8 v5, v5, 0x1

    #@3d
    add-int v0, v4, v5

    #@3f
    .line 608
    .local v0, "n":I
    :goto_1
    iget-object v2, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@41
    .line 609
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@43
    .line 610
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/util/ArrayMap;->allocArrays(I)V

    #@46
    .line 612
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@48
    add-int/lit8 v4, v4, -0x1

    #@4a
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@4c
    .line 613
    if-lez p1, :cond_2

    #@4e
    .line 615
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@50
    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy([II[III)V

    #@53
    .line 616
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@55
    shl-int/lit8 v5, p1, 0x1

    #@57
    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5a
    .line 618
    :cond_2
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@5c
    if-ge p1, v4, :cond_0

    #@5e
    .line 621
    add-int/lit8 v4, p1, 0x1

    #@60
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@62
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    #@64
    sub-int/2addr v6, p1

    #@65
    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy([II[III)V

    #@68
    .line 622
    add-int/lit8 v4, p1, 0x1

    #@6a
    shl-int/lit8 v4, v4, 0x1

    #@6c
    iget-object v5, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@6e
    shl-int/lit8 v6, p1, 0x1

    #@70
    .line 623
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    #@72
    sub-int/2addr v7, p1

    #@73
    shl-int/lit8 v7, v7, 0x1

    #@75
    .line 622
    invoke-static {v1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@78
    goto :goto_0

    #@79
    .line 604
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_3
    const/16 v0, 0x8

    #@7b
    .restart local v0    # "n":I
    goto :goto_1

    #@7c
    .line 626
    .end local v0    # "n":I
    :cond_4
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@7e
    add-int/lit8 v4, v4, -0x1

    #@80
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@82
    .line 627
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@84
    if-ge p1, v4, :cond_5

    #@86
    .line 630
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@88
    add-int/lit8 v5, p1, 0x1

    #@8a
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@8c
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    #@8e
    sub-int/2addr v7, p1

    #@8f
    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy([II[III)V

    #@92
    .line 631
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@94
    add-int/lit8 v5, p1, 0x1

    #@96
    shl-int/lit8 v5, v5, 0x1

    #@98
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@9a
    shl-int/lit8 v7, p1, 0x1

    #@9c
    .line 632
    iget v8, p0, Landroid/util/ArrayMap;->mSize:I

    #@9e
    sub-int/2addr v8, p1

    #@9f
    shl-int/lit8 v8, v8, 0x1

    #@a1
    .line 631
    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a4
    .line 634
    :cond_5
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@a6
    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    #@a8
    shl-int/lit8 v5, v5, 0x1

    #@aa
    aput-object v9, v4, v5

    #@ac
    .line 635
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@ae
    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    #@b0
    shl-int/lit8 v5, v5, 0x1

    #@b2
    add-int/lit8 v5, v5, 0x1

    #@b4
    aput-object v9, v4, v5

    #@b6
    goto/16 :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 838
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    #@3
    move-result v0

    #@4
    return v0
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
    .line 410
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    #@2
    add-int/lit8 p1, v1, 0x1

    #@4
    .line 411
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    aget-object v0, v1, p1

    #@8
    .line 412
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@a
    aput-object p2, v1, p1

    #@c
    .line 413
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 646
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 715
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 716
    const-string/jumbo v4, "{}"

    #@9
    return-object v4

    #@a
    .line 719
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@e
    mul-int/lit8 v4, v4, 0x1c

    #@10
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@13
    .line 720
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    #@15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 721
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    #@1b
    if-ge v1, v4, :cond_4

    #@1d
    .line 722
    if-lez v1, :cond_1

    #@1f
    .line 723
    const-string/jumbo v4, ", "

    #@22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 725
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    .line 726
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    #@2b
    .line 727
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    .line 731
    :goto_1
    const/16 v4, 0x3d

    #@30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 732
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    .line 733
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3

    #@39
    .line 734
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    .line 721
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 729
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v4, "(this Map)"

    #@42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    goto :goto_1

    #@46
    .line 736
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v4, "(this Map)"

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    goto :goto_2

    #@4d
    .line 739
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v4, 0x7d

    #@4f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    .line 740
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    return-object v4
.end method

.method public validate()V
    .locals 11

    #@0
    .prologue
    .line 520
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    #@2
    .line 521
    .local v0, "N":I
    const/4 v8, 0x1

    #@3
    if-gt v0, v8, :cond_0

    #@5
    .line 523
    return-void

    #@6
    .line 525
    :cond_0
    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@8
    const/4 v9, 0x0

    #@9
    aget v1, v8, v9

    #@b
    .line 526
    .local v1, "basehash":I
    const/4 v2, 0x0

    #@c
    .line 527
    .local v2, "basei":I
    const/4 v5, 0x1

    #@d
    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    #@f
    .line 528
    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    #@11
    aget v4, v8, v5

    #@13
    .line 529
    .local v4, "hash":I
    if-eq v4, v1, :cond_2

    #@15
    .line 530
    move v1, v4

    #@16
    .line 531
    move v2, v5

    #@17
    .line 527
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 536
    :cond_2
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@1c
    shl-int/lit8 v9, v5, 0x1

    #@1e
    aget-object v3, v8, v9

    #@20
    .line 537
    .local v3, "cur":Ljava/lang/Object;
    add-int/lit8 v6, v5, -0x1

    #@22
    .local v6, "j":I
    :goto_1
    if-lt v6, v2, :cond_1

    #@24
    .line 538
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@26
    shl-int/lit8 v9, v6, 0x1

    #@28
    aget-object v7, v8, v9

    #@2a
    .line 539
    .local v7, "prev":Ljava/lang/Object;
    if-ne v3, v7, :cond_3

    #@2c
    .line 540
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v9, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v10, "Duplicate key in ArrayMap: "

    #@36
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v8

    #@46
    .line 542
    :cond_3
    if-eqz v3, :cond_4

    #@48
    if-eqz v7, :cond_4

    #@4a
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v8

    #@4e
    if-eqz v8, :cond_4

    #@50
    .line 543
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@52
    new-instance v9, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v10, "Duplicate key in ArrayMap: "

    #@5a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v9

    #@5e
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v9

    #@62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v9

    #@66
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@69
    throw v8

    #@6a
    .line 537
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@6c
    goto :goto_1

    #@6d
    .line 519
    .end local v3    # "cur":Ljava/lang/Object;
    .end local v4    # "hash":I
    .end local v6    # "j":I
    .end local v7    # "prev":Ljava/lang/Object;
    :cond_5
    return-void
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
    .line 400
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    #@2
    shl-int/lit8 v1, p1, 0x1

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 883
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/util/MapCollections;->getValues()Ljava/util/Collection;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
