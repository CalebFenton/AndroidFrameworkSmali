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

.field public static final AUDIT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.audit_safemode"

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

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mReason:Ljava/lang/String;

.field private static mReboot:Z

.field private static mRebootHasProgressBar:Z

.field private static mRebootSafeMode:Z

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
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

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
    .line 83
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    #@7
    .line 84
    const/4 v0, 0x0

    #@8
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    #@a
    .line 102
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    #@c
    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    #@f
    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@11
    .line 104
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@13
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@16
    .line 105
    const/4 v1, 0x4

    #@17
    .line 104
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@1a
    move-result-object v0

    #@1b
    .line 106
    const/16 v1, 0xd

    #@1d
    .line 104
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
    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@3
    .line 109
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@a
    .line 120
    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 244
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    #@5
    monitor-enter v5

    #@6
    .line 245
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 246
    const-string/jumbo v2, "ShutdownThread"

    #@d
    const-string/jumbo v3, "Shutdown sequence already running, returning."

    #@10
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v5

    #@14
    .line 247
    return-void

    #@15
    .line 249
    :cond_0
    const/4 v2, 0x1

    #@16
    :try_start_1
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v5

    #@19
    .line 253
    new-instance v1, Landroid/app/ProgressDialog;

    #@1b
    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #@1e
    .line 276
    .local v1, "pd":Landroid/app/ProgressDialog;
    const-string/jumbo v2, "recovery-update"

    #@21
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    #@23
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_5

    #@29
    .line 279
    sget-object v2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@2b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 280
    sget-object v2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    #@33
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_2

    #@39
    move v2, v3

    #@3a
    .line 279
    :goto_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@3c
    .line 281
    const v2, 0x1040117

    #@3f
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@46
    .line 282
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@48
    if-eqz v2, :cond_4

    #@4a
    .line 283
    const/16 v2, 0x64

    #@4c
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    #@4f
    .line 284
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    #@52
    .line 285
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@55
    .line 286
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    #@58
    .line 287
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    #@5b
    .line 289
    const v2, 0x1040118

    #@5e
    .line 288
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@65
    .line 306
    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    #@68
    .line 307
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    #@6b
    move-result-object v2

    #@6c
    const/16 v3, 0x7d9

    #@6e
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    #@71
    .line 309
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    #@74
    .line 311
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@76
    iput-object v1, v2, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    #@78
    .line 312
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@7a
    iput-object p0, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    #@7c
    .line 313
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@7e
    const-string/jumbo v2, "power"

    #@81
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@84
    move-result-object v2

    #@85
    check-cast v2, Landroid/os/PowerManager;

    #@87
    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    #@89
    .line 316
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@8b
    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@8d
    .line 318
    :try_start_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@8f
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@91
    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    #@93
    .line 319
    const-string/jumbo v4, "ShutdownThread-cpu"

    #@96
    const/4 v5, 0x1

    #@97
    .line 318
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@9a
    move-result-object v3

    #@9b
    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@9d
    .line 320
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@9f
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a1
    const/4 v3, 0x0

    #@a2
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@a5
    .line 321
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@a7
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a9
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    #@ac
    .line 328
    :goto_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@ae
    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@b0
    .line 329
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@b2
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    #@b4
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    #@b7
    move-result v2

    #@b8
    if-eqz v2, :cond_1

    #@ba
    .line 331
    :try_start_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@bc
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@be
    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    #@c0
    .line 332
    const-string/jumbo v4, "ShutdownThread-screen"

    #@c3
    const/16 v5, 0x1a

    #@c5
    .line 331
    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@c8
    move-result-object v3

    #@c9
    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@cb
    .line 333
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@cd
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@cf
    const/4 v3, 0x0

    #@d0
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@d3
    .line 334
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@d5
    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d7
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    #@da
    .line 342
    :cond_1
    :goto_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@dc
    new-instance v3, Lcom/android/server/power/ShutdownThread$2;

    #@de
    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    #@e1
    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    #@e3
    .line 344
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@e5
    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread;->start()V

    #@e8
    .line 243
    return-void

    #@e9
    .line 244
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v2

    #@ea
    monitor-exit v5

    #@eb
    throw v2

    #@ec
    .restart local v1    # "pd":Landroid/app/ProgressDialog;
    :cond_2
    move v2, v4

    #@ed
    .line 280
    goto/16 :goto_0

    #@ef
    :cond_3
    move v2, v3

    #@f0
    .line 279
    goto/16 :goto_0

    #@f2
    .line 291
    :cond_4
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@f5
    .line 293
    const v2, 0x104011a

    #@f8
    .line 292
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@fb
    move-result-object v2

    #@fc
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@ff
    goto/16 :goto_1

    #@101
    .line 295
    :cond_5
    const-string/jumbo v2, "recovery"

    #@104
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    #@106
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@109
    move-result v2

    #@10a
    if-eqz v2, :cond_6

    #@10c
    .line 297
    const v2, 0x104011b

    #@10f
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@112
    move-result-object v2

    #@113
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@116
    .line 299
    const v2, 0x104011c

    #@119
    .line 298
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@11c
    move-result-object v2

    #@11d
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@120
    .line 300
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@123
    goto/16 :goto_1

    #@125
    .line 302
    :cond_6
    const v2, 0x1040113

    #@128
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@12b
    move-result-object v2

    #@12c
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@12f
    .line 303
    const v2, 0x104011d

    #@132
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@135
    move-result-object v2

    #@136
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@139
    .line 304
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    #@13c
    goto/16 :goto_1

    #@13e
    .line 322
    :catch_0
    move-exception v0

    #@13f
    .line 323
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ShutdownThread"

    #@142
    const-string/jumbo v3, "No permission to acquire wake lock"

    #@145
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@148
    .line 324
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@14a
    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    #@14c
    goto/16 :goto_2

    #@14e
    .line 335
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    #@14f
    .line 336
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ShutdownThread"

    #@152
    const-string/jumbo v3, "No permission to acquire wake lock"

    #@155
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@158
    .line 337
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@15a
    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    #@15c
    goto/16 :goto_3
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
    .line 216
    const/4 v0, 0x1

    #@2
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    #@4
    .line 217
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@6
    .line 218
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@8
    .line 219
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    #@a
    .line 220
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    #@d
    .line 215
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 643
    if-eqz p1, :cond_1

    #@2
    .line 644
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
    .line 645
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    #@1f
    .line 646
    const-string/jumbo v3, "ShutdownThread"

    #@22
    const-string/jumbo v4, "Reboot failed, will attempt shutdown instead"

    #@25
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 647
    const/4 p2, 0x0

    #@29
    .line 666
    .end local p2    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    #@2c
    const-string/jumbo v4, "Performing low-level shutdown..."

    #@2f
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 667
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    #@35
    .line 642
    return-void

    #@36
    .line 648
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    #@38
    .line 650
    new-instance v2, Landroid/os/SystemVibrator;

    #@3a
    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    #@3d
    .line 652
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    #@3f
    :try_start_0
    sget-object v3, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@41
    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@44
    .line 660
    :goto_1
    const-wide/16 v4, 0x1f4

    #@46
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    #@49
    goto :goto_0

    #@4a
    .line 661
    :catch_0
    move-exception v1

    #@4b
    .local v1, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    #@4c
    .line 653
    .end local v1    # "unused":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    #@4d
    .line 655
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ShutdownThread"

    #@50
    const-string/jumbo v4, "Failed to vibrate during shutdown."

    #@53
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
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
    .line 231
    const-string/jumbo v1, "user"

    #@4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/os/UserManager;

    #@a
    .line 232
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    #@d
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 233
    return-void

    #@14
    .line 236
    :cond_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    #@16
    .line 237
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@18
    .line 238
    const/4 v1, 0x0

    #@19
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@1b
    .line 239
    const/4 v1, 0x0

    #@1c
    sput-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    #@1e
    .line 240
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    #@21
    .line 230
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    #@4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 500
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 133
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    #@3
    .line 134
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@5
    .line 135
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    #@7
    .line 136
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    #@a
    .line 132
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
    .line 142
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 143
    :try_start_0
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 144
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
    .line 145
    return-void

    #@13
    :cond_0
    monitor-exit v4

    #@14
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v3

    #@18
    .line 150
    const v4, 0x10e0048

    #@1b
    .line 149
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@1e
    move-result v1

    #@1f
    .line 151
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 152
    const v2, 0x1040121

    #@26
    .line 157
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
    .line 159
    if-eqz p1, :cond_5

    #@42
    .line 160
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    #@44
    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    #@47
    .line 161
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@49
    if-eqz v3, :cond_1

    #@4b
    .line 162
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@4d
    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    #@50
    .line 164
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    #@52
    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@55
    .line 165
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@57
    if-eqz v3, :cond_4

    #@59
    .line 166
    const v3, 0x1040120

    #@5c
    .line 164
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    #@63
    move-result-object v3

    #@64
    .line 169
    new-instance v4, Lcom/android/server/power/ShutdownThread$1;

    #@66
    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    #@69
    const v5, 0x1040013

    #@6c
    .line 164
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@6f
    move-result-object v3

    #@70
    .line 174
    const v4, 0x1040009

    #@73
    .line 164
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
    .line 176
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@7f
    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    #@81
    .line 177
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@83
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@86
    .line 178
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
    .line 179
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    #@93
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    #@96
    .line 139
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :goto_2
    return-void

    #@97
    .line 142
    .end local v1    # "longPressBehavior":I
    .end local v2    # "resourceId":I
    :catchall_0
    move-exception v3

    #@98
    monitor-exit v4

    #@99
    throw v3

    #@9a
    .line 153
    .restart local v1    # "longPressBehavior":I
    :cond_2
    const/4 v3, 0x2

    #@9b
    if-ne v1, v3, :cond_3

    #@9d
    .line 154
    const v2, 0x104011f

    #@a0
    .restart local v2    # "resourceId":I
    goto :goto_0

    #@a1
    .line 155
    .end local v2    # "resourceId":I
    :cond_3
    const v2, 0x104011e

    #@a4
    .restart local v2    # "resourceId":I
    goto :goto_0

    #@a5
    .line 167
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_4
    const v3, 0x1040113

    #@a8
    goto :goto_1

    #@a9
    .line 181
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
    .line 517
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v8

    #@4
    int-to-long v10, p1

    #@5
    add-long v2, v8, v10

    #@7
    .line 518
    .local v2, "endTime":J
    const/4 v1, 0x1

    #@8
    new-array v5, v1, [Z

    #@a
    .line 519
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    #@c
    move-object v1, p0

    #@d
    move v4, p1

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    #@11
    .line 624
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@14
    .line 626
    int-to-long v8, p1

    #@15
    :try_start_0
    invoke-virtual {v0, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 629
    :goto_0
    const/4 v1, 0x0

    #@19
    aget-boolean v1, v5, v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 630
    const-string/jumbo v1, "ShutdownThread"

    #@20
    const-string/jumbo v4, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    #@23
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 514
    :cond_0
    return-void

    #@27
    .line 627
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
    .line 671
    const-string/jumbo v4, "ShutdownThread"

    #@4
    const-string/jumbo v5, "Calling uncrypt and monitoring the progress..."

    #@7
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 674
    new-instance v1, Lcom/android/server/power/ShutdownThread$7;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    #@f
    .line 694
    .local v1, "progressListener":Landroid/os/RecoverySystem$ProgressListener;
    const/4 v4, 0x1

    #@10
    new-array v0, v4, [Z

    #@12
    .line 695
    .local v0, "done":[Z
    aput-boolean v6, v0, v6

    #@14
    .line 696
    new-instance v2, Lcom/android/server/power/ShutdownThread$8;

    #@16
    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    #@19
    .line 711
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    #@1c
    .line 714
    const-wide/32 v4, 0xdbba0

    #@1f
    :try_start_0
    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 717
    :goto_0
    aget-boolean v4, v0, v6

    #@24
    if-nez v4, :cond_0

    #@26
    .line 718
    const-string/jumbo v4, "ShutdownThread"

    #@29
    const-string/jumbo v5, "Timed out waiting for uncrypt."

    #@2c
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 670
    :cond_0
    return-void

    #@30
    .line 715
    :catch_0
    move-exception v3

    #@31
    .local v3, "unused":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    #@0
    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 349
    const/4 v0, 0x1

    #@4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@6
    .line 350
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@8
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 347
    return-void

    #@d
    .line 348
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
    .line 359
    new-instance v6, Lcom/android/server/power/ShutdownThread$3;

    #@2
    move-object/from16 v0, p0

    #@4
    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;)V

    #@7
    .line 372
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
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    #@19
    if-eqz v2, :cond_b

    #@1b
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

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
    .line 373
    .local v24, "reason":Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    #@28
    move-object/from16 v0, v24

    #@2a
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    .line 380
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    #@2f
    if-eqz v2, :cond_0

    #@31
    .line 381
    const-string/jumbo v2, "persist.sys.safemode"

    #@34
    const-string/jumbo v4, "1"

    #@37
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    .line 384
    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    #@3d
    const-string/jumbo v4, "Sending shutdown broadcast..."

    #@40
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 387
    const/4 v2, 0x0

    #@44
    move-object/from16 v0, p0

    #@46
    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@48
    .line 388
    new-instance v3, Landroid/content/Intent;

    #@4a
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    #@4d
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@50
    .line 389
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    #@52
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@55
    .line 390
    move-object/from16 v0, p0

    #@57
    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    #@59
    .line 391
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
    .line 390
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@66
    .line 393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@69
    move-result-wide v4

    #@6a
    const-wide/16 v8, 0x2710

    #@6c
    add-long v20, v4, v8

    #@6e
    .line 394
    .local v20, "endTime":J
    move-object/from16 v0, p0

    #@70
    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@72
    monitor-enter v4

    #@73
    .line 395
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    #@75
    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@77
    if-nez v2, :cond_1

    #@79
    .line 396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7c
    move-result-wide v8

    #@7d
    sub-long v12, v20, v8

    #@7f
    .line 397
    .local v12, "delay":J
    const-wide/16 v8, 0x0

    #@81
    cmp-long v2, v12, v8

    #@83
    if-gtz v2, :cond_c

    #@85
    .line 398
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
    .line 411
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@91
    if-eqz v2, :cond_2

    #@93
    .line 412
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@95
    const/4 v4, 0x2

    #@96
    const/4 v5, 0x0

    #@97
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@9a
    .line 415
    :cond_2
    const-string/jumbo v2, "ShutdownThread"

    #@9d
    const-string/jumbo v4, "Shutting down activity manager..."

    #@a0
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 418
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
    .line 419
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_3

    #@b0
    .line 421
    const/16 v2, 0x2710

    #@b2
    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@b5
    .line 425
    :cond_3
    :goto_3
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@b7
    if-eqz v2, :cond_4

    #@b9
    .line 426
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@bb
    const/4 v4, 0x4

    #@bc
    const/4 v5, 0x0

    #@bd
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@c0
    .line 429
    :cond_4
    const-string/jumbo v2, "ShutdownThread"

    #@c3
    const-string/jumbo v4, "Shutting down package manager..."

    #@c6
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    .line 432
    const-string/jumbo v2, "package"

    #@cc
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@cf
    move-result-object v23

    #@d0
    .line 431
    check-cast v23, Lcom/android/server/pm/PackageManagerService;

    #@d2
    .line 433
    .local v23, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v23, :cond_5

    #@d4
    .line 434
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    #@d7
    .line 436
    :cond_5
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@d9
    if-eqz v2, :cond_6

    #@db
    .line 437
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@dd
    const/4 v4, 0x6

    #@de
    const/4 v5, 0x0

    #@df
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@e2
    .line 441
    :cond_6
    const/16 v2, 0x2ee0

    #@e4
    move-object/from16 v0, p0

    #@e6
    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    #@e9
    .line 442
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@eb
    if-eqz v2, :cond_7

    #@ed
    .line 443
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@ef
    const/16 v4, 0x12

    #@f1
    const/4 v5, 0x0

    #@f2
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@f5
    .line 447
    :cond_7
    new-instance v22, Lcom/android/server/power/ShutdownThread$4;

    #@f7
    move-object/from16 v0, v22

    #@f9
    move-object/from16 v1, p0

    #@fb
    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    #@fe
    .line 454
    .local v22, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ShutdownThread"

    #@101
    const-string/jumbo v4, "Shutting down MountService"

    #@104
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@107
    .line 457
    const/4 v2, 0x0

    #@108
    move-object/from16 v0, p0

    #@10a
    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@10c
    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@10f
    move-result-wide v4

    #@110
    const-wide/16 v8, 0x4e20

    #@112
    add-long v18, v4, v8

    #@114
    .line 459
    .local v18, "endShutTime":J
    move-object/from16 v0, p0

    #@116
    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    #@118
    monitor-enter v4

    #@119
    .line 462
    :try_start_2
    const-string/jumbo v2, "mount"

    #@11c
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@11f
    move-result-object v2

    #@120
    .line 461
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    #@123
    move-result-object v17

    #@124
    .line 463
    .local v17, "mount":Landroid/os/storage/IMountService;
    if-eqz v17, :cond_e

    #@126
    .line 464
    move-object/from16 v0, v17

    #@128
    move-object/from16 v1, v22

    #@12a
    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@12d
    .line 471
    .end local v17    # "mount":Landroid/os/storage/IMountService;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    #@12f
    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    #@131
    if-nez v2, :cond_8

    #@133
    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@136
    move-result-wide v8

    #@137
    sub-long v12, v18, v8

    #@139
    .line 473
    .restart local v12    # "delay":J
    const-wide/16 v8, 0x0

    #@13b
    cmp-long v2, v12, v8

    #@13d
    if-gtz v2, :cond_f

    #@13f
    .line 474
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
    .line 489
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@14b
    if-eqz v2, :cond_9

    #@14d
    .line 490
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    #@14f
    const/16 v4, 0x14

    #@151
    const/4 v5, 0x0

    #@152
    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    #@155
    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    #@158
    .line 497
    :cond_9
    move-object/from16 v0, p0

    #@15a
    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    #@15c
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    #@15e
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    #@160
    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    #@163
    .line 358
    return-void

    #@164
    .line 372
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
    .line 400
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v12    # "delay":J
    .restart local v20    # "endTime":J
    .restart local v24    # "reason":Ljava/lang/String;
    :cond_c
    :try_start_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@170
    if-eqz v2, :cond_d

    #@172
    .line 401
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
    .line 402
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    #@17c
    .line 401
    mul-double v8, v8, v26

    #@17e
    .line 402
    const-wide v26, 0x40c3880000000000L    # 10000.0

    #@183
    .line 401
    div-double v8, v8, v26

    #@185
    double-to-int v0, v8

    #@186
    move/from16 v25, v0

    #@188
    .line 403
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
    .line 406
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
    .line 407
    :catch_0
    move-exception v16

    #@1a0
    .local v16, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2

    #@1a2
    .line 394
    .end local v12    # "delay":J
    .end local v16    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    #@1a3
    monitor-exit v4

    #@1a4
    throw v2

    #@1a5
    .line 422
    .restart local v11    # "am":Landroid/app/IActivityManager;
    :catch_1
    move-exception v14

    #@1a6
    .local v14, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@1a8
    .line 466
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
    .line 468
    .end local v17    # "mount":Landroid/os/storage/IMountService;
    :catch_2
    move-exception v15

    #@1b4
    .line 469
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
    .line 459
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    #@1c0
    monitor-exit v4

    #@1c1
    throw v2

    #@1c2
    .line 476
    .restart local v12    # "delay":J
    :cond_f
    :try_start_8
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    #@1c4
    if-eqz v2, :cond_10

    #@1c6
    .line 477
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
    .line 478
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    #@1d0
    .line 477
    mul-double v8, v8, v26

    #@1d2
    .line 479
    const-wide v26, 0x40d3880000000000L    # 20000.0

    #@1d7
    .line 477
    div-double v8, v8, v26

    #@1d9
    double-to-int v0, v8

    #@1da
    move/from16 v25, v0

    #@1dc
    .line 480
    .restart local v25    # "status":I
    add-int/lit8 v25, v25, 0x12

    #@1de
    .line 481
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
    .line 484
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
    .line 485
    :catch_3
    move-exception v16

    #@1f6
    .restart local v16    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_4
.end method
