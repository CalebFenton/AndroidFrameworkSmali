.class public Lcom/android/server/retaildemo/RetailDemoModeService;
.super Lcom/android/server/SystemService;
.source "RetailDemoModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/retaildemo/RetailDemoModeService$1;,
        Lcom/android/server/retaildemo/RetailDemoModeService$2;,
        Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;,
        Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_DEMO:Ljava/lang/String; = "com.android.server.retaildemo.ACTION_RESET_DEMO"

.field private static final DEBUG:Z = false

.field private static final DEMO_SESSION_COUNT:Ljava/lang/String; = "retail_demo_session_count"

.field private static final DEMO_SESSION_DURATION:Ljava/lang/String; = "retail_demo_session_duration"

.field private static final DEMO_USER_NAME:Ljava/lang/String; = "Demo"

.field private static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MSG_INACTIVITY_TIME_OUT:I = 0x1

.field private static final MSG_START_NEW_SESSION:I = 0x2

.field private static final MSG_TURN_SCREEN_ON:I = 0x0

.field private static final SCREEN_WAKEUP_DELAY:J = 0x9c4L

.field private static final SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED:Ljava/lang/String; = "sys.retaildemo.enabled"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_INACTIVITY_TIMEOUT_DEFAULT:J = 0x15f90L

.field private static final USER_INACTIVITY_TIMEOUT_MIN:J = 0x2710L

.field private static final VOLUME_STREAMS_TO_MUTE:[I

.field private static final WARNING_DIALOG_TIMEOUT_DEFAULT:J


# instance fields
.field final mActivityLock:Ljava/lang/Object;

.field private mAmi:Landroid/app/ActivityManagerInternal;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraIdsWithFlash:[Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field mCurrentUserId:I

.field mDeviceInDemoMode:Z

.field mFirstUserActivityTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field mLastUserActivityTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field private mLocalService:Landroid/app/RetailDemoModeServiceInternal;

.field private mNm:Landroid/app/NotificationManager;

.field private mPm:Landroid/os/PowerManager;

.field private mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

.field private mResetDemoPendingIntent:Landroid/app/PendingIntent;

.field private mSystemUserConfiguration:Landroid/content/res/Configuration;

.field private mUm:Landroid/os/UserManager;

.field mUserInactivityTimeout:J

.field mUserUntouched:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActivityLock"
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWarningDialogTimeout:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/retaildemo/PreloadAppsInstaller;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/retaildemo/RetailDemoModeService;)Landroid/os/UserManager;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/retaildemo/RetailDemoModeService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->deletePreloadsFolderContents()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/retaildemo/RetailDemoModeService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->isDeviceProvisioned()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/retaildemo/RetailDemoModeService;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getActivityManager()Lcom/android/server/am/ActivityManagerService;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->putDeviceInDemoMode()V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/retaildemo/RetailDemoModeService;->setupDemoUser(Landroid/content/pm/UserInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/retaildemo/RetailDemoModeService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->showInactivityCountdownDialog()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 81
    const-class v0, Lcom/android/server/retaildemo/RetailDemoModeService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@8
    .line 98
    const/4 v0, 0x2

    #@9
    .line 99
    const/4 v1, 0x3

    #@a
    .line 97
    filled-new-array {v0, v1}, [I

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/android/server/retaildemo/RetailDemoModeService;->VOLUME_STREAMS_TO_MUTE:[I

    #@10
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 106
    iput-boolean v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    #@6
    .line 107
    iput v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    #@8
    .line 126
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    #@f
    .line 135
    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$1;

    #@11
    invoke-direct {v0, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$1;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    #@14
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@16
    .line 555
    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$2;

    #@18
    invoke-direct {v0, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$2;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLocalService:Landroid/app/RetailDemoModeServiceInternal;

    #@1d
    .line 288
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    #@1f
    monitor-enter v1

    #@20
    .line 289
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@23
    move-result-wide v2

    #@24
    iput-wide v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J

    #@26
    iput-wide v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mFirstUserActivityTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v1

    #@29
    .line 286
    return-void

    #@2a
    .line 288
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit v1

    #@2c
    throw v0
.end method

.method private clearPrimaryCallLog()V
    .locals 6

    #@0
    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 372
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    #@a
    .line 374
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    #@b
    const/4 v4, 0x0

    #@c
    :try_start_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 368
    :goto_0
    return-void

    #@10
    .line 375
    :catch_0
    move-exception v0

    #@11
    .line 376
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@13
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v5, "Deleting call log failed: "

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    goto :goto_0
.end method

.method private createResetNotification()Landroid/app/Notification;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 294
    new-instance v0, Landroid/app/Notification$Builder;

    #@3
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@a
    .line 295
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    const v2, 0x10405f8

    #@11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@18
    move-result-object v0

    #@19
    .line 296
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    const v2, 0x10405f9

    #@20
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@2b
    move-result-object v0

    #@2c
    .line 298
    const v1, 0x1080555

    #@2f
    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@32
    move-result-object v0

    #@33
    .line 299
    const/4 v1, 0x0

    #@34
    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@3b
    move-result-object v0

    #@3c
    .line 301
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getResetDemoPendingIntent()Landroid/app/PendingIntent;

    #@3f
    move-result-object v1

    #@40
    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@43
    move-result-object v0

    #@44
    .line 302
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@47
    move-result-object v1

    #@48
    const v2, 0x106005b

    #@4b
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    #@4e
    move-result v1

    #@4f
    .line 294
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@56
    move-result-object v0

    #@57
    return-object v0
.end method

.method private deletePreloadsFolderContents()Z
    .locals 4

    #@0
    .prologue
    .line 415
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    .line 416
    .local v0, "dir":Ljava/io/File;
    sget-object v1, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Deleting contents of "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 417
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    #@20
    move-result v1

    #@21
    return v1
.end method

.method private getActivityManager()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAms:Lcom/android/server/am/ActivityManagerService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 390
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    #@a
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAms:Lcom/android/server/am/ActivityManagerService;

    #@c
    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAms:Lcom/android/server/am/ActivityManagerService;

    #@e
    return-object v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAudioManager:Landroid/media/AudioManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 404
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    const-class v1, Landroid/media/AudioManager;

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/media/AudioManager;

    #@10
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAudioManager:Landroid/media/AudioManager;

    #@12
    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAudioManager:Landroid/media/AudioManager;

    #@14
    return-object v0
.end method

.method private getCameraIdsWithFlash()[Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 428
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 430
    .local v2, "cameraIdsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    #@7
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    #@a
    move-result-object v5

    #@b
    const/4 v4, 0x0

    #@c
    array-length v6, v5

    #@d
    :goto_0
    if-ge v4, v6, :cond_1

    #@f
    aget-object v1, v5, v4

    #@11
    .line 431
    .local v1, "cameraId":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    #@13
    invoke-virtual {v7, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    #@16
    move-result-object v0

    #@17
    .line 432
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@19
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1b
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@1e
    move-result-object v8

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_0

    #@25
    .line 433
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 430
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 436
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@2c
    .line 437
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v4, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@2e
    const-string/jumbo v5, "Unable to access camera while getting camera id list"

    #@31
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    .line 439
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v4

    #@38
    new-array v4, v4, [Ljava/lang/String;

    #@3a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3d
    move-result-object v4

    #@3e
    check-cast v4, [Ljava/lang/String;

    #@40
    return-object v4
.end method

.method private getResetDemoPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 307
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mResetDemoPendingIntent:Landroid/app/PendingIntent;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 308
    new-instance v0, Landroid/content/Intent;

    #@7
    const-string/jumbo v1, "com.android.server.retaildemo.ACTION_RESET_DEMO"

    #@a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 309
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mResetDemoPendingIntent:Landroid/app/PendingIntent;

    #@17
    .line 311
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mResetDemoPendingIntent:Landroid/app/PendingIntent;

    #@19
    return-object v1
.end method

.method private getSystemUsersConfiguration()Landroid/content/res/Configuration;
    .locals 2

    #@0
    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mSystemUserConfiguration:Landroid/content/res/Configuration;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 461
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v0

    #@c
    .line 462
    new-instance v1, Landroid/content/res/Configuration;

    #@e
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    #@11
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mSystemUserConfiguration:Landroid/content/res/Configuration;

    #@13
    .line 461
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    #@16
    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mSystemUserConfiguration:Landroid/content/res/Configuration;

    #@18
    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 2

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mUm:Landroid/os/UserManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 397
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    const-class v1, Landroid/os/UserManager;

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/os/UserManager;

    #@10
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mUm:Landroid/os/UserManager;

    #@12
    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mUm:Landroid/os/UserManager;

    #@14
    return-object v0
.end method

.method private grantRuntimePermissionToCamera(Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    #@5
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 353
    .local v0, "cameraIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@f
    move-result-object v3

    #@10
    .line 356
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@13
    move-result v4

    #@14
    .line 355
    const/high16 v5, 0xc0000

    #@16
    .line 354
    invoke-virtual {v3, v0, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@19
    move-result-object v2

    #@1a
    .line 357
    .local v2, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    #@1c
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1e
    if-nez v4, :cond_1

    #@20
    .line 358
    :cond_0
    return-void

    #@21
    .line 361
    :cond_1
    :try_start_0
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@23
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@25
    .line 362
    const-string/jumbo v5, "android.permission.ACCESS_FINE_LOCATION"

    #@28
    .line 361
    invoke-virtual {v3, v4, v5, p1}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 351
    :goto_0
    return-void

    #@2c
    .line 363
    :catch_0
    move-exception v1

    #@2d
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 411
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, "device_provisioned"

    #@c
    .line 410
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    return v0
.end method

.method private muteVolumeStreams()V
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 453
    sget-object v3, Lcom/android/server/retaildemo/RetailDemoModeService;->VOLUME_STREAMS_TO_MUTE:[I

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_0

    #@7
    aget v0, v3, v1

    #@9
    .line 454
    .local v0, "stream":I
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getAudioManager()Landroid/media/AudioManager;

    #@c
    move-result-object v5

    #@d
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getAudioManager()Landroid/media/AudioManager;

    #@10
    move-result-object v6

    #@11
    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    #@14
    move-result v6

    #@15
    invoke-virtual {v5, v0, v6, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    #@18
    .line 453
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 452
    .end local v0    # "stream":I
    :cond_0
    return-void
.end method

.method private putDeviceInDemoMode()V
    .locals 2

    #@0
    .prologue
    .line 468
    const-string/jumbo v0, "sys.retaildemo.enabled"

    #@3
    const-string/jumbo v1, "1"

    #@6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 469
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@f
    .line 467
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    #@0
    .prologue
    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    #@5
    .line 422
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@b
    .line 423
    const-string/jumbo v1, "com.android.server.retaildemo.ACTION_RESET_DEMO"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@11
    .line 424
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@17
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1a
    .line 420
    return-void
.end method

.method private setupDemoUser(Landroid/content/pm/UserInfo;)V
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 330
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getUserManager()Landroid/os/UserManager;

    #@5
    move-result-object v0

    #@6
    .line 331
    .local v0, "um":Landroid/os/UserManager;
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    #@8
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@b
    move-result-object v1

    #@c
    .line 332
    .local v1, "user":Landroid/os/UserHandle;
    const-string/jumbo v2, "no_config_wifi"

    #@f
    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@12
    .line 333
    const-string/jumbo v2, "no_install_unknown_sources"

    #@15
    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@18
    .line 334
    const-string/jumbo v2, "no_config_mobile_networks"

    #@1b
    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@1e
    .line 335
    const-string/jumbo v2, "no_usb_file_transfer"

    #@21
    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@24
    .line 336
    const-string/jumbo v2, "no_modify_accounts"

    #@27
    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@2a
    .line 337
    const-string/jumbo v2, "no_config_bluetooth"

    #@2d
    invoke-virtual {v0, v2, v5, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@30
    .line 339
    const-string/jumbo v2, "no_outgoing_calls"

    #@33
    invoke-virtual {v0, v2, v6, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@36
    .line 341
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getUserManager()Landroid/os/UserManager;

    #@39
    move-result-object v2

    #@3a
    const-string/jumbo v3, "no_safe_boot"

    #@3d
    .line 342
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@3f
    .line 341
    invoke-virtual {v2, v3, v5, v4}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    #@42
    .line 343
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@49
    move-result-object v2

    #@4a
    .line 344
    const-string/jumbo v3, "skip_first_use_hints"

    #@4d
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    #@4f
    .line 343
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@52
    .line 345
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@59
    move-result-object v2

    #@5a
    .line 346
    const-string/jumbo v3, "package_verifier_enable"

    #@5d
    .line 345
    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@60
    .line 347
    invoke-direct {p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->grantRuntimePermissionToCamera(Landroid/os/UserHandle;)V

    #@63
    .line 348
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->clearPrimaryCallLog()V

    #@66
    .line 329
    return-void
.end method

.method private showInactivityCountdownDialog()V
    .locals 6

    #@0
    .prologue
    .line 268
    new-instance v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    #@2
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    .line 269
    iget-wide v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWarningDialogTimeout:J

    #@8
    const-wide/16 v4, 0x3e8

    #@a
    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;-><init>(Landroid/content/Context;JJ)V

    #@d
    .line 270
    .local v0, "dialog":Lcom/android/server/retaildemo/UserInactivityCountdownDialog;
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    #@11
    .line 271
    new-instance v1, Lcom/android/server/retaildemo/RetailDemoModeService$3;

    #@13
    invoke-direct {v1, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$3;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    #@19
    .line 277
    new-instance v1, Lcom/android/server/retaildemo/RetailDemoModeService$4;

    #@1b
    invoke-direct {v1, p0}, Lcom/android/server/retaildemo/RetailDemoModeService$4;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;)V

    #@1e
    invoke-virtual {v0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setOnCountDownExpiredListener(Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;)V

    #@21
    .line 283
    invoke-virtual {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->show()V

    #@24
    .line 267
    return-void
.end method

.method private turnOffAllFlashLights()V
    .locals 8

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 443
    iget-object v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraIdsWithFlash:[Ljava/lang/String;

    #@3
    array-length v4, v3

    #@4
    :goto_0
    if-ge v2, v4, :cond_0

    #@6
    aget-object v0, v3, v2

    #@8
    .line 445
    .local v0, "cameraId":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    #@a
    const/4 v6, 0x0

    #@b
    invoke-virtual {v5, v0, v6}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 443
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 446
    :catch_0
    move-exception v1

    #@12
    .line 447
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v5, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@14
    new-instance v6, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v7, "Unable to access camera "

    #@1c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    const-string/jumbo v7, " while turning off flash"

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    goto :goto_1

    #@33
    .line 442
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    return-void
.end method


# virtual methods
.method isDemoLauncherDisabled()Z
    .locals 6

    #@0
    .prologue
    .line 315
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v3

    #@4
    .line 316
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x0

    #@5
    .line 317
    .local v1, "enabledState":I
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v4

    #@d
    .line 318
    const v5, 0x1040072

    #@10
    .line 317
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 321
    .local v0, "demoLauncherComponent":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@17
    move-result-object v4

    #@18
    .line 322
    iget v5, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    #@1a
    .line 320
    invoke-interface {v3, v4, v5}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result v1

    #@1e
    .line 326
    :goto_0
    const/4 v4, 0x2

    #@1f
    if-ne v1, v4, :cond_0

    #@21
    const/4 v4, 0x1

    #@22
    :goto_1
    return v4

    #@23
    .line 323
    :catch_0
    move-exception v2

    #@24
    .line 324
    .local v2, "exc":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@26
    const-string/jumbo v5, "Unable to talk to Package Manager"

    #@29
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2c
    goto :goto_0

    #@2d
    .line 326
    .end local v2    # "exc":Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    #@2e
    goto :goto_1
.end method

.method logSessionDuration()V
    .locals 8

    #@0
    .prologue
    .line 382
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 383
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLastUserActivityTime:J

    #@5
    iget-wide v6, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mFirstUserActivityTime:J

    #@7
    sub-long/2addr v4, v6

    #@8
    const-wide/16 v6, 0x3e8

    #@a
    div-long/2addr v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    long-to-int v0, v4

    #@c
    .local v0, "sessionDuration":I
    monitor-exit v2

    #@d
    .line 385
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "retail_demo_session_duration"

    #@14
    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@17
    .line 380
    return-void

    #@18
    .line 382
    .end local v0    # "sessionDuration":I
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "bootPhase"    # I

    #@0
    .prologue
    .line 486
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 485
    :cond_0
    :goto_0
    return-void

    #@4
    .line 488
    :sswitch_0
    new-instance v1, Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@6
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v1, v2}, Lcom/android/server/retaildemo/PreloadAppsInstaller;-><init>(Landroid/content/Context;)V

    #@d
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPreloadAppsInstaller:Lcom/android/server/retaildemo/PreloadAppsInstaller;

    #@f
    .line 489
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, "power"

    #@16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/os/PowerManager;

    #@1c
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPm:Landroid/os/PowerManager;

    #@1e
    .line 490
    const-class v1, Landroid/app/ActivityManagerInternal;

    #@20
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/app/ActivityManagerInternal;

    #@26
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAmi:Landroid/app/ActivityManagerInternal;

    #@28
    .line 491
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mPm:Landroid/os/PowerManager;

    #@2a
    .line 494
    sget-object v2, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@2c
    .line 493
    const v3, 0x1000001a

    #@2f
    .line 491
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@35
    .line 495
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@38
    move-result-object v1

    #@39
    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mNm:Landroid/app/NotificationManager;

    #@3f
    .line 496
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@42
    move-result-object v1

    #@43
    const-string/jumbo v2, "wifi"

    #@46
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Landroid/net/wifi/WifiManager;

    #@4c
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@4e
    .line 497
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@51
    move-result-object v1

    #@52
    .line 498
    const-string/jumbo v2, "camera"

    #@55
    .line 497
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@58
    move-result-object v1

    #@59
    check-cast v1, Landroid/hardware/camera2/CameraManager;

    #@5b
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    #@5d
    .line 499
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getCameraIdsWithFlash()[Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    iput-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCameraIdsWithFlash:[Ljava/lang/String;

    #@63
    .line 500
    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;

    #@65
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@67
    invoke-direct {v0, p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Handler;)V

    #@6a
    .line 501
    .local v0, "settingsObserver":Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->register()V

    #@6d
    .line 502
    invoke-static {v0}, Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;->-wrap0(Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;)V

    #@70
    .line 503
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->registerBroadcastReceiver()V

    #@73
    goto :goto_0

    #@74
    .line 506
    .end local v0    # "settingsObserver":Lcom/android/server/retaildemo/RetailDemoModeService$SettingsObserver;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@77
    move-result-object v1

    #@78
    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    #@7b
    move-result v1

    #@7c
    if-eqz v1, :cond_0

    #@7e
    .line 507
    const/4 v1, 0x1

    #@7f
    iput-boolean v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    #@81
    .line 508
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->putDeviceInDemoMode()V

    #@84
    goto/16 :goto_0

    #@86
    .line 486
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStart()V
    .locals 4

    #@0
    .prologue
    .line 477
    new-instance v0, Lcom/android/server/ServiceThread;

    #@2
    sget-object v1, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@4
    const/4 v2, -0x2

    #@5
    .line 478
    const/4 v3, 0x0

    #@6
    .line 477
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    #@9
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@b
    .line 479
    iget-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@d
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    #@10
    .line 480
    new-instance v0, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;

    #@12
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@14
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, p0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService$MainHandler;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;Landroid/os/Looper;)V

    #@1b
    iput-object v0, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@1d
    .line 481
    const-class v0, Landroid/app/RetailDemoModeServiceInternal;

    #@1f
    iget-object v1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mLocalService:Landroid/app/RetailDemoModeServiceInternal;

    #@21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/retaildemo/RetailDemoModeService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@24
    .line 473
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 516
    iget-boolean v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mDeviceInDemoMode:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 517
    return-void

    #@6
    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getUserManager()Landroid/os/UserManager;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@d
    move-result-object v1

    #@e
    .line 523
    .local v1, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDemo()Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_1

    #@14
    .line 524
    sget-object v2, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@16
    const-string/jumbo v3, "Should not allow switch to non-demo user in demo mode"

    #@19
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 525
    return-void

    #@1d
    .line 527
    :cond_1
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1f
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@22
    move-result v2

    #@23
    if-nez v2, :cond_2

    #@25
    .line 528
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@27
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@2a
    .line 530
    :cond_2
    iput p1, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mCurrentUserId:I

    #@2c
    .line 531
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mAmi:Landroid/app/ActivityManagerInternal;

    #@2e
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getSystemUsersConfiguration()Landroid/content/res/Configuration;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v2, v3, p1}, Landroid/app/ActivityManagerInternal;->updatePersistentConfigurationForUser(Landroid/content/res/Configuration;I)V

    #@35
    .line 532
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->turnOffAllFlashLights()V

    #@38
    .line 533
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->muteVolumeStreams()V

    #@3b
    .line 534
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@3d
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    #@40
    move-result v2

    #@41
    if-nez v2, :cond_3

    #@43
    .line 535
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mWifiManager:Landroid/net/wifi/WifiManager;

    #@45
    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    #@48
    .line 538
    :cond_3
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #@4a
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #@51
    .line 539
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    #@54
    .line 540
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mNm:Landroid/app/NotificationManager;

    #@56
    sget-object v3, Lcom/android/server/retaildemo/RetailDemoModeService;->TAG:Ljava/lang/String;

    #@58
    invoke-direct {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->createResetNotification()Landroid/app/Notification;

    #@5b
    move-result-object v4

    #@5c
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    #@63
    .line 542
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mActivityLock:Ljava/lang/Object;

    #@65
    monitor-enter v2

    #@66
    .line 543
    const/4 v3, 0x1

    #@67
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mUserUntouched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@69
    monitor-exit v2

    #@6a
    .line 545
    invoke-virtual {p0}, Lcom/android/server/retaildemo/RetailDemoModeService;->getContext()Landroid/content/Context;

    #@6d
    move-result-object v2

    #@6e
    const-string/jumbo v3, "retail_demo_session_count"

    #@71
    invoke-static {v2, v3, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@74
    .line 546
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@76
    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    #@79
    .line 547
    iget-object v2, p0, Lcom/android/server/retaildemo/RetailDemoModeService;->mHandler:Landroid/os/Handler;

    #@7b
    new-instance v3, Lcom/android/server/retaildemo/RetailDemoModeService$5;

    #@7d
    invoke-direct {v3, p0, p1}, Lcom/android/server/retaildemo/RetailDemoModeService$5;-><init>(Lcom/android/server/retaildemo/RetailDemoModeService;I)V

    #@80
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@83
    .line 515
    return-void

    #@84
    .line 542
    :catchall_0
    move-exception v3

    #@85
    monitor-exit v2

    #@86
    throw v3
.end method
