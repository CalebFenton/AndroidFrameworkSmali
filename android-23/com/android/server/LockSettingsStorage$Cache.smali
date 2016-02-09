.class Lcom/android/server/LockSettingsStorage$Cache;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/LockSettingsStorage$Cache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

.field private mVersion:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/LockSettingsStorage$Cache;->getVersion()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 505
    new-instance v0, Landroid/util/ArrayMap;

    #@5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    #@a
    .line 506
    new-instance v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/LockSettingsStorage$Cache$CacheKey;)V

    #@10
    iput-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@12
    .line 507
    const/4 v0, 0x0

    #@13
    iput v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    #@15
    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsStorage$Cache;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/LockSettingsStorage$Cache;-><init>()V

    #@3
    return-void
.end method

.method private declared-synchronized contains(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    #@3
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@5
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit p0

    #@e
    return v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method private declared-synchronized getVersion()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 573
    :try_start_0
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method private declared-synchronized peek(ILjava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    #@3
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@5
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method private declared-synchronized put(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    #@3
    new-instance v1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v1, v2}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/LockSettingsStorage$Cache$CacheKey;)V

    #@9
    invoke-virtual {v1, p1, p2, p4}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 554
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 551
    return-void

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method private declared-synchronized putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I
    .param p5, "version"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 559
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    #@9
    if-ne v0, p5, :cond_0

    #@b
    .line 560
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 558
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@6
    .line 589
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    iput v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 587
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method hasFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 531
    const/4 v0, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method hasKeyValue(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 515
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method isFetched(I)Z
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 547
    const-string/jumbo v0, ""

    #@3
    const/4 v1, 0x2

    #@4
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method peekFile(Ljava/lang/String;)[B
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 527
    const/4 v0, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [B

    #@8
    return-object v0
.end method

.method peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 510
    const/4 v1, 0x0

    #@1
    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 511
    .local v0, "cached":Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/LockSettingsStorage;->-get0()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .end local v0    # "cached":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    #@c
    .restart local v0    # "cached":Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    check-cast v0, Ljava/lang/String;

    #@e
    move-object p2, v0

    #@f
    goto :goto_0
.end method

.method putFile(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 535
    const/4 v0, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    #@5
    .line 534
    return-void
.end method

.method putFileIfUnchanged(Ljava/lang/String;[BI)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "version"    # I

    #@0
    .prologue
    .line 539
    const/4 v1, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    move-object v0, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move v5, p3

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    #@9
    .line 538
    return-void
.end method

.method putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 519
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    #@4
    .line 518
    return-void
.end method

.method putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "version"    # I

    #@0
    .prologue
    .line 523
    const/4 v1, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    #@9
    .line 522
    return-void
.end method

.method declared-synchronized removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    #@3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    #@6
    move-result v1

    #@7
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 578
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    #@d
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@13
    iget v1, v1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    #@15
    if-ne v1, p1, :cond_0

    #@17
    .line 579
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@1c
    .line 577
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 584
    :cond_1
    iget v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    iput v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit p0

    #@26
    .line 576
    return-void

    #@27
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@28
    monitor-exit p0

    #@29
    throw v1
.end method

.method setFetched(I)V
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 543
    const-string/jumbo v0, "isFetched"

    #@3
    const-string/jumbo v1, "true"

    #@6
    const/4 v2, 0x2

    #@7
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    #@a
    .line 542
    return-void
.end method
