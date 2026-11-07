.class public final Landroid/graphics/BLASTBufferQueue;
.super Ljava/lang/Object;
.source "BLASTBufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;,
        Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;
    }
.end annotation


# instance fields
.field public blacklist mNativeObject:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "updateDestinationFrame"    # Z

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeCreate(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 74
    return-void
.end method

.method private static native blacklist nativeApplyPendingTransactions(JJ)V
.end method

.method private static native blacklist nativeClearSyncTransaction(J)V
.end method

.method private static native blacklist nativeCreate(Ljava/lang/String;Z)J
.end method

.method private static native blacklist nativeDestroy(J)V
.end method

.method private static native blacklist nativeGatherPendingTransactions(JJ)Landroid/view/SurfaceControl$Transaction;
.end method

.method private static native blacklist nativeGetLastAcquiredFrameNum(J)J
.end method

.method private static native blacklist nativeGetSurface(JZ)Landroid/view/Surface;
.end method

.method private static native blacklist nativeIsSameSurfaceControl(JJ)Z
.end method

.method private static native blacklist nativeMergeWithNextTransaction(JJJ)V
.end method

.method private static native blacklist nativeSetApplyToken(JLandroid/os/IBinder;)V
.end method

.method private static native blacklist nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
.end method

.method private static native blacklist nativeSetWaitForBufferReleaseCallback(JLandroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V
.end method

.method private static native blacklist nativeStopContinuousSyncTransaction(J)V
.end method

.method private static native blacklist nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method private static native blacklist nativeUpdate(JJJJI)V
.end method


# virtual methods
.method public blacklist applyPendingTransactions(J)V
    .registers 5
    .param p1, "frameNumber"    # J

    .line 187
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeApplyPendingTransactions(JJ)V

    .line 188
    return-void
.end method

.method public blacklist clearSyncTransaction()V
    .registers 3

    .line 137
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeClearSyncTransaction(J)V

    .line 138
    return-void
.end method

.method public blacklist createSurface()Landroid/view/Surface;
    .registers 4

    .line 85
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createSurfaceWithHandle()Landroid/view/Surface;
    .registers 4

    .line 93
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/graphics/BLASTBufferQueue;->nativeGetSurface(JZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist destroy()V
    .registers 3

    .line 77
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    .line 79
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 154
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 155
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeDestroy(J)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 158
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 159
    nop

    .line 160
    return-void

    .line 158
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 159
    throw v0
.end method

.method public blacklist gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;
    .registers 5
    .param p1, "frameNumber"    # J

    .line 211
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/BLASTBufferQueue;->nativeGatherPendingTransactions(JJ)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastAcquiredFrameNum()J
    .registers 3

    .line 191
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeGetLastAcquiredFrameNum(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isSameSurfaceControl(Landroid/view/SurfaceControl;)Z
    .registers 6
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 198
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->nativeIsSameSurfaceControl(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist mergeWithNextTransaction(JJ)V
    .registers 11
    .param p1, "nativeTransaction"    # J
    .param p3, "frameNumber"    # J

    .line 176
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "nativeTransaction":J
    .end local p3    # "frameNumber":J
    .local v2, "nativeTransaction":J
    .local v4, "frameNumber":J
    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    .line 177
    return-void
.end method

.method public blacklist mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frameNumber"    # J

    .line 168
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    move-wide v4, p2

    .end local p2    # "frameNumber":J
    .local v4, "frameNumber":J
    invoke-static/range {v0 .. v5}, Landroid/graphics/BLASTBufferQueue;->nativeMergeWithNextTransaction(JJJ)V

    .line 169
    return-void
.end method

.method public blacklist setApplyToken(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "applyToken"    # Landroid/os/IBinder;

    .line 219
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetApplyToken(JLandroid/os/IBinder;)V

    .line 220
    return-void
.end method

.method public blacklist setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V
    .registers 4
    .param p1, "hangCallback"    # Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    .line 215
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetTransactionHangCallback(JLandroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 216
    return-void
.end method

.method public blacklist setWaitForBufferReleaseCallback(Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V
    .registers 4
    .param p1, "waitCallback"    # Landroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;

    .line 226
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSetWaitForBufferReleaseCallback(JLandroid/graphics/BLASTBufferQueue$WaitForBufferReleaseCallback;)V

    .line 227
    return-void
.end method

.method public blacklist stopContinuousSyncTransaction()V
    .registers 3

    .line 129
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/BLASTBufferQueue;->nativeStopContinuousSyncTransaction(J)V

    .line 130
    return-void
.end method

.method public blacklist syncNextTransaction(Ljava/util/function/Consumer;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)Z"
        }
    .end annotation

    .line 120
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public blacklist syncNextTransaction(ZLjava/util/function/Consumer;)Z
    .registers 5
    .param p1, "acquireSingleBuffer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)Z"
        }
    .end annotation

    .line 109
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    invoke-static {v0, v1, p2, p1}, Landroid/graphics/BLASTBufferQueue;->nativeSyncNextTransaction(JLjava/util/function/Consumer;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist update(Landroid/view/SurfaceControl;III)V
    .registers 14
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .line 148
    iget-wide v0, p0, Landroid/graphics/BLASTBufferQueue;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v4, p2

    int-to-long v6, p3

    move v8, p4

    .end local p4    # "format":I
    .local v8, "format":I
    invoke-static/range {v0 .. v8}, Landroid/graphics/BLASTBufferQueue;->nativeUpdate(JJJJI)V

    .line 149
    return-void
.end method
