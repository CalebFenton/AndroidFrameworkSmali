.class public Landroid/os/ChildZygoteProcess;
.super Landroid/os/ZygoteProcess;
.source "ChildZygoteProcess.java"


# instance fields
.field private blacklist mDead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist-max-o mPid:I

.field private final blacklist mUid:I


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocketAddress;II)V
    .registers 6
    .param p1, "socketAddress"    # Landroid/net/LocalSocketAddress;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ZygoteProcess;-><init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)V

    .line 51
    iput p2, p0, Landroid/os/ChildZygoteProcess;->mPid:I

    .line 52
    iput p3, p0, Landroid/os/ChildZygoteProcess;->mUid:I

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/os/ChildZygoteProcess;->mDead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    return-void
.end method


# virtual methods
.method public greylist-max-o getPid()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/os/ChildZygoteProcess;->mPid:I

    return v0
.end method

.method public blacklist isDead()Z
    .registers 5

    .line 67
    iget-object v0, p0, Landroid/os/ChildZygoteProcess;->mDead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 68
    return v1

    .line 70
    :cond_a
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 72
    .local v0, "oldStrictModeThreadPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/ChildZygoteProcess;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_uid:I

    iget v3, p0, Landroid/os/ChildZygoteProcess;->mUid:I
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_2b} :catch_38
    .catchall {:try_start_e .. :try_end_2b} :catchall_33

    if-ne v2, v3, :cond_39

    .line 73
    nop

    .line 78
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 73
    const/4 v1, 0x0

    return v1

    .line 78
    :catchall_33
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 79
    throw v1

    .line 75
    :catch_38
    move-exception v2

    .line 78
    :cond_39
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 79
    nop

    .line 80
    iget-object v2, p0, Landroid/os/ChildZygoteProcess;->mDead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    return v1
.end method
