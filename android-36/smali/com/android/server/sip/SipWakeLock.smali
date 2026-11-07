.class Lcom/android/server/sip/SipWakeLock;
.super Ljava/lang/Object;
.source "SipWakeLock.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SipWakeLock"


# instance fields
.field private blacklist mHolders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPowerManager:Landroid/os/PowerManager;

.field private blacklist mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;)V
    .registers 3
    .param p1, "powerManager"    # Landroid/os/PowerManager;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    .line 33
    iput-object p1, p0, Lcom/android/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    .line 34
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 71
    const-string v0, "SipWakeLock"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method


# virtual methods
.method declared-synchronized blacklist acquire(J)V
    .registers 6
    .param p1, "timeout"    # J

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_15

    .line 44
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SipWakeLock.timer"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 48
    .end local p0    # "this":Lcom/android/server/sip/SipWakeLock;
    :cond_15
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 49
    monitor-exit p0

    return-void

    .line 42
    .end local p1    # "timeout":J
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method declared-synchronized blacklist acquire(Ljava/lang/Object;)V
    .registers 5
    .param p1, "holder"    # Ljava/lang/Object;

    monitor-enter p0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_15

    .line 54
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SipWakeLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    .end local p0    # "this":Lcom/android/server/sip/SipWakeLock;
    :cond_15
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 59
    :cond_22
    monitor-exit p0

    return-void

    .line 51
    .end local p1    # "holder":Ljava/lang/Object;
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method declared-synchronized blacklist release(Ljava/lang/Object;)V
    .registers 3
    .param p1, "holder"    # Ljava/lang/Object;

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 65
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 68
    .end local p0    # "this":Lcom/android/server/sip/SipWakeLock;
    :cond_1f
    monitor-exit p0

    return-void

    .line 61
    .end local p1    # "holder":Ljava/lang/Object;
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method declared-synchronized blacklist reset()V
    .registers 2

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 40
    monitor-exit p0

    return-void

    .line 37
    .end local p0    # "this":Lcom/android/server/sip/SipWakeLock;
    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method
