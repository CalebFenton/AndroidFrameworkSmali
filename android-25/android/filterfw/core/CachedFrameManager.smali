.class public Landroid/filterfw/core/CachedFrameManager;
.super Landroid/filterfw/core/SimpleFrameManager;
.source "CachedFrameManager.java"


# instance fields
.field private mAvailableFrames:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mStorageCapacity:I

.field private mStorageSize:I

.field private mTimeStamp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 39
    invoke-direct {p0}, Landroid/filterfw/core/SimpleFrameManager;-><init>()V

    #@4
    .line 34
    const/high16 v0, 0x1800000

    #@6
    iput v0, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    #@8
    .line 35
    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    #@a
    .line 36
    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    #@c
    .line 40
    new-instance v0, Ljava/util/TreeMap;

    #@e
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@11
    iput-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@13
    .line 38
    return-void
.end method

.method private dropOldestFrame()V
    .locals 4

    #@0
    .prologue
    .line 123
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@2
    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/lang/Integer;

    #@8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v1

    #@c
    .line 124
    .local v1, "oldest":I
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v3

    #@12
    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/filterfw/core/Frame;

    #@18
    .line 125
    .local v0, "frame":Landroid/filterfw/core/Frame;
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    #@1a
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@21
    move-result v3

    #@22
    sub-int/2addr v2, v3

    #@23
    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    #@25
    .line 126
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    #@28
    .line 127
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 122
    return-void
.end method

.method private findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .locals 9
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "bindingType"    # I
    .param p3, "bindingId"    # J

    #@0
    .prologue
    .line 132
    iget-object v4, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@2
    monitor-enter v4

    #@3
    .line 133
    :try_start_0
    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@5
    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    .line 134
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/filterfw/core/Frame;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroid/filterfw/core/Frame;

    #@1f
    .line 136
    .local v2, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Landroid/filterfw/core/FrameFormat;->isReplaceableBy(Landroid/filterfw/core/FrameFormat;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 138
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getBindingType()I

    #@2c
    move-result v3

    #@2d
    if-ne p2, v3, :cond_0

    #@2f
    .line 139
    if-eqz p2, :cond_1

    #@31
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getBindingId()J

    #@34
    move-result-wide v6

    #@35
    cmp-long v3, p3, v6

    #@37
    if-nez v3, :cond_0

    #@39
    .line 142
    :cond_1
    invoke-super {p0, v2}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    #@3c
    .line 143
    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@3e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@41
    move-result-object v5

    #@42
    invoke-interface {v3, v5}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 144
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->onFrameFetch()V

    #@48
    .line 145
    invoke-virtual {v2, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    #@4b
    .line 146
    iget v3, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    #@4d
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@50
    move-result v5

    #@51
    sub-int/2addr v3, v5

    #@52
    iput v3, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@54
    monitor-exit v4

    #@55
    .line 147
    return-object v2

    #@56
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/filterfw/core/Frame;>;"
    .end local v2    # "frame":Landroid/filterfw/core/Frame;
    :cond_2
    monitor-exit v4

    #@57
    .line 152
    const/4 v3, 0x0

    #@58
    return-object v3

    #@59
    .line 132
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@5a
    monitor-exit v4

    #@5b
    throw v3
.end method

.method private storeFrame(Landroid/filterfw/core/Frame;)Z
    .locals 5
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 99
    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@2
    monitor-enter v3

    #@3
    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@a
    move-result v0

    #@b
    .line 102
    .local v0, "frameSize":I
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    if-le v0, v2, :cond_0

    #@f
    .line 103
    const/4 v2, 0x0

    #@10
    monitor-exit v3

    #@11
    return v2

    #@12
    .line 107
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    #@14
    add-int v1, v2, v0

    #@16
    .line 108
    .local v1, "newStorageSize":I
    :goto_0
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    #@18
    if-le v1, v2, :cond_1

    #@1a
    .line 109
    invoke-direct {p0}, Landroid/filterfw/core/CachedFrameManager;->dropOldestFrame()V

    #@1d
    .line 110
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    #@1f
    add-int v1, v2, v0

    #@21
    goto :goto_0

    #@22
    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->onFrameStore()V

    #@25
    .line 115
    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    #@27
    .line 116
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@29
    iget v4, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    #@2b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2e
    move-result-object v4

    #@2f
    invoke-interface {v2, v4, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 117
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    #@34
    add-int/lit8 v2, v2, 0x1

    #@36
    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    .line 118
    const/4 v2, 0x1

    #@39
    monitor-exit v3

    #@3a
    return v2

    #@3b
    .line 99
    .end local v0    # "frameSize":I
    .end local v1    # "newStorageSize":I
    :catchall_0
    move-exception v2

    #@3c
    monitor-exit v3

    #@3d
    throw v2
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    #@0
    .prologue
    .line 87
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@2
    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "frame$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/filterfw/core/Frame;

    #@16
    .line 88
    .local v0, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    #@19
    goto :goto_0

    #@1a
    .line 90
    .end local v0    # "frame":Landroid/filterfw/core/Frame;
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    #@1c
    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    #@1f
    .line 86
    return-void
.end method

.method public newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .locals 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "bindingType"    # I
    .param p3, "bindingId"    # J

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@3
    move-result-object v0

    #@4
    .line 56
    .local v0, "result":Landroid/filterfw/core/Frame;
    if-nez v0, :cond_0

    #@6
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/filterfw/core/SimpleFrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@9
    move-result-object v0

    #@a
    .line 59
    :cond_0
    const-wide/16 v2, -0x2

    #@c
    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@f
    .line 60
    return-object v0
.end method

.method public newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .locals 4
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 45
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, v1, v2, v3}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 46
    .local v0, "result":Landroid/filterfw/core/Frame;
    if-nez v0, :cond_0

    #@9
    .line 47
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@c
    move-result-object v0

    #@d
    .line 49
    :cond_0
    const-wide/16 v2, -0x2

    #@f
    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@12
    .line 50
    return-object v0
.end method

.method public releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->isReusable()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 71
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->decRefCount()I

    #@9
    move-result v0

    #@a
    .line 72
    .local v0, "refCount":I
    if-nez v0, :cond_1

    #@c
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 73
    invoke-direct {p0, p1}, Landroid/filterfw/core/CachedFrameManager;->storeFrame(Landroid/filterfw/core/Frame;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 74
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    #@1b
    .line 76
    :cond_0
    const/4 v1, 0x0

    #@1c
    return-object v1

    #@1d
    .line 77
    :cond_1
    if-gez v0, :cond_3

    #@1f
    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    #@21
    const-string/jumbo v2, "Frame reference count dropped below 0!"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 81
    .end local v0    # "refCount":I
    :cond_2
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    #@2b
    .line 83
    :cond_3
    return-object p1
.end method

.method public retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public tearDown()V
    .locals 0

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/filterfw/core/CachedFrameManager;->clearCache()V

    #@3
    .line 94
    return-void
.end method
