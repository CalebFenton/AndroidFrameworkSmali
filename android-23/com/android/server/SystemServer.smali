.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

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
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 173
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@9
    .line 171
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    #@0
    .prologue
    .line 310
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    #@3
    move-result-object v0

    #@4
    .line 311
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@a
    .line 312
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@c
    const v2, 0x103013f

    #@f
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    #@12
    .line 309
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 168
    new-instance v0, Lcom/android/server/SystemServer;

    #@2
    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    #@5
    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    #@8
    .line 167
    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 294
    const-string/jumbo v3, "sys.shutdown.requested"

    #@6
    const-string/jumbo v4, ""

    #@9
    .line 293
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 295
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@12
    move-result v3

    #@13
    if-lez v3, :cond_0

    #@15
    .line 296
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v3

    #@19
    const/16 v4, 0x31

    #@1b
    if-ne v3, v4, :cond_1

    #@1d
    const/4 v1, 0x1

    #@1e
    .line 299
    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@21
    move-result v3

    #@22
    if-le v3, v6, :cond_2

    #@24
    .line 300
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@27
    move-result v3

    #@28
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 305
    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    #@2f
    .line 292
    .end local v1    # "reboot":Z
    :cond_0
    return-void

    #@30
    .line 296
    :cond_1
    const/4 v1, 0x0

    #@31
    .restart local v1    # "reboot":Z
    goto :goto_0

    #@32
    .line 302
    :cond_2
    const/4 v0, 0x0

    #@33
    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 288
    const-string/jumbo v0, "SystemServer"

    #@3
    const-string/jumbo v1, "***********************************************"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 289
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
    .line 287
    return-void
.end method

.method private run()V
    .locals 9

    #@0
    .prologue
    const-wide/32 v4, 0x5265c00

    #@3
    const-wide/32 v2, 0x36ee80

    #@6
    const/4 v8, 0x1

    #@7
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@a
    move-result-wide v0

    #@b
    cmp-long v0, v0, v4

    #@d
    if-gez v0, :cond_0

    #@f
    .line 182
    const-string/jumbo v0, "SystemServer"

    #@12
    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    #@15
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 183
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    #@1b
    .line 194
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    #@1e
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_1

    #@28
    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    .line 197
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    #@33
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 198
    const-string/jumbo v0, "persist.sys.language"

    #@39
    const-string/jumbo v1, ""

    #@3c
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    .line 199
    const-string/jumbo v0, "persist.sys.country"

    #@42
    const-string/jumbo v1, ""

    #@45
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 200
    const-string/jumbo v0, "persist.sys.localevar"

    #@4b
    const-string/jumbo v1, ""

    #@4e
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    .line 204
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    #@54
    const-string/jumbo v1, "Entered the Android system server!"

    #@57
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5d
    move-result-wide v0

    #@5e
    const/16 v4, 0xbc2

    #@60
    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    #@63
    .line 214
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    #@66
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 217
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    #@74
    move-result v0

    #@75
    if-eqz v0, :cond_2

    #@77
    .line 218
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    #@7a
    .line 219
    new-instance v0, Ljava/util/Timer;

    #@7c
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@7f
    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    #@81
    .line 220
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    #@83
    new-instance v1, Lcom/android/server/SystemServer$1;

    #@85
    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    #@88
    move-wide v4, v2

    #@89
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@8c
    .line 229
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    #@93
    .line 233
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@96
    move-result-object v0

    #@97
    const v1, 0x3f4ccccd    # 0.8f

    #@9a
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    #@9d
    .line 237
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    #@a0
    .line 241
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    #@a3
    .line 244
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    #@a6
    .line 248
    const/4 v0, -0x2

    #@a7
    .line 247
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    #@aa
    .line 249
    const/4 v0, 0x0

    #@ab
    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    #@ae
    .line 250
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    #@b1
    .line 253
    const-string/jumbo v0, "android_servers"

    #@b4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@b7
    .line 257
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    #@ba
    .line 260
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    #@bd
    .line 263
    new-instance v0, Lcom/android/server/SystemServiceManager;

    #@bf
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@c1
    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    #@c4
    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@c6
    .line 264
    const-class v0, Lcom/android/server/SystemServiceManager;

    #@c8
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@ca
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@cd
    .line 268
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    #@d0
    .line 269
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    #@d3
    .line 270
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@d6
    .line 278
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    #@d9
    move-result v0

    #@da
    if-eqz v0, :cond_3

    #@dc
    .line 279
    const-string/jumbo v0, "SystemServer"

    #@df
    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    #@e2
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    .line 283
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@e8
    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    #@ea
    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    #@ed
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f0
    throw v0

    #@f1
    .line 271
    :catch_0
    move-exception v6

    #@f2
    .line 272
    .local v6, "ex":Ljava/lang/Throwable;
    const-string/jumbo v0, "System"

    #@f5
    const-string/jumbo v1, "******************************************"

    #@f8
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@fb
    .line 273
    const-string/jumbo v0, "System"

    #@fe
    const-string/jumbo v1, "************ Failure starting system services"

    #@101
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@104
    .line 274
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 326
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@4
    const-class v5, Lcom/android/server/pm/Installer;

    #@6
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/android/server/pm/Installer;

    #@c
    .line 329
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@e
    .line 330
    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    #@10
    .line 329
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    #@16
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    .line 331
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@1e
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@20
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    #@23
    .line 332
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@25
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    #@28
    .line 338
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2a
    const-class v5, Lcom/android/server/power/PowerManagerService;

    #@2c
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Lcom/android/server/power/PowerManagerService;

    #@32
    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    #@34
    .line 342
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@36
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    #@39
    .line 345
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@3b
    const-class v5, Lcom/android/server/lights/LightsService;

    #@3d
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@40
    .line 349
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@42
    const-class v5, Lcom/android/server/display/DisplayManagerService;

    #@44
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@47
    move-result-object v2

    #@48
    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    #@4a
    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    #@4c
    .line 352
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@4e
    const/16 v5, 0x64

    #@50
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@53
    .line 355
    const-string/jumbo v2, "vold.decrypt"

    #@56
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    .line 356
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    #@5d
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_1

    #@63
    .line 357
    const-string/jumbo v2, "SystemServer"

    #@66
    const-string/jumbo v5, "Detected encryption in progress - only parsing core apps"

    #@69
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6c
    .line 358
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@6e
    .line 365
    :cond_0
    :goto_0
    const-string/jumbo v2, "SystemServer"

    #@71
    const-string/jumbo v5, "Package Manager"

    #@74
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@77
    .line 366
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@79
    .line 367
    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@7b
    if-eqz v2, :cond_2

    #@7d
    move v2, v3

    #@7e
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@80
    .line 366
    invoke-static {v5, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    #@83
    move-result-object v2

    #@84
    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@86
    .line 368
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@88
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    #@8b
    move-result v2

    #@8c
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    #@8e
    .line 369
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@90
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@93
    move-result-object v2

    #@94
    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@96
    .line 371
    const-string/jumbo v2, "SystemServer"

    #@99
    const-string/jumbo v3, "User Service"

    #@9c
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 372
    const-string/jumbo v2, "user"

    #@a2
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@a5
    move-result-object v3

    #@a6
    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@a9
    .line 375
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@ab
    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    #@ae
    .line 378
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@b0
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    #@b3
    .line 382
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    #@b6
    .line 322
    return-void

    #@b7
    .line 359
    :cond_1
    const-string/jumbo v2, "1"

    #@ba
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result v2

    #@be
    if-eqz v2, :cond_0

    #@c0
    .line 360
    const-string/jumbo v2, "SystemServer"

    #@c3
    const-string/jumbo v5, "Device encrypted - only parsing core apps"

    #@c6
    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    .line 361
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@cb
    goto :goto_0

    #@cc
    :cond_2
    move v2, v4

    #@cd
    .line 367
    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2
    const-class v1, Lcom/android/server/BatteryService;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@7
    .line 393
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@9
    const-class v1, Lcom/android/server/usage/UsageStatsService;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@e
    .line 394
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@10
    .line 395
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@12
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    #@18
    .line 394
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    #@1b
    .line 397
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    #@20
    .line 400
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@22
    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    #@24
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@27
    .line 388
    return-void
.end method

.method private startOtherServices()V
    .locals 101

    #@0
    .prologue
    .line 408
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    #@4
    .line 409
    .local v3, "context":Landroid/content/Context;
    const/16 v30, 0x0

    #@6
    .line 410
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v46, 0x0

    #@8
    .line 411
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    const/16 v94, 0x0

    #@a
    .line 412
    .local v94, "vibrator":Lcom/android/server/VibratorService;
    const/16 v32, 0x0

    #@c
    .line 413
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const/16 v75, 0x0

    #@e
    .line 414
    .local v75, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    #@f
    .line 415
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    #@10
    .line 416
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v76, 0x0

    #@12
    .line 417
    .local v76, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v42, 0x0

    #@14
    .line 418
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v77, 0x0

    #@16
    .line 419
    .local v77, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v86, 0x0

    #@18
    .line 420
    .local v86, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v100, 0x0

    #@1a
    .line 421
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v93, 0x0

    #@1c
    .line 422
    .local v93, "usb":Lcom/android/server/usb/UsbService;
    const/16 v84, 0x0

    #@1e
    .line 423
    .local v84, "serial":Lcom/android/server/SerialService;
    const/16 v80, 0x0

    #@20
    .line 424
    .local v80, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v39, 0x0

    #@22
    .line 425
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v64, 0x0

    #@24
    .line 426
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v89, 0x0

    #@26
    .line 427
    .local v89, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v44, 0x0

    #@28
    .line 428
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v35, 0x0

    #@2a
    .line 429
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v74, 0x0

    #@2c
    .line 430
    .local v74, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v59, 0x0

    #@2e
    .line 431
    .local v59, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v38, 0x0

    #@30
    .line 433
    .local v38, "cameraService":Lcom/android/server/camera/CameraService;
    const-string/jumbo v4, "config.disable_storage"

    #@33
    const/4 v5, 0x0

    #@34
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@37
    move-result v54

    #@38
    .line 434
    .local v54, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    #@3b
    const/4 v5, 0x0

    #@3c
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@3f
    move-result v49

    #@40
    .line 435
    .local v49, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    #@43
    const/4 v5, 0x0

    #@44
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@47
    move-result v50

    #@48
    .line 436
    .local v50, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    #@4b
    const/4 v5, 0x0

    #@4c
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@4f
    move-result v55

    #@50
    .line 437
    .local v55, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    #@53
    const/4 v5, 0x0

    #@54
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@57
    move-result v53

    #@58
    .line 438
    .local v53, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    #@5b
    const/4 v5, 0x0

    #@5c
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@5f
    move-result v51

    #@60
    .line 439
    .local v51, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    #@63
    const/4 v5, 0x0

    #@64
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@67
    move-result v52

    #@68
    .line 440
    .local v52, "disableNetworkTime":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    #@6b
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    const-string/jumbo v5, "1"

    #@72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v66

    #@76
    .line 443
    .local v66, "isEmulator":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    #@79
    const-string/jumbo v5, "Reading configuration..."

    #@7c
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    .line 444
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    #@82
    .line 446
    const-string/jumbo v4, "SystemServer"

    #@85
    const-string/jumbo v5, "Scheduling Policy"

    #@88
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 447
    const-string/jumbo v4, "scheduling_policy"

    #@8e
    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    #@90
    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    #@93
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@96
    .line 449
    move-object/from16 v0, p0

    #@98
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@9a
    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    #@9c
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@9f
    .line 451
    const-string/jumbo v4, "SystemServer"

    #@a2
    const-string/jumbo v5, "Telephony Registry"

    #@a5
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a8
    .line 452
    new-instance v90, Lcom/android/server/TelephonyRegistry;

    #@aa
    move-object/from16 v0, v90

    #@ac
    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3d

    #@af
    .line 453
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v90, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    #@b2
    move-object/from16 v0, v90

    #@b4
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@b7
    .line 455
    const-string/jumbo v4, "SystemServer"

    #@ba
    const-string/jumbo v5, "Entropy Mixer"

    #@bd
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    .line 456
    new-instance v60, Lcom/android/server/EntropyMixer;

    #@c2
    move-object/from16 v0, v60

    #@c4
    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3e

    #@c7
    .line 458
    .local v60, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@ca
    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v4

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    #@cf
    .line 460
    const-string/jumbo v4, "SystemServer"

    #@d2
    const-string/jumbo v5, "Camera Service"

    #@d5
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@d8
    .line 461
    move-object/from16 v0, p0

    #@da
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@dc
    const-class v5, Lcom/android/server/camera/CameraService;

    #@de
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    #@e1
    .line 466
    :try_start_3
    const-string/jumbo v4, "SystemServer"

    #@e4
    const-string/jumbo v5, "Account Manager"

    #@e7
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    .line 467
    new-instance v31, Lcom/android/server/accounts/AccountManagerService;

    #@ec
    move-object/from16 v0, v31

    #@ee
    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    #@f1
    .line 468
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string/jumbo v4, "account"

    #@f4
    move-object/from16 v0, v31

    #@f6
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3f

    #@f9
    move-object/from16 v30, v31

    #@fb
    .line 473
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string/jumbo v4, "SystemServer"

    #@fe
    const-string/jumbo v5, "Content Manager"

    #@101
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@104
    .line 475
    move-object/from16 v0, p0

    #@106
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@108
    const/4 v5, 0x1

    #@109
    if-ne v4, v5, :cond_25

    #@10b
    const/4 v4, 0x1

    #@10c
    .line 474
    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    #@10f
    move-result-object v46

    #@110
    .line 477
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    const-string/jumbo v4, "SystemServer"

    #@113
    const-string/jumbo v5, "System Content Providers"

    #@116
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@119
    .line 478
    move-object/from16 v0, p0

    #@11b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@11d
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    #@120
    .line 480
    const-string/jumbo v4, "SystemServer"

    #@123
    const-string/jumbo v5, "Vibrator Service"

    #@126
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@129
    .line 481
    new-instance v95, Lcom/android/server/VibratorService;

    #@12b
    move-object/from16 v0, v95

    #@12d
    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    #@130
    .line 482
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .local v95, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string/jumbo v4, "vibrator"

    #@133
    move-object/from16 v0, v95

    #@135
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@138
    .line 484
    const-string/jumbo v4, "SystemServer"

    #@13b
    const-string/jumbo v5, "Consumer IR Service"

    #@13e
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@141
    .line 485
    new-instance v45, Lcom/android/server/ConsumerIrService;

    #@143
    move-object/from16 v0, v45

    #@145
    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_40

    #@148
    .line 486
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string/jumbo v4, "consumer_ir"

    #@14b
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v45

    #@14d
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@150
    .line 488
    move-object/from16 v0, p0

    #@152
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@154
    const-class v5, Lcom/android/server/AlarmManagerService;

    #@156
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@159
    .line 490
    const-string/jumbo v4, "alarm"

    #@15c
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@15f
    move-result-object v4

    #@160
    .line 489
    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    #@163
    move-result-object v32

    #@164
    .line 492
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const-string/jumbo v4, "SystemServer"

    #@167
    const-string/jumbo v5, "Init Watchdog"

    #@16a
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@16d
    .line 493
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@170
    move-result-object v99

    #@171
    .line 494
    .local v99, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    #@173
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@175
    move-object/from16 v0, v99

    #@177
    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    #@17a
    .line 496
    const-string/jumbo v4, "SystemServer"

    #@17d
    const-string/jumbo v5, "Input Manager"

    #@180
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@183
    .line 497
    new-instance v65, Lcom/android/server/input/InputManagerService;

    #@185
    move-object/from16 v0, v65

    #@187
    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_41

    #@18a
    .line 499
    .local v65, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string/jumbo v4, "SystemServer"

    #@18d
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v5, "Window Manager"

    #@190
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@193
    .line 501
    move-object/from16 v0, p0

    #@195
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@197
    const/4 v5, 0x1

    #@198
    if-eq v4, v5, :cond_26

    #@19a
    const/4 v4, 0x1

    #@19b
    move v5, v4

    #@19c
    .line 502
    :goto_2
    move-object/from16 v0, p0

    #@19e
    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    #@1a0
    if-eqz v4, :cond_27

    #@1a2
    const/4 v4, 0x0

    #@1a3
    :goto_3
    move-object/from16 v0, p0

    #@1a5
    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@1a7
    .line 500
    move-object/from16 v0, v65

    #@1a9
    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    #@1ac
    move-result-object v100

    #@1ad
    .line 503
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    #@1b0
    move-object/from16 v0, v100

    #@1b2
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1b5
    .line 504
    const-string/jumbo v4, "input"

    #@1b8
    move-object/from16 v0, v65

    #@1ba
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1bd
    .line 506
    move-object/from16 v0, p0

    #@1bf
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@1c1
    move-object/from16 v0, v100

    #@1c3
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    #@1c6
    .line 508
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    #@1c9
    move-result-object v4

    #@1ca
    move-object/from16 v0, v65

    #@1cc
    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    #@1cf
    .line 509
    invoke-virtual/range {v65 .. v65}, Lcom/android/server/input/InputManagerService;->start()V

    #@1d2
    .line 512
    move-object/from16 v0, p0

    #@1d4
    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    #@1d6
    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    #@1d9
    .line 517
    if-eqz v66, :cond_28

    #@1db
    .line 518
    const-string/jumbo v4, "SystemServer"

    #@1de
    const-string/jumbo v5, "No Bluetooh Service (emulator)"

    #@1e1
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    #@1e4
    :goto_4
    move-object/from16 v59, v60

    #@1e6
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v59, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v44, v45

    #@1e8
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v89, v90

    #@1ea
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v89, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v65

    #@1ec
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v94, v95

    #@1ee
    .line 535
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .end local v99    # "watchdog":Lcom/android/server/Watchdog;
    .end local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_5
    const/16 v87, 0x0

    #@1f0
    .line 536
    .local v87, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v82, 0x0

    #@1f2
    .line 537
    .local v82, "notification":Landroid/app/INotificationManager;
    const/16 v62, 0x0

    #@1f4
    .line 538
    .local v62, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v97, 0x0

    #@1f6
    .line 539
    .local v97, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v67, 0x0

    #@1f8
    .line 540
    .local v67, "location":Lcom/android/server/LocationManagerService;
    const/16 v47, 0x0

    #@1fa
    .line 541
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v91, 0x0

    #@1fc
    .line 542
    .local v91, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v69, 0x0

    #@1fe
    .line 543
    .local v69, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v33, 0x0

    #@200
    .line 544
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v71, 0x0

    #@202
    .line 547
    .local v71, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    #@204
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@206
    const/4 v5, 0x1

    #@207
    if-eq v4, v5, :cond_0

    #@209
    .line 549
    :try_start_9
    const-string/jumbo v4, "SystemServer"

    #@20c
    const-string/jumbo v5, "Input Method Service"

    #@20f
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@212
    .line 550
    new-instance v63, Lcom/android/server/InputMethodManagerService;

    #@214
    move-object/from16 v0, v63

    #@216
    move-object/from16 v1, v100

    #@218
    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    #@21b
    .line 551
    .end local v62    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v63, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string/jumbo v4, "input_method"

    #@21e
    move-object/from16 v0, v63

    #@220
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3c

    #@223
    move-object/from16 v62, v63

    #@225
    .line 557
    .end local v63    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_6
    :try_start_b
    const-string/jumbo v4, "SystemServer"

    #@228
    const-string/jumbo v5, "Accessibility Manager"

    #@22b
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22e
    .line 558
    const-string/jumbo v4, "accessibility"

    #@231
    .line 559
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    #@233
    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    #@236
    .line 558
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    #@239
    .line 566
    :cond_0
    :goto_7
    :try_start_c
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    #@23c
    .line 571
    :goto_8
    move-object/from16 v0, p0

    #@23e
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@240
    const/4 v5, 0x1

    #@241
    if-eq v4, v5, :cond_1

    #@243
    .line 572
    if-nez v54, :cond_1

    #@245
    .line 573
    const-string/jumbo v4, "0"

    #@248
    const-string/jumbo v5, "system_init.startmountservice"

    #@24b
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@24e
    move-result-object v5

    #@24f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@252
    move-result v4

    #@253
    if-eqz v4, :cond_2c

    #@255
    .line 590
    .end local v75    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_9
    move-object/from16 v0, p0

    #@257
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@259
    const-class v5, Lcom/android/server/UiModeManagerService;

    #@25b
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@25e
    .line 593
    :try_start_d
    move-object/from16 v0, p0

    #@260
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@262
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    #@265
    .line 599
    :goto_a
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@268
    move-result-object v4

    #@269
    .line 600
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@26c
    move-result-object v5

    #@26d
    .line 601
    const v8, 0x1040370

    #@270
    .line 600
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@273
    move-result-object v5

    #@274
    .line 602
    const/4 v8, 0x0

    #@275
    .line 599
    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3b

    #@278
    .line 606
    :goto_b
    move-object/from16 v0, p0

    #@27a
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@27c
    const/4 v5, 0x1

    #@27d
    if-eq v4, v5, :cond_31

    #@27f
    .line 607
    if-nez v53, :cond_3

    #@281
    .line 609
    :try_start_f
    const-string/jumbo v4, "SystemServer"

    #@284
    const-string/jumbo v5, "LockSettingsService"

    #@287
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@28a
    .line 610
    new-instance v70, Lcom/android/server/LockSettingsService;

    #@28c
    move-object/from16 v0, v70

    #@28e
    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    #@291
    .line 611
    .end local v69    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v70, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_10
    const-string/jumbo v4, "lock_settings"

    #@294
    move-object/from16 v0, v70

    #@296
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3a

    #@299
    move-object/from16 v69, v70

    #@29b
    .line 616
    .end local v70    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_c
    const-string/jumbo v4, "ro.frp.pst"

    #@29e
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2a1
    move-result-object v4

    #@2a2
    const-string/jumbo v5, ""

    #@2a5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a8
    move-result v4

    #@2a9
    if-nez v4, :cond_2

    #@2ab
    .line 617
    move-object/from16 v0, p0

    #@2ad
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2af
    const-class v5, Lcom/android/server/PersistentDataBlockService;

    #@2b1
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@2b4
    .line 620
    :cond_2
    move-object/from16 v0, p0

    #@2b6
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2b8
    const-class v5, Lcom/android/server/DeviceIdleController;

    #@2ba
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@2bd
    .line 624
    move-object/from16 v0, p0

    #@2bf
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@2c1
    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    #@2c3
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@2c6
    .line 627
    :cond_3
    if-nez v55, :cond_4

    #@2c8
    .line 629
    :try_start_11
    const-string/jumbo v4, "SystemServer"

    #@2cb
    const-string/jumbo v5, "Status Bar"

    #@2ce
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2d1
    .line 630
    new-instance v88, Lcom/android/server/statusbar/StatusBarManagerService;

    #@2d3
    move-object/from16 v0, v88

    #@2d5
    move-object/from16 v1, v100

    #@2d7
    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    #@2da
    .line 631
    .end local v87    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v88, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_12
    const-string/jumbo v4, "statusbar"

    #@2dd
    move-object/from16 v0, v88

    #@2df
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_39

    #@2e2
    move-object/from16 v87, v88

    #@2e4
    .line 637
    .end local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_d
    if-nez v53, :cond_5

    #@2e6
    .line 639
    :try_start_13
    const-string/jumbo v4, "SystemServer"

    #@2e9
    const-string/jumbo v5, "Clipboard Service"

    #@2ec
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2ef
    .line 640
    const-string/jumbo v4, "clipboard"

    #@2f2
    .line 641
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    #@2f4
    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    #@2f7
    .line 640
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    #@2fa
    .line 647
    :cond_5
    :goto_e
    if-nez v51, :cond_6

    #@2fc
    .line 649
    :try_start_14
    const-string/jumbo v4, "SystemServer"

    #@2ff
    const-string/jumbo v5, "NetworkManagement Service"

    #@302
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@305
    .line 650
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    #@308
    move-result-object v7

    #@309
    .line 651
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    #@30c
    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_b

    #@30f
    .line 657
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_6
    :goto_f
    if-nez v53, :cond_7

    #@311
    .line 659
    :try_start_15
    const-string/jumbo v4, "SystemServer"

    #@314
    const-string/jumbo v5, "Text Service Manager Service"

    #@317
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@31a
    .line 660
    new-instance v92, Lcom/android/server/TextServicesManagerService;

    #@31c
    move-object/from16 v0, v92

    #@31e
    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_c

    #@321
    .line 661
    .end local v91    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v92, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_16
    const-string/jumbo v4, "textservices"

    #@324
    move-object/from16 v0, v92

    #@326
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_38

    #@329
    move-object/from16 v91, v92

    #@32b
    .line 667
    .end local v92    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_10
    if-nez v51, :cond_30

    #@32d
    .line 669
    :try_start_17
    const-string/jumbo v4, "SystemServer"

    #@330
    const-string/jumbo v5, "Network Score Service"

    #@333
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@336
    .line 670
    new-instance v78, Lcom/android/server/NetworkScoreService;

    #@338
    move-object/from16 v0, v78

    #@33a
    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d

    #@33d
    .line 671
    .end local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v78, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_18
    const-string/jumbo v4, "network_score"

    #@340
    move-object/from16 v0, v78

    #@342
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_37

    #@345
    move-object/from16 v77, v78

    #@347
    .line 677
    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_11
    :try_start_19
    const-string/jumbo v4, "SystemServer"

    #@34a
    const-string/jumbo v5, "NetworkStats Service"

    #@34d
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@350
    .line 678
    new-instance v79, Lcom/android/server/net/NetworkStatsService;

    #@352
    move-object/from16 v0, v79

    #@354
    move-object/from16 v1, v32

    #@356
    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_e

    #@359
    .line 679
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v79, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1a
    const-string/jumbo v4, "netstats"

    #@35c
    move-object/from16 v0, v79

    #@35e
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_36

    #@361
    move-object/from16 v6, v79

    #@363
    .line 685
    .end local v79    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_12
    :try_start_1b
    const-string/jumbo v4, "SystemServer"

    #@366
    const-string/jumbo v5, "NetworkPolicy Service"

    #@369
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@36c
    .line 686
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    #@36e
    .line 687
    move-object/from16 v0, p0

    #@370
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@372
    .line 688
    const-string/jumbo v5, "power"

    #@375
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@378
    move-result-object v5

    #@379
    check-cast v5, Landroid/os/IPowerManager;

    #@37b
    .line 686
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    #@37e
    .line 690
    .end local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1c
    const-string/jumbo v4, "netpolicy"

    #@381
    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_35

    #@384
    .line 695
    :goto_13
    move-object/from16 v0, p0

    #@386
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@388
    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    #@38b
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@38e
    .line 696
    move-object/from16 v0, p0

    #@390
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@392
    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    #@395
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@398
    .line 697
    move-object/from16 v0, p0

    #@39a
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@39c
    .line 698
    const-string/jumbo v5, "com.android.server.wifi.WifiScanningService"

    #@39f
    .line 697
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@3a2
    .line 700
    move-object/from16 v0, p0

    #@3a4
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@3a6
    const-string/jumbo v5, "com.android.server.wifi.RttService"

    #@3a9
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@3ac
    .line 702
    move-object/from16 v0, p0

    #@3ae
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3b0
    const-string/jumbo v5, "android.hardware.ethernet"

    #@3b3
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@3b6
    move-result v4

    #@3b7
    if-nez v4, :cond_8

    #@3b9
    .line 703
    move-object/from16 v0, p0

    #@3bb
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3bd
    const-string/jumbo v5, "android.hardware.usb.host"

    #@3c0
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@3c3
    move-result v4

    #@3c4
    .line 702
    if-eqz v4, :cond_9

    #@3c6
    .line 704
    :cond_8
    move-object/from16 v0, p0

    #@3c8
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@3ca
    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    #@3cd
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@3d0
    .line 708
    :cond_9
    :try_start_1d
    const-string/jumbo v4, "SystemServer"

    #@3d3
    const-string/jumbo v5, "Connectivity Service"

    #@3d6
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3d9
    .line 709
    new-instance v43, Lcom/android/server/ConnectivityService;

    #@3db
    move-object/from16 v0, v43

    #@3dd
    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_10

    #@3e0
    .line 711
    .end local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1e
    const-string/jumbo v4, "connectivity"

    #@3e3
    move-object/from16 v0, v43

    #@3e5
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@3e8
    .line 712
    move-object/from16 v0, v43

    #@3ea
    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    #@3ed
    .line 713
    move-object/from16 v0, v43

    #@3ef
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_34

    #@3f2
    move-object/from16 v42, v43

    #@3f4
    .line 719
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    :try_start_1f
    const-string/jumbo v4, "SystemServer"

    #@3f7
    const-string/jumbo v5, "Network Service Discovery Service"

    #@3fa
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3fd
    .line 720
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    #@400
    move-result-object v86

    #@401
    .line 722
    .local v86, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    #@404
    .line 721
    move-object/from16 v0, v86

    #@406
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_11

    #@409
    .line 728
    .end local v86    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_15
    if-nez v53, :cond_a

    #@40b
    .line 730
    :try_start_20
    const-string/jumbo v4, "SystemServer"

    #@40e
    const-string/jumbo v5, "UpdateLock Service"

    #@411
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@414
    .line 731
    const-string/jumbo v4, "updatelock"

    #@417
    .line 732
    new-instance v5, Lcom/android/server/UpdateLockService;

    #@419
    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    #@41c
    .line 731
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_12

    #@41f
    .line 743
    :cond_a
    :goto_16
    if-eqz v75, :cond_b

    #@421
    move-object/from16 v0, p0

    #@423
    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@425
    if-eqz v4, :cond_2d

    #@427
    .line 751
    :cond_b
    :goto_17
    if-eqz v30, :cond_c

    #@429
    .line 752
    :try_start_21
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_14

    #@42c
    .line 758
    :cond_c
    :goto_18
    if-eqz v46, :cond_d

    #@42e
    .line 759
    :try_start_22
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_15

    #@431
    .line 764
    :cond_d
    :goto_19
    move-object/from16 v0, p0

    #@433
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@435
    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    #@437
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@43a
    .line 766
    const-string/jumbo v4, "notification"

    #@43d
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@440
    move-result-object v4

    #@441
    .line 765
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    #@444
    move-result-object v82

    #@445
    .line 767
    .local v82, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v82

    #@447
    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    #@44a
    .line 769
    move-object/from16 v0, p0

    #@44c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@44e
    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    #@450
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@453
    .line 771
    if-nez v50, :cond_e

    #@455
    .line 773
    :try_start_23
    const-string/jumbo v4, "SystemServer"

    #@458
    const-string/jumbo v5, "Location Manager"

    #@45b
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@45e
    .line 774
    new-instance v68, Lcom/android/server/LocationManagerService;

    #@460
    move-object/from16 v0, v68

    #@462
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_16

    #@465
    .line 775
    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    .local v68, "location":Lcom/android/server/LocationManagerService;
    :try_start_24
    const-string/jumbo v4, "location"

    #@468
    move-object/from16 v0, v68

    #@46a
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_33

    #@46d
    move-object/from16 v67, v68

    #@46f
    .line 781
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_25
    const-string/jumbo v4, "SystemServer"

    #@472
    const-string/jumbo v5, "Country Detector"

    #@475
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@478
    .line 782
    new-instance v48, Lcom/android/server/CountryDetectorService;

    #@47a
    move-object/from16 v0, v48

    #@47c
    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_17

    #@47f
    .line 783
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_26
    const-string/jumbo v4, "country_detector"

    #@482
    move-object/from16 v0, v48

    #@484
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_32

    #@487
    move-object/from16 v47, v48

    #@489
    .line 789
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_1b
    if-nez v53, :cond_f

    #@48b
    .line 791
    :try_start_27
    const-string/jumbo v4, "SystemServer"

    #@48e
    const-string/jumbo v5, "Search Service"

    #@491
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@494
    .line 792
    const-string/jumbo v4, "search"

    #@497
    .line 793
    new-instance v5, Lcom/android/server/search/SearchManagerService;

    #@499
    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    #@49c
    .line 792
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_18

    #@49f
    .line 800
    :cond_f
    :goto_1c
    :try_start_28
    const-string/jumbo v4, "SystemServer"

    #@4a2
    const-string/jumbo v5, "DropBox Service"

    #@4a5
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4a8
    .line 801
    const-string/jumbo v4, "dropbox"

    #@4ab
    .line 802
    new-instance v5, Lcom/android/server/DropBoxManagerService;

    #@4ad
    new-instance v8, Ljava/io/File;

    #@4af
    const-string/jumbo v9, "/data/system/dropbox"

    #@4b2
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@4b5
    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    #@4b8
    .line 801
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_19

    #@4bb
    .line 807
    :goto_1d
    if-nez v53, :cond_10

    #@4bd
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4c0
    move-result-object v4

    #@4c1
    .line 808
    const v5, 0x1120048

    #@4c4
    .line 807
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@4c7
    move-result v4

    #@4c8
    if-eqz v4, :cond_10

    #@4ca
    .line 810
    :try_start_29
    const-string/jumbo v4, "SystemServer"

    #@4cd
    const-string/jumbo v5, "Wallpaper Service"

    #@4d0
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4d3
    .line 811
    new-instance v98, Lcom/android/server/wallpaper/WallpaperManagerService;

    #@4d5
    move-object/from16 v0, v98

    #@4d7
    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1a

    #@4da
    .line 812
    .end local v97    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v98, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2a
    const-string/jumbo v4, "wallpaper"

    #@4dd
    move-object/from16 v0, v98

    #@4df
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_31

    #@4e2
    move-object/from16 v97, v98

    #@4e4
    .line 819
    .end local v98    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_1e
    :try_start_2b
    const-string/jumbo v4, "SystemServer"

    #@4e7
    const-string/jumbo v5, "Audio Service"

    #@4ea
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@4ed
    .line 820
    new-instance v36, Lcom/android/server/audio/AudioService;

    #@4ef
    move-object/from16 v0, v36

    #@4f1
    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1b

    #@4f4
    .line 821
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_2c
    const-string/jumbo v4, "audio"

    #@4f7
    move-object/from16 v0, v36

    #@4f9
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_30

    #@4fc
    move-object/from16 v35, v36

    #@4fe
    .line 826
    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_1f
    if-nez v53, :cond_11

    #@500
    .line 827
    move-object/from16 v0, p0

    #@502
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@504
    const-class v5, Lcom/android/server/DockObserver;

    #@506
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@509
    .line 831
    :cond_11
    :try_start_2d
    const-string/jumbo v4, "SystemServer"

    #@50c
    const-string/jumbo v5, "Wired Accessory Manager"

    #@50f
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@512
    .line 834
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    #@514
    move-object/from16 v0, v64

    #@516
    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    #@519
    .line 833
    move-object/from16 v0, v64

    #@51b
    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1c

    #@51e
    .line 839
    :goto_20
    if-nez v53, :cond_15

    #@520
    .line 840
    move-object/from16 v0, p0

    #@522
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@524
    const-string/jumbo v5, "android.software.midi"

    #@527
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@52a
    move-result v4

    #@52b
    if-eqz v4, :cond_12

    #@52d
    .line 842
    move-object/from16 v0, p0

    #@52f
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@531
    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    #@534
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@537
    .line 845
    :cond_12
    move-object/from16 v0, p0

    #@539
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@53b
    const-string/jumbo v5, "android.hardware.usb.host"

    #@53e
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@541
    move-result v4

    #@542
    if-nez v4, :cond_13

    #@544
    .line 846
    move-object/from16 v0, p0

    #@546
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@548
    .line 847
    const-string/jumbo v5, "android.hardware.usb.accessory"

    #@54b
    .line 846
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@54e
    move-result v4

    #@54f
    .line 845
    if-eqz v4, :cond_14

    #@551
    .line 849
    :cond_13
    move-object/from16 v0, p0

    #@553
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@555
    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    #@558
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@55b
    .line 853
    :cond_14
    :try_start_2e
    const-string/jumbo v4, "SystemServer"

    #@55e
    const-string/jumbo v5, "Serial Service"

    #@561
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@564
    .line 855
    new-instance v85, Lcom/android/server/SerialService;

    #@566
    move-object/from16 v0, v85

    #@568
    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1d

    #@56b
    .line 856
    .end local v84    # "serial":Lcom/android/server/SerialService;
    .local v85, "serial":Lcom/android/server/SerialService;
    :try_start_2f
    const-string/jumbo v4, "serial"

    #@56e
    move-object/from16 v0, v85

    #@570
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_2f

    #@573
    move-object/from16 v84, v85

    #@575
    .line 862
    .end local v85    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_21
    move-object/from16 v0, p0

    #@577
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@579
    const-class v5, Lcom/android/server/twilight/TwilightService;

    #@57b
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@57e
    .line 864
    move-object/from16 v0, p0

    #@580
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@582
    const-class v5, Lcom/android/server/job/JobSchedulerService;

    #@584
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@587
    .line 866
    if-nez v53, :cond_18

    #@589
    .line 867
    move-object/from16 v0, p0

    #@58b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@58d
    const-string/jumbo v5, "android.software.backup"

    #@590
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@593
    move-result v4

    #@594
    if-eqz v4, :cond_16

    #@596
    .line 868
    move-object/from16 v0, p0

    #@598
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@59a
    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    #@59d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@5a0
    .line 871
    :cond_16
    move-object/from16 v0, p0

    #@5a2
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@5a4
    const-string/jumbo v5, "android.software.app_widgets"

    #@5a7
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@5aa
    move-result v4

    #@5ab
    if-eqz v4, :cond_17

    #@5ad
    .line 872
    move-object/from16 v0, p0

    #@5af
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5b1
    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    #@5b4
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@5b7
    .line 875
    :cond_17
    move-object/from16 v0, p0

    #@5b9
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@5bb
    const-string/jumbo v5, "android.software.voice_recognizers"

    #@5be
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@5c1
    move-result v4

    #@5c2
    if-eqz v4, :cond_18

    #@5c4
    .line 876
    move-object/from16 v0, p0

    #@5c6
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@5c8
    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    #@5cb
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@5ce
    .line 881
    :cond_18
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    #@5d1
    const-string/jumbo v5, "DiskStats Service"

    #@5d4
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5d7
    .line 882
    const-string/jumbo v4, "diskstats"

    #@5da
    new-instance v5, Lcom/android/server/DiskStatsService;

    #@5dc
    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    #@5df
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1e

    #@5e2
    .line 892
    :goto_22
    :try_start_31
    const-string/jumbo v4, "SystemServer"

    #@5e5
    const-string/jumbo v5, "SamplingProfiler Service"

    #@5e8
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5eb
    .line 893
    const-string/jumbo v4, "samplingprofiler"

    #@5ee
    .line 894
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    #@5f0
    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    #@5f3
    .line 893
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1f

    #@5f6
    .line 899
    :goto_23
    if-nez v51, :cond_19

    #@5f8
    if-eqz v52, :cond_2e

    #@5fa
    .line 909
    .end local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_19
    :goto_24
    :try_start_32
    const-string/jumbo v4, "SystemServer"

    #@5fd
    const-string/jumbo v5, "CommonTimeManagementService"

    #@600
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@603
    .line 910
    new-instance v40, Lcom/android/server/CommonTimeManagementService;

    #@605
    move-object/from16 v0, v40

    #@607
    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_21

    #@60a
    .line 911
    .end local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_33
    const-string/jumbo v4, "commontime_management"

    #@60d
    move-object/from16 v0, v40

    #@60f
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_2e

    #@612
    move-object/from16 v39, v40

    #@614
    .line 916
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_25
    if-nez v51, :cond_1a

    #@616
    .line 918
    :try_start_34
    const-string/jumbo v4, "SystemServer"

    #@619
    const-string/jumbo v5, "CertBlacklister"

    #@61c
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@61f
    .line 919
    new-instance v37, Lcom/android/server/CertBlacklister;

    #@621
    move-object/from16 v0, v37

    #@623
    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_22

    #@626
    .line 925
    :cond_1a
    :goto_26
    if-nez v53, :cond_1b

    #@628
    .line 927
    move-object/from16 v0, p0

    #@62a
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@62c
    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    #@62e
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@631
    .line 930
    :cond_1b
    if-nez v53, :cond_1c

    #@633
    .line 932
    :try_start_35
    const-string/jumbo v4, "SystemServer"

    #@636
    const-string/jumbo v5, "Assets Atlas Service"

    #@639
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@63c
    .line 933
    new-instance v34, Lcom/android/server/AssetAtlasService;

    #@63e
    move-object/from16 v0, v34

    #@640
    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_23

    #@643
    .line 934
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_36
    const-string/jumbo v4, "assetatlas"

    #@646
    move-object/from16 v0, v34

    #@648
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_2d

    #@64b
    move-object/from16 v33, v34

    #@64d
    .line 940
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1c
    :goto_27
    if-nez v53, :cond_1d

    #@64f
    .line 941
    const-string/jumbo v4, "graphicsstats"

    #@652
    .line 942
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    #@654
    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    #@657
    .line 941
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@65a
    .line 945
    :cond_1d
    move-object/from16 v0, p0

    #@65c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@65e
    const-string/jumbo v5, "android.software.print"

    #@661
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@664
    move-result v4

    #@665
    if-eqz v4, :cond_1e

    #@667
    .line 946
    move-object/from16 v0, p0

    #@669
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@66b
    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    #@66e
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@671
    .line 949
    :cond_1e
    move-object/from16 v0, p0

    #@673
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@675
    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    #@677
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@67a
    .line 951
    move-object/from16 v0, p0

    #@67c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@67e
    const-class v5, Lcom/android/server/media/MediaSessionService;

    #@680
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@683
    .line 953
    move-object/from16 v0, p0

    #@685
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@687
    const-string/jumbo v5, "android.hardware.hdmi.cec"

    #@68a
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@68d
    move-result v4

    #@68e
    if-eqz v4, :cond_1f

    #@690
    .line 954
    move-object/from16 v0, p0

    #@692
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@694
    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    #@696
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@699
    .line 957
    :cond_1f
    move-object/from16 v0, p0

    #@69b
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    #@69d
    const-string/jumbo v5, "android.software.live_tv"

    #@6a0
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@6a3
    move-result v4

    #@6a4
    if-eqz v4, :cond_20

    #@6a6
    .line 958
    move-object/from16 v0, p0

    #@6a8
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6aa
    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    #@6ac
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@6af
    .line 961
    :cond_20
    if-nez v53, :cond_21

    #@6b1
    .line 963
    :try_start_37
    const-string/jumbo v4, "SystemServer"

    #@6b4
    const-string/jumbo v5, "Media Router Service"

    #@6b7
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6ba
    .line 964
    new-instance v72, Lcom/android/server/media/MediaRouterService;

    #@6bc
    move-object/from16 v0, v72

    #@6be
    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_24

    #@6c1
    .line 965
    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v72, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_38
    const-string/jumbo v4, "media_router"

    #@6c4
    move-object/from16 v0, v72

    #@6c6
    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_2c

    #@6c9
    move-object/from16 v71, v72

    #@6cb
    .line 970
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_28
    move-object/from16 v0, p0

    #@6cd
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6cf
    const-class v5, Lcom/android/server/trust/TrustManagerService;

    #@6d1
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@6d4
    .line 972
    move-object/from16 v0, p0

    #@6d6
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6d8
    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    #@6da
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@6dd
    .line 975
    :try_start_39
    const-string/jumbo v4, "SystemServer"

    #@6e0
    const-string/jumbo v5, "BackgroundDexOptService"

    #@6e3
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6e6
    .line 976
    const-wide/16 v4, 0x0

    #@6e8
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_25

    #@6eb
    .line 983
    :cond_21
    :goto_29
    move-object/from16 v0, p0

    #@6ed
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6ef
    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    #@6f1
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@6f4
    .line 986
    .end local v82    # "notification":Landroid/app/INotificationManager;
    :goto_2a
    if-nez v53, :cond_22

    #@6f6
    .line 987
    move-object/from16 v0, p0

    #@6f8
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@6fa
    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@6fc
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@6ff
    .line 992
    :cond_22
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    #@702
    move-result v83

    #@703
    .line 993
    .local v83, "safeMode":Z
    if-eqz v83, :cond_2f

    #@705
    .line 994
    move-object/from16 v0, p0

    #@707
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@709
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    #@70c
    .line 996
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@70f
    move-result-object v4

    #@710
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    #@713
    .line 1003
    :goto_2b
    move-object/from16 v0, p0

    #@715
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@717
    const-class v5, Lcom/android/server/MmsServiceBroker;

    #@719
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    #@71c
    move-result-object v74

    #@71d
    .end local v74    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v74, Lcom/android/server/MmsServiceBroker;

    #@71f
    .line 1008
    .local v74, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_3a
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_26

    #@722
    .line 1013
    :goto_2c
    if-eqz v69, :cond_23

    #@724
    .line 1015
    :try_start_3b
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_27

    #@727
    .line 1022
    :cond_23
    :goto_2d
    move-object/from16 v0, p0

    #@729
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@72b
    const/16 v5, 0x1e0

    #@72d
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@730
    .line 1024
    move-object/from16 v0, p0

    #@732
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@734
    const/16 v5, 0x1f4

    #@736
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    #@739
    .line 1027
    :try_start_3c
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_28

    #@73c
    .line 1032
    :goto_2e
    if-eqz v83, :cond_24

    #@73e
    .line 1033
    move-object/from16 v0, p0

    #@740
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@742
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    #@745
    .line 1039
    :cond_24
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    #@748
    move-result-object v41

    #@749
    .line 1040
    .local v41, "config":Landroid/content/res/Configuration;
    new-instance v73, Landroid/util/DisplayMetrics;

    #@74b
    invoke-direct/range {v73 .. v73}, Landroid/util/DisplayMetrics;-><init>()V

    #@74e
    .line 1041
    .local v73, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    #@751
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@754
    move-result-object v96

    #@755
    check-cast v96, Landroid/view/WindowManager;

    #@757
    .line 1042
    .local v96, "w":Landroid/view/WindowManager;
    invoke-interface/range {v96 .. v96}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@75a
    move-result-object v4

    #@75b
    move-object/from16 v0, v73

    #@75d
    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@760
    .line 1043
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@763
    move-result-object v4

    #@764
    move-object/from16 v0, v41

    #@766
    move-object/from16 v1, v73

    #@768
    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    #@76b
    .line 1047
    :try_start_3d
    move-object/from16 v0, p0

    #@76d
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    #@76f
    move-object/from16 v0, p0

    #@771
    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@773
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    #@776
    move-result-object v5

    #@777
    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_29

    #@77a
    .line 1053
    :goto_2f
    :try_start_3e
    move-object/from16 v0, p0

    #@77c
    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    #@77e
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2a

    #@781
    .line 1060
    :goto_30
    :try_start_3f
    move-object/from16 v0, p0

    #@783
    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    #@785
    move-object/from16 v0, p0

    #@787
    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    #@789
    move/from16 v0, v83

    #@78b
    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_2b

    #@78e
    .line 1066
    :goto_31
    move-object v12, v7

    #@78f
    .line 1067
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    #@790
    .line 1068
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    #@791
    .line 1069
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v42

    #@793
    .line 1070
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v77

    #@795
    .line 1071
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v97

    #@797
    .line 1072
    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v62

    #@799
    .line 1073
    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v20, v67

    #@79b
    .line 1074
    .local v20, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v21, v47

    #@79d
    .line 1075
    .local v21, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v80

    #@79f
    .line 1076
    .local v22, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v39

    #@7a1
    .line 1077
    .local v23, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v24, v91

    #@7a3
    .line 1078
    .local v24, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v87

    #@7a5
    .line 1079
    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v25, v33

    #@7a7
    .line 1080
    .local v25, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v26, v64

    #@7a9
    .line 1081
    .local v26, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v27, v89

    #@7ab
    .line 1082
    .local v27, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v28, v71

    #@7ad
    .line 1083
    .local v28, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v35

    #@7af
    .line 1084
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v29, v74

    #@7b1
    .line 1091
    .local v29, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    #@7b3
    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@7b5
    new-instance v8, Lcom/android/server/SystemServer$2;

    #@7b7
    move-object/from16 v9, p0

    #@7b9
    move-object v10, v3

    #@7ba
    invoke-direct/range {v8 .. v29}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    #@7bd
    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    #@7c0
    .line 407
    return-void

    #@7c1
    .line 469
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v21    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v22    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v24    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v25    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v26    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v27    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v28    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v29    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v41    # "config":Landroid/content/res/Configuration;
    .end local v73    # "metrics":Landroid/util/DisplayMetrics;
    .end local v83    # "safeMode":Z
    .end local v96    # "w":Landroid/view/WindowManager;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v74, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v75    # "mountService":Landroid/os/storage/IMountService;
    .restart local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v84    # "serial":Lcom/android/server/SerialService;
    .local v86, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v58

    #@7c2
    .line 470
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v58, "e":Ljava/lang/Throwable;
    :goto_32
    :try_start_40
    const-string/jumbo v4, "SystemServer"

    #@7c5
    const-string/jumbo v5, "Failure starting Account Manager"

    #@7c8
    move-object/from16 v0, v58

    #@7ca
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_40} :catch_1

    #@7cd
    goto/16 :goto_0

    #@7cf
    .line 530
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v57

    #@7d0
    .local v57, "e":Ljava/lang/RuntimeException;
    move-object/from16 v59, v60

    #@7d2
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v89, v90

    #@7d4
    .line 531
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_33
    const-string/jumbo v4, "System"

    #@7d7
    const-string/jumbo v5, "******************************************"

    #@7da
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7dd
    .line 532
    const-string/jumbo v4, "System"

    #@7e0
    const-string/jumbo v5, "************ Failure starting core service"

    #@7e3
    move-object/from16 v0, v57

    #@7e5
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7e8
    goto/16 :goto_5

    #@7ea
    .line 475
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .restart local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v46    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_25
    const/4 v4, 0x0

    #@7eb
    goto/16 :goto_1

    #@7ed
    .line 501
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v95    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "watchdog":Lcom/android/server/Watchdog;
    :cond_26
    const/4 v4, 0x0

    #@7ee
    move v5, v4

    #@7ef
    goto/16 :goto_2

    #@7f1
    .line 502
    :cond_27
    const/4 v4, 0x1

    #@7f2
    goto/16 :goto_3

    #@7f4
    .line 519
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_28
    :try_start_41
    move-object/from16 v0, p0

    #@7f6
    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    #@7f8
    const/4 v5, 0x1

    #@7f9
    if-ne v4, v5, :cond_29

    #@7fb
    .line 520
    const-string/jumbo v4, "SystemServer"

    #@7fe
    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    #@801
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@804
    goto/16 :goto_4

    #@806
    .line 530
    .end local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v57

    #@807
    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v59, v60

    #@809
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v44, v45

    #@80b
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v89, v90

    #@80d
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v64, v65

    #@80f
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v94, v95

    #@811
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .local v94, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_33

    #@812
    .line 521
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_29
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@815
    move-result-object v4

    #@816
    .line 522
    const-string/jumbo v5, "android.hardware.bluetooth"

    #@819
    .line 521
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@81c
    move-result v4

    #@81d
    if-nez v4, :cond_2a

    #@81f
    .line 523
    const-string/jumbo v4, "SystemServer"

    #@822
    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    #@825
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@828
    goto/16 :goto_4

    #@82a
    .line 524
    :cond_2a
    if-eqz v49, :cond_2b

    #@82c
    .line 525
    const-string/jumbo v4, "SystemServer"

    #@82f
    const-string/jumbo v5, "Bluetooth Service disabled by config"

    #@832
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@835
    goto/16 :goto_4

    #@837
    .line 527
    :cond_2b
    const-string/jumbo v4, "SystemServer"

    #@83a
    const-string/jumbo v5, "Bluetooth Service"

    #@83d
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@840
    .line 528
    move-object/from16 v0, p0

    #@842
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@844
    const-class v5, Lcom/android/server/BluetoothService;

    #@846
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_2

    #@849
    goto/16 :goto_4

    #@84b
    .line 552
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v65    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .end local v99    # "watchdog":Lcom/android/server/Watchdog;
    .end local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v62    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v67    # "location":Lcom/android/server/LocationManagerService;
    .restart local v69    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v82, "notification":Landroid/app/INotificationManager;
    .restart local v87    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v91    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v97    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v58

    #@84c
    .line 553
    .end local v62    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v4, "starting Input Manager Service"

    #@84f
    move-object/from16 v0, p0

    #@851
    move-object/from16 v1, v58

    #@853
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@856
    goto/16 :goto_6

    #@858
    .line 560
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v58

    #@859
    .line 561
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    #@85c
    move-object/from16 v0, p0

    #@85e
    move-object/from16 v1, v58

    #@860
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@863
    goto/16 :goto_7

    #@865
    .line 567
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v58

    #@866
    .line 568
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    #@869
    move-object/from16 v0, p0

    #@86b
    move-object/from16 v1, v58

    #@86d
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@870
    goto/16 :goto_8

    #@872
    .line 579
    .end local v58    # "e":Ljava/lang/Throwable;
    :cond_2c
    :try_start_42
    move-object/from16 v0, p0

    #@874
    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    #@876
    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    #@879
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    #@87c
    .line 581
    const-string/jumbo v4, "mount"

    #@87f
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@882
    move-result-object v4

    #@883
    .line 580
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_6

    #@886
    move-result-object v75

    #@887
    .local v75, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_9

    #@889
    .line 582
    .local v75, "mountService":Landroid/os/storage/IMountService;
    :catch_6
    move-exception v58

    #@88a
    .line 583
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    #@88d
    move-object/from16 v0, p0

    #@88f
    move-object/from16 v1, v58

    #@891
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@894
    goto/16 :goto_9

    #@896
    .line 594
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v75    # "mountService":Landroid/os/storage/IMountService;
    :catch_7
    move-exception v58

    #@897
    .line 595
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing boot dexopt"

    #@89a
    move-object/from16 v0, p0

    #@89c
    move-object/from16 v1, v58

    #@89e
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8a1
    goto/16 :goto_a

    #@8a3
    .line 612
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v58

    #@8a4
    .line 613
    .end local v69    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_35
    const-string/jumbo v4, "starting LockSettingsService service"

    #@8a7
    move-object/from16 v0, p0

    #@8a9
    move-object/from16 v1, v58

    #@8ab
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8ae
    goto/16 :goto_c

    #@8b0
    .line 632
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v58

    #@8b1
    .line 633
    .end local v87    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v4, "starting StatusBarManagerService"

    #@8b4
    move-object/from16 v0, p0

    #@8b6
    move-object/from16 v1, v58

    #@8b8
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8bb
    goto/16 :goto_d

    #@8bd
    .line 642
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v58

    #@8be
    .line 643
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    #@8c1
    move-object/from16 v0, p0

    #@8c3
    move-object/from16 v1, v58

    #@8c5
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8c8
    goto/16 :goto_e

    #@8ca
    .line 652
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v58

    #@8cb
    .line 653
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    #@8ce
    move-object/from16 v0, p0

    #@8d0
    move-object/from16 v1, v58

    #@8d2
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8d5
    goto/16 :goto_f

    #@8d7
    .line 662
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v58

    #@8d8
    .line 663
    .end local v91    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "starting Text Service Manager Service"

    #@8db
    move-object/from16 v0, p0

    #@8dd
    move-object/from16 v1, v58

    #@8df
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8e2
    goto/16 :goto_10

    #@8e4
    .line 672
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v58

    #@8e5
    .line 673
    .end local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string/jumbo v4, "starting Network Score Service"

    #@8e8
    move-object/from16 v0, p0

    #@8ea
    move-object/from16 v1, v58

    #@8ec
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8ef
    goto/16 :goto_11

    #@8f1
    .line 680
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v58

    #@8f2
    .line 681
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "starting NetworkStats Service"

    #@8f5
    move-object/from16 v0, p0

    #@8f7
    move-object/from16 v1, v58

    #@8f9
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8fc
    goto/16 :goto_12

    #@8fe
    .line 691
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v58

    #@8ff
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v76

    #@901
    .line 692
    .end local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_3a
    const-string/jumbo v4, "starting NetworkPolicy Service"

    #@904
    move-object/from16 v0, p0

    #@906
    move-object/from16 v1, v58

    #@908
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@90b
    goto/16 :goto_13

    #@90d
    .line 714
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v58

    #@90e
    .line 715
    .end local v42    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v4, "starting Connectivity Service"

    #@911
    move-object/from16 v0, p0

    #@913
    move-object/from16 v1, v58

    #@915
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@918
    goto/16 :goto_14

    #@91a
    .line 723
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v86    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_11
    move-exception v58

    #@91b
    .line 724
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    #@91e
    move-object/from16 v0, p0

    #@920
    move-object/from16 v1, v58

    #@922
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@925
    goto/16 :goto_15

    #@927
    .line 733
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v58

    #@928
    .line 734
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    #@92b
    move-object/from16 v0, p0

    #@92d
    move-object/from16 v1, v58

    #@92f
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@932
    goto/16 :goto_16

    #@934
    .line 745
    .end local v58    # "e":Ljava/lang/Throwable;
    :cond_2d
    :try_start_43
    invoke-interface/range {v75 .. v75}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_43} :catch_13

    #@937
    goto/16 :goto_17

    #@939
    .line 746
    :catch_13
    move-exception v61

    #@93a
    .local v61, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_17

    #@93c
    .line 753
    .end local v61    # "ignored":Landroid/os/RemoteException;
    :catch_14
    move-exception v58

    #@93d
    .line 754
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Account Manager Service ready"

    #@940
    move-object/from16 v0, p0

    #@942
    move-object/from16 v1, v58

    #@944
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@947
    goto/16 :goto_18

    #@949
    .line 760
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v58

    #@94a
    .line 761
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Content Service ready"

    #@94d
    move-object/from16 v0, p0

    #@94f
    move-object/from16 v1, v58

    #@951
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@954
    goto/16 :goto_19

    #@956
    .line 776
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v82, "notification":Landroid/app/INotificationManager;
    :catch_16
    move-exception v58

    #@957
    .line 777
    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "starting Location Manager"

    #@95a
    move-object/from16 v0, p0

    #@95c
    move-object/from16 v1, v58

    #@95e
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@961
    goto/16 :goto_1a

    #@963
    .line 784
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v58

    #@964
    .line 785
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "starting Country Detector"

    #@967
    move-object/from16 v0, p0

    #@969
    move-object/from16 v1, v58

    #@96b
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@96e
    goto/16 :goto_1b

    #@970
    .line 794
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v58

    #@971
    .line 795
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    #@974
    move-object/from16 v0, p0

    #@976
    move-object/from16 v1, v58

    #@978
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@97b
    goto/16 :goto_1c

    #@97d
    .line 803
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v58

    #@97e
    .line 804
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DropBoxManagerService"

    #@981
    move-object/from16 v0, p0

    #@983
    move-object/from16 v1, v58

    #@985
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@988
    goto/16 :goto_1d

    #@98a
    .line 813
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v58

    #@98b
    .line 814
    .end local v97    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting Wallpaper Service"

    #@98e
    move-object/from16 v0, p0

    #@990
    move-object/from16 v1, v58

    #@992
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@995
    goto/16 :goto_1e

    #@997
    .line 822
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v58

    #@998
    .line 823
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting Audio Service"

    #@99b
    move-object/from16 v0, p0

    #@99d
    move-object/from16 v1, v58

    #@99f
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9a2
    goto/16 :goto_1f

    #@9a4
    .line 835
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v58

    #@9a5
    .line 836
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    #@9a8
    move-object/from16 v0, p0

    #@9aa
    move-object/from16 v1, v58

    #@9ac
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9af
    goto/16 :goto_20

    #@9b1
    .line 857
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v58

    #@9b2
    .line 858
    .end local v84    # "serial":Lcom/android/server/SerialService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v4, "SystemServer"

    #@9b5
    const-string/jumbo v5, "Failure starting SerialService"

    #@9b8
    move-object/from16 v0, v58

    #@9ba
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9bd
    goto/16 :goto_21

    #@9bf
    .line 883
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v58

    #@9c0
    .line 884
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    #@9c3
    move-object/from16 v0, p0

    #@9c5
    move-object/from16 v1, v58

    #@9c7
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9ca
    goto/16 :goto_22

    #@9cc
    .line 895
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v58

    #@9cd
    .line 896
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    #@9d0
    move-object/from16 v0, p0

    #@9d2
    move-object/from16 v1, v58

    #@9d4
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9d7
    goto/16 :goto_23

    #@9d9
    .line 901
    .end local v58    # "e":Ljava/lang/Throwable;
    :cond_2e
    :try_start_44
    const-string/jumbo v4, "SystemServer"

    #@9dc
    const-string/jumbo v5, "NetworkTimeUpdateService"

    #@9df
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9e2
    .line 902
    new-instance v81, Lcom/android/server/NetworkTimeUpdateService;

    #@9e4
    move-object/from16 v0, v81

    #@9e6
    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_20

    #@9e9
    .end local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v81, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v80, v81

    #@9eb
    .end local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v80, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_24

    #@9ed
    .line 903
    .local v80, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_20
    move-exception v58

    #@9ee
    .line 904
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    #@9f1
    move-object/from16 v0, p0

    #@9f3
    move-object/from16 v1, v58

    #@9f5
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9f8
    goto/16 :goto_24

    #@9fa
    .line 912
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_21
    move-exception v58

    #@9fb
    .line 913
    .end local v39    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    #@9fe
    move-object/from16 v0, p0

    #@a00
    move-object/from16 v1, v58

    #@a02
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a05
    goto/16 :goto_25

    #@a07
    .line 920
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v58

    #@a08
    .line 921
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    #@a0b
    move-object/from16 v0, p0

    #@a0d
    move-object/from16 v1, v58

    #@a0f
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a12
    goto/16 :goto_26

    #@a14
    .line 935
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v58

    #@a15
    .line 936
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v4, "starting AssetAtlasService"

    #@a18
    move-object/from16 v0, p0

    #@a1a
    move-object/from16 v1, v58

    #@a1c
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a1f
    goto/16 :goto_27

    #@a21
    .line 966
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v58

    #@a22
    .line 967
    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v58    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string/jumbo v4, "starting MediaRouterService"

    #@a25
    move-object/from16 v0, p0

    #@a27
    move-object/from16 v1, v58

    #@a29
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a2c
    goto/16 :goto_28

    #@a2e
    .line 977
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v58

    #@a2f
    .line 978
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    #@a32
    move-object/from16 v0, p0

    #@a34
    move-object/from16 v1, v58

    #@a36
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a39
    goto/16 :goto_29

    #@a3b
    .line 999
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v82    # "notification":Landroid/app/INotificationManager;
    .restart local v83    # "safeMode":Z
    :cond_2f
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@a3e
    move-result-object v4

    #@a3f
    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    #@a42
    goto/16 :goto_2b

    #@a44
    .line 1009
    .local v74, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_26
    move-exception v58

    #@a45
    .line 1010
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    #@a48
    move-object/from16 v0, p0

    #@a4a
    move-object/from16 v1, v58

    #@a4c
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a4f
    goto/16 :goto_2c

    #@a51
    .line 1016
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v58

    #@a52
    .line 1017
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    #@a55
    move-object/from16 v0, p0

    #@a57
    move-object/from16 v1, v58

    #@a59
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a5c
    goto/16 :goto_2d

    #@a5e
    .line 1028
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v58

    #@a5f
    .line 1029
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    #@a62
    move-object/from16 v0, p0

    #@a64
    move-object/from16 v1, v58

    #@a66
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a69
    goto/16 :goto_2e

    #@a6b
    .line 1048
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v41    # "config":Landroid/content/res/Configuration;
    .restart local v73    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v96    # "w":Landroid/view/WindowManager;
    :catch_29
    move-exception v58

    #@a6c
    .line 1049
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    #@a6f
    move-object/from16 v0, p0

    #@a71
    move-object/from16 v1, v58

    #@a73
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a76
    goto/16 :goto_2f

    #@a78
    .line 1054
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v58

    #@a79
    .line 1055
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    #@a7c
    move-object/from16 v0, p0

    #@a7e
    move-object/from16 v1, v58

    #@a80
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a83
    goto/16 :goto_30

    #@a85
    .line 1061
    .end local v58    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v58

    #@a86
    .line 1062
    .restart local v58    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    #@a89
    move-object/from16 v0, p0

    #@a8b
    move-object/from16 v1, v58

    #@a8d
    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a90
    goto/16 :goto_31

    #@a92
    .line 966
    .end local v41    # "config":Landroid/content/res/Configuration;
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v73    # "metrics":Landroid/util/DisplayMetrics;
    .end local v83    # "safeMode":Z
    .end local v96    # "w":Landroid/view/WindowManager;
    .restart local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v74, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v82    # "notification":Landroid/app/INotificationManager;
    :catch_2c
    move-exception v58

    #@a93
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v71, v72

    #@a95
    .end local v72    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v71, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto :goto_43

    #@a96
    .line 935
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v71, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2d
    move-exception v58

    #@a97
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    #@a99
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_42

    #@a9b
    .line 912
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_2e
    move-exception v58

    #@a9c
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v39, v40

    #@a9e
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_41

    #@aa0
    .line 857
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v39, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v85    # "serial":Lcom/android/server/SerialService;
    :catch_2f
    move-exception v58

    #@aa1
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v84, v85

    #@aa3
    .end local v85    # "serial":Lcom/android/server/SerialService;
    .local v84, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_40

    #@aa5
    .line 822
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v84, "serial":Lcom/android/server/SerialService;
    :catch_30
    move-exception v58

    #@aa6
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v35, v36

    #@aa8
    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_3f

    #@aaa
    .line 813
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v98    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_31
    move-exception v58

    #@aab
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v97, v98

    #@aad
    .end local v98    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v97, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_3e

    #@aaf
    .line 784
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v97, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_32
    move-exception v58

    #@ab0
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v47, v48

    #@ab2
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_3d

    #@ab4
    .line 776
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v47, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v68    # "location":Lcom/android/server/LocationManagerService;
    :catch_33
    move-exception v58

    #@ab5
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v67, v68

    #@ab7
    .end local v68    # "location":Lcom/android/server/LocationManagerService;
    .local v67, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3c

    #@ab9
    .line 714
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v67, "location":Lcom/android/server/LocationManagerService;
    .local v82, "notification":Landroid/app/INotificationManager;
    .restart local v86    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_34
    move-exception v58

    #@aba
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v42, v43

    #@abc
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3b

    #@abe
    .line 691
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v42, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_35
    move-exception v58

    #@abf
    .restart local v58    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3a

    #@ac1
    .line 680
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v79    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_36
    move-exception v58

    #@ac2
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v79

    #@ac4
    .end local v79    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_39

    #@ac6
    .line 672
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_37
    move-exception v58

    #@ac7
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v77, v78

    #@ac9
    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v77, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_38

    #@acb
    .line 662
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v77, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v92    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_38
    move-exception v58

    #@acc
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v91, v92

    #@ace
    .end local v92    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v91, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_37

    #@ad0
    .line 632
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v91, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_39
    move-exception v58

    #@ad1
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v87, v88

    #@ad3
    .end local v88    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v87, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_36

    #@ad5
    .line 612
    .end local v58    # "e":Ljava/lang/Throwable;
    .restart local v70    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v87, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3a
    move-exception v58

    #@ad6
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v69, v70

    #@ad8
    .end local v70    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v69, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_35

    #@ada
    .line 603
    .end local v58    # "e":Ljava/lang/Throwable;
    .local v69, "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3b
    move-exception v56

    #@adb
    .local v56, "e":Landroid/os/RemoteException;
    goto/16 :goto_b

    #@add
    .line 552
    .end local v56    # "e":Landroid/os/RemoteException;
    .restart local v63    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v75    # "mountService":Landroid/os/storage/IMountService;
    :catch_3c
    move-exception v58

    #@ade
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v62, v63

    #@ae0
    .end local v63    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v62, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_34

    #@ae2
    .line 530
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v62    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    .end local v69    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v82    # "notification":Landroid/app/INotificationManager;
    .end local v87    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v91    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v97    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .local v59, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v89, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v94, "vibrator":Lcom/android/server/VibratorService;
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_3d
    move-exception v57

    #@ae3
    .restart local v57    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_33

    #@ae5
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_3e
    move-exception v57

    #@ae6
    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v89, v90

    #@ae8
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v89, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_33

    #@aea
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_3f
    move-exception v57

    #@aeb
    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v59, v60

    #@aed
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v59, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v89, v90

    #@aef
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v31

    #@af1
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_33

    #@af3
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "vibrator":Lcom/android/server/VibratorService;
    :catch_40
    move-exception v57

    #@af4
    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v59, v60

    #@af6
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v89, v90

    #@af8
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v94, v95

    #@afa
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .local v94, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_33

    #@afc
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v95    # "vibrator":Lcom/android/server/VibratorService;
    :catch_41
    move-exception v57

    #@afd
    .restart local v57    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v59, v60

    #@aff
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v44, v45

    #@b01
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v89, v90

    #@b03
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v94, v95

    #@b05
    .end local v95    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v94    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_33

    #@b07
    .line 469
    .end local v57    # "e":Ljava/lang/RuntimeException;
    .end local v59    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .local v44, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "contentService":Lcom/android/server/content/ContentService;
    .restart local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v94, "vibrator":Lcom/android/server/VibratorService;
    :catch_42
    move-exception v58

    #@b08
    .restart local v58    # "e":Ljava/lang/Throwable;
    move-object/from16 v30, v31

    #@b0a
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_32

    #@b0c
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v44    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v46    # "contentService":Lcom/android/server/content/ContentService;
    .end local v58    # "e":Ljava/lang/Throwable;
    .end local v60    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v75    # "mountService":Landroid/os/storage/IMountService;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v94    # "vibrator":Lcom/android/server/VibratorService;
    .end local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v67    # "location":Lcom/android/server/LocationManagerService;
    .restart local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v82    # "notification":Landroid/app/INotificationManager;
    .restart local v97    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_30
    move-object/from16 v2, v76

    #@b0e
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_15

    #@b10
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v69    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v87    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v91    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_31
    move-object/from16 v2, v76

    #@b12
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2a
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 1219
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@5
    .line 1220
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    #@7
    const-string/jumbo v2, "com.android.systemui"

    #@a
    .line 1221
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    #@d
    .line 1220
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@13
    .line 1223
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@15
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    #@18
    .line 1218
    return-void
.end method
