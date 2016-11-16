.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;,
        Lcom/android/server/dreams/DreamManagerService$1;,
        Lcom/android/server/dreams/DreamManagerService$2;,
        Lcom/android/server/dreams/DreamManagerService$3;,
        Lcom/android/server/dreams/DreamManagerService$BinderService;,
        Lcom/android/server/dreams/DreamManagerService$DreamHandler;,
        Lcom/android/server/dreams/DreamManagerService$LocalService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DreamManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/dreams/DreamController;

.field private final mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

.field private mCurrentDreamCanDoze:Z

.field private mCurrentDreamDozeScreenBrightness:I

.field private mCurrentDreamDozeScreenState:I

.field private mCurrentDreamIsDozing:Z

.field private mCurrentDreamIsTest:Z

.field private mCurrentDreamIsWaking:Z

.field private mCurrentDreamName:Landroid/content/ComponentName;

.field private mCurrentDreamToken:Landroid/os/Binder;

.field private mCurrentDreamUserId:I

.field private final mDozeEnabledObserver:Landroid/database/ContentObserver;

.field private final mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/dreams/DreamManagerService;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Landroid/content/ComponentName;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;II)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0
    .param p1, "doze"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    #@3
    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0
    .param p1, "immediate"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0
    .param p1, "immediate"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "dream"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/dreams/DreamManagerService;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 72
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@a
    .line 88
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    #@d
    .line 89
    const/4 v0, -0x1

    #@e
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    #@10
    .line 454
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$1;

    #@12
    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@15
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    #@17
    .line 465
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$2;

    #@19
    const/4 v1, 0x0

    #@1a
    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    #@1d
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    #@1f
    .line 663
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$3;

    #@21
    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@24
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    #@26
    .line 93
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@28
    .line 94
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@2a
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V

    #@35
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@37
    .line 95
    new-instance v0, Lcom/android/server/dreams/DreamController;

    #@39
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@3b
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    #@3d
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    #@40
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    #@42
    .line 97
    const-string/jumbo v0, "power"

    #@45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Landroid/os/PowerManager;

    #@4b
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@4d
    .line 98
    const-class v0, Landroid/os/PowerManagerInternal;

    #@4f
    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Landroid/os/PowerManagerInternal;

    #@55
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@57
    .line 99
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@59
    const-string/jumbo v1, "DreamManagerService"

    #@5c
    const/16 v2, 0x40

    #@5e
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    #@64
    .line 91
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 418
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Access denied to process: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 419
    const-string/jumbo v2, ", must have permission "

    #@21
    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 415
    :cond_0
    return-void
.end method

.method private chooseDreamForUser(ZI)Landroid/content/ComponentName;
    .locals 5
    .param p1, "doze"    # Z
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 259
    if-eqz p1, :cond_1

    #@4
    .line 260
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    #@7
    move-result-object v0

    #@8
    .line 261
    .local v0, "dozeComponent":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .end local v0    # "dozeComponent":Landroid/content/ComponentName;
    :goto_0
    return-object v0

    #@f
    .restart local v0    # "dozeComponent":Landroid/content/ComponentName;
    :cond_0
    move-object v0, v2

    #@10
    goto :goto_0

    #@11
    .line 263
    .end local v0    # "dozeComponent":Landroid/content/ComponentName;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    #@14
    move-result-object v1

    #@15
    .line 264
    .local v1, "dreams":[Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    #@17
    array-length v3, v1

    #@18
    if-eqz v3, :cond_2

    #@1a
    aget-object v2, v1, v4

    #@1c
    :cond_2
    return-object v2
.end method

.method private cleanupDreamLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 401
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@4
    .line 402
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    #@6
    .line 403
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    #@8
    .line 404
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@a
    .line 405
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    #@c
    .line 406
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    #@e
    .line 407
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 408
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@14
    .line 409
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    #@16
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@19
    .line 411
    :cond_0
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    #@1b
    .line 412
    const/4 v0, -0x1

    #@1c
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    #@1e
    .line 400
    return-void
.end method

.method private static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .locals 4
    .param p0, "names"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 443
    if-nez p0, :cond_0

    #@3
    .line 444
    return-object v3

    #@4
    .line 446
    :cond_0
    const-string/jumbo v3, ","

    #@7
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 447
    .local v2, "namesArray":[Ljava/lang/String;
    array-length v3, v2

    #@c
    new-array v0, v3, [Landroid/content/ComponentName;

    #@e
    .line 448
    .local v0, "componentNames":[Landroid/content/ComponentName;
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@10
    if-ge v1, v3, :cond_1

    #@12
    .line 449
    aget-object v3, v2, v1

    #@14
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v0, v1

    #@1a
    .line 448
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 451
    :cond_1
    return-object v0
.end method

.method private static componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p0, "componentNames"    # [Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 431
    .local v1, "names":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    #@8
    .line 432
    array-length v3, p0

    #@9
    :goto_0
    if-ge v2, v3, :cond_1

    #@b
    aget-object v0, p0, v2

    #@d
    .line 433
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@10
    move-result v4

    #@11
    if-lez v4, :cond_0

    #@13
    .line 434
    const/16 v4, 0x2c

    #@15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 436
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 432
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 439
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    return-object v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 131
    const-string/jumbo v0, "DREAM MANAGER (dumpsys dreams)"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 132
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@9
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "mCurrentDreamToken="

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v1, "mCurrentDreamName="

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3b
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v1, "mCurrentDreamUserId="

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@54
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v1, "mCurrentDreamIsTest="

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6d
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v1, "mCurrentDreamCanDoze="

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@86
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v1, "mCurrentDreamIsDozing="

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v1, "mCurrentDreamIsWaking="

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b8
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    #@ba
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@bd
    const-string/jumbo v1, "mCurrentDreamDozeScreenState="

    #@c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v0

    #@c4
    .line 141
    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    #@c6
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d5
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v1, "mCurrentDreamDozeScreenBrightness="

    #@dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v0

    #@e1
    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    #@e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v0

    #@eb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v1, "getDozeComponent()="

    #@f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v0

    #@fa
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    #@fd
    move-result-object v1

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v0

    #@102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v0

    #@106
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@109
    .line 144
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@10c
    .line 146
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@10e
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$5;

    #@110
    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@113
    .line 151
    const-string/jumbo v3, ""

    #@116
    const-wide/16 v4, 0xc8

    #@118
    move-object v2, p1

    #@119
    .line 146
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    #@11c
    .line 130
    return-void
.end method

.method private finishSelfInternal(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    #@0
    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 194
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit v1

    #@b
    .line 180
    return-void

    #@c
    .line 192
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method private getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 318
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 319
    const-string/jumbo v3, "screensaver_default_component"

    #@a
    .line 318
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 321
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    #@10
    :goto_0
    return-object v1

    #@11
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@14
    move-result-object v1

    #@15
    goto :goto_0
.end method

.method private getDozeComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 325
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getDozeComponent(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 332
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@3
    if-eqz v3, :cond_2

    #@5
    const-string/jumbo v3, "debug.doze.component"

    #@8
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 333
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 336
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v3

    #@18
    .line 337
    const v4, 0x104005a

    #@1b
    .line 336
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 339
    :cond_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@24
    move-result-object v3

    #@25
    .line 340
    const-string/jumbo v4, "doze_enabled"

    #@28
    const/4 v5, 0x1

    #@29
    .line 339
    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_3

    #@2f
    const/4 v0, 0x1

    #@30
    .line 341
    .local v0, "enabled":Z
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_1

    #@36
    if-eqz v0, :cond_1

    #@38
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3b
    move-result-object v2

    #@3c
    :cond_1
    return-object v2

    #@3d
    .end local v0    # "enabled":Z
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    #@3e
    .line 332
    goto :goto_0

    #@3f
    .line 339
    .restart local v1    # "name":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    #@40
    .restart local v0    # "enabled":Z
    goto :goto_1
.end method

.method private getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 284
    iget-object v5, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v5

    #@6
    .line 285
    const-string/jumbo v6, "screensaver_components"

    #@9
    .line 284
    invoke-static {v5, v6, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 287
    .local v3, "names":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    #@10
    move-result-object v1

    #@11
    .line 290
    .local v1, "components":[Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    #@13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 291
    .local v4, "validComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_1

    #@18
    .line 292
    const/4 v5, 0x0

    #@19
    array-length v6, v1

    #@1a
    :goto_0
    if-ge v5, v6, :cond_1

    #@1c
    aget-object v0, v1, v5

    #@1e
    .line 293
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_0

    #@24
    .line 294
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 292
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 300
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 301
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    #@33
    move-result-object v2

    #@34
    .line 302
    .local v2, "defaultDream":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    #@36
    .line 303
    const-string/jumbo v5, "DreamManagerService"

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v7, "Falling back to default dream "

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 304
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 307
    .end local v2    # "defaultDream":Landroid/content/ComponentName;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@56
    move-result v5

    #@57
    new-array v5, v5, [Landroid/content/ComponentName;

    #@59
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5c
    move-result-object v5

    #@5d
    check-cast v5, [Landroid/content/ComponentName;

    #@5f
    return-object v5
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 346
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v2

    #@9
    .line 347
    const/high16 v3, 0x10000000

    #@b
    .line 346
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1

    #@10
    .line 348
    :catch_0
    move-exception v0

    #@11
    .line 349
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method private isDreamingInternal()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 155
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@6
    if-eqz v2, :cond_0

    #@8
    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-eqz v2, :cond_1

    #@c
    :cond_0
    :goto_0
    monitor-exit v1

    #@d
    return v0

    #@e
    .line 157
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    if-nez v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 155
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method private requestAwakenInternal()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v0

    #@5
    .line 176
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@7
    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    #@a
    .line 177
    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    #@d
    .line 171
    return-void
.end method

.method private requestDreamInternal()V
    .locals 4

    #@0
    .prologue
    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 167
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@6
    const/4 v3, 0x1

    #@7
    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    #@a
    .line 168
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@c
    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->nap(J)V

    #@f
    .line 161
    return-void
.end method

.method private setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Landroid/content/ComponentName;

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 312
    const-string/jumbo v1, "screensaver_components"

    #@9
    .line 313
    invoke-static {p2}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 311
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@10
    .line 310
    return-void
.end method

.method private startDozingInternal(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    #@0
    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 231
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    #@d
    .line 232
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    #@f
    .line 233
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@11
    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    #@14
    .line 235
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@16
    if-nez v0, :cond_0

    #@18
    .line 236
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@1b
    .line 237
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1d
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v1

    #@21
    .line 222
    return-void

    #@22
    .line 229
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method private startDreamInternal(Z)V
    .locals 4
    .param p1, "doze"    # Z

    #@0
    .prologue
    .line 206
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v1

    #@4
    .line 207
    .local v1, "userId":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    #@7
    move-result-object v0

    #@8
    .line 208
    .local v0, "dream":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@a
    .line 209
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v2

    #@d
    .line 210
    const/4 v3, 0x0

    #@e
    :try_start_0
    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 205
    :cond_0
    return-void

    #@13
    .line 209
    :catchall_0
    move-exception v3

    #@14
    monitor-exit v2

    #@15
    throw v3
.end method

.method private startDreamLocked(Landroid/content/ComponentName;ZZI)V
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isTest"    # Z
    .param p3, "canDoze"    # Z
    .param p4, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 355
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    #@3
    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 356
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    #@b
    if-ne v0, p2, :cond_0

    #@d
    .line 357
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@f
    if-ne v0, p3, :cond_0

    #@11
    .line 358
    iget v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    #@13
    if-ne v0, p4, :cond_0

    #@15
    .line 359
    return-void

    #@16
    .line 362
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    #@19
    .line 364
    const-string/jumbo v0, "DreamManagerService"

    #@1c
    const-string/jumbo v1, "Entering dreamland."

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 366
    new-instance v2, Landroid/os/Binder;

    #@24
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@27
    .line 367
    .local v2, "newToken":Landroid/os/Binder;
    iput-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@29
    .line 368
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    #@2b
    .line 369
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    #@2d
    .line 370
    iput-boolean p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@2f
    .line 371
    iput p4, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    #@31
    .line 373
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@33
    .line 374
    const-string/jumbo v1, "startDream"

    #@36
    .line 373
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@39
    move-result-object v7

    #@3a
    .line 375
    .local v7, "wakeLock":Landroid/os/PowerManager$WakeLock;
    iget-object v8, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@3c
    .line 376
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;

    #@3e
    move-object v1, p0

    #@3f
    move-object v3, p1

    #@40
    move v4, p2

    #@41
    move v5, p3

    #@42
    move v6, p4

    #@43
    invoke-direct/range {v0 .. v7}, Lcom/android/server/dreams/DreamManagerService$-void_startDreamLocked_android_content_ComponentName_name_boolean_isTest_boolean_canDoze_int_userId_LambdaImpl0;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    #@46
    .line 375
    invoke-virtual {v7, v0}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v8, v0}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    #@4d
    .line 354
    return-void
.end method

.method private stopDozingInternal(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 250
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@e
    .line 251
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    #@10
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@13
    .line 252
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@15
    .line 253
    const/4 v2, 0x0

    #@16
    const/4 v3, -0x1

    #@17
    .line 252
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 243
    return-void

    #@1c
    .line 248
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method

.method private stopDreamInternal(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 217
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 215
    return-void

    #@8
    .line 216
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private stopDreamLocked(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    #@0
    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 381
    if-eqz p1, :cond_1

    #@6
    .line 382
    const-string/jumbo v0, "DreamManagerService"

    #@9
    const-string/jumbo v1, "Leaving dreamland."

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 383
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    #@12
    .line 391
    :goto_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@14
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$6;

    #@16
    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;Z)V

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    #@1c
    .line 379
    :cond_0
    return-void

    #@1d
    .line 384
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 385
    return-void

    #@22
    .line 387
    :cond_2
    const-string/jumbo v0, "DreamManagerService"

    #@25
    const-string/jumbo v1, "Gently waking up from dream."

    #@28
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 388
    const/4 v0, 0x1

    #@2c
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    #@2e
    goto :goto_0
.end method

.method private testDreamInternal(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "dream"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 201
    const/4 v1, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    :try_start_0
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v0

    #@9
    .line 199
    return-void

    #@a
    .line 200
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v0

    #@c
    throw v1
.end method

.method private validateDream(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 268
    if-nez p1, :cond_0

    #@3
    return v4

    #@4
    .line 269
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    #@7
    move-result-object v0

    #@8
    .line 270
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v0, :cond_1

    #@a
    .line 271
    const-string/jumbo v1, "DreamManagerService"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Dream "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " does not exist"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 272
    return v4

    #@2c
    .line 273
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2e
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@30
    const/16 v2, 0x15

    #@32
    if-lt v1, v2, :cond_2

    #@34
    .line 274
    const-string/jumbo v1, "android.permission.BIND_DREAM_SERVICE"

    #@37
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 280
    :cond_2
    const/4 v1, 0x1

    #@40
    return v1

    #@41
    .line 275
    :cond_3
    const-string/jumbo v1, "DreamManagerService"

    #@44
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v3, "Dream "

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    .line 276
    const-string/jumbo v3, " is not available because its manifest is missing the "

    #@57
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    .line 276
    const-string/jumbo v3, "android.permission.BIND_DREAM_SERVICE"

    #@5e
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 277
    const-string/jumbo v3, " permission on the dream service declaration."

    #@65
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 278
    return v4
.end method

.method private writePulseGestureEnabled()V
    .locals 3

    #@0
    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v1

    #@4
    .line 425
    .local v1, "name":Landroid/content/ComponentName;
    invoke-direct {p0, v1}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    #@7
    move-result v0

    #@8
    .line 426
    .local v0, "dozeEnabled":Z
    const-class v2, Landroid/hardware/input/InputManagerInternal;

    #@a
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/hardware/input/InputManagerInternal;

    #@10
    invoke-virtual {v2, v0}, Landroid/hardware/input/InputManagerInternal;->setPulseGestureEnabled(Z)V

    #@13
    .line 423
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_dreams_DreamManagerService_lambda$1(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 7
    .param p1, "newToken"    # Landroid/os/Binder;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "isTest"    # Z
    .param p4, "canDoze"    # Z
    .param p5, "userId"    # I
    .param p6, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/dreams/DreamController;->startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    #@b
    .line 0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 110
    const/16 v0, 0x258

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 111
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 112
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    #@a
    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    #@d
    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@f
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$4;

    #@11
    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@14
    .line 122
    new-instance v2, Landroid/content/IntentFilter;

    #@16
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    #@19
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1c
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@1e
    const/4 v4, 0x0

    #@1f
    .line 114
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@22
    .line 123
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@27
    move-result-object v0

    #@28
    .line 124
    const-string/jumbo v1, "doze_enabled"

    #@2b
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@2e
    move-result-object v1

    #@2f
    .line 125
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    #@31
    .line 124
    const/4 v3, 0x0

    #@32
    .line 125
    const/4 v4, -0x1

    #@33
    .line 123
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@36
    .line 126
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    #@39
    .line 109
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 104
    const-string/jumbo v0, "dreams"

    #@4
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$BinderService;

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$BinderService;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 105
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    #@e
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$LocalService;

    #@10
    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$LocalService;)V

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@16
    .line 103
    return-void
.end method
