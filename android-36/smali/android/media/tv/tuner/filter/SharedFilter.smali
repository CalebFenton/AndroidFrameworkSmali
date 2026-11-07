.class public final Landroid/media/tv/tuner/filter/SharedFilter;
.super Ljava/lang/Object;
.source "SharedFilter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SharedFilter$Status;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_INACCESSIBLE:I = 0x80

.field private static final blacklist TAG:Ljava/lang/String; = "SharedFilter"


# instance fields
.field private blacklist mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

.field private blacklist mCallbackLock:Ljava/lang/Object;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mIsAccessible:Z

.field private blacklist mIsClosed:Z

.field private blacklist mLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J


# direct methods
.method public static synthetic blacklist $r8$lambda$6cYwnreU5Tdh95CFutT6Im_-qLU(Landroid/media/tv/tuner/filter/SharedFilter;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter;->lambda$onFilterStatus$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MoT-gdCpVPlnV0lPf3Y8HcDAnkw(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter;->lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    .line 58
    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private synthetic blacklist lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7
    .param p1, "events"    # [Landroid/media/tv/tuner/filter/FilterEvent;

    .line 95
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_d

    .line 97
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilterCallback;->onFilterEvent(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    goto :goto_20

    .line 99
    :cond_d
    array-length v1, p1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_20

    aget-object v3, p1, v2

    .line 100
    .local v3, "event":Landroid/media/tv/tuner/filter/FilterEvent;
    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_1d

    .line 101
    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 99
    .end local v3    # "event":Landroid/media/tv/tuner/filter/FilterEvent;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 105
    :cond_20
    :goto_20
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private synthetic blacklist lambda$onFilterStatus$0(I)V
    .registers 4
    .param p1, "status"    # I

    .line 81
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_c

    .line 83
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/SharedFilter;I)V

    .line 85
    :cond_c
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private native blacklist nativeFlushSharedFilter()I
.end method

.method private native blacklist nativeSharedClose()I
.end method

.method private native blacklist nativeSharedRead([BJJ)I
.end method

.method private native blacklist nativeStartSharedFilter()I
.end method

.method private native blacklist nativeStopSharedFilter()I
.end method

.method private blacklist onFilterEvent([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7
    .param p1, "events"    # [Landroid/media/tv/tuner/filter/FilterEvent;

    .line 92
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_16

    .line 94
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_29

    .line 108
    :cond_16
    array-length v1, p1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_29

    aget-object v3, p1, v2

    .line 109
    .local v3, "event":Landroid/media/tv/tuner/filter/FilterEvent;
    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_26

    .line 110
    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    .line 108
    .end local v3    # "event":Landroid/media/tv/tuner/filter/FilterEvent;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 114
    :cond_29
    :goto_29
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private blacklist onFilterStatus(I)V
    .registers 5
    .param p1, "status"    # I

    .line 73
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    const/16 v1, 0x80

    if-ne p1, v1, :cond_a

    .line 75
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    .line 77
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_25

    .line 78
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_e
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_20

    .line 80
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/filter/SharedFilter;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    :cond_20
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_22

    throw v0

    .line 77
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 201
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    if-eqz v1, :cond_9

    .line 203
    monitor-exit v0

    return-void

    .line 205
    :cond_9
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    .line 206
    const/4 v2, 0x0

    :try_start_d
    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    .line 207
    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 208
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1c

    .line 209
    :try_start_12
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeSharedClose()I

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    .line 211
    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    .line 212
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 213
    return-void

    .line 208
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Landroid/media/tv/tuner/filter/SharedFilter;
    :try_start_1e
    throw v2

    .line 212
    .restart local p0    # "this":Landroid/media/tv/tuner/filter/SharedFilter;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist flush()I
    .registers 4

    .line 172
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    .line 174
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 175
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeFlushSharedFilter()I

    move-result v1

    monitor-exit v0

    return v1

    .line 176
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public blacklist getCallback()Landroid/media/tv/tuner/filter/SharedFilterCallback;
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist read([BJJ)I
    .registers 16
    .param p1, "buffer"    # [B
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 188
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_3
    const-string v0, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v0, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    .line 190
    const-string v0, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v0, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 191
    array-length v0, p1

    int-to-long v2, v0

    sub-long/2addr v2, p2

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_26

    move-wide v8, v2

    .line 192
    .end local p4    # "size":J
    .local v8, "size":J
    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    .end local p1    # "buffer":[B
    .end local p2    # "offset":J
    .local v5, "buffer":[B
    .local v6, "offset":J
    :try_start_1c
    invoke-direct/range {v4 .. v9}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeSharedRead([BJJ)I

    move-result p1

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    return p1

    .line 193
    :catchall_22
    move-exception v0

    move-object p1, v0

    move-wide p4, v8

    goto :goto_2a

    .end local v5    # "buffer":[B
    .end local v6    # "offset":J
    .end local v8    # "size":J
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    :catchall_26
    move-exception v0

    move-object v5, p1

    move-wide v6, p2

    move-object p1, v0

    .end local p1    # "buffer":[B
    .end local p2    # "offset":J
    .restart local v5    # "buffer":[B
    .restart local v6    # "offset":J
    :goto_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2c

    throw p1

    :catchall_2c
    move-exception v0

    move-object p1, v0

    goto :goto_2a
.end method

.method public blacklist setCallback(Landroid/media/tv/tuner/filter/SharedFilterCallback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "cb"    # Landroid/media/tv/tuner/filter/SharedFilterCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 119
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iput-object p1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    .line 121
    iput-object p2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist start()I
    .registers 4

    .line 139
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    .line 141
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 142
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeStartSharedFilter()I

    move-result v1

    monitor-exit v0

    return v1

    .line 143
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist stop()I
    .registers 4

    .line 155
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    .line 157
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 158
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeStopSharedFilter()I

    move-result v1

    monitor-exit v0

    return v1

    .line 159
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method
