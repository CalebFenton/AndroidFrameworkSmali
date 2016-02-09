.class final Lcom/android/server/DeviceIdleController$BinderService;
.super Landroid/os/IDeviceIdleController$Stub;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-direct {p0}, Landroid/os/IDeviceIdleController$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;)V

    #@3
    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 652
    const-string/jumbo v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    #@9
    .line 653
    const-string/jumbo v3, "No permission to change device idle whitelist"

    #@c
    .line 651
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@12
    move-result v2

    #@13
    .line 655
    .local v2, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@16
    move-result-object v0

    #@17
    .line 656
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    .line 661
    const-string/jumbo v6, "addPowerSaveTempWhitelistApp"

    #@1e
    .line 659
    const/4 v4, 0x0

    #@1f
    .line 660
    const/4 v5, 0x0

    #@20
    .line 661
    const/4 v7, 0x0

    #@21
    move/from16 v3, p4

    #@23
    .line 655
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    #@26
    move-result p4

    #@27
    .line 662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2a
    move-result-wide v10

    #@2b
    .line 664
    .local v10, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2d
    .line 665
    const/4 v7, 0x1

    #@2e
    move-object v3, p1

    #@2f
    move-wide v4, p2

    #@30
    move/from16 v6, p4

    #@32
    move-object/from16 v8, p5

    #@34
    .line 664
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .line 667
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3a
    .line 650
    return-void

    #@3b
    .line 666
    :catchall_0
    move-exception v0

    #@3c
    .line 667
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3f
    .line 666
    throw v0
.end method

.method public addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    #@5
    move-result-object v0

    #@6
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    #@8
    .local v2, "duration":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move v4, p2

    #@b
    move-object v5, p3

    #@c
    .line 674
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController$BinderService;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    #@f
    .line 675
    return-wide v2
.end method

.method public addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get1(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    #@5
    move-result-object v0

    #@6
    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    #@8
    .local v2, "duration":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    move v4, p2

    #@b
    move-object v5, p3

    #@c
    .line 681
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DeviceIdleController$BinderService;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    #@f
    .line 682
    return-wide v2
.end method

.method public addPowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@9
    .line 603
    const/4 v2, 0x0

    #@a
    .line 602
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 604
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@12
    .line 601
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 691
    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@9
    .line 687
    const/4 v2, 0x0

    #@a
    .line 686
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 688
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V

    #@12
    .line 685
    return-void
.end method

.method public getAppIdTempWhitelist()[I
    .locals 1

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAppIdWhitelist()[I
    .locals 1

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistInternal()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAppIdWhitelistExceptIdle()[I
    .locals 1

    #@0
    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistExceptIdleInternal()[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFullPowerWhitelist()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistInternal()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistInternal()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removePowerSaveWhitelistApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@2
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    #@9
    .line 609
    const/4 v2, 0x0

    #@a
    .line 608
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 610
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    #@f
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    #@12
    .line 607
    return-void
.end method
