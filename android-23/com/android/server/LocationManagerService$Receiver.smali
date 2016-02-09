.class final Lcom/android/server/LocationManagerService$Receiver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final mAllowedResolutionLevel:I

.field final mHideFromAppOps:Z

.field final mKey:Ljava/lang/Object;

.field final mListener:Landroid/location/ILocationListener;

.field mOpHighPowerMonitoring:Z

.field mOpMonitoring:Z

.field final mPackageName:Ljava/lang/String;

.field mPendingBroadcasts:I

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mPid:I

.field final mUid:I

.field final mUpdateRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "hideFromAppOps"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 631
    iput-object p1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 622
    new-instance v0, Ljava/util/HashMap;

    #@8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    #@d
    .line 633
    iput-object p2, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@f
    .line 634
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    #@11
    .line 635
    if-eqz p2, :cond_2

    #@13
    .line 636
    invoke-interface {p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    #@19
    .line 640
    :goto_0
    invoke-static {p1, p4, p5}, Lcom/android/server/LocationManagerService;->-wrap1(Lcom/android/server/LocationManagerService;II)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    #@1f
    .line 641
    iput p5, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@21
    .line 642
    iput p4, p0, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    #@23
    .line 643
    iput-object p6, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@25
    .line 644
    if-eqz p7, :cond_0

    #@27
    invoke-virtual {p7}, Landroid/os/WorkSource;->size()I

    #@2a
    move-result v0

    #@2b
    if-gtz v0, :cond_0

    #@2d
    .line 645
    const/4 p7, 0x0

    #@2e
    .line 647
    .end local p7    # "workSource":Landroid/os/WorkSource;
    :cond_0
    iput-object p7, p0, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    #@30
    .line 648
    iput-boolean p8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    #@32
    .line 650
    invoke-virtual {p0, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    #@35
    .line 653
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->-get5(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;

    #@38
    move-result-object v0

    #@39
    const-string/jumbo v1, "LocationManagerService"

    #@3c
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@42
    .line 654
    if-nez p7, :cond_1

    #@44
    .line 655
    new-instance p7, Landroid/os/WorkSource;

    #@46
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@48
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@4a
    invoke-direct {p7, v0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    #@4d
    .line 657
    :cond_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4f
    invoke-virtual {v0, p7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@52
    .line 632
    return-void

    #@53
    .line 638
    .restart local p7    # "workSource":Landroid/os/WorkSource;
    :cond_2
    iput-object p3, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    #@55
    goto :goto_0
.end method

.method private decrementPendingBroadcastsLocked()V
    .locals 1

    #@0
    .prologue
    .line 922
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 923
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 924
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@15
    .line 921
    :cond_0
    return-void
.end method

.method private incrementPendingBroadcastsLocked()V
    .locals 2

    #@0
    .prologue
    .line 916
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 917
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@d
    .line 915
    :cond_0
    return-void
.end method

.method private updateMonitoring(ZZI)Z
    .locals 4
    .param p1, "allowMonitoring"    # Z
    .param p2, "currentlyMonitoring"    # Z
    .param p3, "op"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 751
    if-nez p2, :cond_1

    #@3
    .line 752
    if-eqz p1, :cond_3

    #@5
    .line 753
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@7
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    #@a
    move-result-object v1

    #@b
    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@d
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@f
    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    return v0

    #@17
    .line 757
    :cond_1
    if-eqz p1, :cond_2

    #@19
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@1b
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@21
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@23
    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 759
    :cond_2
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@2b
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get0(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;

    #@2e
    move-result-object v1

    #@2f
    iget v2, p0, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    #@31
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    #@33
    invoke-virtual {v1, p3, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    #@36
    .line 760
    return v0

    #@37
    .line 764
    :cond_3
    return p2
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 895
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "LocationManagerService"

    #@7
    const-string/jumbo v1, "Location listener died"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@f
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    monitor-enter v1

    #@14
    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@16
    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->-wrap5(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 900
    monitor-enter p0

    #@1b
    .line 901
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@1e
    monitor-exit p0

    #@1f
    .line 894
    return-void

    #@20
    .line 897
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0

    #@23
    .line 900
    :catchall_1
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0
.end method

.method public callLocationChangedLocked(Landroid/location/Location;)Z
    .locals 10
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 818
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 820
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 823
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@8
    new-instance v1, Landroid/location/Location;

    #@a
    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@d
    invoke-interface {v0, v1}, Landroid/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    #@10
    .line 826
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    :try_start_2
    monitor-exit p0

    #@14
    .line 848
    :goto_0
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 820
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@19
    .line 828
    :catch_0
    move-exception v8

    #@1a
    .line 829
    .local v8, "e":Landroid/os/RemoteException;
    return v9

    #@1b
    .line 832
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    #@1d
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@20
    .line 833
    .local v3, "locationChanged":Landroid/content/Intent;
    const-string/jumbo v0, "location"

    #@23
    new-instance v1, Landroid/location/Location;

    #@25
    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@28
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2b
    .line 835
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    #@2c
    .line 838
    :try_start_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    #@2e
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@30
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@36
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@39
    move-result-object v5

    #@3a
    .line 839
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@3c
    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    #@3e
    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    #@41
    move-result-object v6

    #@42
    .line 838
    const/4 v2, 0x0

    #@43
    move-object v4, p0

    #@44
    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    #@47
    .line 842
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4a
    :try_start_5
    monitor-exit p0

    #@4b
    goto :goto_0

    #@4c
    .line 844
    :catch_1
    move-exception v7

    #@4d
    .line 845
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    return v9

    #@4e
    .line 835
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_1
    move-exception v0

    #@4f
    monitor-exit p0

    #@50
    throw v0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public callProviderEnabledLocked(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 854
    invoke-virtual {p0, v10}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    #@5
    .line 856
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 858
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 861
    if-eqz p2, :cond_0

    #@c
    .line 862
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@e
    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderEnabled(Ljava/lang/String;)V

    #@11
    .line 868
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@15
    .line 890
    :goto_1
    return v10

    #@16
    .line 864
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@18
    invoke-interface {v0, p1}, Landroid/location/ILocationListener;->onProviderDisabled(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .line 858
    :catchall_0
    move-exception v0

    #@1d
    :try_start_4
    monitor-exit p0

    #@1e
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    #@1f
    .line 870
    :catch_0
    move-exception v8

    #@20
    .line 871
    .local v8, "e":Landroid/os/RemoteException;
    return v9

    #@21
    .line 874
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    #@23
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@26
    .line 875
    .local v3, "providerIntent":Landroid/content/Intent;
    const-string/jumbo v0, "providerEnabled"

    #@29
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@2c
    .line 877
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    #@2d
    .line 880
    :try_start_6
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    #@2f
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@31
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@37
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@3a
    move-result-object v5

    #@3b
    .line 881
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@3d
    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    #@3f
    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 880
    const/4 v2, 0x0

    #@44
    move-object v4, p0

    #@45
    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    #@48
    .line 884
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@4b
    :try_start_7
    monitor-exit p0

    #@4c
    goto :goto_1

    #@4d
    .line 886
    :catch_1
    move-exception v7

    #@4e
    .line 887
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    return v9

    #@4f
    .line 877
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_1
    move-exception v0

    #@50
    monitor-exit p0

    #@51
    throw v0
    :try_end_7
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_7} :catch_1
.end method

.method public callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 783
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 785
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 788
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@8
    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    #@b
    .line 791
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    :try_start_2
    monitor-exit p0

    #@f
    .line 814
    :goto_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 785
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@14
    .line 793
    :catch_0
    move-exception v8

    #@15
    .line 794
    .local v8, "e":Landroid/os/RemoteException;
    return v9

    #@16
    .line 797
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    #@18
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@1b
    .line 798
    .local v3, "statusChanged":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    #@1d
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@20
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@23
    .line 799
    const-string/jumbo v0, "status"

    #@26
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@29
    .line 801
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    #@2a
    .line 804
    :try_start_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    #@2c
    iget-object v1, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@2e
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@34
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    #@37
    move-result-object v5

    #@38
    .line 805
    iget-object v2, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@3a
    iget v4, p0, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    #@3c
    invoke-static {v2, v4}, Lcom/android/server/LocationManagerService;->-wrap2(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    .line 804
    const/4 v2, 0x0

    #@41
    move-object v4, p0

    #@42
    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    #@45
    .line 808
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->incrementPendingBroadcastsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@48
    :try_start_5
    monitor-exit p0

    #@49
    goto :goto_0

    #@4a
    .line 810
    :catch_1
    move-exception v7

    #@4b
    .line 811
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    return v9

    #@4c
    .line 801
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_1
    move-exception v0

    #@4d
    monitor-exit p0

    #@4e
    throw v0
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public clearPendingBroadcastsLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 930
    iget v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 931
    iput v1, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    #@7
    .line 932
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@9
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 933
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@11
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@14
    .line 929
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "otherObj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 662
    instance-of v0, p1, Lcom/android/server/LocationManagerService$Receiver;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 663
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    #@6
    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    #@8
    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 665
    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public getListener()Landroid/location/ILocationListener;
    .locals 2

    #@0
    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 777
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@6
    return-object v0

    #@7
    .line 779
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Request for non-existent listener"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isListener()Z
    .locals 1

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isPendingIntent()Z
    .locals 1

    #@0
    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 908
    monitor-enter p0

    #@1
    .line 909
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 907
    return-void

    #@6
    .line 908
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 676
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Reciever["

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 677
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v3

    #@f
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 678
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 679
    const-string/jumbo v3, " listener"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 683
    :goto_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    #@22
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@25
    move-result-object v3

    #@26
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v1

    #@2a
    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/lang/String;

    #@36
    .line 684
    .local v0, "p":Ljava/lang/String;
    const-string/jumbo v3, " "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    iget-object v3, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    #@3f
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    move-result-object v3

    #@43
    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@45
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    goto :goto_1

    #@4d
    .line 681
    .end local v0    # "p":Ljava/lang/String;
    .end local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v3, " intent"

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_0

    #@54
    .line 686
    .restart local v1    # "p$iterator":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, "]"

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 687
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    return-object v3
.end method

.method public updateMonitoring(Z)V
    .locals 12
    .param p1, "allow"    # Z

    #@0
    .prologue
    .line 696
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mHideFromAppOps:Z

    #@2
    if-eqz v8, :cond_0

    #@4
    .line 697
    return-void

    #@5
    .line 700
    :cond_0
    const/4 v4, 0x0

    #@6
    .line 701
    .local v4, "requestingLocation":Z
    const/4 v3, 0x0

    #@7
    .line 702
    .local v3, "requestingHighPowerLocation":Z
    if-eqz p1, :cond_2

    #@9
    .line 705
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    #@b
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@e
    move-result-object v8

    #@f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v6

    #@13
    .local v6, "updateRecord$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_2

    #@19
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v5

    #@1d
    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    #@1f
    .line 706
    .local v5, "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@21
    iget-object v9, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    #@23
    invoke-static {v8, v9}, Lcom/android/server/LocationManagerService;->-wrap0(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_1

    #@29
    .line 707
    const/4 v4, 0x1

    #@2a
    .line 709
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@2c
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get6(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    #@2f
    move-result-object v8

    #@30
    iget-object v9, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    #@32
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    #@38
    .line 710
    .local v1, "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_4

    #@3a
    .line 711
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    #@3d
    move-result-object v2

    #@3e
    .line 712
    :goto_0
    if-eqz v2, :cond_1

    #@40
    .line 713
    iget v8, v2, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    #@42
    const/4 v9, 0x3

    #@43
    if-ne v8, v9, :cond_1

    #@45
    .line 714
    iget-object v8, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    #@47
    invoke-virtual {v8}, Landroid/location/LocationRequest;->getInterval()J

    #@4a
    move-result-wide v8

    #@4b
    const-wide/32 v10, 0x493e0

    #@4e
    cmp-long v8, v8, v10

    #@50
    if-gez v8, :cond_1

    #@52
    .line 715
    const/4 v3, 0x1

    #@53
    .line 725
    .end local v1    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v5    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v6    # "updateRecord$iterator":Ljava/util/Iterator;
    :cond_2
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    #@55
    .line 726
    const/16 v9, 0x29

    #@57
    .line 723
    invoke-direct {p0, v4, v8, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    #@5a
    move-result v8

    #@5b
    iput-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpMonitoring:Z

    #@5d
    .line 729
    iget-boolean v7, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    #@5f
    .line 732
    .local v7, "wasHighPowerMonitoring":Z
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    #@61
    .line 733
    const/16 v9, 0x2a

    #@63
    .line 730
    invoke-direct {p0, v3, v8, v9}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(ZZI)Z

    #@66
    move-result v8

    #@67
    iput-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    #@69
    .line 734
    iget-boolean v8, p0, Lcom/android/server/LocationManagerService$Receiver;->mOpHighPowerMonitoring:Z

    #@6b
    if-eq v8, v7, :cond_3

    #@6d
    .line 736
    new-instance v0, Landroid/content/Intent;

    #@6f
    const-string/jumbo v8, "android.location.HIGH_POWER_REQUEST_CHANGE"

    #@72
    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@75
    .line 737
    .local v0, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$Receiver;->this$0:Lcom/android/server/LocationManagerService;

    #@77
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    #@7a
    move-result-object v8

    #@7b
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@7d
    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@80
    .line 695
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    #@81
    .line 711
    .end local v7    # "wasHighPowerMonitoring":Z
    .restart local v1    # "locationProvider":Lcom/android/server/location/LocationProviderInterface;
    .restart local v5    # "updateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v6    # "updateRecord$iterator":Ljava/util/Iterator;
    :cond_4
    const/4 v2, 0x0

    #@82
    .local v2, "properties":Lcom/android/internal/location/ProviderProperties;
    goto :goto_0
.end method
