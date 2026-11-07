.class public Landroid/filterfw/core/CachedFrameManager;
.super Landroid/filterfw/core/SimpleFrameManager;
.source "CachedFrameManager.java"


# instance fields
.field private greylist-max-o mAvailableFrames:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStorageCapacity:I

.field private greylist-max-o mStorageSize:I

.field private greylist-max-o mTimeStamp:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/filterfw/core/SimpleFrameManager;-><init>()V

    .line 34
    const/high16 v0, 0x1800000

    iput v0, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 36
    iput v0, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    .line 41
    return-void
.end method

.method private greylist-max-o dropOldestFrame()V
    .registers 5

    .line 123
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 124
    .local v0, "oldest":I
    iget-object v1, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Frame;

    .line 125
    .local v1, "frame":Landroid/filterfw/core/Frame;
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 126
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 127
    iget-object v2, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method private greylist-max-o findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .registers 11
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "bindingType"    # I
    .param p3, "bindingId"    # J

    .line 132
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 134
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/filterfw/core/Frame;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/filterfw/core/Frame;

    .line 136
    .local v3, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/filterfw/core/FrameFormat;->isReplaceableBy(Landroid/filterfw/core/FrameFormat;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 138
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getBindingType()I

    move-result v4

    if-ne p2, v4, :cond_56

    if-eqz p2, :cond_39

    .line 139
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getBindingId()J

    move-result-wide v4

    cmp-long v4, p3, v4

    if-nez v4, :cond_56

    .line 142
    :cond_39
    invoke-super {p0, v3}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 143
    iget-object v1, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->onFrameFetch()V

    .line 145
    invoke-virtual {v3, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    .line 146
    iget v1, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 147
    monitor-exit v0

    return-object v3

    .line 150
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/filterfw/core/Frame;>;"
    .end local v3    # "frame":Landroid/filterfw/core/Frame;
    :cond_56
    goto :goto_d

    .line 151
    :cond_57
    monitor-exit v0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 151
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private greylist-max-o storeFrame(Landroid/filterfw/core/Frame;)Z
    .registers 7
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 99
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    monitor-enter v0

    .line 101
    :try_start_3
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    .line 102
    .local v1, "frameSize":I
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    if-le v1, v2, :cond_12

    .line 103
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 107
    :cond_12
    iget v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    add-int/2addr v2, v1

    .line 108
    .local v2, "newStorageSize":I
    :goto_15
    iget v3, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageCapacity:I

    if-le v2, v3, :cond_21

    .line 109
    invoke-direct {p0}, Landroid/filterfw/core/CachedFrameManager;->dropOldestFrame()V

    .line 110
    iget v3, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    add-int v2, v3, v1

    goto :goto_15

    .line 114
    :cond_21
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->onFrameStore()V

    .line 115
    iput v2, p0, Landroid/filterfw/core/CachedFrameManager;->mStorageSize:I

    .line 116
    iget-object v3, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    iget v4, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget v3, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/filterfw/core/CachedFrameManager;->mTimeStamp:I

    .line 118
    monitor-exit v0

    return v4

    .line 119
    .end local v1    # "frameSize":I
    .end local v2    # "newStorageSize":I
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method


# virtual methods
.method public greylist-max-o clearCache()V
    .registers 3

    .line 87
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/Frame;

    .line 88
    .local v1, "frame":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 89
    .end local v1    # "frame":Landroid/filterfw/core/Frame;
    goto :goto_a

    .line 90
    :cond_1a
    iget-object v0, p0, Landroid/filterfw/core/CachedFrameManager;->mAvailableFrames:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 91
    return-void
.end method

.method public greylist-max-o newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .registers 8
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "bindingType"    # I
    .param p3, "bindingId"    # J

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 56
    .local v0, "result":Landroid/filterfw/core/Frame;
    if-nez v0, :cond_a

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/filterfw/core/SimpleFrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 59
    :cond_a
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 60
    return-object v0
.end method

.method public greylist-max-o newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .registers 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 45
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/filterfw/core/CachedFrameManager;->findAvailableFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 46
    .local v0, "result":Landroid/filterfw/core/Frame;
    if-nez v0, :cond_d

    .line 47
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 49
    :cond_d
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 50
    return-object v0
.end method

.method public greylist-max-o releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .registers 5
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 70
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 71
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->decRefCount()I

    move-result v0

    .line 72
    .local v0, "refCount":I
    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 73
    invoke-direct {p0, p1}, Landroid/filterfw/core/CachedFrameManager;->storeFrame(Landroid/filterfw/core/Frame;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 74
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    .line 76
    :cond_1b
    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_1d
    if-ltz v0, :cond_20

    .line 80
    .end local v0    # "refCount":I
    goto :goto_2b

    .line 78
    .restart local v0    # "refCount":I
    :cond_20
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Frame reference count dropped below 0!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    .end local v0    # "refCount":I
    :cond_28
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 83
    :goto_2b
    return-object p1
.end method

.method public greylist-max-o retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .registers 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 65
    invoke-super {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o tearDown()V
    .registers 1

    .line 95
    invoke-virtual {p0}, Landroid/filterfw/core/CachedFrameManager;->clearCache()V

    .line 96
    return-void
.end method
