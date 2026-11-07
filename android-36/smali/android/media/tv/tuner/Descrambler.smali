.class public Landroid/media/tv/tuner/Descrambler;
.super Ljava/lang/Object;
.source "Descrambler.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Descrambler$PidType;
    }
.end annotation


# static fields
.field public static final whitelist PID_TYPE_MMTP:I = 0x2

.field public static final whitelist PID_TYPE_T:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "Descrambler"


# instance fields
.field private blacklist mIsClosed:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public static whitelist isValidKeyToken([B)Z
    .registers 3
    .param p0, "keyToken"    # [B

    .line 147
    array-length v0, p0

    if-eqz v0, :cond_b

    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_9

    goto :goto_b

    .line 151
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key token size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bit."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Descrambler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method private native blacklist nativeAddPid(IILandroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeRemovePid(IILandroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeSetKeyToken([B)I
.end method


# virtual methods
.method public whitelist addPid(IILandroid/media/tv/tuner/filter/Filter;)I
    .registers 7
    .param p1, "pidType"    # I
    .param p2, "pid"    # I
    .param p3, "filter"    # Landroid/media/tv/tuner/filter/Filter;

    .line 88
    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    const-string v1, "Descrambler"

    iget-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/Descrambler;->nativeAddPid(IILandroid/media/tv/tuner/filter/Filter;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 91
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 159
    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-boolean v1, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    if-eqz v1, :cond_9

    .line 161
    monitor-exit v0

    return-void

    .line 163
    :cond_9
    invoke-direct {p0}, Landroid/media/tv/tuner/Descrambler;->nativeClose()I

    move-result v1

    .line 164
    .local v1, "res":I
    if-eqz v1, :cond_15

    .line 165
    const-string v2, "Failed to close descrambler"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_18

    .line 167
    :cond_15
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    .line 169
    .end local v1    # "res":I
    :goto_18
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist removePid(IILandroid/media/tv/tuner/filter/Filter;)I
    .registers 7
    .param p1, "pidType"    # I
    .param p2, "pid"    # I
    .param p3, "filter"    # Landroid/media/tv/tuner/filter/Filter;

    .line 106
    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    const-string v1, "Descrambler"

    iget-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/Descrambler;->nativeRemovePid(IILandroid/media/tv/tuner/filter/Filter;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 109
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist setKeyToken([B)I
    .registers 5
    .param p1, "keyToken"    # [B

    .line 128
    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_3
    const-string v1, "Descrambler"

    iget-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    .line 130
    const-string/jumbo v1, "key token must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Landroid/media/tv/tuner/Descrambler;->isValidKeyToken([B)Z

    move-result v1

    if-nez v1, :cond_19

    .line 132
    monitor-exit v0

    const/4 v0, 0x4

    return v0

    .line 134
    :cond_19
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Descrambler;->nativeSetKeyToken([B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 135
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method
