.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# instance fields
.field private mAdbNotificationShown:Z

.field private mConfigured:Z

.field private mConnected:Z

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mCurrentFunctions:Ljava/lang/String;

.field private mCurrentFunctionsApplied:Z

.field private mCurrentUser:I

.field private mUsbDataUnlocked:Z

.field private mUsbNotificationId:I

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    .line 312
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 309
    const/16 v2, -0x2710

    #@7
    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@9
    .line 315
    :try_start_0
    const-string/jumbo v2, "sys.usb.config"

    #@c
    .line 316
    const-string/jumbo v3, "none"

    #@f
    .line 315
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@15
    .line 317
    const-string/jumbo v2, "none"

    #@18
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 318
    const-string/jumbo v2, "mtp"

    #@23
    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@25
    .line 320
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@27
    .line 321
    const-string/jumbo v3, "sys.usb.state"

    #@2a
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@34
    .line 322
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 323
    const-string/jumbo v3, "adb"

    #@3b
    .line 322
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@3e
    move-result v2

    #@3f
    invoke-static {p1, v2}, Lcom/android/server/usb/UsbDeviceManager;->-set1(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@42
    .line 324
    const/4 v2, 0x0

    #@43
    const/4 v3, 0x0

    #@44
    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@47
    .line 326
    new-instance v2, Ljava/io/File;

    #@49
    const-string/jumbo v3, "/sys/class/android_usb/android0/state"

    #@4c
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4f
    const/4 v3, 0x0

    #@50
    const/4 v4, 0x0

    #@51
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    .line 327
    .local v1, "state":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    #@5c
    .line 330
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    #@5f
    move-result-object v2

    #@60
    .line 331
    const-string/jumbo v3, "adb_enabled"

    #@63
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@66
    move-result-object v3

    #@67
    .line 332
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    #@69
    invoke-direct {v4, p1}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    #@6c
    const/4 v5, 0x0

    #@6d
    .line 330
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@70
    .line 335
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    #@73
    move-result-object v2

    #@74
    const-string/jumbo v3, "DEVPATH=/devices/virtual/android_usb/android0"

    #@77
    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #@7a
    .line 336
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    #@7d
    move-result-object v2

    #@7e
    const-string/jumbo v3, "DEVPATH=/devices/virtual/misc/usb_accessory"

    #@81
    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    .line 311
    .end local v1    # "state":Ljava/lang/String;
    :goto_0
    return-void

    #@85
    .line 337
    :catch_0
    move-exception v0

    #@86
    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UsbDeviceManager"

    #@89
    const-string/jumbo v3, "Error initializing UsbHandler"

    #@8c
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8f
    goto :goto_0
.end method

.method private applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "functions"    # Ljava/lang/String;

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 506
    const-string/jumbo v0, "adb"

    #@b
    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    .line 510
    :goto_0
    return-object p1

    #@10
    .line 508
    :cond_0
    const-string/jumbo v0, "adb"

    #@13
    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    goto :goto_0
.end method

.method private getDefaultFunctions()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 811
    const-string/jumbo v1, "persist.sys.usb.config"

    #@3
    .line 812
    const-string/jumbo v2, "none"

    #@6
    .line 811
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 813
    .local v0, "func":Ljava/lang/String;
    const-string/jumbo v1, "none"

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 814
    const-string/jumbo v0, "mtp"

    #@16
    .line 816
    :cond_0
    return-object v0
.end method

.method private isUsbTransferAllowed()Z
    .locals 3

    #@0
    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "user"

    #@9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/os/UserManager;

    #@f
    .line 515
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_usb_file_transfer"

    #@12
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    const/4 v1, 0x0

    #@19
    :goto_0
    return v1

    #@1a
    :cond_0
    const/4 v1, 0x1

    #@1b
    goto :goto_0
.end method

.method private setAdbEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 414
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@5
    move-result v2

    #@6
    if-eq p1, v2, :cond_1

    #@8
    .line 415
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@a
    invoke-static {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->-set1(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@d
    .line 419
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 420
    .local v1, "oldFunctions":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 421
    .local v0, "newFunctions":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 422
    const-string/jumbo v2, "persist.sys.usb.config"

    #@1e
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 426
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@23
    const/4 v3, 0x0

    #@24
    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@27
    .line 427
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    #@2a
    .line 430
    .end local v0    # "newFunctions":Ljava/lang/String;
    .end local v1    # "oldFunctions":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2c
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    #@2f
    move-result-object v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 431
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@34
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    #@37
    move-result-object v2

    #@38
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@3a
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@3d
    move-result v3

    #@3e
    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    #@41
    .line 412
    :cond_2
    return-void
.end method

.method private setEnabledFunctions(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 443
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@3
    .line 444
    .local v0, "oldFunctions":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@5
    .line 445
    .local v1, "oldFunctionsApplied":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 446
    return-void

    #@c
    .line 453
    :cond_0
    if-eqz v1, :cond_1

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 461
    :cond_1
    const-string/jumbo v2, "UsbDeviceManager"

    #@17
    const-string/jumbo v3, "Failsafe 2: Restoring default USB functions."

    #@1a
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 462
    const/4 v2, 0x0

    #@1e
    invoke-direct {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 463
    return-void

    #@25
    .line 454
    :cond_2
    const-string/jumbo v2, "UsbDeviceManager"

    #@28
    const-string/jumbo v3, "Failsafe 1: Restoring previous USB functions."

    #@2b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 455
    invoke-direct {p0, v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 456
    return-void

    #@35
    .line 468
    :cond_3
    const-string/jumbo v2, "UsbDeviceManager"

    #@38
    const-string/jumbo v3, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    #@3b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 469
    const-string/jumbo v2, "none"

    #@41
    invoke-direct {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_4

    #@47
    .line 470
    return-void

    #@48
    .line 474
    :cond_4
    const-string/jumbo v2, "UsbDeviceManager"

    #@4b
    const-string/jumbo v3, "Unable to set any USB functions!"

    #@4e
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 438
    return-void
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    #@0
    .prologue
    .line 397
    const-string/jumbo v1, "sys.usb.config"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 398
    .local v0, "oldConfig":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 399
    const-string/jumbo v1, "sys.usb.config"

    #@10
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 401
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    return v1
.end method

.method private setUsbDataUnlocked(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@2
    .line 407
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    #@5
    .line 408
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    #@8
    .line 409
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@e
    .line 404
    return-void
.end method

.method private trySetEnabledFunctions(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 478
    if-nez p1, :cond_0

    #@4
    .line 479
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    .line 481
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    .line 482
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@e
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap1(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    .line 484
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@1c
    if-eqz v0, :cond_1

    #@1e
    if-eqz p2, :cond_3

    #@20
    .line 486
    :cond_1
    const-string/jumbo v0, "UsbDeviceManager"

    #@23
    new-instance v1, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v2, "Setting USB config to "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 487
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@3c
    .line 488
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@3e
    .line 491
    const-string/jumbo v0, "none"

    #@41
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    #@44
    .line 494
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    #@47
    move-result v0

    #@48
    if-nez v0, :cond_2

    #@4a
    .line 495
    const-string/jumbo v0, "UsbDeviceManager"

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v2, "Failed to switch USB config to "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    .line 496
    return v3

    #@65
    .line 499
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@67
    .line 501
    :cond_3
    return v4
.end method

.method private updateAdbNotification()V
    .locals 12

    #@0
    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 770
    :cond_0
    const v6, 0x10403de

    #@c
    .line 771
    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@e
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_3

    #@14
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@16
    if-eqz v0, :cond_3

    #@18
    .line 772
    const-string/jumbo v0, "0"

    #@1b
    const-string/jumbo v1, "persist.adb.notify"

    #@1e
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_1

    #@28
    return-void

    #@29
    .line 774
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    #@2b
    if-nez v0, :cond_2

    #@2d
    .line 775
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2f
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@36
    move-result-object v10

    #@37
    .line 776
    .local v10, "r":Landroid/content/res/Resources;
    const v0, 0x10403de

    #@3a
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@3d
    move-result-object v11

    #@3e
    .line 778
    .local v11, "title":Ljava/lang/CharSequence;
    const v0, 0x10403df

    #@41
    .line 777
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@44
    move-result-object v7

    #@45
    .line 781
    .local v7, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/ComponentName;

    #@47
    const-string/jumbo v1, "com.android.settings"

    #@4a
    .line 782
    const-string/jumbo v3, "com.android.settings.DevelopmentSettings"

    #@4d
    .line 781
    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 780
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@53
    move-result-object v2

    #@54
    .line 783
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@56
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@59
    move-result-object v0

    #@5a
    .line 784
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@5c
    .line 783
    const/4 v1, 0x0

    #@5d
    .line 784
    const/4 v3, 0x0

    #@5e
    const/4 v4, 0x0

    #@5f
    .line 783
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@62
    move-result-object v9

    #@63
    .line 786
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    #@65
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@67
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@6a
    move-result-object v1

    #@6b
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@6e
    .line 787
    const v1, 0x1080641

    #@71
    .line 786
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@74
    move-result-object v0

    #@75
    .line 788
    const-wide/16 v4, 0x0

    #@77
    .line 786
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@7a
    move-result-object v0

    #@7b
    .line 789
    const/4 v1, 0x1

    #@7c
    .line 786
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@83
    move-result-object v0

    #@84
    .line 791
    const/4 v1, 0x0

    #@85
    .line 786
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@88
    move-result-object v0

    #@89
    .line 792
    const/4 v1, -0x1

    #@8a
    .line 786
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@8d
    move-result-object v0

    #@8e
    .line 793
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@90
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@93
    move-result-object v1

    #@94
    .line 794
    const v3, 0x1060059

    #@97
    .line 793
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    #@9a
    move-result v1

    #@9b
    .line 786
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@aa
    move-result-object v0

    #@ab
    .line 798
    const/4 v1, 0x1

    #@ac
    .line 786
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@b3
    move-result-object v8

    #@b4
    .line 800
    .local v8, "notification":Landroid/app/Notification;
    const/4 v0, 0x1

    #@b5
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    #@b7
    .line 801
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@b9
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@bc
    move-result-object v0

    #@bd
    .line 802
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@bf
    .line 801
    const/4 v3, 0x0

    #@c0
    const v4, 0x10403de

    #@c3
    invoke-virtual {v0, v3, v4, v8, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@c6
    .line 768
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "r":Landroid/content/res/Resources;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    #@c7
    .line 804
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    #@c9
    if-eqz v0, :cond_2

    #@cb
    .line 805
    const/4 v0, 0x0

    #@cc
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    #@ce
    .line 806
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@d0
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@d3
    move-result-object v0

    #@d4
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@d6
    const/4 v3, 0x0

    #@d7
    const v4, 0x10403de

    #@da
    invoke-virtual {v0, v3, v4, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@dd
    goto :goto_0
.end method

.method private updateAudioSourceFunction()V
    .locals 8

    #@0
    .prologue
    .line 582
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@2
    .line 583
    const-string/jumbo v7, "audio_source"

    #@5
    .line 582
    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    .line 584
    .local v3, "enabled":Z
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get3(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@e
    move-result v6

    #@f
    if-eq v3, v6, :cond_1

    #@11
    .line 585
    const/4 v0, -0x1

    #@12
    .line 586
    .local v0, "card":I
    const/4 v1, -0x1

    #@13
    .line 588
    .local v1, "device":I
    if-eqz v3, :cond_0

    #@15
    .line 589
    const/4 v4, 0x0

    #@16
    .line 591
    .local v4, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v5, Ljava/util/Scanner;

    #@18
    new-instance v6, Ljava/io/File;

    #@1a
    const-string/jumbo v7, "/sys/class/android_usb/android0/f_audio_source/pcm"

    #@1d
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@20
    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 592
    .end local v4    # "scanner":Ljava/util/Scanner;
    .local v5, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    #@26
    move-result v0

    #@27
    .line 593
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2a
    move-result v1

    #@2b
    .line 597
    if-eqz v5, :cond_0

    #@2d
    .line 598
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    #@30
    .line 602
    .end local v5    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@32
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get14(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v3, v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->setAccessoryAudioState(ZII)V

    #@39
    .line 603
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@3b
    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set2(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@3e
    .line 581
    .end local v0    # "card":I
    .end local v1    # "device":I
    :cond_1
    return-void

    #@3f
    .line 594
    .restart local v0    # "card":I
    .restart local v1    # "device":I
    .restart local v4    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    #@40
    .line 595
    .end local v4    # "scanner":Ljava/util/Scanner;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "UsbDeviceManager"

    #@43
    const-string/jumbo v7, "could not open audio source PCM file"

    #@46
    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@49
    .line 597
    if-eqz v4, :cond_0

    #@4b
    .line 598
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    #@4e
    goto :goto_0

    #@4f
    .line 596
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    #@50
    .line 597
    :goto_2
    if-eqz v4, :cond_2

    #@52
    .line 598
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    #@55
    .line 596
    :cond_2
    throw v6

    #@56
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v6

    #@57
    move-object v4, v5

    #@58
    .end local v5    # "scanner":Ljava/util/Scanner;
    .local v4, "scanner":Ljava/util/Scanner;
    goto :goto_2

    #@59
    .line 594
    .end local v4    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    #@5a
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    #@5b
    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "scanner":Ljava/util/Scanner;
    goto :goto_1
.end method

.method private updateCurrentAccessory()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 522
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@3
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get0(Lcom/android/server/usb/UsbDeviceManager;)J

    #@6
    move-result-wide v2

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v1, v2, v4

    #@b
    if-lez v1, :cond_2

    #@d
    .line 523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10
    move-result-wide v2

    #@11
    .line 524
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@13
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get0(Lcom/android/server/usb/UsbDeviceManager;)J

    #@16
    move-result-wide v4

    #@17
    const-wide/16 v6, 0x2710

    #@19
    add-long/2addr v4, v6

    #@1a
    .line 523
    cmp-long v1, v2, v4

    #@1c
    if-gez v1, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 526
    .local v0, "enteringAccessoryMode":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    #@21
    if-eqz v1, :cond_4

    #@23
    if-eqz v0, :cond_4

    #@25
    .line 529
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@27
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get1(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 530
    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    #@2f
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@31
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get1(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    #@38
    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@3a
    .line 531
    const-string/jumbo v1, "UsbDeviceManager"

    #@3d
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "entering USB accessory mode: "

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 533
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@58
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_0

    #@5e
    .line 534
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@60
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    #@63
    move-result-object v1

    #@64
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@66
    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    #@69
    .line 518
    :cond_0
    :goto_1
    return-void

    #@6a
    .line 523
    .end local v0    # "enteringAccessoryMode":Z
    :cond_1
    const/4 v0, 0x0

    #@6b
    .restart local v0    # "enteringAccessoryMode":Z
    goto :goto_0

    #@6c
    .line 522
    .end local v0    # "enteringAccessoryMode":Z
    :cond_2
    const/4 v0, 0x0

    #@6d
    .restart local v0    # "enteringAccessoryMode":Z
    goto :goto_0

    #@6e
    .line 537
    :cond_3
    const-string/jumbo v1, "UsbDeviceManager"

    #@71
    const-string/jumbo v2, "nativeGetAccessoryStrings failed"

    #@74
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    goto :goto_1

    #@78
    .line 539
    :cond_4
    if-nez v0, :cond_0

    #@7a
    .line 542
    const-string/jumbo v1, "UsbDeviceManager"

    #@7d
    const-string/jumbo v2, "exited USB accessory mode"

    #@80
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 543
    const/4 v1, 0x0

    #@84
    invoke-direct {p0, v8, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@87
    .line 545
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@89
    if-eqz v1, :cond_0

    #@8b
    .line 546
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@8d
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@90
    move-result v1

    #@91
    if-eqz v1, :cond_5

    #@93
    .line 547
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@95
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    #@98
    move-result-object v1

    #@99
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@9b
    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    #@9e
    .line 549
    :cond_5
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@a0
    .line 550
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@a2
    invoke-static {v1, v8}, Lcom/android/server/usb/UsbDeviceManager;->-set0(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;

    #@a5
    goto :goto_1
.end method

.method private updateMidiFunction()V
    .locals 8

    #@0
    .prologue
    .line 608
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@2
    .line 609
    const-string/jumbo v5, "midi"

    #@5
    .line 608
    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    .line 610
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get11(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@e
    move-result v4

    #@f
    if-eq v1, v4, :cond_1

    #@11
    .line 611
    if-eqz v1, :cond_0

    #@13
    .line 612
    const/4 v2, 0x0

    #@14
    .line 614
    .local v2, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    #@16
    new-instance v4, Ljava/io/File;

    #@18
    const-string/jumbo v5, "/sys/class/android_usb/android0/f_midi/alsa"

    #@1b
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 615
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@23
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    #@26
    move-result v5

    #@27
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set4(Lcom/android/server/usb/UsbDeviceManager;I)I

    #@2a
    .line 616
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2c
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    #@2f
    move-result v5

    #@30
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set5(Lcom/android/server/usb/UsbDeviceManager;I)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    .line 621
    if-eqz v3, :cond_0

    #@35
    .line 622
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    #@38
    .line 626
    .end local v1    # "enabled":Z
    .end local v3    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@3a
    invoke-static {v4, v1}, Lcom/android/server/usb/UsbDeviceManager;->-set6(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@3d
    .line 628
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@3f
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get14(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    #@42
    move-result-object v5

    #@43
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@45
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get11(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_3

    #@4b
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    #@4d
    :goto_1
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@4f
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)I

    #@52
    move-result v6

    #@53
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@55
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->-get10(Lcom/android/server/usb/UsbDeviceManager;)I

    #@58
    move-result v7

    #@59
    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    #@5c
    .line 607
    return-void

    #@5d
    .line 617
    .restart local v1    # "enabled":Z
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    #@5e
    .line 618
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string/jumbo v4, "UsbDeviceManager"

    #@61
    const-string/jumbo v5, "could not open MIDI PCM file"

    #@64
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@67
    .line 619
    const/4 v1, 0x0

    #@68
    .line 621
    .local v1, "enabled":Z
    if-eqz v2, :cond_0

    #@6a
    .line 622
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    #@6d
    goto :goto_0

    #@6e
    .line 620
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v1, "enabled":Z
    :catchall_0
    move-exception v4

    #@6f
    .line 621
    :goto_3
    if-eqz v2, :cond_2

    #@71
    .line 622
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    #@74
    .line 620
    :cond_2
    throw v4

    #@75
    .line 628
    .end local v1    # "enabled":Z
    :cond_3
    const/4 v4, 0x0

    #@76
    goto :goto_1

    #@77
    .line 620
    .restart local v1    # "enabled":Z
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v4

    #@78
    move-object v2, v3

    #@79
    .end local v3    # "scanner":Ljava/util/Scanner;
    .local v2, "scanner":Ljava/util/Scanner;
    goto :goto_3

    #@7a
    .line 617
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v0

    #@7b
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    #@7c
    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_2
.end method

.method private updateUsbFunctions()V
    .locals 0

    #@0
    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    #@3
    .line 578
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    #@6
    .line 576
    return-void
.end method

.method private updateUsbNotification()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 707
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@5
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_3

    #@b
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@d
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get15(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_3

    #@13
    .line 708
    const/4 v6, 0x0

    #@14
    .line 709
    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@16
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v10

    #@1e
    .line 710
    .local v10, "r":Landroid/content/res/Resources;
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 711
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@24
    if-nez v0, :cond_4

    #@26
    .line 712
    const v6, 0x10403d8

    #@29
    .line 729
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@2b
    if-eq v6, v0, :cond_2

    #@2d
    .line 731
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@2f
    if-eqz v0, :cond_1

    #@31
    .line 732
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@33
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@36
    move-result-object v0

    #@37
    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@39
    .line 733
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@3b
    .line 732
    invoke-virtual {v0, v4, v3, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@3e
    .line 734
    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@40
    .line 736
    :cond_1
    if-eqz v6, :cond_2

    #@42
    .line 738
    const v0, 0x10403dd

    #@45
    .line 737
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@48
    move-result-object v7

    #@49
    .line 739
    .local v7, "message":Ljava/lang/CharSequence;
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@4c
    move-result-object v11

    #@4d
    .line 742
    .local v11, "title":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/ComponentName;

    #@4f
    const-string/jumbo v3, "com.android.settings"

    #@52
    .line 743
    const-string/jumbo v5, "com.android.settings.deviceinfo.UsbModeChooserActivity"

    #@55
    .line 742
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@58
    .line 741
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@5b
    move-result-object v2

    #@5c
    .line 744
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@5e
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@61
    move-result-object v0

    #@62
    .line 745
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@64
    move v3, v1

    #@65
    .line 744
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@68
    move-result-object v9

    #@69
    .line 747
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    #@6b
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@6d
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@70
    move-result-object v3

    #@71
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@74
    .line 748
    const v3, 0x1080641

    #@77
    .line 747
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@7a
    move-result-object v0

    #@7b
    .line 749
    const-wide/16 v12, 0x0

    #@7d
    .line 747
    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@8c
    move-result-object v0

    #@8d
    .line 753
    const/4 v1, -0x2

    #@8e
    .line 747
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@91
    move-result-object v0

    #@92
    .line 754
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@94
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@97
    move-result-object v1

    #@98
    .line 755
    const v3, 0x1060059

    #@9b
    .line 754
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    #@9e
    move-result v1

    #@9f
    .line 747
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@ae
    move-result-object v0

    #@af
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@b2
    move-result-object v0

    #@b3
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@b6
    move-result-object v8

    #@b7
    .line 761
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@b9
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@bc
    move-result-object v0

    #@bd
    .line 762
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@bf
    .line 761
    invoke-virtual {v0, v4, v6, v8, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@c2
    .line 763
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@c4
    .line 706
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    #@c5
    .line 707
    .end local v6    # "id":I
    .end local v10    # "r":Landroid/content/res/Resources;
    :cond_3
    return-void

    #@c6
    .line 713
    .restart local v6    # "id":I
    .restart local v10    # "r":Landroid/content/res/Resources;
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@c8
    .line 714
    const-string/jumbo v3, "mtp"

    #@cb
    .line 713
    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@ce
    move-result v0

    #@cf
    if-eqz v0, :cond_5

    #@d1
    .line 715
    const v6, 0x10403d9

    #@d4
    goto/16 :goto_0

    #@d6
    .line 716
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@d8
    .line 717
    const-string/jumbo v3, "ptp"

    #@db
    .line 716
    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@de
    move-result v0

    #@df
    if-eqz v0, :cond_6

    #@e1
    .line 718
    const v6, 0x10403da

    #@e4
    goto/16 :goto_0

    #@e6
    .line 719
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@e8
    .line 720
    const-string/jumbo v3, "midi"

    #@eb
    .line 719
    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@ee
    move-result v0

    #@ef
    if-eqz v0, :cond_7

    #@f1
    .line 721
    const v6, 0x10403db

    #@f4
    goto/16 :goto_0

    #@f6
    .line 722
    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@f8
    .line 723
    const-string/jumbo v3, "accessory"

    #@fb
    .line 722
    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@fe
    move-result v0

    #@ff
    if-eqz v0, :cond_8

    #@101
    .line 724
    const v6, 0x10403dc

    #@104
    goto/16 :goto_0

    #@106
    .line 726
    :cond_8
    const v6, 0x10403d8

    #@109
    goto/16 :goto_0
.end method

.method private updateUsbStateBroadcast()V
    .locals 5

    #@0
    .prologue
    .line 557
    new-instance v2, Landroid/content/Intent;

    #@2
    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    #@5
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 558
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x30000000

    #@a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 560
    const-string/jumbo v3, "connected"

    #@10
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@12
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@15
    .line 561
    const-string/jumbo v3, "configured"

    #@18
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    #@1a
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1d
    .line 562
    const-string/jumbo v4, "unlocked"

    #@20
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_0

    #@26
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@28
    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@2b
    .line 564
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 565
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@31
    const-string/jumbo v4, ","

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 566
    .local v0, "functions":[Ljava/lang/String;
    const/4 v1, 0x0

    #@39
    .local v1, "i":I
    :goto_1
    array-length v3, v0

    #@3a
    if-ge v1, v3, :cond_1

    #@3c
    .line 567
    aget-object v3, v0, v1

    #@3e
    const/4 v4, 0x1

    #@3f
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@42
    .line 566
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_1

    #@45
    .line 562
    .end local v0    # "functions":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    #@46
    goto :goto_0

    #@47
    .line 573
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@49
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@4c
    move-result-object v3

    #@4d
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@4f
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@52
    .line 555
    return-void
.end method

.method private waitForState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 383
    const/4 v1, 0x0

    #@1
    .line 384
    .local v1, "value":Ljava/lang/String;
    const/4 v0, 0x0

    #@2
    .end local v1    # "value":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x14

    #@4
    if-ge v0, v2, :cond_1

    #@6
    .line 386
    const-string/jumbo v2, "sys.usb.state"

    #@9
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 387
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    const/4 v2, 0x1

    #@14
    return v2

    #@15
    .line 388
    :cond_0
    const-wide/16 v2, 0x32

    #@17
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@1a
    .line 384
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 390
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "UsbDeviceManager"

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "waitForState("

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, ") FAILED: got "

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 391
    const/4 v2, 0x0

    #@43
    return v2
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 820
    const-string/jumbo v1, "USB Device State:"

    #@3
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "  mCurrentFunctions: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "  mCurrentFunctionsApplied: "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@38
    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "  mConnected: "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, "  mConfigured: "

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6a
    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    const-string/jumbo v2, "  mUsbDataUnlocked: "

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@83
    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v2, "  mCurrentAccessory: "

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v1

    #@99
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@9c
    .line 828
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v2, "  Kernel state: "

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    .line 829
    new-instance v2, Ljava/io/File;

    #@aa
    const-string/jumbo v3, "/sys/class/android_usb/android0/state"

    #@ad
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b0
    const/4 v3, 0x0

    #@b1
    const/4 v4, 0x0

    #@b2
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@b9
    move-result-object v2

    #@ba
    .line 828
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v1

    #@be
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v1

    #@c2
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v2, "  Kernel function list: "

    #@cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    .line 831
    new-instance v2, Ljava/io/File;

    #@d3
    const-string/jumbo v3, "/sys/class/android_usb/android0/functions"

    #@d6
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@d9
    const/4 v3, 0x0

    #@da
    const/4 v4, 0x0

    #@db
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@e2
    move-result-object v2

    #@e3
    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v1

    #@e7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v1

    #@eb
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@ee
    .line 819
    :goto_0
    return-void

    #@ef
    .line 832
    :catch_0
    move-exception v0

    #@f0
    .line 833
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v2, "IOException: "

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v1

    #@100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v1

    #@104
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@107
    goto :goto_0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    #@0
    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 633
    iget v2, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v2, :pswitch_data_0

    #@8
    .line 632
    :cond_0
    :goto_0
    return-void

    #@9
    .line 635
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@b
    if-ne v2, v3, :cond_3

    #@d
    move v2, v3

    #@e
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@10
    .line 636
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@12
    if-ne v2, v3, :cond_4

    #@14
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    #@16
    .line 637
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 639
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@1c
    .line 641
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    #@1f
    .line 642
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    #@22
    .line 643
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@24
    .line 644
    const-string/jumbo v3, "accessory"

    #@27
    .line 643
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_5

    #@2d
    .line 645
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    #@30
    .line 650
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@32
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_0

    #@38
    .line 651
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    #@3b
    .line 652
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    #@3e
    goto :goto_0

    #@3f
    :cond_3
    move v2, v4

    #@40
    .line 635
    goto :goto_1

    #@41
    :cond_4
    move v3, v4

    #@42
    .line 636
    goto :goto_2

    #@43
    .line 646
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@45
    if-nez v2, :cond_2

    #@47
    .line 648
    invoke-direct {p0, v5, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@4a
    goto :goto_3

    #@4b
    .line 656
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@4d
    if-ne v2, v3, :cond_6

    #@4f
    :goto_4
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    #@52
    goto :goto_0

    #@53
    :cond_6
    move v3, v4

    #@54
    goto :goto_4

    #@55
    .line 659
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@57
    check-cast v1, Ljava/lang/String;

    #@59
    .line 660
    .local v1, "functions":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@5c
    goto :goto_0

    #@5d
    .line 663
    .end local v1    # "functions":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@5f
    invoke-direct {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@62
    goto :goto_0

    #@63
    .line 666
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@65
    if-ne v2, v3, :cond_7

    #@67
    :goto_5
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbDataUnlocked(Z)V

    #@6a
    goto :goto_0

    #@6b
    :cond_7
    move v3, v4

    #@6c
    goto :goto_5

    #@6d
    .line 669
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    #@70
    .line 670
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    #@73
    .line 671
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    #@76
    .line 672
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    #@79
    goto :goto_0

    #@7a
    .line 675
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@7c
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@7f
    .line 676
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@81
    if-eqz v2, :cond_8

    #@83
    .line 677
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@85
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    #@88
    move-result-object v2

    #@89
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@8b
    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    #@8e
    .line 679
    :cond_8
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@90
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    #@93
    move-result-object v2

    #@94
    if-eqz v2, :cond_0

    #@96
    .line 680
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@98
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    #@9b
    move-result-object v2

    #@9c
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@9e
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@a1
    move-result v3

    #@a2
    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    #@a5
    goto/16 :goto_0

    #@a7
    .line 684
    :pswitch_7
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@a9
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@ab
    if-eq v2, v4, :cond_0

    #@ad
    .line 686
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@af
    .line 687
    const-string/jumbo v4, "mtp"

    #@b2
    .line 686
    invoke-static {v2, v4}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@b5
    move-result v2

    #@b6
    if-nez v2, :cond_a

    #@b8
    .line 688
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@ba
    .line 689
    const-string/jumbo v4, "ptp"

    #@bd
    .line 688
    invoke-static {v2, v4}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@c0
    move-result v0

    #@c1
    .line 690
    :goto_6
    if-eqz v0, :cond_9

    #@c3
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@c5
    const/16 v4, -0x2710

    #@c7
    if-eq v2, v4, :cond_9

    #@c9
    .line 691
    const-string/jumbo v2, "UsbDeviceManager"

    #@cc
    new-instance v4, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v5, "Current user switched to "

    #@d4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v4

    #@d8
    iget v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@da
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    .line 692
    const-string/jumbo v5, "; resetting USB host stack for MTP or PTP"

    #@e1
    .line 691
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v4

    #@e5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v4

    #@e9
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ec
    .line 693
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@ee
    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@f1
    .line 695
    :cond_9
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@f3
    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@f5
    goto/16 :goto_0

    #@f7
    .line 686
    :cond_a
    const/4 v0, 0x1

    #@f8
    .local v0, "active":Z
    goto :goto_6

    #@f9
    .line 633
    nop

    #@fa
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    #@3
    .line 351
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 352
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    .line 353
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 349
    return-void
.end method

.method public sendMessage(IZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    #@0
    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    #@3
    .line 344
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 345
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@c
    .line 346
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 342
    return-void

    #@10
    .line 345
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 359
    const-string/jumbo v4, "DISCONNECTED"

    #@4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 360
    const/4 v1, 0x0

    #@b
    .line 361
    .local v1, "connected":I
    const/4 v0, 0x0

    #@c
    .line 372
    .local v0, "configured":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    #@f
    .line 373
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    .line 374
    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    #@15
    .line 375
    iput v0, v2, Landroid/os/Message;->arg2:I

    #@17
    .line 377
    if-nez v1, :cond_0

    #@19
    const/16 v3, 0x3e8

    #@1b
    :cond_0
    int-to-long v4, v3

    #@1c
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1f
    .line 356
    return-void

    #@20
    .line 362
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    const-string/jumbo v4, "CONNECTED"

    #@23
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 363
    const/4 v1, 0x1

    #@2a
    .line 364
    .restart local v1    # "connected":I
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "configured":I
    goto :goto_0

    #@2c
    .line 365
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_2
    const-string/jumbo v4, "CONFIGURED"

    #@2f
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_3

    #@35
    .line 366
    const/4 v1, 0x1

    #@36
    .line 367
    .restart local v1    # "connected":I
    const/4 v0, 0x1

    #@37
    .restart local v0    # "configured":I
    goto :goto_0

    #@38
    .line 369
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_3
    const-string/jumbo v3, "UsbDeviceManager"

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "unknown state "

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 370
    return-void
.end method
