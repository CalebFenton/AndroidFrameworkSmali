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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock$1;
    }
.end annotation


# instance fields
.field private mCount:I

.field private mFlags:I

.field private mHeld:Z

.field private mHistoryTag:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mRefCounted:Z

.field private final mReleaser:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field private final mTraceName:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Landroid/os/PowerManager;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1029
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1017
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    #@8
    .line 1023
    new-instance v0, Landroid/os/PowerManager$WakeLock$1;

    #@a
    invoke-direct {v0, p0}, Landroid/os/PowerManager$WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;)V

    #@d
    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    #@f
    .line 1030
    iput p2, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    #@11
    .line 1031
    iput-object p3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    #@13
    .line 1032
    iput-object p4, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    #@15
    .line 1033
    new-instance v0, Landroid/os/Binder;

    #@17
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@1c
    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "WakeLock ("

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    const-string/jumbo v1, ")"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    #@3b
    .line 1029
    return-void
.end method

.method private acquireLocked()V
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1101
    iget-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    #@7
    add-int/lit8 v1, v0, 0x1

    #@9
    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1108
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    #@f
    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    #@11
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@16
    .line 1109
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    #@18
    const-wide/32 v2, 0x20000

    #@1b
    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@1e
    .line 1111
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    #@20
    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@22
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@24
    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    #@26
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    #@28
    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mPackageName:Ljava/lang/String;

    #@2a
    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@2c
    .line 1112
    iget-object v6, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@2e
    .line 1111
    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 1115
    :goto_0
    const/4 v0, 0x1

    #@32
    iput-boolean v0, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    #@34
    .line 1100
    :cond_1
    return-void

    #@35
    .line 1113
    :catch_0
    move-exception v7

    #@36
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    #@0
    .prologue
    .line 1078
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v0

    #@3
    .line 1079
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1077
    return-void

    #@8
    .line 1078
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 1094
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v1

    #@3
    .line 1095
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$WakeLock;->acquireLocked()V

    #@6
    .line 1096
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    #@8
    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    #@a
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    #@c
    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 1093
    return-void

    #@11
    .line 1094
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 1039
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v2

    #@3
    .line 1040
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1041
    const-string/jumbo v1, "PowerManager"

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "WakeLock finalized while still held: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1042
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    #@25
    const-wide/32 v4, 0x20000

    #@28
    const/4 v3, 0x0

    #@29
    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 1044
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    #@2e
    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@30
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@32
    const/4 v4, 0x0

    #@33
    invoke-interface {v1, v3, v4}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    :cond_0
    :goto_0
    monitor-exit v2

    #@37
    .line 1038
    return-void

    #@38
    .line 1039
    :catchall_0
    move-exception v1

    #@39
    monitor-exit v2

    #@3a
    throw v1

    #@3b
    .line 1045
    :catch_0
    move-exception v0

    #@3c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isHeld()Z
    .locals 2

    #@0
    .prologue
    .line 1168
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v0

    #@3
    .line 1169
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1168
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public release()V
    .locals 1

    #@0
    .prologue
    .line 1128
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    #@4
    .line 1127
    return-void
.end method

.method public release(I)V
    .locals 6
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 1144
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v2

    #@3
    .line 1145
    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    iput v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    #@d
    if-nez v1, :cond_1

    #@f
    .line 1146
    :cond_0
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    #@11
    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    #@13
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mReleaser:Ljava/lang/Runnable;

    #@15
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@18
    .line 1147
    iget-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 1148
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mTraceName:Ljava/lang/String;

    #@1e
    const-wide/32 v4, 0x20000

    #@21
    const/4 v3, 0x0

    #@22
    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 1150
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    #@27
    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@29
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@2b
    invoke-interface {v1, v3, p1}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 1153
    :goto_0
    const/4 v1, 0x0

    #@2f
    :try_start_2
    iput-boolean v1, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    #@31
    .line 1156
    :cond_1
    iget v1, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    #@33
    if-gez v1, :cond_2

    #@35
    .line 1157
    new-instance v1, Ljava/lang/RuntimeException;

    #@37
    new-instance v3, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v4, "WakeLock under-locked "

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    .line 1144
    :catchall_0
    move-exception v1

    #@52
    monitor-exit v2

    #@53
    throw v1

    #@54
    :cond_2
    monitor-exit v2

    #@55
    .line 1143
    return-void

    #@56
    .line 1151
    :catch_0
    move-exception v0

    #@57
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setHistoryTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1220
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@2
    .line 1219
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1065
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v0

    #@3
    .line 1066
    :try_start_0
    iput-boolean p1, p0, Landroid/os/PowerManager$WakeLock;->mRefCounted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1064
    return-void

    #@7
    .line 1065
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1215
    iput-object p1, p0, Landroid/os/PowerManager$WakeLock;->mTag:Ljava/lang/String;

    #@2
    .line 1214
    return-void
.end method

.method public setUnimportantForLogging(Z)V
    .locals 2
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 1225
    if-eqz p1, :cond_0

    #@2
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    #@4
    const/high16 v1, 0x40000000    # 2.0f

    #@6
    or-int/2addr v0, v1

    #@7
    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    #@9
    .line 1224
    :goto_0
    return-void

    #@a
    .line 1226
    :cond_0
    iget v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    #@c
    const v1, -0x40000001    # -1.9999999f

    #@f
    and-int/2addr v0, v1

    #@10
    iput v0, p0, Landroid/os/PowerManager$WakeLock;->mFlags:I

    #@12
    goto :goto_0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 7
    .param p1, "ws"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 1185
    iget-object v3, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v3

    #@3
    .line 1186
    if-eqz p1, :cond_0

    #@5
    :try_start_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 1187
    const/4 p1, 0x0

    #@c
    .line 1191
    .end local p1    # "ws":Landroid/os/WorkSource;
    :cond_0
    if-nez p1, :cond_4

    #@e
    .line 1192
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@10
    if-eqz v2, :cond_3

    #@12
    const/4 v0, 0x1

    #@13
    .line 1193
    .local v0, "changed":Z
    :goto_0
    const/4 v2, 0x0

    #@14
    iput-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@16
    .line 1204
    .end local v0    # "changed":Z
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    #@18
    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 1206
    :try_start_1
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->this$0:Landroid/os/PowerManager;

    #@1e
    iget-object v2, v2, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    #@20
    iget-object v4, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@22
    iget-object v5, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@24
    iget-object v6, p0, Landroid/os/PowerManager$WakeLock;->mHistoryTag:Ljava/lang/String;

    #@26
    invoke-interface {v2, v4, v5, v6}, Landroid/os/IPowerManager;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    :cond_2
    :goto_2
    monitor-exit v3

    #@2a
    .line 1184
    return-void

    #@2b
    .line 1192
    :cond_3
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "changed":Z
    goto :goto_0

    #@2d
    .line 1194
    .end local v0    # "changed":Z
    :cond_4
    :try_start_2
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@2f
    if-nez v2, :cond_5

    #@31
    .line 1195
    const/4 v0, 0x1

    #@32
    .line 1196
    .restart local v0    # "changed":Z
    new-instance v2, Landroid/os/WorkSource;

    #@34
    invoke-direct {v2, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    #@37
    iput-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    goto :goto_1

    #@3a
    .line 1185
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2

    #@3d
    .line 1198
    :cond_5
    :try_start_3
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@3f
    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    #@42
    move-result v0

    #@43
    .line 1199
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    #@45
    .line 1200
    iget-object v2, p0, Landroid/os/PowerManager$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    #@47
    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4a
    goto :goto_1

    #@4b
    .line 1207
    .end local v0    # "changed":Z
    :catch_0
    move-exception v1

    #@4c
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1231
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;

    #@2
    monitor-enter v1

    #@3
    .line 1232
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "WakeLock{"

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    .line 1233
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@12
    move-result v2

    #@13
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    .line 1232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1234
    const-string/jumbo v2, " held="

    #@1e
    .line 1232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 1234
    iget-boolean v2, p0, Landroid/os/PowerManager$WakeLock;->mHeld:Z

    #@24
    .line 1232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 1234
    const-string/jumbo v2, ", refCount="

    #@2b
    .line 1232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 1234
    iget v2, p0, Landroid/os/PowerManager$WakeLock;->mCount:I

    #@31
    .line 1232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 1234
    const-string/jumbo v2, "}"

    #@38
    .line 1232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result-object v0

    #@40
    monitor-exit v1

    #@41
    return-object v0

    #@42
    .line 1231
    :catchall_0
    move-exception v0

    #@43
    monitor-exit v1

    #@44
    throw v0
.end method
