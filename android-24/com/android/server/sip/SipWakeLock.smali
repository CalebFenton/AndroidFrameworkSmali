.class Lcom/android/server/sip/SipWakeLock;
.super Ljava/lang/Object;
.source "SipWakeLock.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SipWakeLock"


# instance fields
.field private mHolders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;)V
    .locals 1
    .param p1, "powerManager"    # Landroid/os/PowerManager;

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    #@a
    .line 33
    iput-object p1, p0, Lcom/android/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    #@c
    .line 32
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    const-string/jumbo v0, "SipWakeLock"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 70
    return-void
.end method


# virtual methods
.method declared-synchronized acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 44
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    #@7
    .line 45
    const-string/jumbo v1, "SipWakeLock.timer"

    #@a
    const/4 v2, 0x1

    #@b
    .line 44
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@11
    .line 46
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@17
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    #@19
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 42
    return-void

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method declared-synchronized acquire(Ljava/lang/Object;)V
    .locals 3
    .param p1, "holder"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@6
    .line 53
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 54
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    #@c
    .line 55
    const-string/jumbo v1, "SipWakeLock"

    #@f
    const/4 v2, 0x1

    #@10
    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@16
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@18
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@1b
    move-result v0

    #@1c
    if-nez v0, :cond_1

    #@1e
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@20
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_1
    monitor-exit p0

    #@24
    .line 51
    return-void

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method

.method declared-synchronized release(Ljava/lang/Object;)V
    .locals 1
    .param p1, "holder"    # Ljava/lang/Object;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@6
    .line 63
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    #@c
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 64
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@14
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@17
    move-result v0

    #@18
    .line 63
    if-eqz v0, :cond_0

    #@1a
    .line 65
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1c
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    :cond_0
    monitor-exit p0

    #@20
    .line 61
    return-void

    #@21
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method

.method declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    #@3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    #@6
    .line 39
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 36
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
