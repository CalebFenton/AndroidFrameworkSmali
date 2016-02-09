.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@2
    return v0
.end method

.method static synthetic -get3()Lcom/android/server/power/ShutdownThread;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 81
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    #@7
    .line 82
    const/4 v0, 0x0

    #@8
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    #@a
    .line 100
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    #@c
    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    #@f
    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@11
    .line 102
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@13
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@16
    .line 103
    const/4 v1, 0x4

    #@17
    .line 102
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@1a
    move-result-object v0

    #@1b
    .line 104
    const/16 v1, 0xd

    #@1d
    .line 102
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@27
    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 107
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@a
    .line 118
    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 240
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 241
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 242
    const-string/jumbo v2, "ShutdownThread"

    #@d
    const-string/jumbo v4, "Shutdown sequence already running, returning."

    #@10
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v3

    #@14
    .line 243
    return-void

    #@15
    .line 245
    :cond_0
    const/4 v2, 0x1

    #@16
    :try_start_1
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v3

    #@19
    .line 249
    new-instance v1, Landroid/app/ProgressDialog;

    #@1b
    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #@1e
    .line 263
    .local v1, "pd":Landroid/app/ProgressDialog;
    const-string/jumbo v2, "recovery"

    #@21
    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_3

    #@29
    .line 264
    new-instance v2, Ljava/io/File;

    #@2b
    const-string/jumbo v3, "/cache/recovery/uncrypt_file"

    #@2e
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@31
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@34
    move-result v2

    #@35
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@37
    .line 265
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 266
    const v2, 0x10400fa

    #@3e
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@45
    .line 268
    const v2, 0x10400fb

    #@48
    .line 267
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@4f
    .line 269
    const/16 v2, 0x64

    #@51
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    #@54
    .line 270
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    #@57
    .line 271
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    #@5a
    .line 272
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    #@5d
    .line 273
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@60
    .line 286
    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    #@63
    .line 287
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@66
    move-result-object v2

    #@67
    const/16 v3, 0x7d9

    #@69
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    #@6c
    .line 289
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    #@6f
    .line 291
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@71
    iput-object v1, v2, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    #@73
    .line 292
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@75
    iput-object p0, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    #@77
    .line 293
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@79
    const-string/jumbo v2, "power"

    #@7c
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7f
    move-result-object v2

    #@80
    check-cast v2, Landroid/os/PowerManager;

    #@82
    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    #@84
    .line 296
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@86
    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@88
    .line 298
    :try_start_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@8a
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@8c
    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    #@8e
    .line 299
    const-string/jumbo v4, "ShutdownThread-cpu"

    #@91
    const/4 v5, 0x1

    #@92
    .line 298
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@95
    move-result-object v3

    #@96
    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@98
    .line 300
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@9a
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@9c
    const/4 v3, 0x0

    #@9d
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@a0
    .line 301
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@a2
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a4
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    #@a7
    .line 308
    :goto_1
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@a9
    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@ab
    .line 309
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@ad
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    #@af
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    #@b2
    move-result v2

    #@b3
    if-eqz v2, :cond_1

    #@b5
    .line 311
    :try_start_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@b7
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@b9
    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    #@bb
    .line 312
    const-string/jumbo v4, "ShutdownThread-screen"

    #@be
    const/16 v5, 0x1a

    #@c0
    .line 311
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@c3
    move-result-object v3

    #@c4
    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@c6
    .line 313
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@c8
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@ca
    const/4 v3, 0x0

    #@cb
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@ce
    .line 314
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@d0
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d2
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    #@d5
    .line 322
    :cond_1
    :goto_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@d7
    new-instance v3, Lcom/android/server/power/ShutdownThread$2;

    #@d9
    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    #@dc
    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    #@de
    .line 324
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@e0
    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread;->start()V

    #@e3
    .line 239
    return-void

    #@e4
    .line 240
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v2

    #@e5
    monitor-exit v3

    #@e6
    throw v2

    #@e7
    .line 276
    .restart local v1    # "pd":Landroid/app/ProgressDialog;
    :cond_2
    const v2, 0x10400fe

    #@ea
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@ed
    move-result-object v2

    #@ee
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@f1
    .line 278
    const v2, 0x10400ff

    #@f4
    .line 277
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@f7
    move-result-object v2

    #@f8
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@fb
    .line 279
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@fe
    goto/16 :goto_0

    #@100
    .line 282
    :cond_3
    const v2, 0x10400f6

    #@103
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@106
    move-result-object v2

    #@107
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@10a
    .line 283
    const v2, 0x1040100

    #@10d
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@110
    move-result-object v2

    #@111
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@114
    .line 284
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@117
    goto/16 :goto_0

    #@119
    .line 302
    :catch_0
    move-exception v0

    #@11a
    .line 303
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ShutdownThread"

    #@11d
    const-string/jumbo v3, "No permission to acquire wake lock"

    #@120
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@123
    .line 304
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@125
    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@127
    goto :goto_1

    #@128
    .line 315
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@129
    .line 316
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ShutdownThread"

    #@12c
    const-string/jumbo v3, "No permission to acquire wake lock"

    #@12f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@132
    .line 317
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@134
    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@136
    goto :goto_2
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 212
    const/4 v0, 0x1

    #@2
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    #@4
    .line 213
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@6
    .line 214
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@8
    .line 215
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    #@a
    .line 216
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    #@d
    .line 211
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 622
    if-eqz p1, :cond_1

    #@2
    .line 623
    const-string/jumbo v3, "ShutdownThread"

    #@5
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "Rebooting, reason: "

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 624
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    #@1f
    .line 625
    const-string/jumbo v3, "ShutdownThread"

    #@22
    const-string/jumbo v4, "Reboot failed, will attempt shutdown instead"

    #@25
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 644
    :cond_0
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    #@2b
    const-string/jumbo v4, "Performing low-level shutdown..."

    #@2e
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 645
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    #@34
    .line 621
    return-void

    #@35
    .line 626
    :cond_1
    if-eqz p0, :cond_0

    #@37
    .line 628
    new-instance v2, Landroid/os/SystemVibrator;

    #@39
    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    #@3c
    .line 630
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    #@3e
    :try_start_0
    sget-object v3, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@40
    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@43
    .line 638
    :goto_1
    const-wide/16 v4, 0x1f4

    #@45
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@48
    goto :goto_0

    #@49
    .line 639
    :catch_0
    move-exception v1

    #@4a
    .local v1, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    #@4b
    .line 631
    .end local v1    # "unused":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    #@4c
    .line 633
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ShutdownThread"

    #@4f
    const-string/jumbo v4, "Failed to vibrate during shutdown."

    #@52
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 227
    const-string/jumbo v1, "user"

    #@4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/os/UserManager;

    #@a
    .line 228
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    #@d
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 229
    return-void

    #@14
    .line 232
    :cond_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    #@16
    .line 233
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@18
    .line 234
    const/4 v1, 0x0

    #@19
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@1b
    .line 235
    const/4 v1, 0x0

    #@1c
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    #@1e
    .line 236
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    #@21
    .line 226
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    #@4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 479
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 130
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    #@3
    .line 131
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@5
    .line 132
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    #@8
    .line 129
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 138
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 139
    :try_start_0
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 140
    const-string/jumbo v3, "ShutdownThread"

    #@b
    const-string/jumbo v5, "Request to shutdown already running, returning."

    #@e
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v4

    #@12
    .line 141
    return-void

    #@13
    :cond_0
    monitor-exit v4

    #@14
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v3

    #@18
    .line 146
    const v4, 0x10e0048

    #@1b
    .line 145
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@1e
    move-result v1

    #@1f
    .line 147
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 148
    const v2, 0x1040104

    #@26
    .line 153
    .local v2, "resourceId":I
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    #@29
    new-instance v4, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v5, "Notifying thread to start shutdown longPressBehavior="

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 155
    if-eqz p1, :cond_5

    #@42
    .line 156
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    #@44
    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    #@47
    .line 157
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@49
    if-eqz v3, :cond_1

    #@4b
    .line 158
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@4d
    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    #@50
    .line 160
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    #@52
    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@55
    .line 161
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@57
    if-eqz v3, :cond_4

    #@59
    .line 162
    const v3, 0x1040103

    #@5c
    .line 160
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    #@63
    move-result-object v3

    #@64
    .line 165
    new-instance v4, Lcom/android/server/power/ShutdownThread$1;

    #@66
    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    #@69
    const v5, 0x1040013

    #@6c
    .line 160
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@6f
    move-result-object v3

    #@70
    .line 170
    const v4, 0x1040009

    #@73
    .line 160
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@76
    move-result-object v3

    #@77
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@7a
    move-result-object v3

    #@7b
    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@7d
    .line 172
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@7f
    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    #@81
    .line 173
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@83
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@86
    .line 174
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@88
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@8b
    move-result-object v3

    #@8c
    const/16 v4, 0x7d9

    #@8e
    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    #@91
    .line 175
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@93
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    #@96
    .line 135
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :goto_2
    return-void

    #@97
    .line 138
    .end local v1    # "longPressBehavior":I
    .end local v2    # "resourceId":I
    :catchall_0
    move-exception v3

    #@98
    monitor-exit v4

    #@99
    throw v3

    #@9a
    .line 149
    .restart local v1    # "longPressBehavior":I
    :cond_2
    const/4 v3, 0x2

    #@9b
    if-ne v1, v3, :cond_3

    #@9d
    .line 150
    const v2, 0x1040102

    #@a0
    .restart local v2    # "resourceId":I
    goto :goto_0

    #@a1
    .line 151
    .end local v2    # "resourceId":I
    :cond_3
    const v2, 0x1040101

    #@a4
    .restart local v2    # "resourceId":I
    goto :goto_0

    #@a5
    .line 163
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_4
    const v3, 0x10400f6

    #@a8
    goto :goto_1

    #@a9
    .line 177
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_5
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    #@ac
    goto :goto_2
.end method

.method private shutdownRadios(I)V
    .locals 12
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v8

    #@4
    int-to-long v10, p1

    #@5
    add-long v2, v8, v10

    #@7
    .line 497
    .local v2, "endTime":J
    const/4 v1, 0x1

    #@8
    new-array v5, v1, [Z

    #@a
    .line 498
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    #@c
    move-object v1, p0

    #@d
    move v4, p1

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    #@11
    .line 603
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@14
    .line 605
    int-to-long v8, p1

    #@15
    :try_start_0
    invoke-virtual {v0, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 608
    :goto_0
    const/4 v1, 0x0

    #@19
    aget-boolean v1, v5, v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 609
    const-string/jumbo v1, "ShutdownThread"

    #@20
    const-string/jumbo v4, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    #@23
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 493
    :cond_0
    return-void

    #@27
    .line 606
    :catch_0
    move-exception v6

    #@28
    .local v6, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private uncrypt()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 649
    const-string/jumbo v3, "ShutdownThread"

    #@4
    const-string/jumbo v4, "Calling uncrypt and monitoring the progress..."

    #@7
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 651
    const/4 v3, 0x1

    #@b
    new-array v0, v3, [Z

    #@d
    .line 652
    .local v0, "done":[Z
    aput-boolean v6, v0, v6

    #@f
    .line 653
    new-instance v1, Lcom/android/server/power/ShutdownThread$7;

    #@11
    invoke-direct {v1, p0, v0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;[Z)V

    #@14
    .line 715
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    #@17
    .line 718
    const-wide/32 v4, 0xdbba0

    #@1a
    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 721
    :goto_0
    aget-boolean v3, v0, v6

    #@1f
    if-nez v3, :cond_0

    #@21
    .line 722
    const-string/jumbo v3, "ShutdownThread"

    #@24
    const-string/jumbo v4, "Timed out waiting for uncrypt."

    #@27
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 648
    :cond_0
    return-void

    #@2b
    .line 719
    :catch_0
    move-exception v2

    #@2c
    .local v2, "unused":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    #@0
    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 329
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@6
    .line 330
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 327
    return-void

    #@d
    .line 328
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public run()V
    .locals 28

    #@0
    .prologue
    .line 339
    new-instance v6, Lcom/android/server/power/ShutdownThread$3;

    #@2
    move-object/from16 v0, p0

    #@4
    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;)V

    #@7
    .line 352
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    #@e
    if-eqz v2, :cond_a

    #@10
    const-string/jumbo v2, "1"

    #@13
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    #@19
    if-eqz v2, :cond_b

    #@1b
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    #@1d
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v24

    #@25
    .line 353
    .local v24, "reason":Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    #@28
    move-object/from16 v0, v24

    #@2a
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 360
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@2f
    if-eqz v2, :cond_0

    #@31
    .line 361
    const-string/jumbo v2, "persist.sys.safemode"

    #@34
    const-string/jumbo v4, "1"

    #@37
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 364
    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    #@3d
    const-string/jumbo v4, "Sending shutdown broadcast..."

    #@40
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 367
    const/4 v2, 0x0

    #@44
    move-object/from16 v0, p0

    #@46
    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@48
    .line 368
    new-instance v3, Landroid/content/Intent;

    #@4a
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    #@4d
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@50
    .line 369
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    #@52
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@55
    .line 370
    move-object/from16 v0, p0

    #@57
    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    #@59
    .line 371
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    #@5f
    const/4 v5, 0x0

    #@60
    const/4 v8, 0x0

    #@61
    const/4 v9, 0x0

    #@62
    const/4 v10, 0x0

    #@63
    .line 370
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@66
    .line 373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@69
    move-result-wide v4

    #@6a
    const-wide/16 v8, 0x2710

    #@6c
    add-long v20, v4, v8

    #@6e
    .line 374
    .local v20, "endTime":J
    move-object/from16 v0, p0

    #@70
    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@72
    monitor-enter v4

    #@73
    .line 375
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    #@75
    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@77
    if-nez v2, :cond_1

    #@79
    .line 376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7c
    move-result-wide v8

    #@7d
    sub-long v12, v20, v8

    #@7f
    .line 377
    .local v12, "delay":J
    const-wide/16 v8, 0x0

    #@81
    cmp-long v2, v12, v8

    #@83
    if-gtz v2, :cond_c

    #@85
    .line 378
    const-string/jumbo v2, "ShutdownThread"

    #@88
    const-string/jumbo v5, "Shutdown broadcast timed out"

    #@8b
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8e
    .end local v12    # "delay":J
    :cond_1
    monitor-exit v4

    #@8f
    .line 391
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@91
    if-eqz v2, :cond_2

    #@93
    .line 392
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@95
    const/4 v4, 0x2

    #@96
    const/4 v5, 0x0

    #@97
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@9a
    .line 395
    :cond_2
    const-string/jumbo v2, "ShutdownThread"

    #@9d
    const-string/jumbo v4, "Shutting down activity manager..."

    #@a0
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 398
    const-string/jumbo v2, "activity"

    #@a6
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@a9
    move-result-object v2

    #@aa
    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    #@ad
    move-result-object v11

    #@ae
    .line 399
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    #@b0
    .line 401
    const/16 v2, 0x2710

    #@b2
    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@b5
    .line 405
    :cond_3
    :goto_3
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@b7
    if-eqz v2, :cond_4

    #@b9
    .line 406
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@bb
    const/4 v4, 0x4

    #@bc
    const/4 v5, 0x0

    #@bd
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@c0
    .line 409
    :cond_4
    const-string/jumbo v2, "ShutdownThread"

    #@c3
    const-string/jumbo v4, "Shutting down package manager..."

    #@c6
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    .line 412
    const-string/jumbo v2, "package"

    #@cc
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@cf
    move-result-object v23

    #@d0
    .line 411
    check-cast v23, Lcom/android/server/pm/PackageManagerService;

    #@d2
    .line 413
    .local v23, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v23, :cond_5

    #@d4
    .line 414
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    #@d7
    .line 416
    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@d9
    if-eqz v2, :cond_6

    #@db
    .line 417
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@dd
    const/4 v4, 0x6

    #@de
    const/4 v5, 0x0

    #@df
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@e2
    .line 421
    :cond_6
    const/16 v2, 0x2ee0

    #@e4
    move-object/from16 v0, p0

    #@e6
    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    #@e9
    .line 422
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@eb
    if-eqz v2, :cond_7

    #@ed
    .line 423
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@ef
    const/16 v4, 0x12

    #@f1
    const/4 v5, 0x0

    #@f2
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@f5
    .line 427
    :cond_7
    new-instance v22, Lcom/android/server/power/ShutdownThread$4;

    #@f7
    move-object/from16 v0, v22

    #@f9
    move-object/from16 v1, p0

    #@fb
    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    #@fe
    .line 434
    .local v22, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ShutdownThread"

    #@101
    const-string/jumbo v4, "Shutting down MountService"

    #@104
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@107
    .line 437
    const/4 v2, 0x0

    #@108
    move-object/from16 v0, p0

    #@10a
    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@10c
    .line 438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10f
    move-result-wide v4

    #@110
    const-wide/16 v8, 0x4e20

    #@112
    add-long v18, v4, v8

    #@114
    .line 439
    .local v18, "endShutTime":J
    move-object/from16 v0, p0

    #@116
    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@118
    monitor-enter v4

    #@119
    .line 442
    :try_start_2
    const-string/jumbo v2, "mount"

    #@11c
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11f
    move-result-object v2

    #@120
    .line 441
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@123
    move-result-object v17

    #@124
    .line 443
    .local v17, "mount":Landroid/os/storage/IMountService;
    if-eqz v17, :cond_e

    #@126
    .line 444
    move-object/from16 v0, v17

    #@128
    move-object/from16 v1, v22

    #@12a
    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@12d
    .line 451
    .end local v17    # "mount":Landroid/os/storage/IMountService;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    #@12f
    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@131
    if-nez v2, :cond_8

    #@133
    .line 452
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@136
    move-result-wide v8

    #@137
    sub-long v12, v18, v8

    #@139
    .line 453
    .restart local v12    # "delay":J
    const-wide/16 v8, 0x0

    #@13b
    cmp-long v2, v12, v8

    #@13d
    if-gtz v2, :cond_f

    #@13f
    .line 454
    const-string/jumbo v2, "ShutdownThread"

    #@142
    const-string/jumbo v5, "Shutdown wait timed out"

    #@145
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@148
    .end local v12    # "delay":J
    :cond_8
    monitor-exit v4

    #@149
    .line 469
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@14b
    if-eqz v2, :cond_9

    #@14d
    .line 470
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@14f
    const/16 v4, 0x14

    #@151
    const/4 v5, 0x0

    #@152
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@155
    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    #@158
    .line 476
    :cond_9
    move-object/from16 v0, p0

    #@15a
    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    #@15c
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    #@15e
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    #@160
    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    #@163
    .line 338
    return-void

    #@164
    .line 352
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v18    # "endShutTime":J
    .end local v20    # "endTime":J
    .end local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v23    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v24    # "reason":Ljava/lang/String;
    :cond_a
    const-string/jumbo v2, "0"

    #@167
    goto/16 :goto_0

    #@169
    :cond_b
    const-string/jumbo v2, ""

    #@16c
    goto/16 :goto_1

    #@16e
    .line 380
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v12    # "delay":J
    .restart local v20    # "endTime":J
    .restart local v24    # "reason":Ljava/lang/String;
    :cond_c
    :try_start_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@170
    if-eqz v2, :cond_d

    #@172
    .line 381
    const-wide/16 v8, 0x2710

    #@174
    sub-long/2addr v8, v12

    #@175
    long-to-double v8, v8

    #@176
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    #@178
    mul-double v8, v8, v26

    #@17a
    .line 382
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    #@17c
    .line 381
    mul-double v8, v8, v26

    #@17e
    .line 382
    const-wide v26, 0x40c3880000000000L    # 10000.0

    #@183
    .line 381
    div-double v8, v8, v26

    #@185
    double-to-int v0, v8

    #@186
    move/from16 v25, v0

    #@188
    .line 383
    .local v25, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@18a
    const/4 v5, 0x0

    #@18b
    move/from16 v0, v25

    #@18d
    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@190
    .line 386
    .end local v25    # "status":I
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    #@192
    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@194
    const-wide/16 v8, 0x1f4

    #@196
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@199
    move-result-wide v8

    #@19a
    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@19d
    goto/16 :goto_2

    #@19f
    .line 387
    :catch_0
    move-exception v16

    #@1a0
    .local v16, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2

    #@1a2
    .line 374
    .end local v12    # "delay":J
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    #@1a3
    monitor-exit v4

    #@1a4
    throw v2

    #@1a5
    .line 402
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_1
    move-exception v14

    #@1a6
    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@1a8
    .line 446
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v17    # "mount":Landroid/os/storage/IMountService;
    .restart local v18    # "endShutTime":J
    .restart local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v23    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_e
    :try_start_6
    const-string/jumbo v2, "ShutdownThread"

    #@1ab
    const-string/jumbo v5, "MountService unavailable for shutdown"

    #@1ae
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@1b1
    goto/16 :goto_4

    #@1b3
    .line 448
    .end local v17    # "mount":Landroid/os/storage/IMountService;
    :catch_2
    move-exception v15

    #@1b4
    .line 449
    .local v15, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v2, "ShutdownThread"

    #@1b7
    const-string/jumbo v5, "Exception during MountService shutdown"

    #@1ba
    invoke-static {v2, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@1bd
    goto/16 :goto_4

    #@1bf
    .line 439
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    #@1c0
    monitor-exit v4

    #@1c1
    throw v2

    #@1c2
    .line 456
    .restart local v12    # "delay":J
    :cond_f
    :try_start_8
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    #@1c4
    if-eqz v2, :cond_10

    #@1c6
    .line 457
    const-wide/16 v8, 0x4e20

    #@1c8
    sub-long/2addr v8, v12

    #@1c9
    long-to-double v8, v8

    #@1ca
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    #@1cc
    mul-double v8, v8, v26

    #@1ce
    .line 458
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    #@1d0
    .line 457
    mul-double v8, v8, v26

    #@1d2
    .line 459
    const-wide v26, 0x40d3880000000000L    # 20000.0

    #@1d7
    .line 457
    div-double v8, v8, v26

    #@1d9
    double-to-int v0, v8

    #@1da
    move/from16 v25, v0

    #@1dc
    .line 460
    .restart local v25    # "status":I
    add-int/lit8 v25, v25, 0x12

    #@1de
    .line 461
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@1e0
    const/4 v5, 0x0

    #@1e1
    move/from16 v0, v25

    #@1e3
    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@1e6
    .line 464
    .end local v25    # "status":I
    :cond_10
    :try_start_9
    move-object/from16 v0, p0

    #@1e8
    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@1ea
    const-wide/16 v8, 0x1f4

    #@1ec
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    #@1ef
    move-result-wide v8

    #@1f0
    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@1f3
    goto/16 :goto_4

    #@1f5
    .line 465
    :catch_3
    move-exception v16

    #@1f6
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_4
.end method
