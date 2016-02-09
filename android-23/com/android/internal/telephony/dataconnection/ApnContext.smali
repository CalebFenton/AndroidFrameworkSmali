.class public Lcom/android/internal/telephony/dataconnection/ApnContext;
.super Ljava/lang/Object;
.source "ApnContext.java"


# static fields
.field protected static final DBG:Z


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private final mApnType:Ljava/lang/String;

.field private mConcurrentVoiceAndDataAllowed:Z

.field private final mContext:Landroid/content/Context;

.field mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

.field private final mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLocalLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field mReason:Ljava/lang/String;

.field mReconnectAlarmIntent:Landroid/app/PendingIntent;

.field private mRefCount:I

.field private final mRefCountLock:Ljava/lang/Object;

.field private final mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

.field private mState:Lcom/android/internal/telephony/DctConstants$State;

.field private mWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final priority:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "config"    # Landroid/net/NetworkConfig;
    .param p5, "tracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 54
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    #@7
    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mOriginalWaitingApns:Ljava/util/ArrayList;

    #@9
    .line 80
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@10
    .line 81
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@12
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@19
    .line 334
    new-instance v0, Landroid/util/SparseIntArray;

    #@1b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@20
    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mContext:Landroid/content/Context;

    #@22
    .line 99
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@24
    .line 100
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@26
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@28
    .line 101
    const-string/jumbo v0, "dataEnabled"

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    #@2e
    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@30
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@33
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@35
    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@37
    iget-boolean v1, p4, Landroid/net/NetworkConfig;->dependencyMet:Z

    #@39
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@3c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@3e
    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@40
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@43
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    #@45
    .line 105
    iget v0, p4, Landroid/net/NetworkConfig;->priority:I

    #@47
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    #@49
    .line 106
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    #@4b
    .line 107
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@4d
    .line 97
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "[ApnContext:"

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "] "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 405
    return-void
.end method


# virtual methods
.method public decRefCount(Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 319
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@6
    if-eq v0, v3, :cond_2

    #@8
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "ApnContext.decRefCount - "

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@29
    .line 328
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@2b
    add-int/lit8 v2, v0, -0x1

    #@2d
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@2f
    if-ne v0, v3, :cond_0

    #@31
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@33
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@35
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@37
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    #@3a
    move-result v2

    #@3b
    const/4 v3, 0x0

    #@3c
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setEnabled(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    :cond_0
    monitor-exit v1

    #@40
    .line 316
    return-void

    #@41
    .line 323
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v2, "ApnContext.decRefCount didn\'t find log - "

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@4f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    goto :goto_0

    #@5b
    .line 317
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit v1

    #@5d
    throw v0

    #@5e
    .line 326
    :cond_2
    :try_start_2
    const-string/jumbo v0, "ApnContext.decRefCount - 1"

    #@61
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    goto :goto_0
.end method

.method public decWaitingApnsPermFailCount()V
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@5
    .line 162
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 410
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v3, "  "

    #@5
    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 411
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@a
    monitor-enter v4

    #@b
    .line 412
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 413
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@14
    if-lez v3, :cond_1

    #@16
    .line 414
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@19
    .line 415
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@1b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/util/LocalLog;

    #@2b
    .line 416
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1, v2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    goto :goto_0

    #@2f
    .line 411
    .end local v0    # "l":Landroid/util/LocalLog;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@30
    monitor-exit v4

    #@31
    throw v3

    #@32
    .line 418
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    #@36
    .line 409
    return-void
.end method

.method public declared-synchronized getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public declared-synchronized getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getDependencyMet()Z
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized getNextWaitingApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    #@3
    .line 168
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v0, 0x0

    #@4
    .line 170
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v1, :cond_0

    #@6
    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 172
    const/4 v2, 0x0

    #@d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit p0

    #@14
    .line 175
    return-object v0

    #@15
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :catchall_0
    move-exception v2

    #@16
    monitor-exit p0

    #@17
    throw v2
.end method

.method public declared-synchronized getOriginalWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mOriginalWaitingApns:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getReconnectIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getWaitingApnsPermFailCount()I
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public incRefCount(Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "log"    # Landroid/util/LocalLog;

    #@0
    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 298
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "clearing log with size="

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v2

    #@19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@24
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@29
    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_2

    #@31
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "ApnContext.incRefCount has duplicate add - "

    #@39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@4a
    .line 310
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@4c
    add-int/lit8 v2, v0, 0x1

    #@4e
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@50
    if-nez v0, :cond_1

    #@52
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@54
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    #@56
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@58
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    #@5b
    move-result v2

    #@5c
    const/4 v3, 0x1

    #@5d
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setEnabled(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    :cond_1
    monitor-exit v1

    #@61
    .line 296
    return-void

    #@62
    .line 307
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@67
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "ApnContext.incRefCount - "

    #@6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    #@75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@80
    goto :goto_0

    #@81
    .line 297
    :catchall_0
    move-exception v0

    #@82
    monitor-exit v1

    #@83
    throw v0
.end method

.method public declared-synchronized isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
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

.method public isConnectable()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@a
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 240
    :cond_0
    :goto_0
    return v0

    #@15
    .line 242
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@17
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    if-eq v2, v3, :cond_0

    #@1b
    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@1d
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@1f
    if-eq v2, v3, :cond_0

    #@21
    move v0, v1

    #@22
    goto :goto_0

    #@23
    :cond_2
    move v0, v1

    #@24
    .line 240
    goto :goto_0
.end method

.method public isConnectedOrConnecting()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 247
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_2

    #@8
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@a
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    #@12
    if-ne v2, v3, :cond_1

    #@14
    .line 247
    :cond_0
    :goto_0
    return v0

    #@15
    .line 249
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@17
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    #@19
    if-eq v2, v3, :cond_0

    #@1b
    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@1d
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    #@1f
    if-eq v2, v3, :cond_0

    #@21
    move v0, v1

    #@22
    goto :goto_0

    #@23
    :cond_2
    move v0, v1

    #@24
    .line 247
    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@4
    move-result-object v0

    #@5
    .line 220
    .local v0, "currentState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@7
    if-eq v0, v2, :cond_0

    #@9
    .line 221
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 220
    :cond_0
    :goto_0
    return v1

    #@e
    .line 221
    :cond_1
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isProvisioningApn()Z
    .locals 3

    #@0
    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    .line 277
    const v2, 0x104002e

    #@9
    .line 276
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 278
    .local v0, "provisioningApn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@15
    if-eqz v1, :cond_0

    #@17
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@19
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@1f
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    return v1

    #@26
    .line 282
    :cond_0
    const/4 v1, 0x0

    #@27
    return v1
.end method

.method public isReady()Z
    .locals 1

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public declared-synchronized releaseDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    #@b
    .line 129
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@e
    .line 131
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    #@10
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 126
    return-void

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public declared-synchronized removeWaitingApn(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 178
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public requestLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/util/LocalLog;

    #@15
    .line 291
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 289
    .end local v0    # "l":Landroid/util/LocalLog;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v3

    #@1b
    throw v2

    #@1c
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    #@1d
    .line 288
    return-void
.end method

.method public resetErrorCodeRetries()V
    .locals 11

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 337
    const-string/jumbo v7, "ApnContext.resetErrorCodeRetries"

    #@4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@7
    .line 340
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@a
    move-result-object v7

    #@b
    .line 341
    const v8, 0x1070044

    #@e
    .line 340
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 342
    .local v1, "config":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@14
    monitor-enter v7

    #@15
    .line 343
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@17
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    #@1a
    .line 345
    array-length v8, v1

    #@1b
    :goto_0
    if-ge v6, v8, :cond_2

    #@1d
    aget-object v0, v1, v6

    #@1f
    .line 346
    .local v0, "c":Ljava/lang/String;
    const-string/jumbo v9, ","

    #@22
    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 347
    .local v5, "errorValue":[Ljava/lang/String;
    if-eqz v5, :cond_1

    #@28
    array-length v9, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    const/4 v10, 0x2

    #@2a
    if-ne v9, v10, :cond_1

    #@2c
    .line 348
    const/4 v2, 0x0

    #@2d
    .line 349
    .local v2, "count":I
    const/4 v4, 0x0

    #@2e
    .line 351
    .local v4, "errorCode":I
    const/4 v9, 0x0

    #@2f
    :try_start_1
    aget-object v9, v5, v9

    #@31
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@34
    move-result v4

    #@35
    .line 352
    const/4 v9, 0x1

    #@36
    aget-object v9, v5, v9

    #@38
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    move-result v2

    #@3c
    .line 357
    if-lez v2, :cond_0

    #@3e
    if-lez v4, :cond_0

    #@40
    .line 358
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@42
    invoke-virtual {v9, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@45
    .line 345
    .end local v2    # "count":I
    .end local v4    # "errorCode":I
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@47
    goto :goto_0

    #@48
    .line 353
    .restart local v2    # "count":I
    .restart local v4    # "errorCode":I
    :catch_0
    move-exception v3

    #@49
    .line 354
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v10, "Exception parsing config_retries_per_error_code: "

    #@51
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v9

    #@55
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v9

    #@5d
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    goto :goto_1

    #@61
    .line 342
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "errorCode":I
    .end local v5    # "errorValue":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@62
    monitor-exit v7

    #@63
    throw v6

    #@64
    .line 361
    .restart local v0    # "c":Ljava/lang/String;
    .restart local v5    # "errorValue":[Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v10, "Exception parsing config_retries_per_error_code: "

    #@6c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v9

    #@78
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7b
    goto :goto_1

    #@7c
    .end local v0    # "c":Ljava/lang/String;
    .end local v5    # "errorValue":[Ljava/lang/String;
    :cond_2
    monitor-exit v7

    #@7d
    .line 336
    return-void
.end method

.method public restartOnError(I)Z
    .locals 6
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 368
    const/4 v0, 0x0

    #@1
    .line 369
    .local v0, "result":Z
    const/4 v1, 0x0

    #@2
    .line 370
    .local v1, "retriesLeft":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@4
    monitor-enter v4

    #@5
    .line 371
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@7
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@a
    move-result v1

    #@b
    .line 372
    packed-switch v1, :pswitch_data_0

    #@e
    .line 383
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    #@10
    add-int/lit8 v5, v1, -0x1

    #@12
    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    .line 384
    const/4 v0, 0x0

    #@16
    :goto_0
    :pswitch_0
    monitor-exit v4

    #@17
    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v4, "ApnContext.restartOnError("

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    const-string/jumbo v4, ") found "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 389
    const-string/jumbo v4, " and returned "

    #@35
    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    .line 391
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    #@44
    .line 392
    return v0

    #@45
    .line 378
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    .line 379
    const/4 v0, 0x1

    #@49
    .line 380
    goto :goto_0

    #@4a
    .line 370
    :catchall_0
    move-exception v3

    #@4b
    monitor-exit v4

    #@4c
    throw v3

    #@4d
    .line 372
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 149
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 147
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setConcurrentVoiceAndDataAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 193
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 192
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V
    .locals 1
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 123
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 118
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public setDependencyMet(Z)V
    .locals 1
    .param p1, "met"    # Z

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 264
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 253
    return-void
.end method

.method public declared-synchronized setReason(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 228
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 224
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setReconnectIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 139
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 138
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/telephony/DctConstants$State;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 205
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@3
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    #@5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit p0

    #@13
    .line 200
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public declared-synchronized setWaitingApns(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    monitor-enter p0

    #@1
    .line 153
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    #@3
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mOriginalWaitingApns:Ljava/util/ArrayList;

    #@a
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 152
    return-void

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 398
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "{mApnType="

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, " mState="

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    const-string/jumbo v1, " mWaitingApns={"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    #@2b
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 399
    const-string/jumbo v1, "} mWaitingApnsPermanentFailureCountDown="

    #@32
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    #@38
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    .line 400
    const-string/jumbo v1, " mApnSetting={"

    #@3f
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    #@45
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 401
    const-string/jumbo v1, "} mReason="

    #@4c
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 401
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    #@52
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 401
    const-string/jumbo v1, " mDataEnabled="

    #@59
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    .line 401
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5f
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    .line 401
    const-string/jumbo v1, " mDependencyMet="

    #@66
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6c
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    .line 402
    const-string/jumbo v1, "}"

    #@73
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    move-result-object v0

    #@7b
    monitor-exit p0

    #@7c
    return-object v0

    #@7d
    :catchall_0
    move-exception v0

    #@7e
    monitor-exit p0

    #@7f
    throw v0
.end method
