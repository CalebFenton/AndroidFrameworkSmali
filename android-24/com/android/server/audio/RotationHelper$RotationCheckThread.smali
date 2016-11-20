.class final Lcom/android/server/audio/RotationHelper$RotationCheckThread;
.super Ljava/lang/Thread;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotationCheckThread"
.end annotation


# instance fields
.field private final WAIT_TIMES_MS:[I

.field private final mCounterLock:Ljava/lang/Object;

.field private mWaitCounter:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 176
    const-string/jumbo v0, "RotationCheck"

    #@3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@6
    .line 171
    const/16 v0, 0x8

    #@8
    new-array v0, v0, [I

    #@a
    fill-array-data v0, :array_0

    #@d
    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    #@f
    .line 173
    new-instance v0, Ljava/lang/Object;

    #@11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    #@16
    .line 175
    return-void

    #@17
    .line 171
    nop

    #@18
    :array_0
    .array-data 4
        0xa
        0x14
        0x32
        0x64
        0x64
        0xc8
        0xc8
        0x1f4
    .end array-data
.end method


# virtual methods
.method beginCheck()V
    .locals 3

    #@0
    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 181
    const/4 v2, 0x0

    #@4
    :try_start_0
    iput v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v1

    #@7
    .line 184
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@a
    .line 179
    :goto_0
    return-void

    #@b
    .line 180
    :catchall_0
    move-exception v2

    #@c
    monitor-exit v1

    #@d
    throw v2

    #@e
    .line 185
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method endCheck()V
    .locals 2

    #@0
    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    #@5
    array-length v0, v0

    #@6
    iput v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 188
    return-void

    #@a
    .line 189
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public run()V
    .locals 5

    #@0
    .prologue
    .line 195
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    #@2
    iget-object v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    #@4
    array-length v3, v3

    #@5
    if-ge v2, v3, :cond_2

    #@7
    .line 197
    iget-object v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    #@9
    monitor-enter v3

    #@a
    .line 198
    :try_start_0
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    #@c
    iget-object v4, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    #@e
    array-length v4, v4

    #@f
    if-ge v2, v4, :cond_1

    #@11
    .line 199
    iget-object v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    #@13
    iget v4, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    #@15
    aget v1, v2, v4

    #@17
    .line 200
    .local v1, "waitTimeMs":I
    :goto_1
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    iput v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    monitor-exit v3

    #@1e
    .line 203
    if-lez v1, :cond_0

    #@20
    .line 204
    int-to-long v2, v1

    #@21
    :try_start_1
    invoke-static {v2, v3}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->sleep(J)V

    #@24
    .line 205
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@27
    goto :goto_0

    #@28
    .line 207
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@2a
    .line 199
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "waitTimeMs":I
    :cond_1
    const/4 v1, 0x0

    #@2b
    .restart local v1    # "waitTimeMs":I
    goto :goto_1

    #@2c
    .line 197
    .end local v1    # "waitTimeMs":I
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2

    #@2f
    .line 194
    :cond_2
    return-void
.end method
