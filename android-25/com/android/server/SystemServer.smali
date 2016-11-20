.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030497

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WEAR_WIFI_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.wifi.WearWifiMediatorService"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 224
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@9
    .line 222
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    #@0
    .prologue
    .line 400
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    #@3
    move-result-object v0

    #@4
    .line 401
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@a
    .line 402
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@c
    const v2, 0x1030497

    #@f
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    #@12
    .line 399
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 219
    new-instance v0, Lcom/android/server/SystemServer;

    #@2
    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    #@5
    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    #@8
    .line 218
    return-void
.end method

.method private performPendingShutdown()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 360
    const-string/jumbo v6, "sys.shutdown.requested"

    #@6
    const-string/jumbo v7, ""

    #@9
    .line 359
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 361
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_3

    #@f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@12
    move-result v6

    #@13
    if-lez v6, :cond_3

    #@15
    .line 362
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v6

    #@19
    const/16 v7, 0x31

    #@1b
    if-ne v6, v7, :cond_0

    #@1d
    const/4 v4, 0x1

    #@1e
    .line 365
    .local v4, "reboot":Z
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@21
    move-result v6

    #@22
    if-le v6, v10, :cond_1

    #@24
    .line 366
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@27
    move-result v6

    #@28
    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 376
    :goto_1
    const-string/jumbo v6, "recovery-update"

    #@2f
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_2

    #@35
    .line 377
    new-instance v2, Ljava/io/File;

    #@37
    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    #@3a
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3d
    .line 378
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_2

    #@43
    .line 379
    const/4 v1, 0x0

    #@44
    .line 381
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    #@45
    const/4 v7, 0x0

    #@46
    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@49
    move-result-object v1

    #@4a
    .line 386
    .end local v1    # "filename":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_2

    #@4c
    const-string/jumbo v6, "/data"

    #@4f
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@52
    move-result v6

    #@53
    if-eqz v6, :cond_2

    #@55
    .line 387
    new-instance v6, Ljava/io/File;

    #@57
    const-string/jumbo v7, "/cache/recovery/block.map"

    #@5a
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5d
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    #@60
    move-result v6

    #@61
    if-nez v6, :cond_2

    #@63
    .line 388
    const-string/jumbo v6, "SystemServer"

    #@66
    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    #@69
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 390
    return-void

    #@6d
    .line 362
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_0
    const/4 v4, 0x0

    #@6e
    .restart local v4    # "reboot":Z
    goto :goto_0

    #@6f
    .line 368
    :cond_1
    const/4 v3, 0x0

    #@70
    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    #@71
    .line 382
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    #@72
    .line 383
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    #@75
    const-string/jumbo v7, "Error reading uncrypt package file"

    #@78
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    goto :goto_2

    #@7c
    .line 395
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    #@7f
    .line 358
    .end local v4    # "reboot":Z
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 354
    const-string/jumbo v0, "SystemServer"

    #@3
    const-string/jumbo v1, "***********************************************"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 355
    const-string/jumbo v0, "SystemServer"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "BOOT FAILURE "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@23
    .line 353
    return-void
.end method

.method private run()V
    .locals 10

    #@0
    .prologue
    const-wide/32 v4, 0x5265c00

    #@3
    const-wide/32 v8, 0x80000

    #@6
    .line 229
    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    #@9
    const-wide/32 v2, 0x80000

    #@c
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@f
    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v0

    #@13
    cmp-long v0, v0, v4

    #@15
    if-gez v0, :cond_0

    #@17
    .line 235
    const-string/jumbo v0, "SystemServer"

    #@1a
    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 236
    const-wide/32 v0, 0x5265c00

    #@23
    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    #@26
    .line 247
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    #@29
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_1

    #@33
    .line 248
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    .line 250
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    #@3e
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 251
    const-string/jumbo v0, "persist.sys.language"

    #@44
    const-string/jumbo v1, ""

    #@47
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 252
    const-string/jumbo v0, "persist.sys.country"

    #@4d
    const-string/jumbo v1, ""

    #@50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    .line 253
    const-string/jumbo v0, "persist.sys.localevar"

    #@56
    const-string/jumbo v1, ""

    #@59
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    .line 257
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    #@5f
    const-string/jumbo v1, "Entered the Android system server!"

    #@62
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@68
    move-result-wide v0

    #@69
    const/16 v2, 0xbc2

    #@6b
    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@6e
    .line 267
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    #@71
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@7c
    .line 270
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_2

    #@82
    .line 271
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    #@85
    .line 272
    new-instance v0, Ljava/util/Timer;

    #@87
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@8a
    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    #@8c
    .line 273
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    #@8e
    new-instance v1, Lcom/android/server/SystemServer$1;

    #@90
    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    #@93
    .line 278
    const-wide/32 v2, 0x36ee80

    #@96
    const-wide/32 v4, 0x36ee80

    #@99
    .line 273
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@9c
    .line 282
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    #@a3
    .line 286
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@a6
    move-result-object v0

    #@a7
    const v1, 0x3f4ccccd    # 0.8f

    #@aa
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@ad
    .line 290
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    #@b0
    .line 294
    const/4 v0, 0x1

    #@b1
    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    #@b4
    .line 298
    const/4 v0, 0x1

    #@b5
    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    #@b8
    .line 301
    const/4 v0, 0x1

    #@b9
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    #@bc
    .line 304
    const/16 v0, 0x1f

    #@be
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    #@c1
    .line 308
    const/4 v0, -0x2

    #@c2
    .line 307
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@c5
    .line 309
    const/4 v0, 0x0

    #@c6
    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    #@c9
    .line 310
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    #@cc
    .line 313
    const-string/jumbo v0, "android_servers"

    #@cf
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@d2
    .line 317
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    #@d5
    .line 320
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    #@d8
    .line 323
    new-instance v0, Lcom/android/server/SystemServiceManager;

    #@da
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@dc
    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    #@df
    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@e1
    .line 324
    const-class v0, Lcom/android/server/SystemServiceManager;

    #@e3
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@e5
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e8
    .line 326
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@eb
    .line 331
    :try_start_1
    const-string/jumbo v0, "StartServices"

    #@ee
    const-wide/32 v2, 0x80000

    #@f1
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@f4
    .line 332
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    #@f7
    .line 333
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    #@fa
    .line 334
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@fd
    .line 340
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@100
    .line 344
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    #@103
    move-result v0

    #@104
    if-eqz v0, :cond_3

    #@106
    .line 345
    const-string/jumbo v0, "SystemServer"

    #@109
    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    #@10c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    .line 349
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@112
    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    #@114
    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    #@117
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11a
    throw v0

    #@11b
    .line 325
    :catchall_0
    move-exception v0

    #@11c
    .line 326
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@11f
    .line 325
    throw v0

    #@120
    .line 335
    :catch_0
    move-exception v6

    #@121
    .line 336
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "System"

    #@124
    const-string/jumbo v1, "******************************************"

    #@127
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12a
    .line 337
    const-string/jumbo v0, "System"

    #@12d
    const-string/jumbo v1, "************ Failure starting system services"

    #@130
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@133
    .line 338
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@134
    .line 339
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    #@135
    .line 340
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@138
    .line 339
    throw v0
.end method

.method private startBootstrapServices()V
    .locals 10

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const-wide/32 v8, 0x80000

    #@5
    .line 416
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7
    const-class v7, Lcom/android/server/pm/Installer;

    #@9
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lcom/android/server/pm/Installer;

    #@f
    .line 419
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@11
    .line 420
    const-class v7, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    #@13
    .line 419
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    #@19
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    #@1c
    move-result-object v4

    #@1d
    iput-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@1f
    .line 421
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@21
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@23
    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    #@26
    .line 422
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@28
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    #@2b
    .line 428
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2d
    const-class v7, Lcom/android/server/power/PowerManagerService;

    #@2f
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Lcom/android/server/power/PowerManagerService;

    #@35
    iput-object v4, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    #@37
    .line 432
    const-string/jumbo v4, "InitPowerManagement"

    #@3a
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@3d
    .line 433
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@3f
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    #@42
    .line 434
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@45
    .line 437
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@47
    const-class v7, Lcom/android/server/lights/LightsService;

    #@49
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@4c
    .line 441
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@4e
    const-class v7, Lcom/android/server/display/DisplayManagerService;

    #@50
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@53
    move-result-object v4

    #@54
    check-cast v4, Lcom/android/server/display/DisplayManagerService;

    #@56
    iput-object v4, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    #@58
    .line 444
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5a
    const/16 v7, 0x64

    #@5c
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@5f
    .line 447
    const-string/jumbo v4, "vold.decrypt"

    #@62
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    .line 448
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v4, "trigger_restart_min_framework"

    #@69
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_2

    #@6f
    .line 449
    const-string/jumbo v4, "SystemServer"

    #@72
    const-string/jumbo v7, "Detected encryption in progress - only parsing core apps"

    #@75
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 450
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@7a
    .line 457
    :cond_0
    :goto_0
    const-string/jumbo v4, "StartPackageManagerService"

    #@7d
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@80
    .line 458
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@82
    .line 459
    iget v4, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@84
    if-eqz v4, :cond_3

    #@86
    move v4, v5

    #@87
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@89
    .line 458
    invoke-static {v7, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    #@8c
    move-result-object v4

    #@8d
    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@8f
    .line 460
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@91
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    #@94
    move-result v4

    #@95
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    #@97
    .line 461
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@99
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9c
    move-result-object v4

    #@9d
    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@9f
    .line 462
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@a2
    .line 467
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@a4
    if-nez v4, :cond_1

    #@a6
    .line 468
    const-string/jumbo v4, "config.disable_otadexopt"

    #@a9
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@ac
    move-result v1

    #@ad
    .line 470
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_1

    #@af
    .line 471
    const-string/jumbo v4, "StartOtaDexOptService"

    #@b2
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@b5
    .line 473
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@b7
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@b9
    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@bc
    .line 477
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@bf
    .line 482
    .end local v1    # "disableOtaDexopt":Z
    :cond_1
    :goto_2
    const-string/jumbo v4, "StartUserManagerService"

    #@c2
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@c5
    .line 483
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@c7
    const-class v5, Lcom/android/server/pm/UserManagerService$LifeCycle;

    #@c9
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@cc
    .line 484
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@cf
    .line 487
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@d1
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    #@d4
    .line 490
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@d6
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    #@d9
    .line 494
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    #@dc
    .line 412
    return-void

    #@dd
    .line 451
    :cond_2
    const-string/jumbo v4, "1"

    #@e0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v4

    #@e4
    if-eqz v4, :cond_0

    #@e6
    .line 452
    const-string/jumbo v4, "SystemServer"

    #@e9
    const-string/jumbo v7, "Device encrypted - only parsing core apps"

    #@ec
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    .line 453
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@f1
    goto :goto_0

    #@f2
    :cond_3
    move v4, v6

    #@f3
    .line 459
    goto :goto_1

    #@f4
    .line 474
    .restart local v1    # "disableOtaDexopt":Z
    :catch_0
    move-exception v2

    #@f5
    .line 475
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v4, "starting OtaDexOptService"

    #@f8
    invoke-direct {p0, v4, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@fb
    .line 477
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@fe
    goto :goto_2

    #@ff
    .line 476
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    #@100
    .line 477
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@103
    .line 476
    throw v4
.end method

.method private startCoreServices()V
    .locals 2

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2
    const-class v1, Lcom/android/server/BatteryService;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7
    .line 505
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@9
    const-class v1, Lcom/android/server/usage/UsageStatsService;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@e
    .line 506
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@10
    .line 507
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@18
    .line 506
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    #@1b
    .line 510
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@1d
    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    #@1f
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    #@25
    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    #@27
    .line 500
    return-void
.end method

.method private startOtherServices()V
    .locals 88

    #@0
    .prologue
    .line 518
    move-object/from16 v0, p0

    #@2
    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@4
    .line 519
    .local v6, "context":Landroid/content/Context;
    const/16 v81, 0x0

    #@6
    .line 520
    .local v81, "vibrator":Lcom/android/server/VibratorService;
    const/16 v62, 0x0

    #@8
    .line 521
    .local v62, "mountService":Landroid/os/storage/IMountService;
    const/16 v63, 0x0

    #@a
    .line 522
    .local v63, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v68, 0x0

    #@c
    .line 523
    .local v68, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v64, 0x0

    #@e
    .line 524
    .local v64, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v27, 0x0

    #@10
    .line 525
    .local v27, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v66, 0x0

    #@12
    .line 526
    .local v66, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v75, 0x0

    #@14
    .line 527
    .local v75, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v85, 0x0

    #@16
    .line 528
    .local v85, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v73, 0x0

    #@18
    .line 529
    .local v73, "serial":Lcom/android/server/SerialService;
    const/16 v69, 0x0

    #@1a
    .line 530
    .local v69, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v24, 0x0

    #@1c
    .line 531
    .local v24, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v52, 0x0

    #@1e
    .line 532
    .local v52, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v79, 0x0

    #@20
    .line 533
    .local v79, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v29, 0x0

    #@22
    .line 534
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v20, 0x0

    #@24
    .line 535
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v49, 0x0

    #@26
    .line 537
    .local v49, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const-string/jumbo v4, "config.disable_storage"

    #@29
    const/4 v5, 0x0

    #@2a
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@2d
    move-result v43

    #@2e
    .line 538
    .local v43, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    #@31
    const/4 v5, 0x0

    #@32
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@35
    move-result v33

    #@36
    .line 539
    .local v33, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    #@39
    const/4 v5, 0x0

    #@3a
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@3d
    move-result v34

    #@3e
    .line 540
    .local v34, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    #@41
    const/4 v5, 0x0

    #@42
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@45
    move-result v44

    #@46
    .line 541
    .local v44, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    #@49
    const/4 v5, 0x0

    #@4a
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@4d
    move-result v38

    #@4e
    .line 542
    .local v38, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    #@51
    const/4 v5, 0x0

    #@52
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@55
    move-result v36

    #@56
    .line 543
    .local v36, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    #@59
    const/4 v5, 0x0

    #@5a
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@5d
    move-result v37

    #@5e
    .line 544
    .local v37, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_rtt"

    #@61
    const/4 v5, 0x0

    #@62
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@65
    move-result v39

    #@66
    .line 545
    .local v39, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    #@69
    .line 546
    const/4 v5, 0x0

    #@6a
    .line 545
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@6d
    move-result v35

    #@6e
    .line 547
    .local v35, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    #@71
    const/4 v5, 0x0

    #@72
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@75
    move-result v42

    #@76
    .line 548
    .local v42, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    #@79
    .line 549
    const/4 v5, 0x0

    #@7a
    .line 548
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7d
    move-result v41

    #@7e
    .line 550
    .local v41, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    #@81
    .line 551
    const/4 v5, 0x0

    #@82
    .line 550
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@85
    move-result v46

    #@86
    .line 552
    .local v46, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    #@89
    const/4 v5, 0x0

    #@8a
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@8d
    move-result v45

    #@8e
    .line 553
    .local v45, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    #@91
    .line 554
    const/4 v5, 0x0

    #@92
    .line 553
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@95
    move-result v40

    #@96
    .line 555
    .local v40, "disableSamplingProfiler":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    #@99
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    const-string/jumbo v5, "1"

    #@a0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v54

    #@a4
    .line 558
    .local v54, "isEmulator":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    #@a7
    const-string/jumbo v5, "Reading configuration..."

    #@aa
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ad
    .line 559
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@b0
    .line 561
    const-string/jumbo v4, "StartSchedulingPolicyService"

    #@b3
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@b6
    .line 562
    const-string/jumbo v4, "scheduling_policy"

    #@b9
    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    #@bb
    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    #@be
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c1
    .line 563
    const-wide/32 v4, 0x80000

    #@c4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@c7
    .line 565
    move-object/from16 v0, p0

    #@c9
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@cb
    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    #@cd
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@d0
    .line 567
    const-string/jumbo v4, "StartTelephonyRegistry"

    #@d3
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@d6
    .line 568
    new-instance v80, Lcom/android/server/TelephonyRegistry;

    #@d8
    move-object/from16 v0, v80

    #@da
    invoke-direct {v0, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_31

    #@dd
    .line 569
    .end local v79    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v80, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    #@e0
    move-object/from16 v0, v80

    #@e2
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@e5
    .line 570
    const-wide/32 v4, 0x80000

    #@e8
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@eb
    .line 572
    const-string/jumbo v4, "StartEntropyMixer"

    #@ee
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@f1
    .line 573
    new-instance v4, Lcom/android/server/EntropyMixer;

    #@f3
    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    #@f6
    move-object/from16 v0, p0

    #@f8
    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    #@fa
    .line 574
    const-wide/32 v4, 0x80000

    #@fd
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@100
    .line 576
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@103
    move-result-object v4

    #@104
    move-object/from16 v0, p0

    #@106
    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    #@108
    .line 578
    const-string/jumbo v4, "SystemServer"

    #@10b
    const-string/jumbo v5, "Camera Service"

    #@10e
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@111
    .line 579
    move-object/from16 v0, p0

    #@113
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@115
    const-class v5, Lcom/android/server/camera/CameraService;

    #@117
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@11a
    .line 582
    const-string/jumbo v4, "StartAccountManagerService"

    #@11d
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@120
    .line 583
    move-object/from16 v0, p0

    #@122
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@124
    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    #@127
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@12a
    .line 584
    const-wide/32 v4, 0x80000

    #@12d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@130
    .line 586
    const-string/jumbo v4, "StartContentService"

    #@133
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@136
    .line 587
    move-object/from16 v0, p0

    #@138
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@13a
    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    #@13d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@140
    .line 588
    const-wide/32 v4, 0x80000

    #@143
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@146
    .line 590
    const-string/jumbo v4, "InstallSystemProviders"

    #@149
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@14c
    .line 591
    move-object/from16 v0, p0

    #@14e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@150
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    #@153
    .line 592
    const-wide/32 v4, 0x80000

    #@156
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@159
    .line 594
    const-string/jumbo v4, "StartVibratorService"

    #@15c
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@15f
    .line 595
    new-instance v82, Lcom/android/server/VibratorService;

    #@161
    move-object/from16 v0, v82

    #@163
    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_32

    #@166
    .line 596
    .local v82, "vibrator":Lcom/android/server/VibratorService;
    :try_start_2
    const-string/jumbo v4, "vibrator"

    #@169
    .end local v81    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v82

    #@16b
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@16e
    .line 597
    const-wide/32 v4, 0x80000

    #@171
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@174
    .line 599
    const-string/jumbo v4, "StartConsumerIrService"

    #@177
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@17a
    .line 600
    new-instance v30, Lcom/android/server/ConsumerIrService;

    #@17c
    move-object/from16 v0, v30

    #@17e
    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_33

    #@181
    .line 601
    .local v30, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_3
    const-string/jumbo v4, "consumer_ir"

    #@184
    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v30

    #@186
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@189
    .line 602
    const-wide/32 v4, 0x80000

    #@18c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@18f
    .line 604
    const-string/jumbo v4, "StartAlarmManagerService"

    #@192
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@195
    .line 605
    move-object/from16 v0, p0

    #@197
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@199
    const-class v5, Lcom/android/server/AlarmManagerService;

    #@19b
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@19e
    .line 606
    const-wide/32 v4, 0x80000

    #@1a1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1a4
    .line 608
    const-string/jumbo v4, "InitWatchdog"

    #@1a7
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@1aa
    .line 609
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@1ad
    move-result-object v84

    #@1ae
    .line 610
    .local v84, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    #@1b0
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@1b2
    move-object/from16 v0, v84

    #@1b4
    invoke-virtual {v0, v6, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    #@1b7
    .line 611
    const-wide/32 v4, 0x80000

    #@1ba
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1bd
    .line 613
    const-string/jumbo v4, "StartInputManagerService"

    #@1c0
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@1c3
    .line 614
    new-instance v53, Lcom/android/server/input/InputManagerService;

    #@1c5
    move-object/from16 v0, v53

    #@1c7
    invoke-direct {v0, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_34

    #@1ca
    .line 615
    .local v53, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    #@1cd
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1d0
    .line 617
    .end local v52    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    #@1d3
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@1d6
    .line 619
    move-object/from16 v0, p0

    #@1d8
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@1da
    const/4 v5, 0x1

    #@1db
    if-eq v4, v5, :cond_37

    #@1dd
    const/4 v4, 0x1

    #@1de
    move v5, v4

    #@1df
    .line 620
    :goto_0
    move-object/from16 v0, p0

    #@1e1
    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    #@1e3
    if-eqz v4, :cond_38

    #@1e5
    const/4 v4, 0x0

    #@1e6
    :goto_1
    move-object/from16 v0, p0

    #@1e8
    iget-boolean v0, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@1ea
    move/from16 v86, v0

    #@1ec
    .line 618
    move-object/from16 v0, v53

    #@1ee
    move/from16 v1, v86

    #@1f0
    invoke-static {v6, v0, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    #@1f3
    move-result-object v85

    #@1f4
    .line 621
    .local v85, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    #@1f7
    move-object/from16 v0, v85

    #@1f9
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1fc
    .line 622
    const-string/jumbo v4, "input"

    #@1ff
    move-object/from16 v0, v53

    #@201
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@204
    .line 623
    const-wide/32 v4, 0x80000

    #@207
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@20a
    .line 625
    const-string/jumbo v4, "StartVrManagerService"

    #@20d
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@210
    .line 626
    move-object/from16 v0, p0

    #@212
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@214
    const-class v5, Lcom/android/server/vr/VrManagerService;

    #@216
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@219
    .line 627
    const-wide/32 v4, 0x80000

    #@21c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@21f
    .line 629
    move-object/from16 v0, p0

    #@221
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@223
    move-object/from16 v0, v85

    #@225
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    #@228
    .line 631
    invoke-virtual/range {v85 .. v85}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    #@22b
    move-result-object v4

    #@22c
    move-object/from16 v0, v53

    #@22e
    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    #@231
    .line 632
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/input/InputManagerService;->start()V

    #@234
    .line 635
    move-object/from16 v0, p0

    #@236
    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    #@238
    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    #@23b
    .line 640
    if-eqz v54, :cond_39

    #@23d
    .line 641
    const-string/jumbo v4, "SystemServer"

    #@240
    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    #@243
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@246
    .line 653
    :goto_2
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    #@249
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@24c
    .line 654
    move-object/from16 v0, p0

    #@24e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@250
    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    #@252
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@255
    .line 655
    const-wide/32 v4, 0x80000

    #@258
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@25b
    .line 657
    const-string/jumbo v4, "IpConnectivityMetrics"

    #@25e
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@261
    .line 658
    move-object/from16 v0, p0

    #@263
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@265
    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    #@267
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@26a
    .line 659
    const-wide/32 v4, 0x80000

    #@26d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@270
    .line 661
    const-string/jumbo v4, "PinnerService"

    #@273
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@276
    .line 662
    move-object/from16 v0, p0

    #@278
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@27a
    const-class v5, Lcom/android/server/PinnerService;

    #@27c
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@27f
    .line 663
    const-wide/32 v4, 0x80000

    #@282
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    #@285
    move-object/from16 v29, v30

    #@287
    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v79, v80

    #@289
    .end local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v79, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v52, v53

    #@28b
    .end local v53    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v52, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v81, v82

    #@28d
    .line 669
    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v52    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v79    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v82    # "vibrator":Lcom/android/server/VibratorService;
    .end local v84    # "watchdog":Lcom/android/server/Watchdog;
    .end local v85    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3
    const/16 v76, 0x0

    #@28f
    .line 670
    .local v76, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v71, 0x0

    #@291
    .line 671
    .local v71, "notification":Landroid/app/INotificationManager;
    const/16 v55, 0x0

    #@293
    .line 672
    .local v55, "location":Lcom/android/server/LocationManagerService;
    const/16 v31, 0x0

    #@295
    .line 673
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v57, 0x0

    #@297
    .line 674
    .local v57, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v21, 0x0

    #@299
    .line 675
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v58, 0x0

    #@29b
    .line 678
    .local v58, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    #@29d
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@29f
    const/4 v5, 0x1

    #@2a0
    if-eq v4, v5, :cond_0

    #@2a2
    .line 679
    move-object/from16 v0, p0

    #@2a4
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2a6
    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    #@2a8
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@2ab
    .line 681
    const-string/jumbo v4, "StartAccessibilityManagerService"

    #@2ae
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@2b1
    .line 683
    :try_start_5
    const-string/jumbo v4, "accessibility"

    #@2b4
    .line 684
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2b6
    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    #@2b9
    .line 683
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    #@2bc
    .line 688
    :goto_4
    const-wide/32 v4, 0x80000

    #@2bf
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2c2
    .line 692
    :cond_0
    :try_start_6
    invoke-virtual/range {v85 .. v85}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    #@2c5
    .line 697
    :goto_5
    move-object/from16 v0, p0

    #@2c7
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@2c9
    const/4 v5, 0x1

    #@2ca
    if-eq v4, v5, :cond_1

    #@2cc
    .line 698
    if-nez v43, :cond_1

    #@2ce
    .line 699
    const-string/jumbo v4, "0"

    #@2d1
    const-string/jumbo v5, "system_init.startmountservice"

    #@2d4
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2d7
    move-result-object v5

    #@2d8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2db
    move-result v4

    #@2dc
    if-eqz v4, :cond_3d

    #@2de
    .line 716
    .end local v62    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    #@2e0
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2e2
    const-class v5, Lcom/android/server/UiModeManagerService;

    #@2e4
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@2e7
    .line 718
    move-object/from16 v0, p0

    #@2e9
    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@2eb
    if-nez v4, :cond_2

    #@2ed
    .line 719
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    #@2f0
    const-wide/32 v86, 0x80000

    #@2f3
    move-wide/from16 v0, v86

    #@2f5
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2f8
    .line 721
    :try_start_7
    move-object/from16 v0, p0

    #@2fa
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@2fc
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    #@2ff
    .line 725
    :goto_7
    const-wide/32 v4, 0x80000

    #@302
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@305
    .line 728
    :cond_2
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    #@308
    const-wide/32 v86, 0x80000

    #@30b
    move-wide/from16 v0, v86

    #@30d
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@310
    .line 730
    :try_start_8
    move-object/from16 v0, p0

    #@312
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@314
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    #@317
    .line 734
    :goto_8
    const-wide/32 v4, 0x80000

    #@31a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@31d
    .line 736
    move-object/from16 v0, p0

    #@31f
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@321
    const/4 v5, 0x1

    #@322
    if-eq v4, v5, :cond_2f

    #@324
    .line 737
    if-nez v38, :cond_4

    #@326
    .line 738
    const-string/jumbo v4, "StartLockSettingsService"

    #@329
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@32c
    .line 740
    :try_start_9
    move-object/from16 v0, p0

    #@32e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@330
    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    #@333
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@336
    .line 742
    const-string/jumbo v4, "lock_settings"

    #@339
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@33c
    move-result-object v4

    #@33d
    .line 741
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    #@340
    move-result-object v57

    #@341
    .line 746
    .end local v57    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_9
    const-wide/32 v4, 0x80000

    #@344
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@347
    .line 748
    const-string/jumbo v4, "ro.frp.pst"

    #@34a
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@34d
    move-result-object v4

    #@34e
    const-string/jumbo v5, ""

    #@351
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@354
    move-result v4

    #@355
    if-nez v4, :cond_3

    #@357
    .line 749
    move-object/from16 v0, p0

    #@359
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@35b
    const-class v5, Lcom/android/server/PersistentDataBlockService;

    #@35d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@360
    .line 752
    :cond_3
    move-object/from16 v0, p0

    #@362
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@364
    const-class v5, Lcom/android/server/DeviceIdleController;

    #@366
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@369
    .line 756
    move-object/from16 v0, p0

    #@36b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@36d
    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    #@36f
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@372
    .line 759
    :cond_4
    if-nez v44, :cond_5

    #@374
    .line 760
    const-string/jumbo v4, "StartStatusBarManagerService"

    #@377
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@37a
    .line 762
    :try_start_a
    new-instance v77, Lcom/android/server/statusbar/StatusBarManagerService;

    #@37c
    move-object/from16 v0, v77

    #@37e
    move-object/from16 v1, v85

    #@380
    invoke-direct {v0, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    #@383
    .line 763
    .end local v76    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v77, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_b
    const-string/jumbo v4, "statusbar"

    #@386
    move-object/from16 v0, v77

    #@388
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_30

    #@38b
    move-object/from16 v76, v77

    #@38d
    .line 767
    .end local v77    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_a
    const-wide/32 v4, 0x80000

    #@390
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@393
    .line 770
    :cond_5
    if-nez v38, :cond_6

    #@395
    .line 771
    const-string/jumbo v4, "StartClipboardService"

    #@398
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@39b
    .line 773
    :try_start_c
    const-string/jumbo v4, "clipboard"

    #@39e
    .line 774
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    #@3a0
    invoke-direct {v5, v6}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    #@3a3
    .line 773
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    #@3a6
    .line 778
    :goto_b
    const-wide/32 v4, 0x80000

    #@3a9
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3ac
    .line 781
    :cond_6
    if-nez v36, :cond_7

    #@3ae
    .line 782
    const-string/jumbo v4, "StartNetworkManagementService"

    #@3b1
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@3b4
    .line 784
    :try_start_d
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    #@3b7
    move-result-object v63

    #@3b8
    .line 785
    .local v63, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    #@3bb
    move-object/from16 v0, v63

    #@3bd
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    #@3c0
    .line 789
    .end local v63    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_c
    const-wide/32 v4, 0x80000

    #@3c3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3c6
    .line 792
    :cond_7
    if-nez v38, :cond_8

    #@3c8
    if-eqz v45, :cond_3e

    #@3ca
    .line 796
    :cond_8
    :goto_d
    if-nez v36, :cond_c

    #@3cc
    .line 797
    const-string/jumbo v4, "StartNetworkScoreService"

    #@3cf
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@3d2
    .line 799
    :try_start_e
    new-instance v67, Lcom/android/server/NetworkScoreService;

    #@3d4
    move-object/from16 v0, v67

    #@3d6
    invoke-direct {v0, v6}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a

    #@3d9
    .line 800
    .end local v66    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v67, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_f
    const-string/jumbo v4, "network_score"

    #@3dc
    move-object/from16 v0, v67

    #@3de
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2f

    #@3e1
    move-object/from16 v66, v67

    #@3e3
    .line 804
    .end local v67    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_e
    const-wide/32 v4, 0x80000

    #@3e6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3e9
    .line 806
    const-string/jumbo v4, "StartNetworkStatsService"

    #@3ec
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@3ef
    .line 808
    :try_start_10
    move-object/from16 v0, v63

    #@3f1
    invoke-static {v6, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    #@3f4
    move-result-object v68

    #@3f5
    .line 809
    .local v68, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    #@3f8
    move-object/from16 v0, v68

    #@3fa
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    #@3fd
    .line 813
    .end local v68    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_f
    const-wide/32 v4, 0x80000

    #@400
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@403
    .line 815
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    #@406
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@409
    .line 817
    :try_start_11
    new-instance v65, Lcom/android/server/net/NetworkPolicyManagerService;

    #@40b
    .line 818
    move-object/from16 v0, p0

    #@40d
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@40f
    .line 817
    move-object/from16 v0, v65

    #@411
    move-object/from16 v1, v68

    #@413
    move-object/from16 v2, v63

    #@415
    invoke-direct {v0, v6, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    #@418
    .line 819
    .end local v64    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v65, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_12
    const-string/jumbo v4, "netpolicy"

    #@41b
    move-object/from16 v0, v65

    #@41d
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2e

    #@420
    move-object/from16 v64, v65

    #@422
    .line 823
    .end local v65    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_10
    const-wide/32 v4, 0x80000

    #@425
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@428
    .line 825
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@42b
    move-result-object v4

    #@42c
    const-string/jumbo v5, "android.hardware.wifi.nan"

    #@42f
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@432
    move-result v4

    #@433
    if-eqz v4, :cond_3f

    #@435
    .line 826
    move-object/from16 v0, p0

    #@437
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@439
    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    #@43c
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@43f
    .line 830
    :goto_11
    move-object/from16 v0, p0

    #@441
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@443
    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    #@446
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@449
    .line 831
    move-object/from16 v0, p0

    #@44b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@44d
    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    #@450
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@453
    .line 832
    move-object/from16 v0, p0

    #@455
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@457
    .line 833
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    #@45a
    .line 832
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@45d
    .line 835
    if-nez v39, :cond_9

    #@45f
    .line 836
    move-object/from16 v0, p0

    #@461
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@463
    const-string/jumbo v5, "com.android.server.wifi.RttService"

    #@466
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@469
    .line 839
    :cond_9
    move-object/from16 v0, p0

    #@46b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@46d
    const-string/jumbo v5, "android.hardware.ethernet"

    #@470
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@473
    move-result v4

    #@474
    if-nez v4, :cond_a

    #@476
    .line 840
    move-object/from16 v0, p0

    #@478
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@47a
    const-string/jumbo v5, "android.hardware.usb.host"

    #@47d
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@480
    move-result v4

    #@481
    .line 839
    if-eqz v4, :cond_b

    #@483
    .line 841
    :cond_a
    move-object/from16 v0, p0

    #@485
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@487
    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    #@48a
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@48d
    .line 844
    :cond_b
    const-string/jumbo v4, "StartConnectivityService"

    #@490
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@493
    .line 846
    :try_start_13
    new-instance v28, Lcom/android/server/ConnectivityService;

    #@495
    move-object/from16 v0, v28

    #@497
    move-object/from16 v1, v63

    #@499
    move-object/from16 v2, v68

    #@49b
    move-object/from16 v3, v64

    #@49d
    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_d

    #@4a0
    .line 848
    .end local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v28, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_14
    const-string/jumbo v4, "connectivity"

    #@4a3
    move-object/from16 v0, v28

    #@4a5
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@4a8
    .line 849
    move-object/from16 v0, v68

    #@4aa
    move-object/from16 v1, v28

    #@4ac
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    #@4af
    .line 850
    move-object/from16 v0, v64

    #@4b1
    move-object/from16 v1, v28

    #@4b3
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2d

    #@4b6
    move-object/from16 v27, v28

    #@4b8
    .line 854
    .end local v28    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_12
    const-wide/32 v4, 0x80000

    #@4bb
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4be
    .line 856
    const-string/jumbo v4, "StartNsdService"

    #@4c1
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@4c4
    .line 858
    :try_start_15
    invoke-static {v6}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    #@4c7
    move-result-object v75

    #@4c8
    .line 860
    .local v75, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    #@4cb
    .line 859
    move-object/from16 v0, v75

    #@4cd
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_e

    #@4d0
    .line 864
    .end local v75    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_13
    const-wide/32 v4, 0x80000

    #@4d3
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4d6
    .line 867
    :cond_c
    if-nez v38, :cond_d

    #@4d8
    .line 868
    const-string/jumbo v4, "StartUpdateLockService"

    #@4db
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@4de
    .line 870
    :try_start_16
    const-string/jumbo v4, "updatelock"

    #@4e1
    .line 871
    new-instance v5, Lcom/android/server/UpdateLockService;

    #@4e3
    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    #@4e6
    .line 870
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_f

    #@4e9
    .line 875
    :goto_14
    const-wide/32 v4, 0x80000

    #@4ec
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4ef
    .line 878
    :cond_d
    if-nez v38, :cond_e

    #@4f1
    .line 879
    move-object/from16 v0, p0

    #@4f3
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@4f5
    const-class v5, Lcom/android/server/RecoverySystemService;

    #@4f7
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@4fa
    .line 887
    :cond_e
    if-eqz v62, :cond_f

    #@4fc
    move-object/from16 v0, p0

    #@4fe
    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@500
    if-eqz v4, :cond_40

    #@502
    .line 896
    :cond_f
    :goto_15
    move-object/from16 v0, p0

    #@504
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@506
    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    #@508
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@50b
    .line 898
    const-string/jumbo v4, "notification"

    #@50e
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@511
    move-result-object v4

    #@512
    .line 897
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@515
    move-result-object v71

    #@516
    .line 899
    .local v71, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v64

    #@518
    move-object/from16 v1, v71

    #@51a
    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    #@51d
    .line 901
    move-object/from16 v0, p0

    #@51f
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@521
    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    #@523
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@526
    .line 903
    if-nez v34, :cond_10

    #@528
    .line 904
    const-string/jumbo v4, "StartLocationManagerService"

    #@52b
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@52e
    .line 906
    :try_start_17
    new-instance v56, Lcom/android/server/LocationManagerService;

    #@530
    move-object/from16 v0, v56

    #@532
    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_11

    #@535
    .line 907
    .end local v55    # "location":Lcom/android/server/LocationManagerService;
    .local v56, "location":Lcom/android/server/LocationManagerService;
    :try_start_18
    const-string/jumbo v4, "location"

    #@538
    move-object/from16 v0, v56

    #@53a
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_2c

    #@53d
    move-object/from16 v55, v56

    #@53f
    .line 911
    .end local v56    # "location":Lcom/android/server/LocationManagerService;
    :goto_16
    const-wide/32 v4, 0x80000

    #@542
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@545
    .line 913
    const-string/jumbo v4, "StartCountryDetectorService"

    #@548
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@54b
    .line 915
    :try_start_19
    new-instance v32, Lcom/android/server/CountryDetectorService;

    #@54d
    move-object/from16 v0, v32

    #@54f
    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_12

    #@552
    .line 916
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v32, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_1a
    const-string/jumbo v4, "country_detector"

    #@555
    move-object/from16 v0, v32

    #@557
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_2b

    #@55a
    move-object/from16 v31, v32

    #@55c
    .line 920
    .end local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_17
    const-wide/32 v4, 0x80000

    #@55f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@562
    .line 923
    :cond_10
    if-nez v38, :cond_11

    #@564
    if-eqz v41, :cond_41

    #@566
    .line 933
    :cond_11
    :goto_18
    move-object/from16 v0, p0

    #@568
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@56a
    const-class v5, Lcom/android/server/DropBoxManagerService;

    #@56c
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@56f
    .line 935
    if-nez v38, :cond_12

    #@571
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@574
    move-result-object v4

    #@575
    .line 936
    const v5, 0x112004e

    #@578
    .line 935
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@57b
    move-result v4

    #@57c
    if-eqz v4, :cond_12

    #@57e
    .line 937
    const-string/jumbo v4, "StartWallpaperManagerService"

    #@581
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@584
    .line 938
    move-object/from16 v0, p0

    #@586
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@588
    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    #@58b
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@58e
    .line 939
    const-wide/32 v4, 0x80000

    #@591
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@594
    .line 942
    :cond_12
    const-string/jumbo v4, "StartAudioService"

    #@597
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@59a
    .line 943
    move-object/from16 v0, p0

    #@59c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@59e
    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    #@5a0
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@5a3
    .line 944
    const-wide/32 v4, 0x80000

    #@5a6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@5a9
    .line 946
    if-nez v38, :cond_13

    #@5ab
    .line 947
    move-object/from16 v0, p0

    #@5ad
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5af
    const-class v5, Lcom/android/server/DockObserver;

    #@5b1
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@5b4
    .line 949
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5b7
    move-result-object v4

    #@5b8
    const-string/jumbo v5, "android.hardware.type.watch"

    #@5bb
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@5be
    move-result v4

    #@5bf
    if-eqz v4, :cond_13

    #@5c1
    .line 950
    move-object/from16 v0, p0

    #@5c3
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5c5
    const-string/jumbo v5, "com.google.android.clockwork.ThermalObserver"

    #@5c8
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@5cb
    .line 954
    :cond_13
    const-string/jumbo v4, "StartWiredAccessoryManager"

    #@5ce
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@5d1
    .line 958
    :try_start_1b
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    #@5d3
    move-object/from16 v0, v52

    #@5d5
    invoke-direct {v4, v6, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    #@5d8
    .line 957
    move-object/from16 v0, v52

    #@5da
    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_14

    #@5dd
    .line 962
    :goto_19
    const-wide/32 v4, 0x80000

    #@5e0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@5e3
    .line 964
    if-nez v38, :cond_18

    #@5e5
    .line 965
    move-object/from16 v0, p0

    #@5e7
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@5e9
    const-string/jumbo v5, "android.software.midi"

    #@5ec
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@5ef
    move-result v4

    #@5f0
    if-eqz v4, :cond_14

    #@5f2
    .line 967
    move-object/from16 v0, p0

    #@5f4
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5f6
    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    #@5f9
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@5fc
    .line 970
    :cond_14
    move-object/from16 v0, p0

    #@5fe
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@600
    const-string/jumbo v5, "android.hardware.usb.host"

    #@603
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@606
    move-result v4

    #@607
    if-nez v4, :cond_15

    #@609
    .line 971
    move-object/from16 v0, p0

    #@60b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@60d
    .line 972
    const-string/jumbo v5, "android.hardware.usb.accessory"

    #@610
    .line 971
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@613
    move-result v4

    #@614
    .line 970
    if-eqz v4, :cond_16

    #@616
    .line 974
    :cond_15
    const-string/jumbo v4, "StartUsbService"

    #@619
    const-wide/32 v86, 0x80000

    #@61c
    move-wide/from16 v0, v86

    #@61e
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@621
    .line 975
    move-object/from16 v0, p0

    #@623
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@625
    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    #@628
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@62b
    .line 976
    const-wide/32 v4, 0x80000

    #@62e
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@631
    .line 979
    :cond_16
    if-nez v42, :cond_17

    #@633
    .line 980
    const-string/jumbo v4, "StartSerialService"

    #@636
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@639
    .line 983
    :try_start_1c
    new-instance v74, Lcom/android/server/SerialService;

    #@63b
    move-object/from16 v0, v74

    #@63d
    invoke-direct {v0, v6}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_15

    #@640
    .line 984
    .end local v73    # "serial":Lcom/android/server/SerialService;
    .local v74, "serial":Lcom/android/server/SerialService;
    :try_start_1d
    const-string/jumbo v4, "serial"

    #@643
    move-object/from16 v0, v74

    #@645
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_2a

    #@648
    move-object/from16 v73, v74

    #@64a
    .line 988
    .end local v74    # "serial":Lcom/android/server/SerialService;
    :goto_1a
    const-wide/32 v4, 0x80000

    #@64d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@650
    .line 992
    :cond_17
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    #@653
    .line 991
    const-wide/32 v86, 0x80000

    #@656
    move-wide/from16 v0, v86

    #@658
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@65b
    .line 994
    :try_start_1e
    new-instance v50, Lcom/android/server/HardwarePropertiesManagerService;

    #@65d
    move-object/from16 v0, v50

    #@65f
    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_16

    #@662
    .line 995
    .end local v49    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v50, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_1f
    const-string/jumbo v4, "hardware_properties"

    #@665
    move-object/from16 v0, v50

    #@667
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_29

    #@66a
    move-object/from16 v49, v50

    #@66c
    .line 1000
    .end local v50    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_1b
    const-wide/32 v4, 0x80000

    #@66f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@672
    .line 1003
    :cond_18
    move-object/from16 v0, p0

    #@674
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@676
    const-class v5, Lcom/android/server/twilight/TwilightService;

    #@678
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@67b
    .line 1005
    invoke-static {v6}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    #@67e
    move-result v4

    #@67f
    if-eqz v4, :cond_19

    #@681
    .line 1006
    move-object/from16 v0, p0

    #@683
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@685
    const-class v5, Lcom/android/server/display/NightDisplayService;

    #@687
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@68a
    .line 1009
    :cond_19
    move-object/from16 v0, p0

    #@68c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@68e
    const-class v5, Lcom/android/server/job/JobSchedulerService;

    #@690
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@693
    .line 1011
    move-object/from16 v0, p0

    #@695
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@697
    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    #@699
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@69c
    .line 1013
    if-nez v38, :cond_1f

    #@69e
    .line 1014
    move-object/from16 v0, p0

    #@6a0
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6a2
    const-string/jumbo v5, "android.software.backup"

    #@6a5
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@6a8
    move-result v4

    #@6a9
    if-eqz v4, :cond_1a

    #@6ab
    .line 1015
    move-object/from16 v0, p0

    #@6ad
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6af
    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    #@6b2
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@6b5
    .line 1018
    :cond_1a
    move-object/from16 v0, p0

    #@6b7
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6b9
    const-string/jumbo v5, "android.software.app_widgets"

    #@6bc
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@6bf
    move-result v4

    #@6c0
    if-nez v4, :cond_1b

    #@6c2
    .line 1019
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6c5
    move-result-object v4

    #@6c6
    const v5, 0x11200af

    #@6c9
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@6cc
    move-result v4

    #@6cd
    .line 1018
    if-eqz v4, :cond_1c

    #@6cf
    .line 1020
    :cond_1b
    move-object/from16 v0, p0

    #@6d1
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6d3
    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    #@6d6
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@6d9
    .line 1023
    :cond_1c
    move-object/from16 v0, p0

    #@6db
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6dd
    const-string/jumbo v5, "android.software.voice_recognizers"

    #@6e0
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@6e3
    move-result v4

    #@6e4
    if-eqz v4, :cond_1d

    #@6e6
    .line 1024
    move-object/from16 v0, p0

    #@6e8
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6ea
    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    #@6ed
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@6f0
    .line 1027
    :cond_1d
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6f3
    move-result-object v4

    #@6f4
    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    #@6f7
    move-result v4

    #@6f8
    if-eqz v4, :cond_1e

    #@6fa
    .line 1028
    const-string/jumbo v4, "SystemServer"

    #@6fd
    const-string/jumbo v5, "Gesture Launcher Service"

    #@700
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@703
    .line 1029
    move-object/from16 v0, p0

    #@705
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@707
    const-class v5, Lcom/android/server/GestureLauncherService;

    #@709
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@70c
    .line 1031
    :cond_1e
    move-object/from16 v0, p0

    #@70e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@710
    const-class v5, Lcom/android/server/SensorNotificationService;

    #@712
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@715
    .line 1032
    move-object/from16 v0, p0

    #@717
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@719
    const-class v5, Lcom/android/server/ContextHubSystemService;

    #@71b
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@71e
    .line 1035
    :cond_1f
    const-string/jumbo v4, "StartDiskStatsService"

    #@721
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@724
    .line 1037
    :try_start_20
    const-string/jumbo v4, "diskstats"

    #@727
    new-instance v5, Lcom/android/server/DiskStatsService;

    #@729
    invoke-direct {v5, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    #@72c
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_17

    #@72f
    .line 1041
    :goto_1c
    const-wide/32 v4, 0x80000

    #@732
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@735
    .line 1043
    if-nez v40, :cond_20

    #@737
    .line 1044
    const-string/jumbo v4, "StartSamplingProfilerService"

    #@73a
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@73d
    .line 1050
    :try_start_21
    const-string/jumbo v4, "samplingprofiler"

    #@740
    .line 1051
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    #@742
    invoke-direct {v5, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    #@745
    .line 1050
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_18

    #@748
    .line 1055
    :goto_1d
    const-wide/32 v4, 0x80000

    #@74b
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@74e
    .line 1058
    :cond_20
    if-nez v36, :cond_21

    #@750
    if-eqz v37, :cond_42

    #@752
    .line 1069
    .end local v69    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_21
    :goto_1e
    const-string/jumbo v4, "StartCommonTimeManagementService"

    #@755
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@758
    .line 1071
    :try_start_22
    new-instance v25, Lcom/android/server/CommonTimeManagementService;

    #@75a
    move-object/from16 v0, v25

    #@75c
    invoke-direct {v0, v6}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_1a

    #@75f
    .line 1072
    .end local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v25, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_23
    const-string/jumbo v4, "commontime_management"

    #@762
    move-object/from16 v0, v25

    #@764
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_27

    #@767
    move-object/from16 v24, v25

    #@769
    .line 1076
    .end local v25    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_1f
    const-wide/32 v4, 0x80000

    #@76c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@76f
    .line 1078
    if-nez v36, :cond_22

    #@771
    .line 1079
    const-string/jumbo v4, "CertBlacklister"

    #@774
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@777
    .line 1081
    :try_start_24
    new-instance v23, Lcom/android/server/CertBlacklister;

    #@779
    move-object/from16 v0, v23

    #@77b
    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_1b

    #@77e
    .line 1085
    :goto_20
    const-wide/32 v4, 0x80000

    #@781
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@784
    .line 1088
    :cond_22
    if-nez v36, :cond_23

    #@786
    if-eqz v38, :cond_43

    #@788
    .line 1093
    :cond_23
    :goto_21
    if-nez v38, :cond_24

    #@78a
    .line 1095
    move-object/from16 v0, p0

    #@78c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@78e
    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    #@790
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@793
    .line 1098
    :cond_24
    if-nez v38, :cond_25

    #@795
    .line 1099
    const-string/jumbo v4, "StartAssetAtlasService"

    #@798
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@79b
    .line 1101
    :try_start_25
    new-instance v22, Lcom/android/server/AssetAtlasService;

    #@79d
    move-object/from16 v0, v22

    #@79f
    invoke-direct {v0, v6}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_1c

    #@7a2
    .line 1102
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v22, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_26
    const-string/jumbo v4, "assetatlas"

    #@7a5
    move-object/from16 v0, v22

    #@7a7
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_26

    #@7aa
    move-object/from16 v21, v22

    #@7ac
    .line 1106
    .end local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    :goto_22
    const-wide/32 v4, 0x80000

    #@7af
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@7b2
    .line 1109
    :cond_25
    if-nez v38, :cond_26

    #@7b4
    .line 1110
    const-string/jumbo v4, "graphicsstats"

    #@7b7
    .line 1111
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    #@7b9
    invoke-direct {v5, v6}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    #@7bc
    .line 1110
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@7bf
    .line 1114
    :cond_26
    move-object/from16 v0, p0

    #@7c1
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7c3
    const-string/jumbo v5, "android.software.print"

    #@7c6
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@7c9
    move-result v4

    #@7ca
    if-eqz v4, :cond_27

    #@7cc
    .line 1115
    move-object/from16 v0, p0

    #@7ce
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7d0
    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    #@7d3
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@7d6
    .line 1118
    :cond_27
    move-object/from16 v0, p0

    #@7d8
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7da
    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    #@7dc
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7df
    .line 1120
    move-object/from16 v0, p0

    #@7e1
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7e3
    const-class v5, Lcom/android/server/media/MediaSessionService;

    #@7e5
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7e8
    .line 1122
    move-object/from16 v0, p0

    #@7ea
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7ec
    const-string/jumbo v5, "android.hardware.hdmi.cec"

    #@7ef
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@7f2
    move-result v4

    #@7f3
    if-eqz v4, :cond_28

    #@7f5
    .line 1123
    move-object/from16 v0, p0

    #@7f7
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7f9
    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    #@7fb
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7fe
    .line 1126
    :cond_28
    move-object/from16 v0, p0

    #@800
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@802
    const-string/jumbo v5, "android.software.live_tv"

    #@805
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@808
    move-result v4

    #@809
    if-eqz v4, :cond_29

    #@80b
    .line 1127
    move-object/from16 v0, p0

    #@80d
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@80f
    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    #@811
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@814
    .line 1130
    :cond_29
    move-object/from16 v0, p0

    #@816
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@818
    const-string/jumbo v5, "android.software.picture_in_picture"

    #@81b
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@81e
    move-result v4

    #@81f
    if-eqz v4, :cond_2a

    #@821
    .line 1131
    move-object/from16 v0, p0

    #@823
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@825
    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    #@827
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@82a
    .line 1134
    :cond_2a
    move-object/from16 v0, p0

    #@82c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@82e
    const-string/jumbo v5, "android.software.leanback"

    #@831
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@834
    move-result v4

    #@835
    if-eqz v4, :cond_2b

    #@837
    .line 1135
    move-object/from16 v0, p0

    #@839
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@83b
    const-class v5, Lcom/android/server/tv/TvRemoteService;

    #@83d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@840
    .line 1138
    :cond_2b
    if-nez v38, :cond_2e

    #@842
    .line 1139
    const-string/jumbo v4, "StartMediaRouterService"

    #@845
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@848
    .line 1141
    :try_start_27
    new-instance v59, Lcom/android/server/media/MediaRouterService;

    #@84a
    move-object/from16 v0, v59

    #@84c
    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_1d

    #@84f
    .line 1142
    .end local v58    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v59, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_28
    const-string/jumbo v4, "media_router"

    #@852
    move-object/from16 v0, v59

    #@854
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_25

    #@857
    move-object/from16 v58, v59

    #@859
    .line 1146
    .end local v59    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_23
    const-wide/32 v4, 0x80000

    #@85c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@85f
    .line 1148
    if-nez v46, :cond_2c

    #@861
    .line 1149
    move-object/from16 v0, p0

    #@863
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@865
    const-class v5, Lcom/android/server/trust/TrustManagerService;

    #@867
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@86a
    .line 1152
    :cond_2c
    move-object/from16 v0, p0

    #@86c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@86e
    const-string/jumbo v5, "android.hardware.fingerprint"

    #@871
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@874
    move-result v4

    #@875
    if-eqz v4, :cond_2d

    #@877
    .line 1153
    move-object/from16 v0, p0

    #@879
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@87b
    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    #@87d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@880
    .line 1156
    :cond_2d
    const-string/jumbo v4, "StartBackgroundDexOptService"

    #@883
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@886
    .line 1158
    :try_start_29
    invoke-static {v6}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1e

    #@889
    .line 1162
    :goto_24
    const-wide/32 v4, 0x80000

    #@88c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@88f
    .line 1165
    :cond_2e
    move-object/from16 v0, p0

    #@891
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@893
    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    #@895
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@898
    .line 1167
    move-object/from16 v0, p0

    #@89a
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@89c
    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    #@89e
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@8a1
    .line 1170
    .end local v71    # "notification":Landroid/app/INotificationManager;
    :cond_2f
    if-nez v38, :cond_30

    #@8a3
    if-eqz v35, :cond_44

    #@8a5
    .line 1174
    :cond_30
    :goto_25
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8a8
    move-result-object v4

    #@8a9
    const-string/jumbo v5, "android.hardware.type.watch"

    #@8ac
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@8af
    move-result v4

    #@8b0
    if-eqz v4, :cond_31

    #@8b2
    .line 1175
    move-object/from16 v0, p0

    #@8b4
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@8b6
    const-string/jumbo v5, "com.google.android.clockwork.bluetooth.WearBluetoothService"

    #@8b9
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@8bc
    .line 1176
    move-object/from16 v0, p0

    #@8be
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@8c0
    const-string/jumbo v5, "com.google.android.clockwork.wifi.WearWifiMediatorService"

    #@8c3
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@8c6
    .line 1177
    if-nez v38, :cond_31

    #@8c8
    .line 1178
    move-object/from16 v0, p0

    #@8ca
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@8cc
    const-string/jumbo v5, "com.google.android.clockwork.time.WearTimeService"

    #@8cf
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@8d2
    .line 1184
    :cond_31
    invoke-virtual/range {v85 .. v85}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    #@8d5
    move-result v72

    #@8d6
    .line 1185
    .local v72, "safeMode":Z
    if-eqz v72, :cond_45

    #@8d8
    .line 1186
    move-object/from16 v0, p0

    #@8da
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@8dc
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    #@8df
    .line 1188
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@8e2
    move-result-object v4

    #@8e3
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    #@8e6
    .line 1195
    :goto_26
    move-object/from16 v0, p0

    #@8e8
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@8ea
    const-class v5, Lcom/android/server/MmsServiceBroker;

    #@8ec
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@8ef
    move-result-object v20

    #@8f0
    .end local v20    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v20, Lcom/android/server/MmsServiceBroker;

    #@8f2
    .line 1197
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    #@8f4
    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    #@8f6
    const-string/jumbo v5, "device_provisioned"

    #@8f9
    const/16 v86, 0x0

    #@8fb
    move/from16 v0, v86

    #@8fd
    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@900
    move-result v4

    #@901
    if-eqz v4, :cond_32

    #@903
    .line 1198
    move-object/from16 v0, p0

    #@905
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@907
    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    #@90a
    move-result v4

    #@90b
    .line 1197
    if-eqz v4, :cond_33

    #@90d
    .line 1199
    :cond_32
    move-object/from16 v0, p0

    #@90f
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@911
    const-class v5, Lcom/android/server/retaildemo/RetailDemoModeService;

    #@913
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@916
    .line 1204
    :cond_33
    const-string/jumbo v4, "MakeVibratorServiceReady"

    #@919
    const-wide/32 v86, 0x80000

    #@91c
    move-wide/from16 v0, v86

    #@91e
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@921
    .line 1206
    :try_start_2a
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1f

    #@924
    .line 1210
    :goto_27
    const-wide/32 v4, 0x80000

    #@927
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@92a
    .line 1212
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    #@92d
    const-wide/32 v86, 0x80000

    #@930
    move-wide/from16 v0, v86

    #@932
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@935
    .line 1213
    if-eqz v57, :cond_34

    #@937
    .line 1215
    :try_start_2b
    invoke-interface/range {v57 .. v57}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_20

    #@93a
    .line 1220
    :cond_34
    :goto_28
    const-wide/32 v4, 0x80000

    #@93d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@940
    .line 1223
    move-object/from16 v0, p0

    #@942
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@944
    const/16 v5, 0x1e0

    #@946
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@949
    .line 1225
    move-object/from16 v0, p0

    #@94b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@94d
    const/16 v5, 0x1f4

    #@94f
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@952
    .line 1227
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    #@955
    const-wide/32 v86, 0x80000

    #@958
    move-wide/from16 v0, v86

    #@95a
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@95d
    .line 1229
    :try_start_2c
    invoke-virtual/range {v85 .. v85}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_21

    #@960
    .line 1233
    :goto_29
    const-wide/32 v4, 0x80000

    #@963
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@966
    .line 1235
    if-eqz v72, :cond_35

    #@968
    .line 1236
    move-object/from16 v0, p0

    #@96a
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@96c
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    #@96f
    .line 1242
    :cond_35
    invoke-virtual/range {v85 .. v85}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    #@972
    move-result-object v26

    #@973
    .line 1243
    .local v26, "config":Landroid/content/res/Configuration;
    new-instance v60, Landroid/util/DisplayMetrics;

    #@975
    invoke-direct/range {v60 .. v60}, Landroid/util/DisplayMetrics;-><init>()V

    #@978
    .line 1244
    .local v60, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    #@97b
    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@97e
    move-result-object v83

    #@97f
    check-cast v83, Landroid/view/WindowManager;

    #@981
    .line 1245
    .local v83, "w":Landroid/view/WindowManager;
    invoke-interface/range {v83 .. v83}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@984
    move-result-object v4

    #@985
    move-object/from16 v0, v60

    #@987
    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@98a
    .line 1246
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@98d
    move-result-object v4

    #@98e
    move-object/from16 v0, v26

    #@990
    move-object/from16 v1, v60

    #@992
    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@995
    .line 1249
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@998
    move-result-object v78

    #@999
    .line 1250
    .local v78, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v78 .. v78}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    #@99c
    move-result v4

    #@99d
    if-eqz v4, :cond_36

    #@99f
    .line 1251
    invoke-virtual/range {v78 .. v78}, Landroid/content/res/Resources$Theme;->rebase()V

    #@9a2
    .line 1254
    :cond_36
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    #@9a5
    const-wide/32 v86, 0x80000

    #@9a8
    move-wide/from16 v0, v86

    #@9aa
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9ad
    .line 1257
    :try_start_2d
    move-object/from16 v0, p0

    #@9af
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    #@9b1
    move-object/from16 v0, p0

    #@9b3
    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@9b5
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    #@9b8
    move-result-object v5

    #@9b9
    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    #@9bc
    .line 1258
    const-wide/32 v4, 0x80000

    #@9bf
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_22

    #@9c2
    .line 1262
    :goto_2a
    const-wide/32 v4, 0x80000

    #@9c5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@9c8
    .line 1264
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    #@9cb
    const-wide/32 v86, 0x80000

    #@9ce
    move-wide/from16 v0, v86

    #@9d0
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9d3
    .line 1266
    :try_start_2e
    move-object/from16 v0, p0

    #@9d5
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@9d7
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_23

    #@9da
    .line 1270
    :goto_2b
    const-wide/32 v4, 0x80000

    #@9dd
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@9e0
    .line 1272
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    #@9e3
    const-wide/32 v86, 0x80000

    #@9e6
    move-wide/from16 v0, v86

    #@9e8
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9eb
    .line 1275
    :try_start_2f
    move-object/from16 v0, p0

    #@9ed
    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    #@9ef
    move-object/from16 v0, p0

    #@9f1
    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@9f3
    move/from16 v0, v72

    #@9f5
    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_24

    #@9f8
    .line 1279
    :goto_2c
    const-wide/32 v4, 0x80000

    #@9fb
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@9fe
    .line 1282
    move-object/from16 v8, v63

    #@a00
    .line 1283
    .local v8, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v9, v68

    #@a02
    .line 1284
    .local v9, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v10, v64

    #@a04
    .line 1285
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v27

    #@a06
    .line 1286
    .local v11, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v7, v66

    #@a08
    .line 1287
    .local v7, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v12, v55

    #@a0a
    .line 1288
    .local v12, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v13, v31

    #@a0c
    .line 1289
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v14, v69

    #@a0e
    .line 1290
    .local v14, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v15, v24

    #@a10
    .line 1291
    .local v15, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v16, v21

    #@a12
    .line 1292
    .local v16, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v17, v52

    #@a14
    .line 1293
    .local v17, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v79

    #@a16
    .line 1294
    .local v18, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v58

    #@a18
    .line 1295
    .local v19, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v61, v20

    #@a1a
    .line 1302
    .local v61, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    #@a1c
    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@a1e
    move-object/from16 v86, v0

    #@a20
    new-instance v4, Lcom/android/server/SystemServer$2;

    #@a22
    move-object/from16 v5, p0

    #@a24
    invoke-direct/range {v4 .. v20}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    #@a27
    move-object/from16 v0, v86

    #@a29
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    #@a2c
    .line 517
    return-void

    #@a2d
    .line 619
    .end local v7    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v8    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v9    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v12    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v13    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v14    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v15    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v16    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v17    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v18    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v19    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v26    # "config":Landroid/content/res/Configuration;
    .end local v60    # "metrics":Landroid/util/DisplayMetrics;
    .end local v61    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v72    # "safeMode":Z
    .end local v78    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v83    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v49    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v53    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v62    # "mountService":Landroid/os/storage/IMountService;
    .local v63, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v64    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v68, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v69    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v73    # "serial":Lcom/android/server/SerialService;
    .local v75, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v84    # "watchdog":Lcom/android/server/Watchdog;
    .local v85, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_37
    const/4 v4, 0x0

    #@a2e
    move v5, v4

    #@a2f
    goto/16 :goto_0

    #@a31
    .line 620
    :cond_38
    const/4 v4, 0x1

    #@a32
    goto/16 :goto_1

    #@a34
    .line 642
    .local v85, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_39
    :try_start_30
    move-object/from16 v0, p0

    #@a36
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@a38
    const/4 v5, 0x1

    #@a39
    if-ne v4, v5, :cond_3a

    #@a3b
    .line 643
    const-string/jumbo v4, "SystemServer"

    #@a3e
    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    #@a41
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_0

    #@a44
    goto/16 :goto_2

    #@a46
    .line 664
    .end local v85    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v47

    #@a47
    .local v47, "e":Ljava/lang/RuntimeException;
    move-object/from16 v29, v30

    #@a49
    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v79, v80

    #@a4b
    .end local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v79    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v52, v53

    #@a4d
    .end local v53    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v52    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v81, v82

    #@a4f
    .line 665
    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v52    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v79    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v82    # "vibrator":Lcom/android/server/VibratorService;
    .end local v84    # "watchdog":Lcom/android/server/Watchdog;
    :goto_2d
    const-string/jumbo v4, "System"

    #@a52
    const-string/jumbo v5, "******************************************"

    #@a55
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a58
    .line 666
    const-string/jumbo v4, "System"

    #@a5b
    const-string/jumbo v5, "************ Failure starting core service"

    #@a5e
    move-object/from16 v0, v47

    #@a60
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a63
    goto/16 :goto_3

    #@a65
    .line 644
    .end local v47    # "e":Ljava/lang/RuntimeException;
    .restart local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v53    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v84    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v85    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_3a
    :try_start_31
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@a68
    move-result-object v4

    #@a69
    .line 645
    const-string/jumbo v5, "android.hardware.bluetooth"

    #@a6c
    .line 644
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@a6f
    move-result v4

    #@a70
    if-nez v4, :cond_3b

    #@a72
    .line 646
    const-string/jumbo v4, "SystemServer"

    #@a75
    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    #@a78
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a7b
    goto/16 :goto_2

    #@a7d
    .line 647
    :cond_3b
    if-eqz v33, :cond_3c

    #@a7f
    .line 648
    const-string/jumbo v4, "SystemServer"

    #@a82
    const-string/jumbo v5, "Bluetooth Service disabled by config"

    #@a85
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a88
    goto/16 :goto_2

    #@a8a
    .line 650
    :cond_3c
    move-object/from16 v0, p0

    #@a8c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@a8e
    const-class v5, Lcom/android/server/BluetoothService;

    #@a90
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_0

    #@a93
    goto/16 :goto_2

    #@a95
    .line 685
    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v53    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v82    # "vibrator":Lcom/android/server/VibratorService;
    .end local v84    # "watchdog":Lcom/android/server/Watchdog;
    .end local v85    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "location":Lcom/android/server/LocationManagerService;
    .restart local v57    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v58    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v71, "notification":Landroid/app/INotificationManager;
    .restart local v76    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1
    move-exception v48

    #@a96
    .line 686
    .local v48, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    #@a99
    move-object/from16 v0, p0

    #@a9b
    move-object/from16 v1, v48

    #@a9d
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@aa0
    goto/16 :goto_4

    #@aa2
    .line 693
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v48

    #@aa3
    .line 694
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    #@aa6
    move-object/from16 v0, p0

    #@aa8
    move-object/from16 v1, v48

    #@aaa
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@aad
    goto/16 :goto_5

    #@aaf
    .line 705
    .end local v48    # "e":Ljava/lang/Throwable;
    :cond_3d
    :try_start_32
    move-object/from16 v0, p0

    #@ab1
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@ab3
    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    #@ab6
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@ab9
    .line 707
    const-string/jumbo v4, "mount"

    #@abc
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@abf
    move-result-object v4

    #@ac0
    .line 706
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_3

    #@ac3
    move-result-object v62

    #@ac4
    .local v62, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_6

    #@ac6
    .line 708
    .local v62, "mountService":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v48

    #@ac7
    .line 709
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    #@aca
    move-object/from16 v0, p0

    #@acc
    move-object/from16 v1, v48

    #@ace
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ad1
    goto/16 :goto_6

    #@ad3
    .line 722
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v62    # "mountService":Landroid/os/storage/IMountService;
    :catch_4
    move-exception v48

    #@ad4
    .line 723
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    #@ad7
    move-object/from16 v0, p0

    #@ad9
    move-object/from16 v1, v48

    #@adb
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ade
    goto/16 :goto_7

    #@ae0
    .line 731
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v48

    #@ae1
    .line 732
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    #@ae4
    move-object/from16 v0, p0

    #@ae6
    move-object/from16 v1, v48

    #@ae8
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@aeb
    goto/16 :goto_8

    #@aed
    .line 743
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v48

    #@aee
    .line 744
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    #@af1
    move-object/from16 v0, p0

    #@af3
    move-object/from16 v1, v48

    #@af5
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@af8
    goto/16 :goto_9

    #@afa
    .line 764
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v57    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_7
    move-exception v48

    #@afb
    .line 765
    .end local v76    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_2e
    const-string/jumbo v4, "starting StatusBarManagerService"

    #@afe
    move-object/from16 v0, p0

    #@b00
    move-object/from16 v1, v48

    #@b02
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b05
    goto/16 :goto_a

    #@b07
    .line 775
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v48

    #@b08
    .line 776
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    #@b0b
    move-object/from16 v0, p0

    #@b0d
    move-object/from16 v1, v48

    #@b0f
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b12
    goto/16 :goto_b

    #@b14
    .line 786
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v63    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_9
    move-exception v48

    #@b15
    .line 787
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    #@b18
    move-object/from16 v0, p0

    #@b1a
    move-object/from16 v1, v48

    #@b1c
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b1f
    goto/16 :goto_c

    #@b21
    .line 793
    .end local v48    # "e":Ljava/lang/Throwable;
    :cond_3e
    move-object/from16 v0, p0

    #@b23
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@b25
    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    #@b27
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@b2a
    goto/16 :goto_d

    #@b2c
    .line 801
    :catch_a
    move-exception v48

    #@b2d
    .line 802
    .end local v66    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_2f
    const-string/jumbo v4, "starting Network Score Service"

    #@b30
    move-object/from16 v0, p0

    #@b32
    move-object/from16 v1, v48

    #@b34
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b37
    goto/16 :goto_e

    #@b39
    .line 810
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v68    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_b
    move-exception v48

    #@b3a
    .line 811
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    #@b3d
    move-object/from16 v0, p0

    #@b3f
    move-object/from16 v1, v48

    #@b41
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b44
    goto/16 :goto_f

    #@b46
    .line 820
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v48

    #@b47
    .line 821
    .end local v64    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_30
    const-string/jumbo v4, "starting NetworkPolicy Service"

    #@b4a
    move-object/from16 v0, p0

    #@b4c
    move-object/from16 v1, v48

    #@b4e
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b51
    goto/16 :goto_10

    #@b53
    .line 828
    .end local v48    # "e":Ljava/lang/Throwable;
    :cond_3f
    const-string/jumbo v4, "SystemServer"

    #@b56
    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    #@b59
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b5c
    goto/16 :goto_11

    #@b5e
    .line 851
    :catch_d
    move-exception v48

    #@b5f
    .line 852
    .end local v27    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_31
    const-string/jumbo v4, "starting Connectivity Service"

    #@b62
    move-object/from16 v0, p0

    #@b64
    move-object/from16 v1, v48

    #@b66
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b69
    goto/16 :goto_12

    #@b6b
    .line 861
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v75    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_e
    move-exception v48

    #@b6c
    .line 862
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    #@b6f
    move-object/from16 v0, p0

    #@b71
    move-object/from16 v1, v48

    #@b73
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b76
    goto/16 :goto_13

    #@b78
    .line 872
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v48

    #@b79
    .line 873
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    #@b7c
    move-object/from16 v0, p0

    #@b7e
    move-object/from16 v1, v48

    #@b80
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b83
    goto/16 :goto_14

    #@b85
    .line 888
    .end local v48    # "e":Ljava/lang/Throwable;
    :cond_40
    const-string/jumbo v4, "WaitForAsecScan"

    #@b88
    const-wide/32 v86, 0x80000

    #@b8b
    move-wide/from16 v0, v86

    #@b8d
    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@b90
    .line 890
    :try_start_33
    invoke-interface/range {v62 .. v62}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_10

    #@b93
    .line 893
    :goto_32
    const-wide/32 v4, 0x80000

    #@b96
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@b99
    goto/16 :goto_15

    #@b9b
    .line 891
    :catch_10
    move-exception v51

    #@b9c
    .local v51, "ignored":Landroid/os/RemoteException;
    goto :goto_32

    #@b9d
    .line 908
    .end local v51    # "ignored":Landroid/os/RemoteException;
    .local v71, "notification":Landroid/app/INotificationManager;
    :catch_11
    move-exception v48

    #@b9e
    .line 909
    .end local v55    # "location":Lcom/android/server/LocationManagerService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_33
    const-string/jumbo v4, "starting Location Manager"

    #@ba1
    move-object/from16 v0, p0

    #@ba3
    move-object/from16 v1, v48

    #@ba5
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ba8
    goto/16 :goto_16

    #@baa
    .line 917
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v48

    #@bab
    .line 918
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v4, "starting Country Detector"

    #@bae
    move-object/from16 v0, p0

    #@bb0
    move-object/from16 v1, v48

    #@bb2
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bb5
    goto/16 :goto_17

    #@bb7
    .line 924
    .end local v48    # "e":Ljava/lang/Throwable;
    :cond_41
    const-string/jumbo v4, "StartSearchManagerService"

    #@bba
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@bbd
    .line 926
    :try_start_34
    move-object/from16 v0, p0

    #@bbf
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@bc1
    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    #@bc4
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_13

    #@bc7
    .line 930
    :goto_35
    const-wide/32 v4, 0x80000

    #@bca
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@bcd
    goto/16 :goto_18

    #@bcf
    .line 927
    :catch_13
    move-exception v48

    #@bd0
    .line 928
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    #@bd3
    move-object/from16 v0, p0

    #@bd5
    move-object/from16 v1, v48

    #@bd7
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bda
    goto :goto_35

    #@bdb
    .line 959
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v48

    #@bdc
    .line 960
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    #@bdf
    move-object/from16 v0, p0

    #@be1
    move-object/from16 v1, v48

    #@be3
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@be6
    goto/16 :goto_19

    #@be8
    .line 985
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v48

    #@be9
    .line 986
    .end local v73    # "serial":Lcom/android/server/SerialService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v4, "SystemServer"

    #@bec
    const-string/jumbo v5, "Failure starting SerialService"

    #@bef
    move-object/from16 v0, v48

    #@bf1
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bf4
    goto/16 :goto_1a

    #@bf6
    .line 997
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v48

    #@bf7
    .line 998
    .end local v49    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "SystemServer"

    #@bfa
    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    #@bfd
    move-object/from16 v0, v48

    #@bff
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c02
    goto/16 :goto_1b

    #@c04
    .line 1038
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v48

    #@c05
    .line 1039
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    #@c08
    move-object/from16 v0, p0

    #@c0a
    move-object/from16 v1, v48

    #@c0c
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c0f
    goto/16 :goto_1c

    #@c11
    .line 1052
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v48

    #@c12
    .line 1053
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    #@c15
    move-object/from16 v0, p0

    #@c17
    move-object/from16 v1, v48

    #@c19
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c1c
    goto/16 :goto_1d

    #@c1e
    .line 1059
    .end local v48    # "e":Ljava/lang/Throwable;
    :cond_42
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    #@c21
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@c24
    .line 1061
    :try_start_35
    new-instance v70, Lcom/android/server/NetworkTimeUpdateService;

    #@c26
    move-object/from16 v0, v70

    #@c28
    invoke-direct {v0, v6}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_19

    #@c2b
    .line 1062
    .end local v69    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v70, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_36
    const-string/jumbo v4, "network_time_update_service"

    #@c2e
    move-object/from16 v0, v70

    #@c30
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_28

    #@c33
    move-object/from16 v69, v70

    #@c35
    .line 1066
    .end local v70    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_38
    const-wide/32 v4, 0x80000

    #@c38
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@c3b
    goto/16 :goto_1e

    #@c3d
    .line 1063
    .restart local v69    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_19
    move-exception v48

    #@c3e
    .line 1064
    .end local v69    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    #@c41
    move-object/from16 v0, p0

    #@c43
    move-object/from16 v1, v48

    #@c45
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c48
    goto :goto_38

    #@c49
    .line 1073
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v48

    #@c4a
    .line 1074
    .end local v24    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    #@c4d
    move-object/from16 v0, p0

    #@c4f
    move-object/from16 v1, v48

    #@c51
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c54
    goto/16 :goto_1f

    #@c56
    .line 1082
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v48

    #@c57
    .line 1083
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    #@c5a
    move-object/from16 v0, p0

    #@c5c
    move-object/from16 v1, v48

    #@c5e
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c61
    goto/16 :goto_20

    #@c63
    .line 1090
    .end local v48    # "e":Ljava/lang/Throwable;
    :cond_43
    move-object/from16 v0, p0

    #@c65
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@c67
    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    #@c69
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@c6c
    goto/16 :goto_21

    #@c6e
    .line 1103
    :catch_1c
    move-exception v48

    #@c6f
    .line 1104
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v4, "starting AssetAtlasService"

    #@c72
    move-object/from16 v0, p0

    #@c74
    move-object/from16 v1, v48

    #@c76
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c79
    goto/16 :goto_22

    #@c7b
    .line 1143
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v48

    #@c7c
    .line 1144
    .end local v58    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v48    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "starting MediaRouterService"

    #@c7f
    move-object/from16 v0, p0

    #@c81
    move-object/from16 v1, v48

    #@c83
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c86
    goto/16 :goto_23

    #@c88
    .line 1159
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v48

    #@c89
    .line 1160
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    #@c8c
    move-object/from16 v0, p0

    #@c8e
    move-object/from16 v1, v48

    #@c90
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c93
    goto/16 :goto_24

    #@c95
    .line 1171
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v71    # "notification":Landroid/app/INotificationManager;
    :cond_44
    move-object/from16 v0, p0

    #@c97
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@c99
    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@c9b
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@c9e
    goto/16 :goto_25

    #@ca0
    .line 1191
    .restart local v72    # "safeMode":Z
    :cond_45
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@ca3
    move-result-object v4

    #@ca4
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    #@ca7
    goto/16 :goto_26

    #@ca9
    .line 1207
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_1f
    move-exception v48

    #@caa
    .line 1208
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    #@cad
    move-object/from16 v0, p0

    #@caf
    move-object/from16 v1, v48

    #@cb1
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@cb4
    goto/16 :goto_27

    #@cb6
    .line 1216
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v48

    #@cb7
    .line 1217
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    #@cba
    move-object/from16 v0, p0

    #@cbc
    move-object/from16 v1, v48

    #@cbe
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@cc1
    goto/16 :goto_28

    #@cc3
    .line 1230
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v48

    #@cc4
    .line 1231
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    #@cc7
    move-object/from16 v0, p0

    #@cc9
    move-object/from16 v1, v48

    #@ccb
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@cce
    goto/16 :goto_29

    #@cd0
    .line 1259
    .end local v48    # "e":Ljava/lang/Throwable;
    .restart local v26    # "config":Landroid/content/res/Configuration;
    .restart local v60    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v78    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v83    # "w":Landroid/view/WindowManager;
    :catch_22
    move-exception v48

    #@cd1
    .line 1260
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    #@cd4
    move-object/from16 v0, p0

    #@cd6
    move-object/from16 v1, v48

    #@cd8
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@cdb
    goto/16 :goto_2a

    #@cdd
    .line 1267
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v48

    #@cde
    .line 1268
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    #@ce1
    move-object/from16 v0, p0

    #@ce3
    move-object/from16 v1, v48

    #@ce5
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ce8
    goto/16 :goto_2b

    #@cea
    .line 1276
    .end local v48    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v48

    #@ceb
    .line 1277
    .restart local v48    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    #@cee
    move-object/from16 v0, p0

    #@cf0
    move-object/from16 v1, v48

    #@cf2
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@cf5
    goto/16 :goto_2c

    #@cf7
    .line 1143
    .end local v26    # "config":Landroid/content/res/Configuration;
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v60    # "metrics":Landroid/util/DisplayMetrics;
    .end local v72    # "safeMode":Z
    .end local v78    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v83    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v59    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v71    # "notification":Landroid/app/INotificationManager;
    :catch_25
    move-exception v48

    #@cf8
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v58, v59

    #@cfa
    .end local v59    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v58, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto :goto_3c

    #@cfb
    .line 1103
    .end local v48    # "e":Ljava/lang/Throwable;
    .restart local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v58, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_26
    move-exception v48

    #@cfc
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v21, v22

    #@cfe
    .end local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_3b

    #@d00
    .line 1073
    .end local v48    # "e":Ljava/lang/Throwable;
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v25    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_27
    move-exception v48

    #@d01
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v24, v25

    #@d03
    .end local v25    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v24, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_3a

    #@d05
    .line 1063
    .end local v48    # "e":Ljava/lang/Throwable;
    .local v24, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v70    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_28
    move-exception v48

    #@d06
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v69, v70

    #@d08
    .end local v70    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v69, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_39

    #@d0a
    .line 997
    .end local v48    # "e":Ljava/lang/Throwable;
    .restart local v50    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v69, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_29
    move-exception v48

    #@d0b
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v49, v50

    #@d0d
    .end local v50    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v49, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_37

    #@d0f
    .line 985
    .end local v48    # "e":Ljava/lang/Throwable;
    .local v49, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v74    # "serial":Lcom/android/server/SerialService;
    :catch_2a
    move-exception v48

    #@d10
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v73, v74

    #@d12
    .end local v74    # "serial":Lcom/android/server/SerialService;
    .local v73, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_36

    #@d14
    .line 917
    .end local v48    # "e":Ljava/lang/Throwable;
    .restart local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v73, "serial":Lcom/android/server/SerialService;
    :catch_2b
    move-exception v48

    #@d15
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v31, v32

    #@d17
    .end local v32    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_34

    #@d19
    .line 908
    .end local v48    # "e":Ljava/lang/Throwable;
    .local v31, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v56    # "location":Lcom/android/server/LocationManagerService;
    :catch_2c
    move-exception v48

    #@d1a
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v55, v56

    #@d1c
    .end local v56    # "location":Lcom/android/server/LocationManagerService;
    .local v55, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_33

    #@d1e
    .line 851
    .end local v48    # "e":Ljava/lang/Throwable;
    .restart local v28    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v55, "location":Lcom/android/server/LocationManagerService;
    .local v71, "notification":Landroid/app/INotificationManager;
    .restart local v75    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_2d
    move-exception v48

    #@d1f
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v27, v28

    #@d21
    .end local v28    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v27, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_31

    #@d23
    .line 820
    .end local v48    # "e":Ljava/lang/Throwable;
    .local v27, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v65    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catch_2e
    move-exception v48

    #@d24
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v64, v65

    #@d26
    .end local v65    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v64, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_30

    #@d28
    .line 801
    .end local v48    # "e":Ljava/lang/Throwable;
    .local v64, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v67    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v68    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_2f
    move-exception v48

    #@d29
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v66, v67

    #@d2b
    .end local v67    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v66, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_2f

    #@d2d
    .line 764
    .end local v48    # "e":Ljava/lang/Throwable;
    .restart local v63    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v66, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v77    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_30
    move-exception v48

    #@d2e
    .restart local v48    # "e":Ljava/lang/Throwable;
    move-object/from16 v76, v77

    #@d30
    .end local v77    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v76, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_2e

    #@d32
    .line 664
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v31    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v48    # "e":Ljava/lang/Throwable;
    .end local v55    # "location":Lcom/android/server/LocationManagerService;
    .end local v58    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v71    # "notification":Landroid/app/INotificationManager;
    .end local v76    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v52, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v62    # "mountService":Landroid/os/storage/IMountService;
    .local v79, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v81    # "vibrator":Lcom/android/server/VibratorService;
    .local v85, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_31
    move-exception v47

    #@d33
    .restart local v47    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_2d

    #@d35
    .end local v47    # "e":Ljava/lang/RuntimeException;
    .end local v79    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_32
    move-exception v47

    #@d36
    .restart local v47    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v79, v80

    #@d38
    .end local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v79, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_2d

    #@d3a
    .end local v47    # "e":Ljava/lang/RuntimeException;
    .end local v79    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v81    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "vibrator":Lcom/android/server/VibratorService;
    :catch_33
    move-exception v47

    #@d3b
    .restart local v47    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v79, v80

    #@d3d
    .end local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v79    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v81, v82

    #@d3f
    .end local v82    # "vibrator":Lcom/android/server/VibratorService;
    .local v81, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_2d

    #@d41
    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v47    # "e":Ljava/lang/RuntimeException;
    .end local v79    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v81    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "vibrator":Lcom/android/server/VibratorService;
    :catch_34
    move-exception v47

    #@d42
    .restart local v47    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v29, v30

    #@d44
    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v79, v80

    #@d46
    .end local v80    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v79    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v81, v82

    #@d48
    .end local v82    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v81    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_2d
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1438
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 1439
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    const-string/jumbo v2, "com.android.systemui"

    #@a
    .line 1440
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    #@d
    .line 1439
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 1441
    const/16 v1, 0x100

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    .line 1443
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@1a
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    #@1d
    .line 1437
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1447
    const-wide/32 v0, 0x80000

    #@3
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@6
    .line 1448
    const-string/jumbo v0, "SystemServer"

    #@9
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1446
    return-void
.end method
