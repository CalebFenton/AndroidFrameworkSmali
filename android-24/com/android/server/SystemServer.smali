.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x103013f

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
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 214
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@9
    .line 212
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    #@0
    .prologue
    .line 390
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    #@3
    move-result-object v0

    #@4
    .line 391
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@a
    .line 392
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@c
    const v2, 0x103013f

    #@f
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    #@12
    .line 389
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 209
    new-instance v0, Lcom/android/server/SystemServer;

    #@2
    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    #@5
    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    #@8
    .line 208
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
    .line 350
    const-string/jumbo v6, "sys.shutdown.requested"

    #@6
    const-string/jumbo v7, ""

    #@9
    .line 349
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 351
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_3

    #@f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@12
    move-result v6

    #@13
    if-lez v6, :cond_3

    #@15
    .line 352
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
    .line 355
    .local v4, "reboot":Z
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@21
    move-result v6

    #@22
    if-le v6, v10, :cond_1

    #@24
    .line 356
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@27
    move-result v6

    #@28
    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    .line 366
    :goto_1
    const-string/jumbo v6, "recovery-update"

    #@2f
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_2

    #@35
    .line 367
    new-instance v2, Ljava/io/File;

    #@37
    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    #@3a
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@3d
    .line 368
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@40
    move-result v6

    #@41
    if-eqz v6, :cond_2

    #@43
    .line 369
    const/4 v1, 0x0

    #@44
    .line 371
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
    .line 376
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
    .line 377
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
    .line 378
    const-string/jumbo v6, "SystemServer"

    #@66
    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    #@69
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 380
    return-void

    #@6d
    .line 352
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_0
    const/4 v4, 0x0

    #@6e
    .restart local v4    # "reboot":Z
    goto :goto_0

    #@6f
    .line 358
    :cond_1
    const/4 v3, 0x0

    #@70
    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    #@71
    .line 372
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    #@72
    .line 373
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    #@75
    const-string/jumbo v7, "Error reading uncrypt package file"

    #@78
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    goto :goto_2

    #@7c
    .line 385
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    #@7f
    .line 348
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
    .line 344
    const-string/jumbo v0, "SystemServer"

    #@3
    const-string/jumbo v1, "***********************************************"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 345
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
    .line 343
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
    .line 219
    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    #@9
    const-wide/32 v2, 0x80000

    #@c
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@f
    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v0

    #@13
    cmp-long v0, v0, v4

    #@15
    if-gez v0, :cond_0

    #@17
    .line 225
    const-string/jumbo v0, "SystemServer"

    #@1a
    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    #@1d
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 226
    const-wide/32 v0, 0x5265c00

    #@23
    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    #@26
    .line 237
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
    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    .line 240
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    #@3e
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 241
    const-string/jumbo v0, "persist.sys.language"

    #@44
    const-string/jumbo v1, ""

    #@47
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 242
    const-string/jumbo v0, "persist.sys.country"

    #@4d
    const-string/jumbo v1, ""

    #@50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    .line 243
    const-string/jumbo v0, "persist.sys.localevar"

    #@56
    const-string/jumbo v1, ""

    #@59
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    .line 247
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    #@5f
    const-string/jumbo v1, "Entered the Android system server!"

    #@62
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@68
    move-result-wide v0

    #@69
    const/16 v2, 0xbc2

    #@6b
    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@6e
    .line 257
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
    .line 260
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_2

    #@82
    .line 261
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    #@85
    .line 262
    new-instance v0, Ljava/util/Timer;

    #@87
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@8a
    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    #@8c
    .line 263
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    #@8e
    new-instance v1, Lcom/android/server/SystemServer$1;

    #@90
    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    #@93
    .line 268
    const-wide/32 v2, 0x36ee80

    #@96
    const-wide/32 v4, 0x36ee80

    #@99
    .line 263
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@9c
    .line 272
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    #@a3
    .line 276
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@a6
    move-result-object v0

    #@a7
    const v1, 0x3f4ccccd    # 0.8f

    #@aa
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@ad
    .line 280
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    #@b0
    .line 284
    const/4 v0, 0x1

    #@b1
    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    #@b4
    .line 288
    const/4 v0, 0x1

    #@b5
    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    #@b8
    .line 291
    const/4 v0, 0x1

    #@b9
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    #@bc
    .line 294
    const/16 v0, 0x1f

    #@be
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    #@c1
    .line 298
    const/4 v0, -0x2

    #@c2
    .line 297
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@c5
    .line 299
    const/4 v0, 0x0

    #@c6
    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    #@c9
    .line 300
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    #@cc
    .line 303
    const-string/jumbo v0, "android_servers"

    #@cf
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@d2
    .line 307
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    #@d5
    .line 310
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    #@d8
    .line 313
    new-instance v0, Lcom/android/server/SystemServiceManager;

    #@da
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@dc
    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    #@df
    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@e1
    .line 314
    const-class v0, Lcom/android/server/SystemServiceManager;

    #@e3
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@e5
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e8
    .line 316
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@eb
    .line 321
    :try_start_1
    const-string/jumbo v0, "StartServices"

    #@ee
    const-wide/32 v2, 0x80000

    #@f1
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@f4
    .line 322
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    #@f7
    .line 323
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    #@fa
    .line 324
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@fd
    .line 330
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@100
    .line 334
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    #@103
    move-result v0

    #@104
    if-eqz v0, :cond_3

    #@106
    .line 335
    const-string/jumbo v0, "SystemServer"

    #@109
    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    #@10c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    .line 339
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@112
    .line 340
    new-instance v0, Ljava/lang/RuntimeException;

    #@114
    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    #@117
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11a
    throw v0

    #@11b
    .line 315
    :catchall_0
    move-exception v0

    #@11c
    .line 316
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@11f
    .line 315
    throw v0

    #@120
    .line 325
    :catch_0
    move-exception v6

    #@121
    .line 326
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "System"

    #@124
    const-string/jumbo v1, "******************************************"

    #@127
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@12a
    .line 327
    const-string/jumbo v0, "System"

    #@12d
    const-string/jumbo v1, "************ Failure starting system services"

    #@130
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@133
    .line 328
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@134
    .line 329
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    #@135
    .line 330
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@138
    .line 329
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
    .line 406
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
    .line 409
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@11
    .line 410
    const-class v7, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    #@13
    .line 409
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
    .line 411
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@21
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@23
    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    #@26
    .line 412
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@28
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    #@2b
    .line 418
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
    .line 422
    const-string/jumbo v4, "InitPowerManagement"

    #@3a
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@3d
    .line 423
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@3f
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    #@42
    .line 424
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@45
    .line 427
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@47
    const-class v7, Lcom/android/server/lights/LightsService;

    #@49
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@4c
    .line 431
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
    .line 434
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5a
    const/16 v7, 0x64

    #@5c
    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@5f
    .line 437
    const-string/jumbo v4, "vold.decrypt"

    #@62
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    .line 438
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v4, "trigger_restart_min_framework"

    #@69
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v4

    #@6d
    if-eqz v4, :cond_2

    #@6f
    .line 439
    const-string/jumbo v4, "SystemServer"

    #@72
    const-string/jumbo v7, "Detected encryption in progress - only parsing core apps"

    #@75
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 440
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@7a
    .line 447
    :cond_0
    :goto_0
    const-string/jumbo v4, "StartPackageManagerService"

    #@7d
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@80
    .line 448
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@82
    .line 449
    iget v4, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@84
    if-eqz v4, :cond_3

    #@86
    move v4, v5

    #@87
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@89
    .line 448
    invoke-static {v7, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    #@8c
    move-result-object v4

    #@8d
    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@8f
    .line 450
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@91
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    #@94
    move-result v4

    #@95
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    #@97
    .line 451
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@99
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9c
    move-result-object v4

    #@9d
    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@9f
    .line 452
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@a2
    .line 457
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@a4
    if-nez v4, :cond_1

    #@a6
    .line 458
    const-string/jumbo v4, "config.disable_otadexopt"

    #@a9
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@ac
    move-result v1

    #@ad
    .line 460
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_1

    #@af
    .line 461
    const-string/jumbo v4, "StartOtaDexOptService"

    #@b2
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@b5
    .line 463
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
    .line 467
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@bf
    .line 472
    .end local v1    # "disableOtaDexopt":Z
    :cond_1
    :goto_2
    const-string/jumbo v4, "StartUserManagerService"

    #@c2
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@c5
    .line 473
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@c7
    const-class v5, Lcom/android/server/pm/UserManagerService$LifeCycle;

    #@c9
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@cc
    .line 474
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@cf
    .line 477
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@d1
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    #@d4
    .line 480
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@d6
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    #@d9
    .line 484
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    #@dc
    .line 402
    return-void

    #@dd
    .line 441
    :cond_2
    const-string/jumbo v4, "1"

    #@e0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v4

    #@e4
    if-eqz v4, :cond_0

    #@e6
    .line 442
    const-string/jumbo v4, "SystemServer"

    #@e9
    const-string/jumbo v7, "Device encrypted - only parsing core apps"

    #@ec
    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    .line 443
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@f1
    goto :goto_0

    #@f2
    :cond_3
    move v4, v6

    #@f3
    .line 449
    goto :goto_1

    #@f4
    .line 464
    .restart local v1    # "disableOtaDexopt":Z
    :catch_0
    move-exception v2

    #@f5
    .line 465
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v4, "starting OtaDexOptService"

    #@f8
    invoke-direct {p0, v4, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@fb
    .line 467
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@fe
    goto :goto_2

    #@ff
    .line 466
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    #@100
    .line 467
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    #@103
    .line 466
    throw v4
.end method

.method private startCoreServices()V
    .locals 2

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2
    const-class v1, Lcom/android/server/BatteryService;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7
    .line 495
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@9
    const-class v1, Lcom/android/server/usage/UsageStatsService;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@e
    .line 496
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@10
    .line 497
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@18
    .line 496
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    #@1b
    .line 500
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
    .line 490
    return-void
.end method

.method private startOtherServices()V
    .locals 88

    #@0
    .prologue
    .line 508
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@4
    .line 509
    .local v3, "context":Landroid/content/Context;
    const/16 v83, 0x0

    #@6
    .line 510
    .local v83, "vibrator":Lcom/android/server/VibratorService;
    const/16 v67, 0x0

    #@8
    .line 511
    .local v67, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    #@9
    .line 512
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    #@a
    .line 513
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v68, 0x0

    #@c
    .line 514
    .local v68, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v31, 0x0

    #@e
    .line 515
    .local v31, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v69, 0x0

    #@10
    .line 516
    .local v69, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v77, 0x0

    #@12
    .line 517
    .local v77, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v87, 0x0

    #@14
    .line 518
    .local v87, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v75, 0x0

    #@16
    .line 519
    .local v75, "serial":Lcom/android/server/SerialService;
    const/16 v71, 0x0

    #@18
    .line 520
    .local v71, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v28, 0x0

    #@1a
    .line 521
    .local v28, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v57, 0x0

    #@1c
    .line 522
    .local v57, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v81, 0x0

    #@1e
    .line 523
    .local v81, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v33, 0x0

    #@20
    .line 524
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v24, 0x0

    #@22
    .line 525
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v54, 0x0

    #@24
    .line 527
    .local v54, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const-string/jumbo v4, "config.disable_storage"

    #@27
    const/4 v5, 0x0

    #@28
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@2b
    move-result v47

    #@2c
    .line 528
    .local v47, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    #@2f
    const/4 v5, 0x0

    #@30
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@33
    move-result v37

    #@34
    .line 529
    .local v37, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    #@37
    const/4 v5, 0x0

    #@38
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@3b
    move-result v38

    #@3c
    .line 530
    .local v38, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    #@3f
    const/4 v5, 0x0

    #@40
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@43
    move-result v48

    #@44
    .line 531
    .local v48, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    #@47
    const/4 v5, 0x0

    #@48
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@4b
    move-result v42

    #@4c
    .line 532
    .local v42, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    #@4f
    const/4 v5, 0x0

    #@50
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@53
    move-result v40

    #@54
    .line 533
    .local v40, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    #@57
    const/4 v5, 0x0

    #@58
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@5b
    move-result v41

    #@5c
    .line 534
    .local v41, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_rtt"

    #@5f
    const/4 v5, 0x0

    #@60
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@63
    move-result v43

    #@64
    .line 535
    .local v43, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    #@67
    .line 536
    const/4 v5, 0x0

    #@68
    .line 535
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@6b
    move-result v39

    #@6c
    .line 537
    .local v39, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    #@6f
    const/4 v5, 0x0

    #@70
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@73
    move-result v46

    #@74
    .line 538
    .local v46, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    #@77
    .line 539
    const/4 v5, 0x0

    #@78
    .line 538
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7b
    move-result v45

    #@7c
    .line 540
    .local v45, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    #@7f
    .line 541
    const/4 v5, 0x0

    #@80
    .line 540
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@83
    move-result v50

    #@84
    .line 542
    .local v50, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    #@87
    const/4 v5, 0x0

    #@88
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@8b
    move-result v49

    #@8c
    .line 543
    .local v49, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    #@8f
    .line 544
    const/4 v5, 0x0

    #@90
    .line 543
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@93
    move-result v44

    #@94
    .line 545
    .local v44, "disableSamplingProfiler":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    #@97
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    const-string/jumbo v5, "1"

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v59

    #@a2
    .line 548
    .local v59, "isEmulator":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    #@a5
    const-string/jumbo v5, "Reading configuration..."

    #@a8
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    .line 549
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@ae
    .line 551
    const-string/jumbo v4, "StartSchedulingPolicyService"

    #@b1
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@b4
    .line 552
    const-string/jumbo v4, "scheduling_policy"

    #@b7
    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    #@b9
    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    #@bc
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@bf
    .line 553
    const-wide/32 v4, 0x80000

    #@c2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@c5
    .line 555
    move-object/from16 v0, p0

    #@c7
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@c9
    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    #@cb
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@ce
    .line 557
    const-string/jumbo v4, "StartTelephonyRegistry"

    #@d1
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@d4
    .line 558
    new-instance v82, Lcom/android/server/TelephonyRegistry;

    #@d6
    move-object/from16 v0, v82

    #@d8
    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_32

    #@db
    .line 559
    .end local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v82, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    #@de
    move-object/from16 v0, v82

    #@e0
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@e3
    .line 560
    const-wide/32 v4, 0x80000

    #@e6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@e9
    .line 562
    const-string/jumbo v4, "StartEntropyMixer"

    #@ec
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@ef
    .line 563
    new-instance v4, Lcom/android/server/EntropyMixer;

    #@f1
    invoke-direct {v4, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    #@f4
    move-object/from16 v0, p0

    #@f6
    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    #@f8
    .line 564
    const-wide/32 v4, 0x80000

    #@fb
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@fe
    .line 566
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@101
    move-result-object v4

    #@102
    move-object/from16 v0, p0

    #@104
    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    #@106
    .line 568
    const-string/jumbo v4, "SystemServer"

    #@109
    const-string/jumbo v5, "Camera Service"

    #@10c
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10f
    .line 569
    move-object/from16 v0, p0

    #@111
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@113
    const-class v5, Lcom/android/server/camera/CameraService;

    #@115
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@118
    .line 572
    const-string/jumbo v4, "StartAccountManagerService"

    #@11b
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@11e
    .line 573
    move-object/from16 v0, p0

    #@120
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@122
    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    #@125
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@128
    .line 574
    const-wide/32 v4, 0x80000

    #@12b
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@12e
    .line 576
    const-string/jumbo v4, "StartContentService"

    #@131
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@134
    .line 577
    move-object/from16 v0, p0

    #@136
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@138
    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    #@13b
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@13e
    .line 578
    const-wide/32 v4, 0x80000

    #@141
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@144
    .line 580
    const-string/jumbo v4, "InstallSystemProviders"

    #@147
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@14a
    .line 581
    move-object/from16 v0, p0

    #@14c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@14e
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    #@151
    .line 582
    const-wide/32 v4, 0x80000

    #@154
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@157
    .line 584
    const-string/jumbo v4, "StartVibratorService"

    #@15a
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@15d
    .line 585
    new-instance v84, Lcom/android/server/VibratorService;

    #@15f
    move-object/from16 v0, v84

    #@161
    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_33

    #@164
    .line 586
    .local v84, "vibrator":Lcom/android/server/VibratorService;
    :try_start_2
    const-string/jumbo v4, "vibrator"

    #@167
    .end local v83    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v84

    #@169
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@16c
    .line 587
    const-wide/32 v4, 0x80000

    #@16f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@172
    .line 589
    const-string/jumbo v4, "StartConsumerIrService"

    #@175
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@178
    .line 590
    new-instance v34, Lcom/android/server/ConsumerIrService;

    #@17a
    move-object/from16 v0, v34

    #@17c
    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_34

    #@17f
    .line 591
    .local v34, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_3
    const-string/jumbo v4, "consumer_ir"

    #@182
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v34

    #@184
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@187
    .line 592
    const-wide/32 v4, 0x80000

    #@18a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@18d
    .line 594
    const-string/jumbo v4, "StartAlarmManagerService"

    #@190
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@193
    .line 595
    move-object/from16 v0, p0

    #@195
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@197
    const-class v5, Lcom/android/server/AlarmManagerService;

    #@199
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@19c
    .line 596
    const-wide/32 v4, 0x80000

    #@19f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1a2
    .line 598
    const-string/jumbo v4, "InitWatchdog"

    #@1a5
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@1a8
    .line 599
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@1ab
    move-result-object v86

    #@1ac
    .line 600
    .local v86, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    #@1ae
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@1b0
    move-object/from16 v0, v86

    #@1b2
    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    #@1b5
    .line 601
    const-wide/32 v4, 0x80000

    #@1b8
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1bb
    .line 603
    const-string/jumbo v4, "StartInputManagerService"

    #@1be
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@1c1
    .line 604
    new-instance v58, Lcom/android/server/input/InputManagerService;

    #@1c3
    move-object/from16 v0, v58

    #@1c5
    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_35

    #@1c8
    .line 605
    .local v58, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    #@1cb
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@1ce
    .line 607
    .end local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    #@1d1
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@1d4
    .line 609
    move-object/from16 v0, p0

    #@1d6
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@1d8
    const/4 v5, 0x1

    #@1d9
    if-eq v4, v5, :cond_31

    #@1db
    const/4 v4, 0x1

    #@1dc
    move v5, v4

    #@1dd
    .line 610
    :goto_0
    move-object/from16 v0, p0

    #@1df
    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    #@1e1
    if-eqz v4, :cond_32

    #@1e3
    const/4 v4, 0x0

    #@1e4
    :goto_1
    move-object/from16 v0, p0

    #@1e6
    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@1e8
    .line 608
    move-object/from16 v0, v58

    #@1ea
    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    #@1ed
    move-result-object v87

    #@1ee
    .line 611
    .local v87, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    #@1f1
    move-object/from16 v0, v87

    #@1f3
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1f6
    .line 612
    const-string/jumbo v4, "input"

    #@1f9
    move-object/from16 v0, v58

    #@1fb
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1fe
    .line 613
    const-wide/32 v4, 0x80000

    #@201
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@204
    .line 615
    const-string/jumbo v4, "StartVrManagerService"

    #@207
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@20a
    .line 616
    move-object/from16 v0, p0

    #@20c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@20e
    const-class v5, Lcom/android/server/vr/VrManagerService;

    #@210
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@213
    .line 617
    const-wide/32 v4, 0x80000

    #@216
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@219
    .line 619
    move-object/from16 v0, p0

    #@21b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@21d
    move-object/from16 v0, v87

    #@21f
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    #@222
    .line 621
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    #@225
    move-result-object v4

    #@226
    move-object/from16 v0, v58

    #@228
    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    #@22b
    .line 622
    invoke-virtual/range {v58 .. v58}, Lcom/android/server/input/InputManagerService;->start()V

    #@22e
    .line 625
    move-object/from16 v0, p0

    #@230
    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    #@232
    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    #@235
    .line 630
    if-eqz v59, :cond_33

    #@237
    .line 631
    const-string/jumbo v4, "SystemServer"

    #@23a
    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    #@23d
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@240
    .line 643
    :goto_2
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    #@243
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@246
    .line 644
    move-object/from16 v0, p0

    #@248
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@24a
    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    #@24c
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@24f
    .line 645
    const-wide/32 v4, 0x80000

    #@252
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@255
    .line 647
    const-string/jumbo v4, "PinnerService"

    #@258
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@25b
    .line 648
    move-object/from16 v0, p0

    #@25d
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@25f
    const-class v5, Lcom/android/server/PinnerService;

    #@261
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@264
    .line 649
    const-wide/32 v4, 0x80000

    #@267
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    #@26a
    move-object/from16 v33, v34

    #@26c
    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v81, v82

    #@26e
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v81, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v57, v58

    #@270
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v57, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v83, v84

    #@272
    .line 655
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v84    # "vibrator":Lcom/android/server/VibratorService;
    .end local v86    # "watchdog":Lcom/android/server/Watchdog;
    .end local v87    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3
    const/16 v78, 0x0

    #@274
    .line 656
    .local v78, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v73, 0x0

    #@276
    .line 657
    .local v73, "notification":Landroid/app/INotificationManager;
    const/16 v60, 0x0

    #@278
    .line 658
    .local v60, "location":Lcom/android/server/LocationManagerService;
    const/16 v35, 0x0

    #@27a
    .line 659
    .local v35, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v62, 0x0

    #@27c
    .line 660
    .local v62, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v25, 0x0

    #@27e
    .line 661
    .local v25, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v63, 0x0

    #@280
    .line 664
    .local v63, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    #@282
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@284
    const/4 v5, 0x1

    #@285
    if-eq v4, v5, :cond_0

    #@287
    .line 665
    move-object/from16 v0, p0

    #@289
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@28b
    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    #@28d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@290
    .line 667
    const-string/jumbo v4, "StartAccessibilityManagerService"

    #@293
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@296
    .line 669
    :try_start_5
    const-string/jumbo v4, "accessibility"

    #@299
    .line 670
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    #@29b
    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    #@29e
    .line 669
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    #@2a1
    .line 674
    :goto_4
    const-wide/32 v4, 0x80000

    #@2a4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2a7
    .line 678
    :cond_0
    :try_start_6
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    #@2aa
    .line 683
    :goto_5
    move-object/from16 v0, p0

    #@2ac
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@2ae
    const/4 v5, 0x1

    #@2af
    if-eq v4, v5, :cond_1

    #@2b1
    .line 684
    if-nez v47, :cond_1

    #@2b3
    .line 685
    const-string/jumbo v4, "0"

    #@2b6
    const-string/jumbo v5, "system_init.startmountservice"

    #@2b9
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2bc
    move-result-object v5

    #@2bd
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c0
    move-result v4

    #@2c1
    if-eqz v4, :cond_37

    #@2c3
    .line 702
    .end local v67    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    #@2c5
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2c7
    const-class v5, Lcom/android/server/UiModeManagerService;

    #@2c9
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@2cc
    .line 704
    move-object/from16 v0, p0

    #@2ce
    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@2d0
    if-nez v4, :cond_2

    #@2d2
    .line 705
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    #@2d5
    const-wide/32 v8, 0x80000

    #@2d8
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2db
    .line 707
    :try_start_7
    move-object/from16 v0, p0

    #@2dd
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@2df
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    #@2e2
    .line 711
    :goto_7
    const-wide/32 v4, 0x80000

    #@2e5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2e8
    .line 714
    :cond_2
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    #@2eb
    const-wide/32 v8, 0x80000

    #@2ee
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@2f1
    .line 716
    :try_start_8
    move-object/from16 v0, p0

    #@2f3
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@2f5
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    #@2f8
    .line 720
    :goto_8
    const-wide/32 v4, 0x80000

    #@2fb
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@2fe
    .line 723
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@301
    move-result-object v4

    #@302
    .line 724
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@305
    move-result-object v5

    #@306
    .line 725
    const v8, 0x10403ae

    #@309
    .line 724
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@30c
    move-result-object v5

    #@30d
    .line 726
    const/4 v8, 0x0

    #@30e
    .line 723
    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_31

    #@311
    .line 730
    :goto_9
    move-object/from16 v0, p0

    #@313
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@315
    const/4 v5, 0x1

    #@316
    if-eq v4, v5, :cond_40

    #@318
    .line 731
    if-nez v42, :cond_4

    #@31a
    .line 732
    const-string/jumbo v4, "StartLockSettingsService"

    #@31d
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@320
    .line 734
    :try_start_a
    move-object/from16 v0, p0

    #@322
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@324
    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    #@327
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@32a
    .line 736
    const-string/jumbo v4, "lock_settings"

    #@32d
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@330
    move-result-object v4

    #@331
    .line 735
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    #@334
    move-result-object v62

    #@335
    .line 740
    .end local v62    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_a
    const-wide/32 v4, 0x80000

    #@338
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@33b
    .line 742
    const-string/jumbo v4, "ro.frp.pst"

    #@33e
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@341
    move-result-object v4

    #@342
    const-string/jumbo v5, ""

    #@345
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@348
    move-result v4

    #@349
    if-nez v4, :cond_3

    #@34b
    .line 743
    move-object/from16 v0, p0

    #@34d
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@34f
    const-class v5, Lcom/android/server/PersistentDataBlockService;

    #@351
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@354
    .line 746
    :cond_3
    move-object/from16 v0, p0

    #@356
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@358
    const-class v5, Lcom/android/server/DeviceIdleController;

    #@35a
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@35d
    .line 750
    move-object/from16 v0, p0

    #@35f
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@361
    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    #@363
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@366
    .line 753
    :cond_4
    if-nez v48, :cond_5

    #@368
    .line 754
    const-string/jumbo v4, "StartStatusBarManagerService"

    #@36b
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@36e
    .line 756
    :try_start_b
    new-instance v79, Lcom/android/server/statusbar/StatusBarManagerService;

    #@370
    move-object/from16 v0, v79

    #@372
    move-object/from16 v1, v87

    #@374
    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    #@377
    .line 757
    .end local v78    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v79, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_c
    const-string/jumbo v4, "statusbar"

    #@37a
    move-object/from16 v0, v79

    #@37c
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_30

    #@37f
    move-object/from16 v78, v79

    #@381
    .line 761
    .end local v79    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_b
    const-wide/32 v4, 0x80000

    #@384
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@387
    .line 764
    :cond_5
    if-nez v42, :cond_6

    #@389
    .line 765
    const-string/jumbo v4, "StartClipboardService"

    #@38c
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@38f
    .line 767
    :try_start_d
    const-string/jumbo v4, "clipboard"

    #@392
    .line 768
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    #@394
    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    #@397
    .line 767
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8

    #@39a
    .line 772
    :goto_c
    const-wide/32 v4, 0x80000

    #@39d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3a0
    .line 775
    :cond_6
    if-nez v40, :cond_7

    #@3a2
    .line 776
    const-string/jumbo v4, "StartNetworkManagementService"

    #@3a5
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@3a8
    .line 778
    :try_start_e
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    #@3ab
    move-result-object v7

    #@3ac
    .line 779
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    #@3af
    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    #@3b2
    .line 783
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_d
    const-wide/32 v4, 0x80000

    #@3b5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3b8
    .line 786
    :cond_7
    if-nez v42, :cond_8

    #@3ba
    if-eqz v49, :cond_38

    #@3bc
    .line 790
    :cond_8
    :goto_e
    if-nez v40, :cond_3f

    #@3be
    .line 791
    const-string/jumbo v4, "StartNetworkScoreService"

    #@3c1
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@3c4
    .line 793
    :try_start_f
    new-instance v70, Lcom/android/server/NetworkScoreService;

    #@3c6
    move-object/from16 v0, v70

    #@3c8
    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    #@3cb
    .line 794
    .end local v69    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v70, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_10
    const-string/jumbo v4, "network_score"

    #@3ce
    move-object/from16 v0, v70

    #@3d0
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2f

    #@3d3
    move-object/from16 v69, v70

    #@3d5
    .line 798
    .end local v70    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_f
    const-wide/32 v4, 0x80000

    #@3d8
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3db
    .line 800
    const-string/jumbo v4, "StartNetworkStatsService"

    #@3de
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@3e1
    .line 802
    :try_start_11
    invoke-static {v3, v7}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    #@3e4
    move-result-object v6

    #@3e5
    .line 803
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    #@3e8
    invoke-static {v4, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    #@3eb
    .line 807
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_10
    const-wide/32 v4, 0x80000

    #@3ee
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@3f1
    .line 809
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    #@3f4
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@3f7
    .line 811
    :try_start_12
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    #@3f9
    .line 812
    move-object/from16 v0, p0

    #@3fb
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@3fd
    .line 813
    const-string/jumbo v5, "power"

    #@400
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@403
    move-result-object v5

    #@404
    check-cast v5, Landroid/os/IPowerManager;

    #@406
    .line 811
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c

    #@409
    .line 815
    .end local v68    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_13
    const-string/jumbo v4, "netpolicy"

    #@40c
    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2e

    #@40f
    .line 819
    :goto_11
    const-wide/32 v4, 0x80000

    #@412
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@415
    .line 821
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@418
    move-result-object v4

    #@419
    const-string/jumbo v5, "android.hardware.wifi.nan"

    #@41c
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@41f
    move-result v4

    #@420
    if-eqz v4, :cond_39

    #@422
    .line 822
    move-object/from16 v0, p0

    #@424
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@426
    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    #@429
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@42c
    .line 826
    :goto_12
    move-object/from16 v0, p0

    #@42e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@430
    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    #@433
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@436
    .line 827
    move-object/from16 v0, p0

    #@438
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@43a
    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    #@43d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@440
    .line 828
    move-object/from16 v0, p0

    #@442
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@444
    .line 829
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    #@447
    .line 828
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@44a
    .line 831
    if-nez v43, :cond_9

    #@44c
    .line 832
    move-object/from16 v0, p0

    #@44e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@450
    const-string/jumbo v5, "com.android.server.wifi.RttService"

    #@453
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@456
    .line 835
    :cond_9
    move-object/from16 v0, p0

    #@458
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@45a
    const-string/jumbo v5, "android.hardware.ethernet"

    #@45d
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@460
    move-result v4

    #@461
    if-nez v4, :cond_a

    #@463
    .line 836
    move-object/from16 v0, p0

    #@465
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@467
    const-string/jumbo v5, "android.hardware.usb.host"

    #@46a
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@46d
    move-result v4

    #@46e
    .line 835
    if-eqz v4, :cond_b

    #@470
    .line 837
    :cond_a
    move-object/from16 v0, p0

    #@472
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@474
    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    #@477
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@47a
    .line 840
    :cond_b
    const-string/jumbo v4, "StartConnectivityService"

    #@47d
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@480
    .line 842
    :try_start_14
    new-instance v32, Lcom/android/server/ConnectivityService;

    #@482
    move-object/from16 v0, v32

    #@484
    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_d

    #@487
    .line 844
    .end local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v32, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_15
    const-string/jumbo v4, "connectivity"

    #@48a
    move-object/from16 v0, v32

    #@48c
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@48f
    .line 845
    move-object/from16 v0, v32

    #@491
    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    #@494
    .line 846
    move-object/from16 v0, v32

    #@496
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2d

    #@499
    move-object/from16 v31, v32

    #@49b
    .line 850
    .end local v32    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    const-wide/32 v4, 0x80000

    #@49e
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4a1
    .line 852
    const-string/jumbo v4, "StartNsdService"

    #@4a4
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@4a7
    .line 854
    :try_start_16
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    #@4aa
    move-result-object v77

    #@4ab
    .line 856
    .local v77, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    #@4ae
    .line 855
    move-object/from16 v0, v77

    #@4b0
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_e

    #@4b3
    .line 860
    .end local v77    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_14
    const-wide/32 v4, 0x80000

    #@4b6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4b9
    .line 863
    :goto_15
    if-nez v42, :cond_c

    #@4bb
    .line 864
    const-string/jumbo v4, "StartUpdateLockService"

    #@4be
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@4c1
    .line 866
    :try_start_17
    const-string/jumbo v4, "updatelock"

    #@4c4
    .line 867
    new-instance v5, Lcom/android/server/UpdateLockService;

    #@4c6
    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    #@4c9
    .line 866
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_f

    #@4cc
    .line 871
    :goto_16
    const-wide/32 v4, 0x80000

    #@4cf
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@4d2
    .line 874
    :cond_c
    if-nez v42, :cond_d

    #@4d4
    .line 875
    move-object/from16 v0, p0

    #@4d6
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@4d8
    const-class v5, Lcom/android/server/RecoverySystemService;

    #@4da
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@4dd
    .line 883
    :cond_d
    if-eqz v67, :cond_e

    #@4df
    move-object/from16 v0, p0

    #@4e1
    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@4e3
    if-eqz v4, :cond_3a

    #@4e5
    .line 892
    :cond_e
    :goto_17
    move-object/from16 v0, p0

    #@4e7
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@4e9
    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    #@4eb
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@4ee
    .line 894
    const-string/jumbo v4, "notification"

    #@4f1
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4f4
    move-result-object v4

    #@4f5
    .line 893
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@4f8
    move-result-object v73

    #@4f9
    .line 895
    .local v73, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v73

    #@4fb
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    #@4fe
    .line 897
    move-object/from16 v0, p0

    #@500
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@502
    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    #@504
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@507
    .line 899
    if-nez v38, :cond_f

    #@509
    .line 900
    const-string/jumbo v4, "StartLocationManagerService"

    #@50c
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@50f
    .line 902
    :try_start_18
    new-instance v61, Lcom/android/server/LocationManagerService;

    #@511
    move-object/from16 v0, v61

    #@513
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_11

    #@516
    .line 903
    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    .local v61, "location":Lcom/android/server/LocationManagerService;
    :try_start_19
    const-string/jumbo v4, "location"

    #@519
    move-object/from16 v0, v61

    #@51b
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_2c

    #@51e
    move-object/from16 v60, v61

    #@520
    .line 907
    .end local v61    # "location":Lcom/android/server/LocationManagerService;
    :goto_18
    const-wide/32 v4, 0x80000

    #@523
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@526
    .line 909
    const-string/jumbo v4, "StartCountryDetectorService"

    #@529
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@52c
    .line 911
    :try_start_1a
    new-instance v36, Lcom/android/server/CountryDetectorService;

    #@52e
    move-object/from16 v0, v36

    #@530
    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_12

    #@533
    .line 912
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v36, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_1b
    const-string/jumbo v4, "country_detector"

    #@536
    move-object/from16 v0, v36

    #@538
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_2b

    #@53b
    move-object/from16 v35, v36

    #@53d
    .line 916
    .end local v36    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_19
    const-wide/32 v4, 0x80000

    #@540
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@543
    .line 919
    :cond_f
    if-nez v42, :cond_10

    #@545
    if-eqz v45, :cond_3b

    #@547
    .line 929
    :cond_10
    :goto_1a
    move-object/from16 v0, p0

    #@549
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@54b
    const-class v5, Lcom/android/server/DropBoxManagerService;

    #@54d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@550
    .line 931
    if-nez v42, :cond_11

    #@552
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@555
    move-result-object v4

    #@556
    .line 932
    const v5, 0x112004d

    #@559
    .line 931
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@55c
    move-result v4

    #@55d
    if-eqz v4, :cond_11

    #@55f
    .line 933
    const-string/jumbo v4, "StartWallpaperManagerService"

    #@562
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@565
    .line 934
    move-object/from16 v0, p0

    #@567
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@569
    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    #@56c
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@56f
    .line 935
    const-wide/32 v4, 0x80000

    #@572
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@575
    .line 938
    :cond_11
    const-string/jumbo v4, "StartAudioService"

    #@578
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@57b
    .line 939
    move-object/from16 v0, p0

    #@57d
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@57f
    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    #@581
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@584
    .line 940
    const-wide/32 v4, 0x80000

    #@587
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@58a
    .line 942
    if-nez v42, :cond_12

    #@58c
    .line 943
    move-object/from16 v0, p0

    #@58e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@590
    const-class v5, Lcom/android/server/DockObserver;

    #@592
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@595
    .line 945
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@598
    move-result-object v4

    #@599
    const-string/jumbo v5, "android.hardware.type.watch"

    #@59c
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@59f
    move-result v4

    #@5a0
    if-eqz v4, :cond_12

    #@5a2
    .line 946
    move-object/from16 v0, p0

    #@5a4
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5a6
    const-string/jumbo v5, "com.google.android.clockwork.ThermalObserver"

    #@5a9
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@5ac
    .line 950
    :cond_12
    const-string/jumbo v4, "StartWiredAccessoryManager"

    #@5af
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@5b2
    .line 954
    :try_start_1c
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    #@5b4
    move-object/from16 v0, v57

    #@5b6
    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    #@5b9
    .line 953
    move-object/from16 v0, v57

    #@5bb
    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_14

    #@5be
    .line 958
    :goto_1b
    const-wide/32 v4, 0x80000

    #@5c1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@5c4
    .line 960
    if-nez v42, :cond_17

    #@5c6
    .line 961
    move-object/from16 v0, p0

    #@5c8
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@5ca
    const-string/jumbo v5, "android.software.midi"

    #@5cd
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@5d0
    move-result v4

    #@5d1
    if-eqz v4, :cond_13

    #@5d3
    .line 963
    move-object/from16 v0, p0

    #@5d5
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5d7
    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    #@5da
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@5dd
    .line 966
    :cond_13
    move-object/from16 v0, p0

    #@5df
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@5e1
    const-string/jumbo v5, "android.hardware.usb.host"

    #@5e4
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@5e7
    move-result v4

    #@5e8
    if-nez v4, :cond_14

    #@5ea
    .line 967
    move-object/from16 v0, p0

    #@5ec
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@5ee
    .line 968
    const-string/jumbo v5, "android.hardware.usb.accessory"

    #@5f1
    .line 967
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@5f4
    move-result v4

    #@5f5
    .line 966
    if-eqz v4, :cond_15

    #@5f7
    .line 970
    :cond_14
    const-string/jumbo v4, "StartUsbService"

    #@5fa
    const-wide/32 v8, 0x80000

    #@5fd
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@600
    .line 971
    move-object/from16 v0, p0

    #@602
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@604
    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    #@607
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@60a
    .line 972
    const-wide/32 v4, 0x80000

    #@60d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@610
    .line 975
    :cond_15
    if-nez v46, :cond_16

    #@612
    .line 976
    const-string/jumbo v4, "StartSerialService"

    #@615
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@618
    .line 979
    :try_start_1d
    new-instance v76, Lcom/android/server/SerialService;

    #@61a
    move-object/from16 v0, v76

    #@61c
    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_15

    #@61f
    .line 980
    .end local v75    # "serial":Lcom/android/server/SerialService;
    .local v76, "serial":Lcom/android/server/SerialService;
    :try_start_1e
    const-string/jumbo v4, "serial"

    #@622
    move-object/from16 v0, v76

    #@624
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_2a

    #@627
    move-object/from16 v75, v76

    #@629
    .line 984
    .end local v76    # "serial":Lcom/android/server/SerialService;
    :goto_1c
    const-wide/32 v4, 0x80000

    #@62c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@62f
    .line 988
    :cond_16
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    #@632
    .line 987
    const-wide/32 v8, 0x80000

    #@635
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@638
    .line 990
    :try_start_1f
    new-instance v55, Lcom/android/server/HardwarePropertiesManagerService;

    #@63a
    move-object/from16 v0, v55

    #@63c
    invoke-direct {v0, v3}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_16

    #@63f
    .line 991
    .end local v54    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v55, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_20
    const-string/jumbo v4, "hardware_properties"

    #@642
    move-object/from16 v0, v55

    #@644
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_29

    #@647
    move-object/from16 v54, v55

    #@649
    .line 996
    .end local v55    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_1d
    const-wide/32 v4, 0x80000

    #@64c
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@64f
    .line 999
    :cond_17
    move-object/from16 v0, p0

    #@651
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@653
    const-class v5, Lcom/android/server/twilight/TwilightService;

    #@655
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@658
    .line 1001
    move-object/from16 v0, p0

    #@65a
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@65c
    const-class v5, Lcom/android/server/job/JobSchedulerService;

    #@65e
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@661
    .line 1003
    move-object/from16 v0, p0

    #@663
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@665
    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    #@667
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@66a
    .line 1005
    if-nez v42, :cond_1d

    #@66c
    .line 1006
    move-object/from16 v0, p0

    #@66e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@670
    const-string/jumbo v5, "android.software.backup"

    #@673
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@676
    move-result v4

    #@677
    if-eqz v4, :cond_18

    #@679
    .line 1007
    move-object/from16 v0, p0

    #@67b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@67d
    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    #@680
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@683
    .line 1010
    :cond_18
    move-object/from16 v0, p0

    #@685
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@687
    const-string/jumbo v5, "android.software.app_widgets"

    #@68a
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@68d
    move-result v4

    #@68e
    if-nez v4, :cond_19

    #@690
    .line 1011
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@693
    move-result-object v4

    #@694
    const v5, 0x11200ad

    #@697
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@69a
    move-result v4

    #@69b
    .line 1010
    if-eqz v4, :cond_1a

    #@69d
    .line 1012
    :cond_19
    move-object/from16 v0, p0

    #@69f
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6a1
    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    #@6a4
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@6a7
    .line 1015
    :cond_1a
    move-object/from16 v0, p0

    #@6a9
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@6ab
    const-string/jumbo v5, "android.software.voice_recognizers"

    #@6ae
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@6b1
    move-result v4

    #@6b2
    if-eqz v4, :cond_1b

    #@6b4
    .line 1016
    move-object/from16 v0, p0

    #@6b6
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6b8
    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    #@6bb
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@6be
    .line 1019
    :cond_1b
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6c1
    move-result-object v4

    #@6c2
    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    #@6c5
    move-result v4

    #@6c6
    if-eqz v4, :cond_1c

    #@6c8
    .line 1020
    const-string/jumbo v4, "SystemServer"

    #@6cb
    const-string/jumbo v5, "Gesture Launcher Service"

    #@6ce
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6d1
    .line 1021
    move-object/from16 v0, p0

    #@6d3
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6d5
    const-class v5, Lcom/android/server/GestureLauncherService;

    #@6d7
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@6da
    .line 1023
    :cond_1c
    move-object/from16 v0, p0

    #@6dc
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6de
    const-class v5, Lcom/android/server/SensorNotificationService;

    #@6e0
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@6e3
    .line 1024
    move-object/from16 v0, p0

    #@6e5
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6e7
    const-class v5, Lcom/android/server/ContextHubSystemService;

    #@6e9
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@6ec
    .line 1027
    :cond_1d
    const-string/jumbo v4, "StartDiskStatsService"

    #@6ef
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@6f2
    .line 1029
    :try_start_21
    const-string/jumbo v4, "diskstats"

    #@6f5
    new-instance v5, Lcom/android/server/DiskStatsService;

    #@6f7
    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    #@6fa
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_17

    #@6fd
    .line 1033
    :goto_1e
    const-wide/32 v4, 0x80000

    #@700
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@703
    .line 1035
    if-nez v44, :cond_1e

    #@705
    .line 1036
    const-string/jumbo v4, "StartSamplingProfilerService"

    #@708
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@70b
    .line 1042
    :try_start_22
    const-string/jumbo v4, "samplingprofiler"

    #@70e
    .line 1043
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    #@710
    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    #@713
    .line 1042
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_18

    #@716
    .line 1047
    :goto_1f
    const-wide/32 v4, 0x80000

    #@719
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@71c
    .line 1050
    :cond_1e
    if-nez v40, :cond_1f

    #@71e
    if-eqz v41, :cond_3c

    #@720
    .line 1061
    .end local v71    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1f
    :goto_20
    const-string/jumbo v4, "StartCommonTimeManagementService"

    #@723
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@726
    .line 1063
    :try_start_23
    new-instance v29, Lcom/android/server/CommonTimeManagementService;

    #@728
    move-object/from16 v0, v29

    #@72a
    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1a

    #@72d
    .line 1064
    .end local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v29, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_24
    const-string/jumbo v4, "commontime_management"

    #@730
    move-object/from16 v0, v29

    #@732
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_27

    #@735
    move-object/from16 v28, v29

    #@737
    .line 1068
    .end local v29    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_21
    const-wide/32 v4, 0x80000

    #@73a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@73d
    .line 1070
    if-nez v40, :cond_20

    #@73f
    .line 1071
    const-string/jumbo v4, "CertBlacklister"

    #@742
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@745
    .line 1073
    :try_start_25
    new-instance v27, Lcom/android/server/CertBlacklister;

    #@747
    move-object/from16 v0, v27

    #@749
    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_1b

    #@74c
    .line 1077
    :goto_22
    const-wide/32 v4, 0x80000

    #@74f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@752
    .line 1080
    :cond_20
    if-nez v42, :cond_21

    #@754
    .line 1082
    move-object/from16 v0, p0

    #@756
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@758
    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    #@75a
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@75d
    .line 1085
    :cond_21
    if-nez v42, :cond_22

    #@75f
    .line 1086
    const-string/jumbo v4, "StartAssetAtlasService"

    #@762
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@765
    .line 1088
    :try_start_26
    new-instance v26, Lcom/android/server/AssetAtlasService;

    #@767
    move-object/from16 v0, v26

    #@769
    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_1c

    #@76c
    .line 1089
    .end local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v26, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_27
    const-string/jumbo v4, "assetatlas"

    #@76f
    move-object/from16 v0, v26

    #@771
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_26

    #@774
    move-object/from16 v25, v26

    #@776
    .line 1093
    .end local v26    # "atlas":Lcom/android/server/AssetAtlasService;
    :goto_23
    const-wide/32 v4, 0x80000

    #@779
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@77c
    .line 1096
    :cond_22
    if-nez v42, :cond_23

    #@77e
    .line 1097
    const-string/jumbo v4, "graphicsstats"

    #@781
    .line 1098
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    #@783
    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    #@786
    .line 1097
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@789
    .line 1101
    :cond_23
    move-object/from16 v0, p0

    #@78b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@78d
    const-string/jumbo v5, "android.software.print"

    #@790
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@793
    move-result v4

    #@794
    if-eqz v4, :cond_24

    #@796
    .line 1102
    move-object/from16 v0, p0

    #@798
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@79a
    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    #@79d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@7a0
    .line 1105
    :cond_24
    move-object/from16 v0, p0

    #@7a2
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7a4
    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    #@7a6
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7a9
    .line 1107
    move-object/from16 v0, p0

    #@7ab
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7ad
    const-class v5, Lcom/android/server/media/MediaSessionService;

    #@7af
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7b2
    .line 1109
    move-object/from16 v0, p0

    #@7b4
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7b6
    const-string/jumbo v5, "android.hardware.hdmi.cec"

    #@7b9
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@7bc
    move-result v4

    #@7bd
    if-eqz v4, :cond_25

    #@7bf
    .line 1110
    move-object/from16 v0, p0

    #@7c1
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7c3
    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    #@7c5
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7c8
    .line 1113
    :cond_25
    move-object/from16 v0, p0

    #@7ca
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7cc
    const-string/jumbo v5, "android.software.live_tv"

    #@7cf
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@7d2
    move-result v4

    #@7d3
    if-eqz v4, :cond_26

    #@7d5
    .line 1114
    move-object/from16 v0, p0

    #@7d7
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7d9
    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    #@7db
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7de
    .line 1117
    :cond_26
    move-object/from16 v0, p0

    #@7e0
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7e2
    const-string/jumbo v5, "android.software.picture_in_picture"

    #@7e5
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@7e8
    move-result v4

    #@7e9
    if-eqz v4, :cond_27

    #@7eb
    .line 1118
    move-object/from16 v0, p0

    #@7ed
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@7ef
    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    #@7f1
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7f4
    .line 1121
    :cond_27
    move-object/from16 v0, p0

    #@7f6
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@7f8
    const-string/jumbo v5, "android.software.leanback"

    #@7fb
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@7fe
    move-result v4

    #@7ff
    if-eqz v4, :cond_28

    #@801
    .line 1122
    move-object/from16 v0, p0

    #@803
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@805
    const-class v5, Lcom/android/server/tv/TvRemoteService;

    #@807
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@80a
    .line 1125
    :cond_28
    if-nez v42, :cond_2b

    #@80c
    .line 1126
    const-string/jumbo v4, "StartMediaRouterService"

    #@80f
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@812
    .line 1128
    :try_start_28
    new-instance v64, Lcom/android/server/media/MediaRouterService;

    #@814
    move-object/from16 v0, v64

    #@816
    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1d

    #@819
    .line 1129
    .end local v63    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v64, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_29
    const-string/jumbo v4, "media_router"

    #@81c
    move-object/from16 v0, v64

    #@81e
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_25

    #@821
    move-object/from16 v63, v64

    #@823
    .line 1133
    .end local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_24
    const-wide/32 v4, 0x80000

    #@826
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@829
    .line 1135
    if-nez v50, :cond_29

    #@82b
    .line 1136
    move-object/from16 v0, p0

    #@82d
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@82f
    const-class v5, Lcom/android/server/trust/TrustManagerService;

    #@831
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@834
    .line 1139
    :cond_29
    move-object/from16 v0, p0

    #@836
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@838
    const-string/jumbo v5, "android.hardware.fingerprint"

    #@83b
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@83e
    move-result v4

    #@83f
    if-eqz v4, :cond_2a

    #@841
    .line 1140
    move-object/from16 v0, p0

    #@843
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@845
    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    #@847
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@84a
    .line 1143
    :cond_2a
    const-string/jumbo v4, "StartBackgroundDexOptService"

    #@84d
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@850
    .line 1145
    :try_start_2a
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1e

    #@853
    .line 1149
    :goto_25
    const-wide/32 v4, 0x80000

    #@856
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@859
    .line 1152
    :cond_2b
    move-object/from16 v0, p0

    #@85b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@85d
    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    #@85f
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@862
    .line 1154
    move-object/from16 v0, p0

    #@864
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@866
    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    #@868
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@86b
    .line 1157
    .end local v73    # "notification":Landroid/app/INotificationManager;
    :goto_26
    if-nez v42, :cond_2c

    #@86d
    if-eqz v39, :cond_3d

    #@86f
    .line 1161
    :cond_2c
    :goto_27
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@872
    move-result-object v4

    #@873
    const-string/jumbo v5, "android.hardware.type.watch"

    #@876
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@879
    move-result v4

    #@87a
    if-eqz v4, :cond_2d

    #@87c
    .line 1162
    move-object/from16 v0, p0

    #@87e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@880
    const-string/jumbo v5, "com.google.android.clockwork.bluetooth.WearBluetoothService"

    #@883
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@886
    .line 1167
    :cond_2d
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    #@889
    move-result v74

    #@88a
    .line 1168
    .local v74, "safeMode":Z
    if-eqz v74, :cond_3e

    #@88c
    .line 1169
    move-object/from16 v0, p0

    #@88e
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@890
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    #@893
    .line 1171
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@896
    move-result-object v4

    #@897
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    #@89a
    .line 1178
    :goto_28
    move-object/from16 v0, p0

    #@89c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@89e
    const-class v5, Lcom/android/server/MmsServiceBroker;

    #@8a0
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@8a3
    move-result-object v24

    #@8a4
    .end local v24    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v24, Lcom/android/server/MmsServiceBroker;

    #@8a6
    .line 1182
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    const-string/jumbo v4, "MakeVibratorServiceReady"

    #@8a9
    const-wide/32 v8, 0x80000

    #@8ac
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8af
    .line 1184
    :try_start_2b
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1f

    #@8b2
    .line 1188
    :goto_29
    const-wide/32 v4, 0x80000

    #@8b5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@8b8
    .line 1190
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    #@8bb
    const-wide/32 v8, 0x80000

    #@8be
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8c1
    .line 1191
    if-eqz v62, :cond_2e

    #@8c3
    .line 1193
    :try_start_2c
    invoke-interface/range {v62 .. v62}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_20

    #@8c6
    .line 1198
    :cond_2e
    :goto_2a
    const-wide/32 v4, 0x80000

    #@8c9
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@8cc
    .line 1201
    move-object/from16 v0, p0

    #@8ce
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@8d0
    const/16 v5, 0x1e0

    #@8d2
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@8d5
    .line 1203
    move-object/from16 v0, p0

    #@8d7
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@8d9
    const/16 v5, 0x1f4

    #@8db
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@8de
    .line 1205
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    #@8e1
    const-wide/32 v8, 0x80000

    #@8e4
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8e7
    .line 1207
    :try_start_2d
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_21

    #@8ea
    .line 1211
    :goto_2b
    const-wide/32 v4, 0x80000

    #@8ed
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@8f0
    .line 1213
    if-eqz v74, :cond_2f

    #@8f2
    .line 1214
    move-object/from16 v0, p0

    #@8f4
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@8f6
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    #@8f9
    .line 1220
    :cond_2f
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    #@8fc
    move-result-object v30

    #@8fd
    .line 1221
    .local v30, "config":Landroid/content/res/Configuration;
    new-instance v65, Landroid/util/DisplayMetrics;

    #@8ff
    invoke-direct/range {v65 .. v65}, Landroid/util/DisplayMetrics;-><init>()V

    #@902
    .line 1222
    .local v65, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    #@905
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@908
    move-result-object v85

    #@909
    check-cast v85, Landroid/view/WindowManager;

    #@90b
    .line 1223
    .local v85, "w":Landroid/view/WindowManager;
    invoke-interface/range {v85 .. v85}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@90e
    move-result-object v4

    #@90f
    move-object/from16 v0, v65

    #@911
    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@914
    .line 1224
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@917
    move-result-object v4

    #@918
    move-object/from16 v0, v30

    #@91a
    move-object/from16 v1, v65

    #@91c
    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@91f
    .line 1227
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@922
    move-result-object v80

    #@923
    .line 1228
    .local v80, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v80 .. v80}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    #@926
    move-result v4

    #@927
    if-eqz v4, :cond_30

    #@929
    .line 1229
    invoke-virtual/range {v80 .. v80}, Landroid/content/res/Resources$Theme;->rebase()V

    #@92c
    .line 1232
    :cond_30
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    #@92f
    const-wide/32 v8, 0x80000

    #@932
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@935
    .line 1235
    :try_start_2e
    move-object/from16 v0, p0

    #@937
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    #@939
    move-object/from16 v0, p0

    #@93b
    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@93d
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    #@940
    move-result-object v5

    #@941
    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    #@944
    .line 1236
    const-wide/32 v4, 0x80000

    #@947
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_22

    #@94a
    .line 1240
    :goto_2c
    const-wide/32 v4, 0x80000

    #@94d
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@950
    .line 1242
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    #@953
    const-wide/32 v8, 0x80000

    #@956
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@959
    .line 1244
    :try_start_2f
    move-object/from16 v0, p0

    #@95b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@95d
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_23

    #@960
    .line 1248
    :goto_2d
    const-wide/32 v4, 0x80000

    #@963
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@966
    .line 1250
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    #@969
    const-wide/32 v8, 0x80000

    #@96c
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@96f
    .line 1253
    :try_start_30
    move-object/from16 v0, p0

    #@971
    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    #@973
    move-object/from16 v0, p0

    #@975
    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@977
    move/from16 v0, v74

    #@979
    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_24

    #@97c
    .line 1257
    :goto_2e
    const-wide/32 v4, 0x80000

    #@97f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@982
    .line 1260
    move-object v12, v7

    #@983
    .line 1261
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    #@984
    .line 1262
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    #@985
    .line 1263
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v31

    #@987
    .line 1264
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v69

    #@989
    .line 1265
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v16, v60

    #@98b
    .line 1266
    .local v16, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v17, v35

    #@98d
    .line 1267
    .local v17, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v18, v71

    #@98f
    .line 1268
    .local v18, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v19, v28

    #@991
    .line 1269
    .local v19, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v20, v25

    #@993
    .line 1270
    .local v20, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v21, v57

    #@995
    .line 1271
    .local v21, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v22, v81

    #@997
    .line 1272
    .local v22, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v23, v63

    #@999
    .line 1273
    .local v23, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v66, v24

    #@99b
    .line 1280
    .local v66, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    #@99d
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@99f
    new-instance v8, Lcom/android/server/SystemServer$2;

    #@9a1
    move-object/from16 v9, p0

    #@9a3
    move-object v10, v3

    #@9a4
    invoke-direct/range {v8 .. v24}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    #@9a7
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    #@9aa
    .line 507
    return-void

    #@9ab
    .line 609
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v17    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v18    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v19    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v20    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v21    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v22    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v23    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v65    # "metrics":Landroid/util/DisplayMetrics;
    .end local v66    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v74    # "safeMode":Z
    .end local v80    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v85    # "w":Landroid/view/WindowManager;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v54    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v67    # "mountService":Landroid/os/storage/IMountService;
    .restart local v68    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v71    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v75    # "serial":Lcom/android/server/SerialService;
    .local v77, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v86    # "watchdog":Lcom/android/server/Watchdog;
    .local v87, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_31
    const/4 v4, 0x0

    #@9ac
    move v5, v4

    #@9ad
    goto/16 :goto_0

    #@9af
    .line 610
    :cond_32
    const/4 v4, 0x1

    #@9b0
    goto/16 :goto_1

    #@9b2
    .line 632
    .local v87, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_33
    :try_start_31
    move-object/from16 v0, p0

    #@9b4
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@9b6
    const/4 v5, 0x1

    #@9b7
    if-ne v4, v5, :cond_34

    #@9b9
    .line 633
    const-string/jumbo v4, "SystemServer"

    #@9bc
    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    #@9bf
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_0

    #@9c2
    goto/16 :goto_2

    #@9c4
    .line 650
    .end local v87    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v52

    #@9c5
    .local v52, "e":Ljava/lang/RuntimeException;
    move-object/from16 v33, v34

    #@9c7
    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v81, v82

    #@9c9
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v57, v58

    #@9cb
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v83, v84

    #@9cd
    .line 651
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v84    # "vibrator":Lcom/android/server/VibratorService;
    .end local v86    # "watchdog":Lcom/android/server/Watchdog;
    :goto_2f
    const-string/jumbo v4, "System"

    #@9d0
    const-string/jumbo v5, "******************************************"

    #@9d3
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9d6
    .line 652
    const-string/jumbo v4, "System"

    #@9d9
    const-string/jumbo v5, "************ Failure starting core service"

    #@9dc
    move-object/from16 v0, v52

    #@9de
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9e1
    goto/16 :goto_3

    #@9e3
    .line 634
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .restart local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v86    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v87    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_34
    :try_start_32
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9e6
    move-result-object v4

    #@9e7
    .line 635
    const-string/jumbo v5, "android.hardware.bluetooth"

    #@9ea
    .line 634
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@9ed
    move-result v4

    #@9ee
    if-nez v4, :cond_35

    #@9f0
    .line 636
    const-string/jumbo v4, "SystemServer"

    #@9f3
    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    #@9f6
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9f9
    goto/16 :goto_2

    #@9fb
    .line 637
    :cond_35
    if-eqz v37, :cond_36

    #@9fd
    .line 638
    const-string/jumbo v4, "SystemServer"

    #@a00
    const-string/jumbo v5, "Bluetooth Service disabled by config"

    #@a03
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a06
    goto/16 :goto_2

    #@a08
    .line 640
    :cond_36
    move-object/from16 v0, p0

    #@a0a
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@a0c
    const-class v5, Lcom/android/server/BluetoothService;

    #@a0e
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_0

    #@a11
    goto/16 :goto_2

    #@a13
    .line 671
    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v58    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v84    # "vibrator":Lcom/android/server/VibratorService;
    .end local v86    # "watchdog":Lcom/android/server/Watchdog;
    .end local v87    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "location":Lcom/android/server/LocationManagerService;
    .restart local v62    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v63    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v73, "notification":Landroid/app/INotificationManager;
    .restart local v78    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1
    move-exception v53

    #@a14
    .line 672
    .local v53, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    #@a17
    move-object/from16 v0, p0

    #@a19
    move-object/from16 v1, v53

    #@a1b
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a1e
    goto/16 :goto_4

    #@a20
    .line 679
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v53

    #@a21
    .line 680
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    #@a24
    move-object/from16 v0, p0

    #@a26
    move-object/from16 v1, v53

    #@a28
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a2b
    goto/16 :goto_5

    #@a2d
    .line 691
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_37
    :try_start_33
    move-object/from16 v0, p0

    #@a2f
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@a31
    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    #@a34
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@a37
    .line 693
    const-string/jumbo v4, "mount"

    #@a3a
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a3d
    move-result-object v4

    #@a3e
    .line 692
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_3

    #@a41
    move-result-object v67

    #@a42
    .local v67, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_6

    #@a44
    .line 694
    .local v67, "mountService":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v53

    #@a45
    .line 695
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    #@a48
    move-object/from16 v0, p0

    #@a4a
    move-object/from16 v1, v53

    #@a4c
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a4f
    goto/16 :goto_6

    #@a51
    .line 708
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v67    # "mountService":Landroid/os/storage/IMountService;
    :catch_4
    move-exception v53

    #@a52
    .line 709
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    #@a55
    move-object/from16 v0, p0

    #@a57
    move-object/from16 v1, v53

    #@a59
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a5c
    goto/16 :goto_7

    #@a5e
    .line 717
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v53

    #@a5f
    .line 718
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    #@a62
    move-object/from16 v0, p0

    #@a64
    move-object/from16 v1, v53

    #@a66
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a69
    goto/16 :goto_8

    #@a6b
    .line 737
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v53

    #@a6c
    .line 738
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    #@a6f
    move-object/from16 v0, p0

    #@a71
    move-object/from16 v1, v53

    #@a73
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a76
    goto/16 :goto_a

    #@a78
    .line 758
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v62    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_7
    move-exception v53

    #@a79
    .line 759
    .end local v78    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_30
    const-string/jumbo v4, "starting StatusBarManagerService"

    #@a7c
    move-object/from16 v0, p0

    #@a7e
    move-object/from16 v1, v53

    #@a80
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a83
    goto/16 :goto_b

    #@a85
    .line 769
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v53

    #@a86
    .line 770
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    #@a89
    move-object/from16 v0, p0

    #@a8b
    move-object/from16 v1, v53

    #@a8d
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a90
    goto/16 :goto_c

    #@a92
    .line 780
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v53

    #@a93
    .line 781
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    #@a96
    move-object/from16 v0, p0

    #@a98
    move-object/from16 v1, v53

    #@a9a
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a9d
    goto/16 :goto_d

    #@a9f
    .line 787
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_38
    move-object/from16 v0, p0

    #@aa1
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@aa3
    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    #@aa5
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@aa8
    goto/16 :goto_e

    #@aaa
    .line 795
    :catch_a
    move-exception v53

    #@aab
    .line 796
    .end local v69    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_31
    const-string/jumbo v4, "starting Network Score Service"

    #@aae
    move-object/from16 v0, p0

    #@ab0
    move-object/from16 v1, v53

    #@ab2
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ab5
    goto/16 :goto_f

    #@ab7
    .line 804
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v53

    #@ab8
    .line 805
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    #@abb
    move-object/from16 v0, p0

    #@abd
    move-object/from16 v1, v53

    #@abf
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ac2
    goto/16 :goto_10

    #@ac4
    .line 816
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v53

    #@ac5
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v68

    #@ac7
    .line 817
    .end local v68    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_32
    const-string/jumbo v4, "starting NetworkPolicy Service"

    #@aca
    move-object/from16 v0, p0

    #@acc
    move-object/from16 v1, v53

    #@ace
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ad1
    goto/16 :goto_11

    #@ad3
    .line 824
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_39
    const-string/jumbo v4, "SystemServer"

    #@ad6
    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    #@ad9
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@adc
    goto/16 :goto_12

    #@ade
    .line 847
    :catch_d
    move-exception v53

    #@adf
    .line 848
    .end local v31    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_33
    const-string/jumbo v4, "starting Connectivity Service"

    #@ae2
    move-object/from16 v0, p0

    #@ae4
    move-object/from16 v1, v53

    #@ae6
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ae9
    goto/16 :goto_13

    #@aeb
    .line 857
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v77    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_e
    move-exception v53

    #@aec
    .line 858
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    #@aef
    move-object/from16 v0, p0

    #@af1
    move-object/from16 v1, v53

    #@af3
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@af6
    goto/16 :goto_14

    #@af8
    .line 868
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v53

    #@af9
    .line 869
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    #@afc
    move-object/from16 v0, p0

    #@afe
    move-object/from16 v1, v53

    #@b00
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b03
    goto/16 :goto_16

    #@b05
    .line 884
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_3a
    const-string/jumbo v4, "WaitForAsecScan"

    #@b08
    const-wide/32 v8, 0x80000

    #@b0b
    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@b0e
    .line 886
    :try_start_34
    invoke-interface/range {v67 .. v67}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_34} :catch_10

    #@b11
    .line 889
    :goto_34
    const-wide/32 v4, 0x80000

    #@b14
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@b17
    goto/16 :goto_17

    #@b19
    .line 887
    :catch_10
    move-exception v56

    #@b1a
    .local v56, "ignored":Landroid/os/RemoteException;
    goto :goto_34

    #@b1b
    .line 904
    .end local v56    # "ignored":Landroid/os/RemoteException;
    .local v73, "notification":Landroid/app/INotificationManager;
    :catch_11
    move-exception v53

    #@b1c
    .line 905
    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_35
    const-string/jumbo v4, "starting Location Manager"

    #@b1f
    move-object/from16 v0, p0

    #@b21
    move-object/from16 v1, v53

    #@b23
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b26
    goto/16 :goto_18

    #@b28
    .line 913
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v53

    #@b29
    .line 914
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v4, "starting Country Detector"

    #@b2c
    move-object/from16 v0, p0

    #@b2e
    move-object/from16 v1, v53

    #@b30
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b33
    goto/16 :goto_19

    #@b35
    .line 920
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_3b
    const-string/jumbo v4, "StartSearchManagerService"

    #@b38
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@b3b
    .line 922
    :try_start_35
    move-object/from16 v0, p0

    #@b3d
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@b3f
    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    #@b42
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_13

    #@b45
    .line 926
    :goto_37
    const-wide/32 v4, 0x80000

    #@b48
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@b4b
    goto/16 :goto_1a

    #@b4d
    .line 923
    :catch_13
    move-exception v53

    #@b4e
    .line 924
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    #@b51
    move-object/from16 v0, p0

    #@b53
    move-object/from16 v1, v53

    #@b55
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b58
    goto :goto_37

    #@b59
    .line 955
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v53

    #@b5a
    .line 956
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    #@b5d
    move-object/from16 v0, p0

    #@b5f
    move-object/from16 v1, v53

    #@b61
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b64
    goto/16 :goto_1b

    #@b66
    .line 981
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v53

    #@b67
    .line 982
    .end local v75    # "serial":Lcom/android/server/SerialService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string/jumbo v4, "SystemServer"

    #@b6a
    const-string/jumbo v5, "Failure starting SerialService"

    #@b6d
    move-object/from16 v0, v53

    #@b6f
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b72
    goto/16 :goto_1c

    #@b74
    .line 993
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v53

    #@b75
    .line 994
    .end local v54    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "SystemServer"

    #@b78
    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    #@b7b
    move-object/from16 v0, v53

    #@b7d
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b80
    goto/16 :goto_1d

    #@b82
    .line 1030
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v53

    #@b83
    .line 1031
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    #@b86
    move-object/from16 v0, p0

    #@b88
    move-object/from16 v1, v53

    #@b8a
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b8d
    goto/16 :goto_1e

    #@b8f
    .line 1044
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v53

    #@b90
    .line 1045
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    #@b93
    move-object/from16 v0, p0

    #@b95
    move-object/from16 v1, v53

    #@b97
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b9a
    goto/16 :goto_1f

    #@b9c
    .line 1051
    .end local v53    # "e":Ljava/lang/Throwable;
    :cond_3c
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    #@b9f
    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    #@ba2
    .line 1053
    :try_start_36
    new-instance v72, Lcom/android/server/NetworkTimeUpdateService;

    #@ba4
    move-object/from16 v0, v72

    #@ba6
    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_19

    #@ba9
    .line 1054
    .end local v71    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v72, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_37
    const-string/jumbo v4, "network_time_update_service"

    #@bac
    move-object/from16 v0, v72

    #@bae
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_28

    #@bb1
    move-object/from16 v71, v72

    #@bb3
    .line 1058
    .end local v72    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_3a
    const-wide/32 v4, 0x80000

    #@bb6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    #@bb9
    goto/16 :goto_20

    #@bbb
    .line 1055
    .restart local v71    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_19
    move-exception v53

    #@bbc
    .line 1056
    .end local v71    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    #@bbf
    move-object/from16 v0, p0

    #@bc1
    move-object/from16 v1, v53

    #@bc3
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bc6
    goto :goto_3a

    #@bc7
    .line 1065
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v53

    #@bc8
    .line 1066
    .end local v28    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    #@bcb
    move-object/from16 v0, p0

    #@bcd
    move-object/from16 v1, v53

    #@bcf
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bd2
    goto/16 :goto_21

    #@bd4
    .line 1074
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v53

    #@bd5
    .line 1075
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    #@bd8
    move-object/from16 v0, p0

    #@bda
    move-object/from16 v1, v53

    #@bdc
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bdf
    goto/16 :goto_22

    #@be1
    .line 1090
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v53

    #@be2
    .line 1091
    .end local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "starting AssetAtlasService"

    #@be5
    move-object/from16 v0, p0

    #@be7
    move-object/from16 v1, v53

    #@be9
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bec
    goto/16 :goto_23

    #@bee
    .line 1130
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v53

    #@bef
    .line 1131
    .end local v63    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v53    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting MediaRouterService"

    #@bf2
    move-object/from16 v0, p0

    #@bf4
    move-object/from16 v1, v53

    #@bf6
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@bf9
    goto/16 :goto_24

    #@bfb
    .line 1146
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v53

    #@bfc
    .line 1147
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    #@bff
    move-object/from16 v0, p0

    #@c01
    move-object/from16 v1, v53

    #@c03
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c06
    goto/16 :goto_25

    #@c08
    .line 1158
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v73    # "notification":Landroid/app/INotificationManager;
    :cond_3d
    move-object/from16 v0, p0

    #@c0a
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@c0c
    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@c0e
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@c11
    goto/16 :goto_27

    #@c13
    .line 1174
    .restart local v74    # "safeMode":Z
    :cond_3e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@c16
    move-result-object v4

    #@c17
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    #@c1a
    goto/16 :goto_28

    #@c1c
    .line 1185
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_1f
    move-exception v53

    #@c1d
    .line 1186
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    #@c20
    move-object/from16 v0, p0

    #@c22
    move-object/from16 v1, v53

    #@c24
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c27
    goto/16 :goto_29

    #@c29
    .line 1194
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v53

    #@c2a
    .line 1195
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    #@c2d
    move-object/from16 v0, p0

    #@c2f
    move-object/from16 v1, v53

    #@c31
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c34
    goto/16 :goto_2a

    #@c36
    .line 1208
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v53

    #@c37
    .line 1209
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    #@c3a
    move-object/from16 v0, p0

    #@c3c
    move-object/from16 v1, v53

    #@c3e
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c41
    goto/16 :goto_2b

    #@c43
    .line 1237
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v65    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v80    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v85    # "w":Landroid/view/WindowManager;
    :catch_22
    move-exception v53

    #@c44
    .line 1238
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    #@c47
    move-object/from16 v0, p0

    #@c49
    move-object/from16 v1, v53

    #@c4b
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c4e
    goto/16 :goto_2c

    #@c50
    .line 1245
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v53

    #@c51
    .line 1246
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    #@c54
    move-object/from16 v0, p0

    #@c56
    move-object/from16 v1, v53

    #@c58
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c5b
    goto/16 :goto_2d

    #@c5d
    .line 1254
    .end local v53    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v53

    #@c5e
    .line 1255
    .restart local v53    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    #@c61
    move-object/from16 v0, p0

    #@c63
    move-object/from16 v1, v53

    #@c65
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c68
    goto/16 :goto_2e

    #@c6a
    .line 1130
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v53    # "e":Ljava/lang/Throwable;
    .end local v65    # "metrics":Landroid/util/DisplayMetrics;
    .end local v74    # "safeMode":Z
    .end local v80    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v85    # "w":Landroid/view/WindowManager;
    .local v24, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v73    # "notification":Landroid/app/INotificationManager;
    :catch_25
    move-exception v53

    #@c6b
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v63, v64

    #@c6d
    .end local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v63, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto :goto_3e

    #@c6e
    .line 1090
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v26    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v63, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_26
    move-exception v53

    #@c6f
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v25, v26

    #@c71
    .end local v26    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v25, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_3d

    #@c73
    .line 1065
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v25, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v29    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_27
    move-exception v53

    #@c74
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v28, v29

    #@c76
    .end local v29    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v28, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_3c

    #@c78
    .line 1055
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v28, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v72    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_28
    move-exception v53

    #@c79
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v71, v72

    #@c7b
    .end local v72    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v71, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_3b

    #@c7d
    .line 993
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v55    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v71, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_29
    move-exception v53

    #@c7e
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v54, v55

    #@c80
    .end local v55    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v54, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_39

    #@c82
    .line 981
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v54, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v76    # "serial":Lcom/android/server/SerialService;
    :catch_2a
    move-exception v53

    #@c83
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v75, v76

    #@c85
    .end local v76    # "serial":Lcom/android/server/SerialService;
    .local v75, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_38

    #@c87
    .line 913
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v36    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v75, "serial":Lcom/android/server/SerialService;
    :catch_2b
    move-exception v53

    #@c88
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v35, v36

    #@c8a
    .end local v36    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v35, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_36

    #@c8c
    .line 904
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v35, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v61    # "location":Lcom/android/server/LocationManagerService;
    :catch_2c
    move-exception v53

    #@c8d
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v60, v61

    #@c8f
    .end local v61    # "location":Lcom/android/server/LocationManagerService;
    .local v60, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_35

    #@c91
    .line 847
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v32    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v60, "location":Lcom/android/server/LocationManagerService;
    .local v73, "notification":Landroid/app/INotificationManager;
    .restart local v77    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_2d
    move-exception v53

    #@c92
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v31, v32

    #@c94
    .end local v32    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v31, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_33

    #@c96
    .line 816
    .end local v53    # "e":Ljava/lang/Throwable;
    .local v31, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_2e
    move-exception v53

    #@c97
    .restart local v53    # "e":Ljava/lang/Throwable;
    goto/16 :goto_32

    #@c99
    .line 795
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v68    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v70    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_2f
    move-exception v53

    #@c9a
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v69, v70

    #@c9c
    .end local v70    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v69, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_31

    #@c9e
    .line 758
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v69, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v79    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_30
    move-exception v53

    #@c9f
    .restart local v53    # "e":Ljava/lang/Throwable;
    move-object/from16 v78, v79

    #@ca1
    .end local v79    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v78, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_30

    #@ca3
    .line 727
    .end local v53    # "e":Ljava/lang/Throwable;
    .restart local v62    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v78, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_31
    move-exception v51

    #@ca4
    .local v51, "e":Landroid/os/RemoteException;
    goto/16 :goto_9

    #@ca6
    .line 650
    .end local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v51    # "e":Landroid/os/RemoteException;
    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    .end local v62    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v63    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v73    # "notification":Landroid/app/INotificationManager;
    .end local v78    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v57, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v67    # "mountService":Landroid/os/storage/IMountService;
    .local v81, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v83    # "vibrator":Lcom/android/server/VibratorService;
    .local v87, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_32
    move-exception v52

    #@ca7
    .restart local v52    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_2f

    #@ca9
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_33
    move-exception v52

    #@caa
    .restart local v52    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v81, v82

    #@cac
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v81, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_2f

    #@cae
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v83    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "vibrator":Lcom/android/server/VibratorService;
    :catch_34
    move-exception v52

    #@caf
    .restart local v52    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v81, v82

    #@cb1
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v83, v84

    #@cb3
    .end local v84    # "vibrator":Lcom/android/server/VibratorService;
    .local v83, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_2f

    #@cb5
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v83    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "vibrator":Lcom/android/server/VibratorService;
    :catch_35
    move-exception v52

    #@cb6
    .restart local v52    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v33, v34

    #@cb8
    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v81, v82

    #@cba
    .end local v82    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v83, v84

    #@cbc
    .end local v84    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_2f

    #@cbe
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v67    # "mountService":Landroid/os/storage/IMountService;
    .end local v81    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v83    # "vibrator":Lcom/android/server/VibratorService;
    .end local v87    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v25    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "location":Lcom/android/server/LocationManagerService;
    .restart local v63    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v73    # "notification":Landroid/app/INotificationManager;
    :cond_3f
    move-object/from16 v2, v68

    #@cc0
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_15

    #@cc2
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v62    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v78    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_40
    move-object/from16 v2, v68

    #@cc4
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_26
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1416
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 1417
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    const-string/jumbo v2, "com.android.systemui"

    #@a
    .line 1418
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    #@d
    .line 1417
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 1419
    const/16 v1, 0x100

    #@15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@18
    .line 1421
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@1a
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    #@1d
    .line 1415
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1425
    const-wide/32 v0, 0x80000

    #@3
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@6
    .line 1426
    const-string/jumbo v0, "SystemServer"

    #@9
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 1424
    return-void
.end method
