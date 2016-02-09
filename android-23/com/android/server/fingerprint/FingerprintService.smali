.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$1;,
        Lcom/android/server/fingerprint/FingerprintService$2;,
        Lcom/android/server/fingerprint/FingerprintService$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINGERPRINTD:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field private static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final MAX_FAILED_ATTEMPTS:I = 0x5

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

.field private mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

.field private mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mFailedAttempts:I

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mHalDeviceId:J

.field mHandler:Landroid/os/Handler;

.field private final mLockoutReset:Ljava/lang/Runnable;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    #@2
    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 1
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 0
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@4
    .line 77
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@6
    .line 78
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@8
    .line 79
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@a
    .line 87
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    #@f
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    #@11
    .line 101
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    #@17
    .line 108
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    #@1e
    .line 637
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    #@20
    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    #@23
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    #@25
    .line 117
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    #@27
    .line 118
    const-class v0, Landroid/app/AppOpsManager;

    #@29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/app/AppOpsManager;

    #@2f
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    #@31
    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    #@33
    const-string/jumbo v1, "power"

    #@36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/os/PowerManager;

    #@3c
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    #@3e
    .line 115
    return-void
.end method

.method private addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    #@2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    #@4
    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    #@6
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    #@9
    .line 274
    return-void
.end method

.method private canUseFingerprint(Ljava/lang/String;)Z
    .locals 4
    .param p1, "opPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 484
    const-string/jumbo v1, "android.permission.USE_FINGERPRINT"

    #@4
    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    #@7
    .line 485
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    #@9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@c
    move-result v2

    #@d
    const/16 v3, 0x37

    #@f
    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :cond_0
    return v0
.end method

.method private handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 4
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@0
    .prologue
    .line 256
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    #@6
    .line 257
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    #@8
    const/4 v1, 0x5

    #@9
    if-le v0, v1, :cond_2

    #@b
    .line 259
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    #@d
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@12
    .line 260
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    #@14
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReset:Ljava/lang/Runnable;

    #@16
    const-wide/16 v2, 0x7530

    #@18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1b
    .line 261
    if-eqz p1, :cond_0

    #@1d
    .line 262
    const/4 v0, 0x7

    #@1e
    invoke-static {p1, v0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_1

    #@24
    .line 265
    :cond_0
    :goto_0
    const/4 v0, 0x1

    #@25
    return v0

    #@26
    .line 263
    :cond_1
    const-string/jumbo v0, "FingerprintService"

    #@29
    const-string/jumbo v1, "Cannot send lockout message to client"

    #@2c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    goto :goto_0

    #@30
    .line 267
    :cond_2
    const/4 v0, 0x0

    #@31
    return v0
.end method

.method private inLockoutMode()Z
    .locals 2

    #@0
    .prologue
    .line 245
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    #@2
    const/4 v1, 0x5

    #@3
    if-le v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private listenForUserSwitches()V
    .locals 3

    #@0
    .prologue
    .line 891
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    .line 892
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$4;

    #@6
    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    #@9
    .line 891
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 889
    :goto_0
    return-void

    #@d
    .line 907
    :catch_0
    move-exception v0

    #@e
    .line 908
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@11
    const-string/jumbo v2, "Failed to listen for user switching event"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method private removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 233
    if-nez p1, :cond_0

    #@3
    return-void

    #@4
    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->destroy()V

    #@7
    .line 235
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@9
    if-ne p1, v0, :cond_2

    #@b
    .line 236
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@d
    .line 232
    :cond_1
    :goto_0
    return-void

    #@e
    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@10
    if-ne p1, v0, :cond_3

    #@12
    .line 238
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@14
    goto :goto_0

    #@15
    .line 239
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@17
    if-ne p1, v0, :cond_1

    #@19
    .line 240
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@1b
    goto :goto_0
.end method

.method private removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    #@2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    #@4
    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    #@6
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    #@9
    .line 270
    return-void
.end method

.method private resetFailedAttempts()V
    .locals 2

    #@0
    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 250
    const-string/jumbo v0, "FingerprintService"

    #@9
    const-string/jumbo v1, "Reset fingerprint lockout"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 252
    :cond_0
    const/4 v0, 0x0

    #@10
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    #@12
    .line 248
    return-void
.end method

.method private stopPendingOperations(Z)V
    .locals 1
    .param p1, "initiatedByClient"    # Z

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 328
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@6
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@8
    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    #@b
    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 331
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@11
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    #@16
    .line 326
    :cond_1
    return-void
.end method

.method private updateActiveGroup(I)V
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@3
    move-result-object v0

    #@4
    .line 864
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_2

    #@6
    .line 866
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    #@9
    move-result p1

    #@a
    .line 867
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    #@d
    move-result-object v3

    #@e
    .line 868
    .local v3, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    #@10
    const-string/jumbo v4, "fpdata"

    #@13
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    .line 869
    .local v2, "fpDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_1

    #@1c
    .line 870
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_0

    #@22
    .line 871
    const-string/jumbo v4, "FingerprintService"

    #@25
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v6, "Cannot make directory: "

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 872
    return-void

    #@41
    .line 877
    :cond_0
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_1

    #@47
    .line 878
    const-string/jumbo v4, "FingerprintService"

    #@4a
    const-string/jumbo v5, "Restorecons failed. Directory will have wrong label."

    #@4d
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 879
    return-void

    #@51
    .line 882
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    #@58
    move-result-object v4

    #@59
    invoke-interface {v0, p1, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setActiveGroup(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    .line 862
    .end local v2    # "fpDir":Ljava/io/File;
    .end local v3    # "systemDir":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    #@5d
    .line 883
    :catch_0
    move-exception v1

    #@5e
    .line 884
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    #@61
    const-string/jumbo v5, "Failed to setActiveGroup():"

    #@64
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    goto :goto_0
.end method

.method private userActivity()V
    .locals 5

    #@0
    .prologue
    .line 213
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 214
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    #@6
    const/4 v3, 0x2

    #@7
    const/4 v4, 0x0

    #@8
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    #@b
    .line 212
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 124
    const-string/jumbo v0, "FingerprintService"

    #@3
    const-string/jumbo v1, "fingerprintd died"

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 125
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@c
    .line 126
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    #@e
    const/4 v2, 0x1

    #@f
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->dispatchError(JI)V

    #@12
    .line 123
    return-void
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Must have "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " permission."

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 453
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 452
    return-void
.end method

.method protected dispatchAcquired(JI)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 202
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@6
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap0(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 203
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@e
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@11
    .line 200
    :cond_0
    :goto_0
    return-void

    #@12
    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 206
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@18
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap0(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 207
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@20
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@23
    goto :goto_0
.end method

.method protected dispatchAuthenticated(JII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    #@0
    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 192
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@6
    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@8
    .line 193
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@a
    invoke-static {v1, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap1(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 194
    const/4 v1, 0x0

    #@11
    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    #@14
    .line 195
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@16
    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@19
    .line 190
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method protected dispatchEnrollResult(JIII)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 223
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@6
    invoke-static {v0, p3, p4, p5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap2(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 224
    if-nez p5, :cond_0

    #@e
    .line 225
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@10
    invoke-direct {p0, v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    #@13
    .line 226
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@15
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@18
    .line 221
    :cond_0
    return-void
.end method

.method protected dispatchEnumerate(J[I[I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    #@0
    .prologue
    .line 155
    array-length v0, p3

    #@1
    array-length v1, p4

    #@2
    if-eq v0, v1, :cond_0

    #@4
    .line 156
    const-string/jumbo v0, "FingerprintService"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "fingerIds and groupIds differ in length: f[]="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 157
    const-string/jumbo v2, ", g[]="

    #@1a
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 158
    return-void

    #@2a
    .line 160
    :cond_0
    const-string/jumbo v0, "FingerprintService"

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "Enumerate: f[]="

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, ", g[]="

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 154
    return-void
.end method

.method protected dispatchError(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 175
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 176
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@7
    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@9
    .line 177
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@b
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 178
    invoke-virtual {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    #@14
    .line 174
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    #@15
    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 181
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@1b
    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@1d
    .line 182
    .restart local v0    # "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@1f
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_0

    #@25
    .line 183
    invoke-virtual {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    #@28
    goto :goto_0

    #@29
    .line 185
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 186
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@2f
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_0

    #@35
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@37
    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@3a
    goto :goto_0
.end method

.method protected dispatchRemoved(JII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@2
    .line 166
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz p3, :cond_0

    #@4
    .line 167
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@6
    invoke-direct {p0, v1, p3}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    #@9
    .line 169
    :cond_0
    if-eqz v0, :cond_1

    #@b
    invoke-static {v0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap4(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 170
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@13
    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@16
    .line 164
    :cond_1
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 4

    #@0
    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@3
    move-result-object v0

    #@4
    .line 914
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v0, :cond_0

    #@6
    .line 916
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthenticatorId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-wide v2

    #@a
    return-wide v2

    #@b
    .line 917
    :catch_0
    move-exception v1

    #@c
    .line 918
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    #@f
    const-string/jumbo v3, "getAuthenticatorId failed"

    #@12
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15
    .line 921
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v2, 0x0

    #@17
    return-wide v2
.end method

.method getEffectiveUserId(I)I
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 458
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v2

    #@6
    .line 459
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    #@8
    .line 460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b
    move-result-wide v0

    #@c
    .line 461
    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    #@f
    move-result p1

    #@10
    .line 462
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@13
    .line 466
    .end local v0    # "callingIdentity":J
    :goto_0
    return p1

    #@14
    .line 464
    :cond_0
    const-string/jumbo v3, "FingerprintService"

    #@17
    const-string/jumbo v4, "Unable to acquire UserManager"

    #@1a
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    goto :goto_0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    #@2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 130
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 131
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemon"

    #@8
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@12
    .line 132
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@18
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@20
    .line 135
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@22
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    #@24
    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    #@27
    .line 136
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@29
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J

    #@2c
    move-result-wide v2

    #@2d
    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    #@2f
    .line 137
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    #@31
    const-wide/16 v4, 0x0

    #@33
    cmp-long v1, v2, v4

    #@35
    if-eqz v1, :cond_1

    #@37
    .line 138
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3a
    move-result v1

    #@3b
    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 151
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@40
    return-object v1

    #@41
    .line 140
    :cond_1
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    #@44
    const-string/jumbo v2, "Failed to open Fingerprint HAL!"

    #@47
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 141
    const/4 v1, 0x0

    #@4b
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4d
    goto :goto_0

    #@4e
    .line 143
    :catch_0
    move-exception v0

    #@4f
    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    #@52
    const-string/jumbo v2, "Failed to open fingeprintd HAL"

    #@55
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    .line 145
    iput-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@5a
    goto :goto_0

    #@5b
    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v1, "FingerprintService"

    #@5e
    const-string/jumbo v2, "fingerprint service not available"

    #@61
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    goto :goto_0
.end method

.method handleUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V

    #@3
    .line 217
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 3
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 444
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    #@3
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v1, v2, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@c
    move-result v1

    #@d
    if-lez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 448
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 470
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5
    move-result-object v3

    #@6
    .line 473
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    .line 474
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@d
    move-result v1

    #@e
    .line 475
    .local v1, "n":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@11
    .line 476
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Landroid/content/pm/UserInfo;

    #@17
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    #@19
    if-ne v4, p1, :cond_0

    #@1b
    .line 477
    const/4 v4, 0x1

    #@1c
    return v4

    #@1d
    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 480
    :cond_1
    const/4 v4, 0x0

    #@21
    return v4
.end method

.method public onStart()V
    .locals 6

    #@0
    .prologue
    .line 856
    const-string/jumbo v1, "fingerprint"

    #@3
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    #@5
    const/4 v3, 0x0

    #@6
    invoke-direct {v2, p0, v3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;)V

    #@9
    invoke-virtual {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 857
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@f
    move-result-object v0

    #@10
    .line 858
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    const-string/jumbo v1, "FingerprintService"

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Fingerprint HAL id: "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    #@21
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 859
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    #@2f
    .line 855
    return-void
.end method

.method startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "restricted"    # Z

    #@0
    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@3
    move-result-object v6

    #@4
    .line 367
    .local v6, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v6, :cond_0

    #@6
    .line 368
    const-string/jumbo v0, "FingerprintService"

    #@9
    const-string/jumbo v1, "startAuthentication: no fingeprintd!"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 369
    return-void

    #@10
    .line 371
    :cond_0
    const/4 v0, 0x1

    #@11
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    #@14
    .line 372
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@16
    move-object v1, p0

    #@17
    move-object v2, p1

    #@18
    move-object v3, p5

    #@19
    move v4, p4

    #@1a
    move/from16 v5, p7

    #@1c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    #@1f
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@21
    .line 373
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2

    #@27
    .line 374
    const-string/jumbo v0, "FingerprintService"

    #@2a
    const-string/jumbo v1, "In lockout mode; disallowing authentication"

    #@2d
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 375
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@32
    const/4 v1, 0x7

    #@33
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_1

    #@39
    .line 376
    const-string/jumbo v0, "FingerprintService"

    #@3c
    const-string/jumbo v1, "Cannot send timeout message to client"

    #@3f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 378
    :cond_1
    const/4 v0, 0x0

    #@43
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@45
    .line 379
    return-void

    #@46
    .line 382
    :cond_2
    :try_start_0
    invoke-interface {v6, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    #@49
    move-result v8

    #@4a
    .line 383
    .local v8, "result":I
    if-eqz v8, :cond_3

    #@4c
    .line 384
    const-string/jumbo v0, "FingerprintService"

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "startAuthentication failed, result="

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@66
    .line 365
    .end local v8    # "result":I
    :cond_3
    :goto_0
    return-void

    #@67
    .line 386
    :catch_0
    move-exception v7

    #@68
    .line 387
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintService"

    #@6b
    const-string/jumbo v1, "startAuthentication failed"

    #@6e
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@71
    goto :goto_0
.end method

.method startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z

    #@0
    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@3
    move-result-object v6

    #@4
    .line 281
    .local v6, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v6, :cond_0

    #@6
    .line 282
    const-string/jumbo v0, "FingerprintService"

    #@9
    const-string/jumbo v1, "enroll: no fingeprintd!"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 283
    return-void

    #@10
    .line 285
    :cond_0
    const/4 v0, 0x1

    #@11
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    #@14
    .line 286
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@16
    move-object v1, p0

    #@17
    move-object v2, p1

    #@18
    move-object v3, p4

    #@19
    move v4, p3

    #@1a
    move/from16 v5, p6

    #@1c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    #@1f
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@21
    .line 287
    const/16 v9, 0x3c

    #@23
    .line 289
    .local v9, "timeout":I
    const/16 v0, 0x3c

    #@25
    :try_start_0
    invoke-interface {v6, p2, p3, v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I

    #@28
    move-result v8

    #@29
    .line 290
    .local v8, "result":I
    if-eqz v8, :cond_1

    #@2b
    .line 291
    const-string/jumbo v0, "FingerprintService"

    #@2e
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v2, "startEnroll failed, result="

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    .line 279
    .end local v8    # "result":I
    :cond_1
    :goto_0
    return-void

    #@46
    .line 293
    :catch_0
    move-exception v7

    #@47
    .line 294
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintService"

    #@4a
    const-string/jumbo v1, "startEnroll failed"

    #@4d
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    goto :goto_0
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 313
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@4
    move-result-object v0

    #@5
    .line 314
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    #@7
    .line 315
    const-string/jumbo v2, "FingerprintService"

    #@a
    const-string/jumbo v3, "startPostEnroll: no fingeprintd!"

    #@d
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 316
    return v4

    #@11
    .line 319
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->postEnroll()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 320
    :catch_0
    move-exception v1

    #@17
    .line 321
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    #@1a
    const-string/jumbo v3, "startPostEnroll failed"

    #@1d
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 323
    return v4
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 299
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@5
    move-result-object v0

    #@6
    .line 300
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_0

    #@8
    .line 301
    const-string/jumbo v2, "FingerprintService"

    #@b
    const-string/jumbo v3, "startPreEnroll: no fingeprintd!"

    #@e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 302
    return-wide v4

    #@12
    .line 305
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->preEnroll()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-wide v2

    #@16
    return-wide v2

    #@17
    .line 306
    :catch_0
    move-exception v1

    #@18
    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    #@1b
    const-string/jumbo v3, "startPreEnroll failed"

    #@1e
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@21
    .line 309
    return-wide v4
.end method

.method startRemove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "restricted"    # Z

    #@0
    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@3
    move-result-object v6

    #@4
    .line 422
    .local v6, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v6, :cond_0

    #@6
    .line 423
    const-string/jumbo v0, "FingerprintService"

    #@9
    const-string/jumbo v1, "startRemove: no fingeprintd!"

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 424
    return-void

    #@10
    .line 427
    :cond_0
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@12
    move-object v1, p0

    #@13
    move-object v2, p1

    #@14
    move-object v3, p4

    #@15
    move v4, p3

    #@16
    move v5, p5

    #@17
    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    #@1a
    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@1c
    .line 430
    :try_start_0
    invoke-interface {v6, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    #@1f
    move-result v8

    #@20
    .line 431
    .local v8, "result":I
    if-eqz v8, :cond_1

    #@22
    .line 432
    const-string/jumbo v0, "FingerprintService"

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "startRemove with id = "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, " failed, result="

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 420
    .end local v8    # "result":I
    :cond_1
    :goto_0
    return-void

    #@48
    .line 434
    :catch_0
    move-exception v7

    #@49
    .line 435
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintService"

    #@4c
    const-string/jumbo v1, "startRemove failed"

    #@4f
    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    goto :goto_0
.end method

.method stopAuthentication(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    #@0
    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@3
    move-result-object v1

    #@4
    .line 399
    .local v1, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v1, :cond_0

    #@6
    .line 400
    const-string/jumbo v4, "FingerprintService"

    #@9
    const-string/jumbo v5, "stopAuthentication: no fingeprintd!"

    #@c
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 401
    return-void

    #@10
    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@12
    .line 404
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v0, :cond_1

    #@14
    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@16
    if-eq v4, p1, :cond_2

    #@18
    :cond_1
    return-void

    #@19
    .line 405
    :cond_2
    if-eqz p2, :cond_4

    #@1b
    .line 407
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    #@1e
    move-result v3

    #@1f
    .line 408
    .local v3, "result":I
    if-eqz v3, :cond_3

    #@21
    .line 409
    const-string/jumbo v4, "FingerprintService"

    #@24
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "stopAuthentication failed, result="

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 414
    .end local v3    # "result":I
    :cond_3
    :goto_0
    const/4 v4, 0x5

    #@3c
    invoke-static {v0, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    #@3f
    .line 416
    :cond_4
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@41
    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@44
    .line 397
    return-void

    #@45
    .line 411
    :catch_0
    move-exception v2

    #@46
    .line 412
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    #@49
    const-string/jumbo v5, "stopAuthentication failed"

    #@4c
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    goto :goto_0
.end method

.method stopEnrollment(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    #@0
    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    #@3
    move-result-object v1

    #@4
    .line 344
    .local v1, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v1, :cond_0

    #@6
    .line 345
    const-string/jumbo v4, "FingerprintService"

    #@9
    const-string/jumbo v5, "stopEnrollment: no fingeprintd!"

    #@c
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 346
    return-void

    #@10
    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@12
    .line 349
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v0, :cond_1

    #@14
    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    #@16
    if-eq v4, p1, :cond_2

    #@18
    :cond_1
    return-void

    #@19
    .line 350
    :cond_2
    if-eqz p2, :cond_4

    #@1b
    .line 352
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I

    #@1e
    move-result v3

    #@1f
    .line 353
    .local v3, "result":I
    if-eqz v3, :cond_3

    #@21
    .line 354
    const-string/jumbo v4, "FingerprintService"

    #@24
    new-instance v5, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v6, "startEnrollCancel failed, result = "

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 359
    .end local v3    # "result":I
    :cond_3
    :goto_0
    const/4 v4, 0x5

    #@3c
    invoke-static {v0, v4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->-wrap3(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    #@3f
    .line 361
    :cond_4
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    #@41
    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    #@44
    .line 342
    return-void

    #@45
    .line 356
    :catch_0
    move-exception v2

    #@46
    .line 357
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FingerprintService"

    #@49
    const-string/jumbo v5, "stopEnrollment failed"

    #@4c
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    goto :goto_0
.end method
