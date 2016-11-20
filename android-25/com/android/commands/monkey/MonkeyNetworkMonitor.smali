.class public Lcom/android/commands/monkey/MonkeyNetworkMonitor;
.super Landroid/content/IIntentReceiver$Stub;
.source "MonkeyNetworkMonitor.java"


# static fields
.field private static final LDEBUG:Z


# instance fields
.field private final filter:Landroid/content/IntentFilter;

.field private mCollectionStartTime:J

.field private mElapsedTime:J

.field private mEventTime:J

.field private mLastNetworkType:I

.field private mMobileElapsedTime:J

.field private mWifiElapsedTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 33
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    #@5
    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    #@7
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    #@a
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@d
    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->filter:Landroid/content/IntentFilter;

    #@f
    .line 38
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    #@12
    .line 39
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    #@14
    .line 40
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    #@16
    .line 41
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    #@18
    .line 33
    return-void
.end method

.method private updateNetworkStats()V
    .locals 6

    #@0
    .prologue
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v2

    #@4
    .line 62
    .local v2, "timeNow":J
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    #@6
    sub-long v0, v2, v4

    #@8
    .line 63
    .local v0, "delta":J
    iget v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    #@a
    packed-switch v4, :pswitch_data_0

    #@d
    .line 76
    :goto_0
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mCollectionStartTime:J

    #@f
    sub-long v4, v2, v4

    #@11
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    #@13
    .line 60
    return-void

    #@14
    .line 66
    :pswitch_0
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    #@16
    add-long/2addr v4, v0

    #@17
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    #@19
    goto :goto_0

    #@1a
    .line 70
    :pswitch_1
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    #@1c
    add-long/2addr v4, v0

    #@1d
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    #@1f
    goto :goto_0

    #@20
    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dump()V
    .locals 6

    #@0
    .prologue
    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "## Network stats: elapsed time="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    #@10
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, "ms ("

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 102
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    #@1d
    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 102
    const-string/jumbo v2, "ms mobile, "

    #@24
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 103
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    #@2a
    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 103
    const-string/jumbo v2, "ms wifi, "

    #@31
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 104
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    #@37
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    #@39
    sub-long/2addr v2, v4

    #@3a
    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    #@3c
    sub-long/2addr v2, v4

    #@3d
    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 104
    const-string/jumbo v2, "ms not connected)"

    #@44
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    .line 100
    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    const-string/jumbo v1, "networkInfo"

    #@3
    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/net/NetworkInfo;

    #@9
    .line 49
    .local v0, "ni":Landroid/net/NetworkInfo;
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->updateNetworkStats()V

    #@c
    .line 50
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    #@e
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@11
    move-result-object v2

    #@12
    if-ne v1, v2, :cond_1

    #@14
    .line 52
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@17
    move-result v1

    #@18
    iput v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    #@1a
    .line 57
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1d
    move-result-wide v2

    #@1e
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    #@20
    .line 44
    return-void

    #@21
    .line 53
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@23
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@26
    move-result-object v2

    #@27
    if-ne v1, v2, :cond_0

    #@29
    .line 55
    const/4 v1, -0x1

    #@2a
    iput v1, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mLastNetworkType:I

    #@2c
    goto :goto_0
.end method

.method public register(Landroid/app/IActivityManager;)V
    .locals 7
    .param p1, "am"    # Landroid/app/IActivityManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 88
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->filter:Landroid/content/IntentFilter;

    #@3
    const/4 v6, -0x1

    #@4
    move-object v0, p1

    #@5
    move-object v2, v1

    #@6
    move-object v3, p0

    #@7
    move-object v5, v1

    #@8
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    #@b
    .line 86
    return-void
.end method

.method public start()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 80
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mWifiElapsedTime:J

    #@4
    .line 81
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mMobileElapsedTime:J

    #@6
    .line 82
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mElapsedTime:J

    #@8
    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mCollectionStartTime:J

    #@e
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->mEventTime:J

    #@10
    .line 79
    return-void
.end method

.method public stop()V
    .locals 0

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->updateNetworkStats()V

    #@3
    .line 96
    return-void
.end method

.method public unregister(Landroid/app/IActivityManager;)V
    .locals 0
    .param p1, "am"    # Landroid/app/IActivityManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 93
    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    #@3
    .line 91
    return-void
.end method
