.class public final Landroid/os/PowerManager$WakeLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeLock"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/os/IWakeLockCallback;

.field private final blacklist mDisplayId:I

.field private greylist-max-o mExternalCount:I

.field private greylist mFlags:I

.field private greylist-max-o mHeld:Z

.field private greylist-max-o mHistoryTag:Ljava/lang/String;

.field private greylist-max-o mInternalCount:I

.field private blacklist mListener:Landroid/os/PowerManager$WakeLockStateListener;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private greylist-max-o mRefCounted:Z

.field private final greylist-max-o mReleaser:Ljava/lang/Runnable;

.field private greylist mTag:Ljava/lang/String;

.field private blacklist mTagHash:I

.field private final greylist-max-o mToken:Landroid/os/IBinder;

.field private greylist-max-o mWorkSource:Landroid/os/WorkSource;

.field final synthetic blacklist this$0:Landroid/os/PowerManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$QWdBfVqCdIPYrotXUyakZ1mm-zk(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/PowerManager$WakeLock;->lambda$wrap$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RwtpXTw3OcP0u90jAvwad4Ar2Tg(Landroid/os/PowerManager$WakeLock;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->lambda$new$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "this$0"    # Landroid/os/PowerManager;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3993
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3983
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 3991
    new-instance v0, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    .line 3994
    iput p2, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 3995
    iput-object p3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 3996
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    .line 3997
    iput-object p4, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    .line 3998
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    .line 3999
    iput p5, p0, Landroid/os/PowerManager$WakeLock;->mDisplayId:I

    .line 4000
    return-void
.end method

.method private greylist-max-o acquireLocked()V
    .registers 12

    .line 4068
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    .line 4069
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    .line 4070
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-ne v0, v1, :cond_42

    .line 4077
    :cond_13
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4078
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    const-wide/32 v3, 0x20000

    const-string v5, "WakeLocks"

    invoke-static {v3, v4, v5, v0, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 4081
    :try_start_28
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v2, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget v4, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    iget-object v6, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v8, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    iget v9, p0, Landroid/os/PowerManager$WakeLock;->mDisplayId:I

    iget-object v10, p0, Landroid/os/PowerManager$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-interface/range {v2 .. v10}, Landroid/os/IPowerManager;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3f} :catch_43

    .line 4085
    nop

    .line 4086
    iput-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    .line 4088
    :cond_42
    return-void

    .line 4083
    :catch_43
    move-exception v0

    .line 4084
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 2

    .line 3991
    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    return-void
.end method

.method private synthetic blacklist lambda$wrap$1(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 4282
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 4284
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4285
    nop

    .line 4286
    return-void

    .line 4284
    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4285
    throw v0
.end method


# virtual methods
.method public whitelist acquire()V
    .registers 3

    .line 4045
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4046
    :try_start_3
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 4047
    monitor-exit v0

    .line 4048
    return-void

    .line 4047
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist acquire(J)V
    .registers 6
    .param p1, "timeout"    # J

    .line 4061
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4062
    :try_start_3
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    .line 4063
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4064
    monitor-exit v0

    .line 4065
    return-void

    .line 4064
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 4246
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4247
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 4248
    .local v1, "token":J
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4249
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    const-wide v4, 0x10900000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4250
    iget-boolean v3, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    const-wide v4, 0x10800000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4251
    iget v3, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    const-wide v4, 0x10500000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4252
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v3, :cond_3d

    .line 4253
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/WorkSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4255
    :cond_3d
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4256
    .end local v1    # "token":J
    monitor-exit v0

    .line 4257
    return-void

    .line 4256
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4004
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4005
    :try_start_3
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_3c

    .line 4006
    const-string v1, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock finalized while still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    const-string v1, "WakeLocks"

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_3e

    .line 4010
    :try_start_2b
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_35} :catch_36
    .catchall {:try_start_2b .. :try_end_35} :catchall_3e

    .line 4013
    goto :goto_3c

    .line 4011
    :catch_36
    move-exception v1

    .line 4012
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_37
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/PowerManager$WakeLock;
    throw v2

    .line 4015
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager$WakeLock;
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 4016
    return-void

    .line 4015
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public greylist-max-o getTag()Ljava/lang/String;
    .registers 2

    .line 4210
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isHeld()Z
    .registers 3

    .line 4149
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4150
    :try_start_3
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    monitor-exit v0

    return v1

    .line 4151
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist release()V
    .registers 2

    .line 4099
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 4100
    return-void
.end method

.method public whitelist release(I)V
    .registers 7
    .param p1, "flags"    # I

    .line 4115
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4116
    :try_start_3
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-lez v1, :cond_d

    .line 4119
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    .line 4121
    :cond_d
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-nez v1, :cond_18

    .line 4122
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    .line 4124
    :cond_18
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v1, :cond_20

    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    if-nez v1, :cond_4b

    .line 4125
    :cond_20
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4126
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    if-eqz v1, :cond_4b

    .line 4127
    const-string v1, "WakeLocks"

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_71

    .line 4130
    :try_start_37
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_40} :catch_45
    .catchall {:try_start_37 .. :try_end_40} :catchall_71

    .line 4133
    nop

    .line 4134
    const/4 v1, 0x0

    :try_start_42
    iput-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    goto :goto_4b

    .line 4131
    :catch_45
    move-exception v1

    .line 4132
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .end local p1    # "flags":I
    throw v2

    .line 4137
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .restart local p1    # "flags":I
    :cond_4b
    :goto_4b
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    if-eqz v1, :cond_6f

    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mExternalCount:I

    if-ltz v1, :cond_54

    goto :goto_6f

    .line 4138
    :cond_54
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .end local p1    # "flags":I
    throw v1

    .line 4140
    .restart local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .restart local p1    # "flags":I
    :cond_6f
    :goto_6f
    monitor-exit v0

    .line 4141
    return-void

    .line 4140
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_42 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public greylist-max-o setHistoryTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 4215
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 4216
    return-void
.end method

.method public whitelist setReferenceCounted(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 4032
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4033
    :try_start_3
    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    .line 4034
    monitor-exit v0

    .line 4035
    return-void

    .line 4034
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist setStateListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$WakeLockStateListener;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/PowerManager$WakeLockStateListener;

    .line 4297
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4298
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4299
    :try_start_8
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mListener:Landroid/os/PowerManager$WakeLockStateListener;

    if-eq p2, v1, :cond_31

    .line 4300
    iput-object p2, p0, Landroid/os/PowerManager$WakeLock;->mListener:Landroid/os/PowerManager$WakeLockStateListener;

    .line 4301
    if-eqz p2, :cond_18

    .line 4302
    new-instance v1, Landroid/os/PowerManager$WakeLock$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/PowerManager$WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$WakeLockStateListener;)V

    iput-object v1, p0, Landroid/os/PowerManager$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    goto :goto_1b

    .line 4315
    :cond_18
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/PowerManager$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    .line 4317
    :goto_1b
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_33

    if-eqz v1, :cond_31

    .line 4319
    :try_start_1f
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2a} :catch_2b
    .catchall {:try_start_1f .. :try_end_2a} :catchall_33

    .line 4322
    goto :goto_31

    .line 4320
    :catch_2b
    move-exception v1

    .line 4321
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/os/PowerManager$WakeLockStateListener;
    throw v2

    .line 4325
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/os/PowerManager$WakeLockStateListener;
    :cond_31
    :goto_31
    monitor-exit v0

    .line 4326
    return-void

    .line 4325
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw v1
.end method

.method public greylist-max-o setTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 4204
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    .line 4205
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mTagHash:I

    .line 4206
    return-void
.end method

.method public greylist-max-o setUnimportantForLogging(Z)V
    .registers 4
    .param p1, "state"    # Z

    .line 4220
    if-eqz p1, :cond_a

    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    goto :goto_12

    .line 4221
    :cond_a
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    .line 4222
    :goto_12
    return-void
.end method

.method public whitelist setWorkSource(Landroid/os/WorkSource;)V
    .registers 8
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 4173
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4174
    if-eqz p1, :cond_f

    :try_start_5
    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4175
    const/4 p1, 0x0

    goto :goto_f

    .line 4199
    :catchall_d
    move-exception v1

    goto :goto_53

    .line 4179
    :cond_f
    :goto_f
    const/4 v1, 0x1

    if-nez p1, :cond_1c

    .line 4180
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 4181
    .local v1, "changed":Z
    :goto_18
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_37

    .line 4182
    .end local v1    # "changed":Z
    :cond_1c
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v2, :cond_29

    .line 4183
    const/4 v1, 0x1

    .line 4184
    .restart local v1    # "changed":Z
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_37

    .line 4186
    .end local v1    # "changed":Z
    :cond_29
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    .line 4187
    .restart local v1    # "changed":Z
    if-eqz v1, :cond_37

    .line 4188
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 4192
    :cond_37
    :goto_37
    if-eqz v1, :cond_51

    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_d

    if-eqz v2, :cond_51

    .line 4194
    :try_start_3d
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v2, v2, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_4b
    .catchall {:try_start_3d .. :try_end_4a} :catchall_d

    .line 4197
    goto :goto_51

    .line 4195
    :catch_4b
    move-exception v2

    .line 4196
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4c
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .end local p1    # "ws":Landroid/os/WorkSource;
    throw v3

    .line 4199
    .end local v1    # "changed":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .restart local p1    # "ws":Landroid/os/WorkSource;
    :cond_51
    :goto_51
    monitor-exit v0

    .line 4200
    return-void

    .line 4199
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_d

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 4237
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4238
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4239
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " held="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", refCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mInternalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 4238
    return-object v1

    .line 4241
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public blacklist updateUids([I)V
    .registers 5
    .param p1, "uids"    # [I

    .line 4226
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4228
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/os/IPowerManager;->updateWakeLockUids(Landroid/os/IBinder;[I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_11
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    .line 4231
    nop

    .line 4232
    :try_start_d
    monitor-exit v0

    .line 4233
    return-void

    .line 4232
    :catchall_f
    move-exception v1

    goto :goto_17

    .line 4229
    :catch_11
    move-exception v1

    .line 4230
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .end local p1    # "uids":[I
    throw v2

    .line 4232
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/PowerManager$WakeLock;
    .restart local p1    # "uids":[I
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_f

    throw v1
.end method

.method public greylist-max-o wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 4279
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4280
    new-instance v0, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda1;-><init>(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V

    return-object v0
.end method
