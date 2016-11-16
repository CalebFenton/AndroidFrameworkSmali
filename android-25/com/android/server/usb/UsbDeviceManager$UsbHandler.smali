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

.field private mHostConnected:Z

.field private mSinkPower:Z

.field private mSourcePower:Z

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
    .line 334
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    .line 335
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 332
    const/16 v2, -0x2710

    #@7
    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@9
    .line 338
    :try_start_0
    const-string/jumbo v2, "sys.usb.config"

    #@c
    .line 339
    const-string/jumbo v3, "none"

    #@f
    .line 338
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@15
    .line 340
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
    .line 341
    const-string/jumbo v2, "mtp"

    #@23
    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@25
    .line 343
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@27
    .line 344
    const-string/jumbo v3, "sys.usb.state"

    #@2a
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@34
    .line 345
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 346
    const-string/jumbo v3, "adb"

    #@3b
    .line 345
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@3e
    move-result v2

    #@3f
    invoke-static {p1, v2}, Lcom/android/server/usb/UsbDeviceManager;->-set1(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@42
    .line 347
    const/4 v2, 0x0

    #@43
    const/4 v3, 0x0

    #@44
    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@47
    .line 349
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
    .line 350
    .local v1, "state":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    #@5c
    .line 353
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    #@5f
    move-result-object v2

    #@60
    .line 354
    const-string/jumbo v3, "adb_enabled"

    #@63
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@66
    move-result-object v3

    #@67
    .line 355
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    #@69
    invoke-direct {v4, p1}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    #@6c
    const/4 v5, 0x0

    #@6d
    .line 353
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@70
    .line 358
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get14(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    #@73
    move-result-object v2

    #@74
    const-string/jumbo v3, "DEVPATH=/devices/virtual/android_usb/android0"

    #@77
    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #@7a
    .line 359
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get14(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    #@7d
    move-result-object v2

    #@7e
    const-string/jumbo v3, "DEVPATH=/devices/virtual/misc/usb_accessory"

    #@81
    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    .line 334
    .end local v1    # "state":Ljava/lang/String;
    :goto_0
    return-void

    #@85
    .line 360
    :catch_0
    move-exception v0

    #@86
    .line 361
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
    .line 544
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 545
    const-string/jumbo v0, "adb"

    #@b
    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    .line 549
    :goto_0
    return-object p1

    #@10
    .line 547
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
    .line 913
    const-string/jumbo v1, "persist.sys.usb.config"

    #@3
    .line 914
    const-string/jumbo v2, "none"

    #@6
    .line 913
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 915
    .local v0, "func":Ljava/lang/String;
    const-string/jumbo v1, "none"

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 916
    const-string/jumbo v0, "mtp"

    #@16
    .line 918
    :cond_0
    return-object v0
.end method

.method private isUsbStateChanged(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 595
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@9
    move-result-object v2

    #@a
    .line 596
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@c
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Intent;

    #@f
    move-result-object v3

    #@10
    if-nez v3, :cond_1

    #@12
    .line 597
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_4

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    .line 598
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_0

    #@28
    .line 600
    const-string/jumbo v3, "mtp"

    #@2b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-nez v3, :cond_0

    #@31
    .line 603
    return v6

    #@32
    .line 607
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@34
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Intent;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@3f
    move-result-object v3

    #@40
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v3

    #@44
    if-nez v3, :cond_2

    #@46
    .line 608
    return v6

    #@47
    .line 610
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v1

    #@4b
    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v3

    #@4f
    if-eqz v3, :cond_4

    #@51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Ljava/lang/String;

    #@57
    .line 611
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@5a
    move-result v3

    #@5b
    .line 612
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@5d
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Intent;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@64
    move-result v4

    #@65
    .line 611
    if-eq v3, v4, :cond_3

    #@67
    .line 613
    return v6

    #@68
    .line 617
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    return v5
.end method

.method private isUsbTransferAllowed()Z
    .locals 3

    #@0
    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

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
    .line 554
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
    .line 453
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@5
    move-result v2

    #@6
    if-eq p1, v2, :cond_1

    #@8
    .line 454
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@a
    invoke-static {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->-set1(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@d
    .line 458
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 459
    .local v1, "oldFunctions":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 460
    .local v0, "newFunctions":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 461
    const-string/jumbo v2, "persist.sys.usb.config"

    #@1e
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 465
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@23
    const/4 v3, 0x0

    #@24
    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@27
    .line 466
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    #@2a
    .line 469
    .end local v0    # "newFunctions":Ljava/lang/String;
    .end local v1    # "oldFunctions":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2c
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    #@2f
    move-result-object v2

    #@30
    if-eqz v2, :cond_2

    #@32
    .line 470
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@34
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

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
    .line 451
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
    .line 482
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@3
    .line 483
    .local v0, "oldFunctions":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@5
    .line 484
    .local v1, "oldFunctionsApplied":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 485
    return-void

    #@c
    .line 492
    :cond_0
    if-eqz v1, :cond_1

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 500
    :cond_1
    const-string/jumbo v2, "UsbDeviceManager"

    #@17
    const-string/jumbo v3, "Failsafe 2: Restoring default USB functions."

    #@1a
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 501
    const/4 v2, 0x0

    #@1e
    invoke-direct {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_3

    #@24
    .line 502
    return-void

    #@25
    .line 493
    :cond_2
    const-string/jumbo v2, "UsbDeviceManager"

    #@28
    const-string/jumbo v3, "Failsafe 1: Restoring previous USB functions."

    #@2b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 494
    invoke-direct {p0, v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 495
    return-void

    #@35
    .line 507
    :cond_3
    const-string/jumbo v2, "UsbDeviceManager"

    #@38
    const-string/jumbo v3, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    #@3b
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 508
    const-string/jumbo v2, "none"

    #@41
    invoke-direct {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_4

    #@47
    .line 509
    return-void

    #@48
    .line 513
    :cond_4
    const-string/jumbo v2, "UsbDeviceManager"

    #@4b
    const-string/jumbo v3, "Unable to set any USB functions!"

    #@4e
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 477
    return-void
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    #@0
    .prologue
    .line 439
    const-string/jumbo v0, "sys.usb.config"

    #@3
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 440
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private setUsbDataUnlocked(Z)V
    .locals 2
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@2
    .line 446
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    #@5
    .line 447
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded()V

    #@8
    .line 448
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@e
    .line 443
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
    .line 517
    if-nez p1, :cond_0

    #@4
    .line 518
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    .line 520
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    .line 521
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@e
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap1(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    .line 523
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
    .line 525
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
    .line 526
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@3c
    .line 527
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@3e
    .line 530
    const-string/jumbo v0, "none"

    #@41
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    #@44
    .line 533
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    #@47
    move-result v0

    #@48
    if-nez v0, :cond_2

    #@4a
    .line 534
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
    .line 535
    return v3

    #@65
    .line 538
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    #@67
    .line 540
    :cond_3
    return v4
.end method

.method private updateAdbNotification()V
    .locals 12

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    return-void

    #@9
    .line 872
    :cond_0
    const v6, 0x1040420

    #@c
    .line 873
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
    .line 874
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
    .line 876
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    #@2b
    if-nez v0, :cond_2

    #@2d
    .line 877
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2f
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@36
    move-result-object v10

    #@37
    .line 878
    .local v10, "r":Landroid/content/res/Resources;
    const v0, 0x1040420

    #@3a
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@3d
    move-result-object v11

    #@3e
    .line 880
    .local v11, "title":Ljava/lang/CharSequence;
    const v0, 0x1040421

    #@41
    .line 879
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@44
    move-result-object v7

    #@45
    .line 883
    .local v7, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/ComponentName;

    #@47
    const-string/jumbo v1, "com.android.settings"

    #@4a
    .line 884
    const-string/jumbo v3, "com.android.settings.DevelopmentSettings"

    #@4d
    .line 883
    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    .line 882
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@53
    move-result-object v2

    #@54
    .line 885
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@56
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@59
    move-result-object v0

    #@5a
    .line 886
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@5c
    .line 885
    const/4 v1, 0x0

    #@5d
    .line 886
    const/4 v3, 0x0

    #@5e
    const/4 v4, 0x0

    #@5f
    .line 885
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@62
    move-result-object v9

    #@63
    .line 888
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    #@65
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@67
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@6a
    move-result-object v1

    #@6b
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@6e
    .line 889
    const v1, 0x10806d7

    #@71
    .line 888
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@74
    move-result-object v0

    #@75
    .line 890
    const-wide/16 v4, 0x0

    #@77
    .line 888
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@7a
    move-result-object v0

    #@7b
    .line 891
    const/4 v1, 0x1

    #@7c
    .line 888
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@83
    move-result-object v0

    #@84
    .line 893
    const/4 v1, 0x0

    #@85
    .line 888
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@88
    move-result-object v0

    #@89
    .line 894
    const/4 v1, 0x0

    #@8a
    .line 888
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@8d
    move-result-object v0

    #@8e
    .line 895
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@90
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@93
    move-result-object v1

    #@94
    .line 896
    const v3, 0x106005b

    #@97
    .line 895
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    #@9a
    move-result v1

    #@9b
    .line 888
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
    .line 900
    const/4 v1, 0x1

    #@ac
    .line 888
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@b3
    move-result-object v8

    #@b4
    .line 902
    .local v8, "notification":Landroid/app/Notification;
    const/4 v0, 0x1

    #@b5
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    #@b7
    .line 903
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@b9
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@bc
    move-result-object v0

    #@bd
    .line 904
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@bf
    .line 903
    const/4 v3, 0x0

    #@c0
    const v4, 0x1040420

    #@c3
    invoke-virtual {v0, v3, v4, v8, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@c6
    .line 870
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
    .line 906
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    #@c9
    if-eqz v0, :cond_2

    #@cb
    .line 907
    const/4 v0, 0x0

    #@cc
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    #@ce
    .line 908
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@d0
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@d3
    move-result-object v0

    #@d4
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@d6
    const/4 v3, 0x0

    #@d7
    const v4, 0x1040420

    #@da
    invoke-virtual {v0, v3, v4, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@dd
    goto :goto_0
.end method

.method private updateAudioSourceFunction()V
    .locals 8

    #@0
    .prologue
    .line 660
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@2
    .line 661
    const-string/jumbo v7, "audio_source"

    #@5
    .line 660
    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    .line 662
    .local v3, "enabled":Z
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get3(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@e
    move-result v6

    #@f
    if-eq v3, v6, :cond_1

    #@11
    .line 663
    const/4 v0, -0x1

    #@12
    .line 664
    .local v0, "card":I
    const/4 v1, -0x1

    #@13
    .line 666
    .local v1, "device":I
    if-eqz v3, :cond_0

    #@15
    .line 667
    const/4 v4, 0x0

    #@16
    .line 669
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
    .line 670
    .end local v4    # "scanner":Ljava/util/Scanner;
    .local v5, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    #@26
    move-result v0

    #@27
    .line 671
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2a
    move-result v1

    #@2b
    .line 675
    if-eqz v5, :cond_0

    #@2d
    .line 676
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    #@30
    .line 680
    .end local v5    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@32
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get15(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, v3, v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->setAccessoryAudioState(ZII)V

    #@39
    .line 681
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@3b
    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set2(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@3e
    .line 659
    .end local v0    # "card":I
    .end local v1    # "device":I
    :cond_1
    return-void

    #@3f
    .line 672
    .restart local v0    # "card":I
    .restart local v1    # "device":I
    .restart local v4    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    #@40
    .line 673
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
    .line 675
    if-eqz v4, :cond_0

    #@4b
    .line 676
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    #@4e
    goto :goto_0

    #@4f
    .line 674
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    #@50
    .line 675
    :goto_2
    if-eqz v4, :cond_2

    #@52
    .line 676
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    #@55
    .line 674
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
    .line 672
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
    .line 561
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
    .line 562
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10
    move-result-wide v2

    #@11
    .line 563
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
    .line 562
    cmp-long v1, v2, v4

    #@1c
    if-gez v1, :cond_1

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 565
    .local v0, "enteringAccessoryMode":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    #@21
    if-eqz v1, :cond_4

    #@23
    if-eqz v0, :cond_4

    #@25
    .line 568
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@27
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get1(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 569
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
    .line 570
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
    .line 572
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@58
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@5b
    move-result v1

    #@5c
    if-eqz v1, :cond_0

    #@5e
    .line 573
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
    .line 557
    :cond_0
    :goto_1
    return-void

    #@6a
    .line 562
    .end local v0    # "enteringAccessoryMode":Z
    :cond_1
    const/4 v0, 0x0

    #@6b
    .restart local v0    # "enteringAccessoryMode":Z
    goto :goto_0

    #@6c
    .line 561
    .end local v0    # "enteringAccessoryMode":Z
    :cond_2
    const/4 v0, 0x0

    #@6d
    .restart local v0    # "enteringAccessoryMode":Z
    goto :goto_0

    #@6e
    .line 576
    :cond_3
    const-string/jumbo v1, "UsbDeviceManager"

    #@71
    const-string/jumbo v2, "nativeGetAccessoryStrings failed"

    #@74
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    goto :goto_1

    #@78
    .line 578
    :cond_4
    if-nez v0, :cond_0

    #@7a
    .line 581
    const-string/jumbo v1, "UsbDeviceManager"

    #@7d
    const-string/jumbo v2, "exited USB accessory mode"

    #@80
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@83
    .line 582
    const/4 v1, 0x0

    #@84
    invoke-direct {p0, v8, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@87
    .line 584
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@89
    if-eqz v1, :cond_0

    #@8b
    .line 585
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@8d
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@90
    move-result v1

    #@91
    if-eqz v1, :cond_5

    #@93
    .line 586
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
    .line 588
    :cond_5
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@a0
    .line 589
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
    .line 686
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@2
    .line 687
    const-string/jumbo v5, "midi"

    #@5
    .line 686
    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@8
    move-result v1

    #@9
    .line 688
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@b
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@e
    move-result v4

    #@f
    if-eq v1, v4, :cond_1

    #@11
    .line 689
    if-eqz v1, :cond_0

    #@13
    .line 690
    const/4 v2, 0x0

    #@14
    .line 692
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
    .line 693
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@23
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    #@26
    move-result v5

    #@27
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set5(Lcom/android/server/usb/UsbDeviceManager;I)I

    #@2a
    .line 694
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@2c
    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    #@2f
    move-result v5

    #@30
    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set6(Lcom/android/server/usb/UsbDeviceManager;I)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    .line 699
    if-eqz v3, :cond_0

    #@35
    .line 700
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    #@38
    .line 704
    .end local v1    # "enabled":Z
    .end local v3    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@3a
    invoke-static {v4, v1}, Lcom/android/server/usb/UsbDeviceManager;->-set7(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@3d
    .line 706
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@3f
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get15(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    #@42
    move-result-object v5

    #@43
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@45
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Z

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
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get10(Lcom/android/server/usb/UsbDeviceManager;)I

    #@52
    move-result v6

    #@53
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@55
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->-get11(Lcom/android/server/usb/UsbDeviceManager;)I

    #@58
    move-result v7

    #@59
    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    #@5c
    .line 685
    return-void

    #@5d
    .line 695
    .restart local v1    # "enabled":Z
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    #@5e
    .line 696
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
    .line 697
    const/4 v1, 0x0

    #@68
    .line 699
    .local v1, "enabled":Z
    if-eqz v2, :cond_0

    #@6a
    .line 700
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    #@6d
    goto :goto_0

    #@6e
    .line 698
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v1, "enabled":Z
    :catchall_0
    move-exception v4

    #@6f
    .line 699
    :goto_3
    if-eqz v2, :cond_2

    #@71
    .line 700
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    #@74
    .line 698
    :cond_2
    throw v4

    #@75
    .line 706
    .end local v1    # "enabled":Z
    :cond_3
    const/4 v4, 0x0

    #@76
    goto :goto_1

    #@77
    .line 698
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
    .line 695
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
    .line 655
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    #@3
    .line 656
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    #@6
    .line 654
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
    .line 798
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@5
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@d
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get16(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 799
    const-string/jumbo v0, "0"

    #@16
    const-string/jumbo v3, "persist.charging.notify"

    #@19
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    .line 798
    if-eqz v0, :cond_1

    #@23
    .line 799
    :cond_0
    return-void

    #@24
    .line 800
    :cond_1
    const/4 v6, 0x0

    #@25
    .line 801
    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@27
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@2e
    move-result-object v10

    #@2f
    .line 802
    .local v10, "r":Landroid/content/res/Resources;
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@31
    if-eqz v0, :cond_c

    #@33
    .line 803
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@35
    if-nez v0, :cond_6

    #@37
    .line 804
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    #@39
    if-eqz v0, :cond_5

    #@3b
    .line 805
    const v6, 0x104041a

    #@3e
    .line 831
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@40
    if-eq v6, v0, :cond_4

    #@42
    .line 833
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@44
    if-eqz v0, :cond_3

    #@46
    .line 834
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@48
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@4b
    move-result-object v0

    #@4c
    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@4e
    .line 835
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@50
    .line 834
    invoke-virtual {v0, v4, v3, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    #@53
    .line 836
    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@55
    .line 838
    :cond_3
    if-eqz v6, :cond_4

    #@57
    .line 840
    const v0, 0x104041f

    #@5a
    .line 839
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@5d
    move-result-object v7

    #@5e
    .line 841
    .local v7, "message":Ljava/lang/CharSequence;
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@61
    move-result-object v11

    #@62
    .line 844
    .local v11, "title":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/ComponentName;

    #@64
    const-string/jumbo v3, "com.android.settings"

    #@67
    .line 845
    const-string/jumbo v5, "com.android.settings.deviceinfo.UsbModeChooserActivity"

    #@6a
    .line 844
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6d
    .line 843
    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@70
    move-result-object v2

    #@71
    .line 846
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@73
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@76
    move-result-object v0

    #@77
    .line 847
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@79
    move v3, v1

    #@7a
    .line 846
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    #@7d
    move-result-object v9

    #@7e
    .line 849
    .local v9, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    #@80
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@82
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@85
    move-result-object v3

    #@86
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@89
    .line 850
    const v3, 0x10806d7

    #@8c
    .line 849
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@8f
    move-result-object v0

    #@90
    .line 851
    const-wide/16 v12, 0x0

    #@92
    .line 849
    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@9d
    move-result-object v0

    #@9e
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@a1
    move-result-object v0

    #@a2
    .line 855
    const/4 v1, -0x2

    #@a3
    .line 849
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@a6
    move-result-object v0

    #@a7
    .line 856
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@a9
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@ac
    move-result-object v1

    #@ad
    .line 857
    const v3, 0x106005b

    #@b0
    .line 856
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    #@b3
    move-result v1

    #@b4
    .line 849
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@b7
    move-result-object v0

    #@b8
    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@bb
    move-result-object v0

    #@bc
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@bf
    move-result-object v0

    #@c0
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@c3
    move-result-object v0

    #@c4
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@c7
    move-result-object v0

    #@c8
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@cb
    move-result-object v8

    #@cc
    .line 863
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@ce
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    #@d1
    move-result-object v0

    #@d2
    .line 864
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@d4
    .line 863
    invoke-virtual {v0, v4, v6, v8, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@d7
    .line 865
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    #@d9
    .line 797
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_4
    return-void

    #@da
    .line 807
    :cond_5
    const v6, 0x1040419

    #@dd
    goto/16 :goto_0

    #@df
    .line 809
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@e1
    .line 810
    const-string/jumbo v3, "mtp"

    #@e4
    .line 809
    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@e7
    move-result v0

    #@e8
    if-eqz v0, :cond_7

    #@ea
    .line 811
    const v6, 0x104041b

    #@ed
    goto/16 :goto_0

    #@ef
    .line 812
    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@f1
    .line 813
    const-string/jumbo v3, "ptp"

    #@f4
    .line 812
    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@f7
    move-result v0

    #@f8
    if-eqz v0, :cond_8

    #@fa
    .line 814
    const v6, 0x104041c

    #@fd
    goto/16 :goto_0

    #@ff
    .line 815
    :cond_8
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@101
    .line 816
    const-string/jumbo v3, "midi"

    #@104
    .line 815
    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@107
    move-result v0

    #@108
    if-eqz v0, :cond_9

    #@10a
    .line 817
    const v6, 0x104041d

    #@10d
    goto/16 :goto_0

    #@10f
    .line 818
    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@111
    .line 819
    const-string/jumbo v3, "accessory"

    #@114
    .line 818
    invoke-static {v0, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@117
    move-result v0

    #@118
    if-eqz v0, :cond_a

    #@11a
    .line 820
    const v6, 0x104041e

    #@11d
    goto/16 :goto_0

    #@11f
    .line 821
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    #@121
    if-eqz v0, :cond_b

    #@123
    .line 822
    const v6, 0x104041a

    #@126
    goto/16 :goto_0

    #@128
    .line 824
    :cond_b
    const v6, 0x1040419

    #@12b
    goto/16 :goto_0

    #@12d
    .line 826
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    #@12f
    if-eqz v0, :cond_d

    #@131
    .line 827
    const v6, 0x104041a

    #@134
    goto/16 :goto_0

    #@136
    .line 828
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    #@138
    if-eqz v0, :cond_2

    #@13a
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    #@13c
    if-eqz v0, :cond_2

    #@13e
    .line 829
    const v6, 0x1040419

    #@141
    goto/16 :goto_0
.end method

.method private updateUsbStateBroadcastIfNeeded()V
    .locals 6

    #@0
    .prologue
    .line 622
    new-instance v3, Landroid/content/Intent;

    #@2
    const-string/jumbo v4, "android.hardware.usb.action.USB_STATE"

    #@5
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 623
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x30000000

    #@a
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 625
    const-string/jumbo v4, "connected"

    #@10
    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@12
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@15
    .line 626
    const-string/jumbo v4, "host_connected"

    #@18
    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    #@1a
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@1d
    .line 627
    const-string/jumbo v4, "configured"

    #@20
    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    #@22
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@25
    .line 628
    const-string/jumbo v5, "unlocked"

    #@28
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_0

    #@2e
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@30
    :goto_0
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@33
    .line 630
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@35
    if-eqz v4, :cond_2

    #@37
    .line 631
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@39
    const-string/jumbo v5, ","

    #@3c
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 632
    .local v1, "functions":[Ljava/lang/String;
    const/4 v2, 0x0

    #@41
    .local v2, "i":I
    :goto_1
    array-length v4, v1

    #@42
    if-ge v2, v4, :cond_2

    #@44
    .line 633
    aget-object v0, v1, v2

    #@46
    .line 634
    .local v0, "function":Ljava/lang/String;
    const-string/jumbo v4, "none"

    #@49
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_1

    #@4f
    .line 632
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_1

    #@52
    .line 628
    .end local v0    # "function":Ljava/lang/String;
    .end local v1    # "functions":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    const/4 v4, 0x0

    #@53
    goto :goto_0

    #@54
    .line 637
    .restart local v0    # "function":Ljava/lang/String;
    .restart local v1    # "functions":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_1
    const/4 v4, 0x1

    #@55
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@58
    goto :goto_2

    #@59
    .line 642
    .end local v0    # "function":Ljava/lang/String;
    .end local v1    # "functions":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbStateChanged(Landroid/content/Intent;)Z

    #@5c
    move-result v4

    #@5d
    if-nez v4, :cond_3

    #@5f
    .line 646
    return-void

    #@60
    .line 650
    :cond_3
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@62
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    #@65
    move-result-object v4

    #@66
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@68
    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@6b
    .line 651
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@6d
    invoke-static {v4, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set4(Lcom/android/server/usb/UsbDeviceManager;Landroid/content/Intent;)Landroid/content/Intent;

    #@70
    .line 620
    return-void
.end method

.method private waitForState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    #@0
    .prologue
    .line 423
    const/4 v1, 0x0

    #@1
    .line 424
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
    .line 426
    const-string/jumbo v2, "sys.usb.state"

    #@9
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 427
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
    .line 428
    :cond_0
    const-wide/16 v2, 0x32

    #@17
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    #@1a
    .line 424
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 430
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
    .line 431
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
    .line 922
    const-string/jumbo v1, "USB Device State:"

    #@3
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 923
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
    .line 924
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
    .line 925
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
    .line 926
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
    .line 927
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
    .line 928
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
    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v2, "  mHostConnected: "

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@b5
    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    const-string/jumbo v2, "  mSourcePower: "

    #@bd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v1

    #@c1
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    #@c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v1

    #@cb
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@ce
    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v2, "  mSinkPower: "

    #@d6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    #@dc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@df
    move-result-object v1

    #@e0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v1

    #@e4
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@e7
    .line 933
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v2, "  Kernel state: "

    #@ef
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v1

    #@f3
    .line 934
    new-instance v2, Ljava/io/File;

    #@f5
    const-string/jumbo v3, "/sys/class/android_usb/android0/state"

    #@f8
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@fb
    const/4 v3, 0x0

    #@fc
    const/4 v4, 0x0

    #@fd
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@100
    move-result-object v2

    #@101
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@104
    move-result-object v2

    #@105
    .line 933
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v1

    #@109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10c
    move-result-object v1

    #@10d
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@110
    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    #@112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@115
    const-string/jumbo v2, "  Kernel function list: "

    #@118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v1

    #@11c
    .line 936
    new-instance v2, Ljava/io/File;

    #@11e
    const-string/jumbo v3, "/sys/class/android_usb/android0/functions"

    #@121
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@124
    const/4 v3, 0x0

    #@125
    const/4 v4, 0x0

    #@126
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    #@129
    move-result-object v2

    #@12a
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@12d
    move-result-object v2

    #@12e
    .line 935
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v1

    #@132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v1

    #@136
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@139
    .line 921
    :goto_0
    return-void

    #@13a
    .line 937
    :catch_0
    move-exception v0

    #@13b
    .line 938
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v2, "IOException: "

    #@143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v1

    #@147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v1

    #@14b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14e
    move-result-object v1

    #@14f
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@152
    goto :goto_0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    #@0
    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    .line 711
    iget v3, p1, Landroid/os/Message;->what:I

    #@5
    packed-switch v3, :pswitch_data_0

    #@8
    .line 710
    :cond_0
    :goto_0
    return-void

    #@9
    .line 713
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@b
    if-ne v3, v4, :cond_3

    #@d
    move v3, v4

    #@e
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@10
    .line 714
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@12
    if-ne v3, v4, :cond_4

    #@14
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    #@16
    .line 715
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@18
    if-nez v3, :cond_1

    #@1a
    .line 717
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@1c
    .line 719
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    #@1f
    .line 720
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    #@22
    .line 721
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@24
    .line 722
    const-string/jumbo v4, "accessory"

    #@27
    .line 721
    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_5

    #@2d
    .line 723
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    #@30
    .line 728
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@32
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_0

    #@38
    .line 729
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded()V

    #@3b
    .line 730
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    #@3e
    goto :goto_0

    #@3f
    :cond_3
    move v3, v5

    #@40
    .line 713
    goto :goto_1

    #@41
    :cond_4
    move v4, v5

    #@42
    .line 714
    goto :goto_2

    #@43
    .line 724
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    #@45
    if-nez v3, :cond_2

    #@47
    .line 726
    invoke-direct {p0, v6, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@4a
    goto :goto_3

    #@4b
    .line 734
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@4f
    .line 735
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@51
    if-ne v3, v4, :cond_6

    #@53
    move v3, v4

    #@54
    :goto_4
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    #@56
    .line 736
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@58
    if-ne v3, v4, :cond_7

    #@5a
    move v3, v4

    #@5b
    :goto_5
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    #@5d
    .line 737
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@5f
    if-ne v3, v4, :cond_8

    #@61
    :goto_6
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    #@63
    .line 738
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@66
    .line 739
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    #@69
    .line 740
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@6b
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@6e
    move-result v3

    #@6f
    if-eqz v3, :cond_0

    #@71
    .line 741
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded()V

    #@74
    goto :goto_0

    #@75
    :cond_6
    move v3, v5

    #@76
    .line 735
    goto :goto_4

    #@77
    :cond_7
    move v3, v5

    #@78
    .line 736
    goto :goto_5

    #@79
    :cond_8
    move v4, v5

    #@7a
    .line 737
    goto :goto_6

    #@7b
    .line 745
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@7d
    if-ne v3, v4, :cond_9

    #@7f
    :goto_7
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    #@82
    goto :goto_0

    #@83
    :cond_9
    move v4, v5

    #@84
    goto :goto_7

    #@85
    .line 748
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@87
    check-cast v2, Ljava/lang/String;

    #@89
    .line 749
    .local v2, "functions":Ljava/lang/String;
    invoke-direct {p0, v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@8c
    goto/16 :goto_0

    #@8e
    .line 752
    .end local v2    # "functions":Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@90
    invoke-direct {p0, v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@93
    goto/16 :goto_0

    #@95
    .line 755
    :pswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@97
    if-ne v3, v4, :cond_a

    #@99
    :goto_8
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbDataUnlocked(Z)V

    #@9c
    goto/16 :goto_0

    #@9e
    :cond_a
    move v4, v5

    #@9f
    goto :goto_8

    #@a0
    .line 758
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    #@a3
    .line 759
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    #@a6
    .line 760
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded()V

    #@a9
    .line 761
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    #@ac
    goto/16 :goto_0

    #@ae
    .line 764
    :pswitch_7
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@b0
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    #@b3
    .line 765
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@b5
    if-eqz v3, :cond_b

    #@b7
    .line 766
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@b9
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    #@bc
    move-result-object v3

    #@bd
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    #@bf
    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    #@c2
    .line 768
    :cond_b
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@c4
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    #@c7
    move-result-object v3

    #@c8
    if-eqz v3, :cond_0

    #@ca
    .line 769
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@cc
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    #@cf
    move-result-object v3

    #@d0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #@d2
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)Z

    #@d5
    move-result v4

    #@d6
    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    #@d9
    goto/16 :goto_0

    #@db
    .line 773
    :pswitch_8
    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@dd
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@df
    if-eq v3, v6, :cond_0

    #@e1
    .line 775
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@e3
    .line 776
    const-string/jumbo v6, "mtp"

    #@e6
    .line 775
    invoke-static {v3, v6}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@e9
    move-result v3

    #@ea
    if-nez v3, :cond_d

    #@ec
    .line 777
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@ee
    .line 778
    const-string/jumbo v6, "ptp"

    #@f1
    .line 777
    invoke-static {v3, v6}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    #@f4
    move-result v0

    #@f5
    .line 779
    :goto_9
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@f7
    if-eqz v3, :cond_c

    #@f9
    if-eqz v0, :cond_c

    #@fb
    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@fd
    const/16 v6, -0x2710

    #@ff
    if-eq v3, v6, :cond_c

    #@101
    .line 780
    const-string/jumbo v3, "UsbDeviceManager"

    #@104
    new-instance v6, Ljava/lang/StringBuilder;

    #@106
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    const-string/jumbo v7, "Current user switched to "

    #@10c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v6

    #@110
    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v6

    #@116
    .line 781
    const-string/jumbo v7, "; resetting USB host stack for MTP or PTP"

    #@119
    .line 780
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v6

    #@11d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v6

    #@121
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@124
    .line 783
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    #@126
    .line 784
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    #@128
    invoke-direct {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    #@12b
    .line 786
    :cond_c
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@12d
    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    #@12f
    goto/16 :goto_0

    #@131
    .line 775
    :cond_d
    const/4 v0, 0x1

    #@132
    .local v0, "active":Z
    goto :goto_9

    #@133
    .line 711
    nop

    #@134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    #@3
    .line 374
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 375
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    .line 376
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    #@c
    .line 372
    return-void
.end method

.method public sendMessage(IZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    #@0
    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    #@3
    .line 367
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 368
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@c
    .line 369
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    #@f
    .line 365
    return-void

    #@10
    .line 368
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .locals 8
    .param p1, "port"    # Landroid/hardware/usb/UsbPort;
    .param p2, "status"    # Landroid/hardware/usb/UsbPortStatus;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 404
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    #@5
    move-result v4

    #@6
    if-ne v4, v5, :cond_0

    #@8
    const/4 v1, 0x1

    #@9
    .line 405
    .local v1, "hostConnected":Z
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    #@c
    move-result v4

    #@d
    if-ne v4, v5, :cond_1

    #@f
    const/4 v3, 0x1

    #@10
    .line 406
    .local v3, "sourcePower":Z
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    #@13
    move-result v4

    #@14
    const/4 v7, 0x2

    #@15
    if-ne v4, v7, :cond_2

    #@17
    const/4 v2, 0x1

    #@18
    .line 412
    .local v2, "sinkPower":Z
    :goto_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@1b
    move-result-object v0

    #@1c
    .line 413
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    if-eqz v1, :cond_3

    #@1e
    move v4, v5

    #@1f
    :goto_3
    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@21
    .line 414
    if-eqz v3, :cond_4

    #@23
    move v4, v5

    #@24
    :goto_4
    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@26
    .line 415
    if-eqz v2, :cond_5

    #@28
    :goto_5
    iput v5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@2a
    .line 417
    const/16 v4, 0x8

    #@2c
    invoke-virtual {p0, v4, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    #@33
    .line 403
    return-void

    #@34
    .line 404
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "hostConnected":Z
    .end local v2    # "sinkPower":Z
    .end local v3    # "sourcePower":Z
    :cond_0
    const/4 v1, 0x0

    #@35
    .restart local v1    # "hostConnected":Z
    goto :goto_0

    #@36
    .line 405
    :cond_1
    const/4 v3, 0x0

    #@37
    .restart local v3    # "sourcePower":Z
    goto :goto_1

    #@38
    .line 406
    :cond_2
    const/4 v2, 0x0

    #@39
    .restart local v2    # "sinkPower":Z
    goto :goto_2

    #@3a
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_3
    move v4, v6

    #@3b
    .line 413
    goto :goto_3

    #@3c
    :cond_4
    move v4, v6

    #@3d
    .line 414
    goto :goto_4

    #@3e
    :cond_5
    move v5, v6

    #@3f
    .line 415
    goto :goto_5
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 382
    const-string/jumbo v4, "DISCONNECTED"

    #@4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_1

    #@a
    .line 383
    const/4 v1, 0x0

    #@b
    .line 384
    .local v1, "connected":I
    const/4 v0, 0x0

    #@c
    .line 395
    .local v0, "configured":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    #@f
    .line 396
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    .line 397
    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    #@15
    .line 398
    iput v0, v2, Landroid/os/Message;->arg2:I

    #@17
    .line 400
    if-nez v1, :cond_0

    #@19
    const/16 v3, 0x3e8

    #@1b
    :cond_0
    int-to-long v4, v3

    #@1c
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1f
    .line 379
    return-void

    #@20
    .line 385
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
    .line 386
    const/4 v1, 0x1

    #@2a
    .line 387
    .restart local v1    # "connected":I
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "configured":I
    goto :goto_0

    #@2c
    .line 388
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
    .line 389
    const/4 v1, 0x1

    #@36
    .line 390
    .restart local v1    # "connected":I
    const/4 v0, 0x1

    #@37
    .restart local v0    # "configured":I
    goto :goto_0

    #@38
    .line 392
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
    .line 393
    return-void
.end method
