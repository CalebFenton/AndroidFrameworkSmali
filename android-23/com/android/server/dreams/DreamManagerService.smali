.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamManagerService$DreamHandler;,
        Lcom/android/server/dreams/DreamManagerService$BinderService;,
        Lcom/android/server/dreams/DreamManagerService$LocalService;,
        Lcom/android/server/dreams/DreamManagerService$1;,
        Lcom/android/server/dreams/DreamManagerService$2;
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
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 69
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@a
    .line 85
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    #@d
    .line 86
    const/4 v0, -0x1

    #@e
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    #@10
    .line 441
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$1;

    #@12
    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@15
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    #@17
    .line 643
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$2;

    #@19
    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@1c
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    #@1e
    .line 90
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@20
    .line 91
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@22
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V

    #@2d
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@2f
    .line 92
    new-instance v0, Lcom/android/server/dreams/DreamController;

    #@31
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@33
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    #@35
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    #@38
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    #@3a
    .line 94
    const-string/jumbo v0, "power"

    #@3d
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Landroid/os/PowerManager;

    #@43
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@45
    .line 95
    const-class v0, Landroid/os/PowerManagerInternal;

    #@47
    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Landroid/os/PowerManagerInternal;

    #@4d
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@4f
    .line 96
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@51
    const-string/jumbo v1, "DreamManagerService"

    #@54
    const/16 v2, 0x40

    #@56
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@59
    move-result-object v0

    #@5a
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    #@5c
    .line 88
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 411
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
    .line 412
    const-string/jumbo v2, ", must have permission "

    #@21
    .line 411
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
    .line 408
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
    .line 251
    if-eqz p1, :cond_1

    #@4
    .line 252
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    #@7
    move-result-object v0

    #@8
    .line 253
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
    .line 255
    .end local v0    # "dozeComponent":Landroid/content/ComponentName;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    #@14
    move-result-object v1

    #@15
    .line 256
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
    .line 394
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@4
    .line 395
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    #@6
    .line 396
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    #@8
    .line 397
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@a
    .line 398
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    #@c
    .line 399
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    #@e
    .line 400
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 401
    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@14
    .line 402
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    #@16
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@19
    .line 404
    :cond_0
    iput v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    #@1b
    .line 405
    const/4 v0, -0x1

    #@1c
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    #@1e
    .line 393
    return-void
.end method

.method private static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .locals 4
    .param p0, "names"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 430
    if-nez p0, :cond_0

    #@3
    .line 431
    return-object v3

    #@4
    .line 433
    :cond_0
    const-string/jumbo v3, ","

    #@7
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 434
    .local v2, "namesArray":[Ljava/lang/String;
    array-length v3, v2

    #@c
    new-array v0, v3, [Landroid/content/ComponentName;

    #@e
    .line 435
    .local v0, "componentNames":[Landroid/content/ComponentName;
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@10
    if-ge v1, v3, :cond_1

    #@12
    .line 436
    aget-object v3, v2, v1

    #@14
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v0, v1

    #@1a
    .line 435
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 438
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
    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 418
    .local v1, "names":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    #@8
    .line 419
    array-length v3, p0

    #@9
    :goto_0
    if-ge v2, v3, :cond_1

    #@b
    aget-object v0, p0, v2

    #@d
    .line 420
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@10
    move-result v4

    #@11
    if-lez v4, :cond_0

    #@13
    .line 421
    const/16 v4, 0x2c

    #@15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 423
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 419
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 426
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
    .line 123
    const-string/jumbo v0, "DREAM MANAGER (dumpsys dreams)"

    #@3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 124
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@9
    .line 125
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
    .line 126
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
    .line 127
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
    .line 128
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
    .line 129
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
    .line 130
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
    .line 131
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
    .line 132
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
    .line 133
    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    #@c6
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    .line 132
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
    .line 134
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
    .line 135
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
    .line 136
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@10c
    .line 138
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@10e
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$4;

    #@110
    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@113
    .line 143
    const-string/jumbo v3, ""

    #@116
    const-wide/16 v4, 0xc8

    #@118
    move-object v2, p1

    #@119
    .line 138
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    #@11c
    .line 122
    return-void
.end method

.method private finishSelfInternal(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    #@0
    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 186
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit v1

    #@b
    .line 172
    return-void

    #@c
    .line 184
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
    .line 310
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v2

    #@7
    .line 311
    const-string/jumbo v3, "screensaver_default_component"

    #@a
    .line 310
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 313
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
    .line 317
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
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 324
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@2
    if-eqz v2, :cond_1

    #@4
    const-string/jumbo v2, "debug.doze.component"

    #@7
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 325
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 328
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v2

    #@17
    .line 329
    const v3, 0x104003f

    #@1a
    .line 328
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 331
    :cond_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@23
    move-result-object v2

    #@24
    .line 332
    const-string/jumbo v3, "doze_enabled"

    #@27
    const/4 v4, 0x1

    #@28
    .line 331
    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2

    #@2e
    const/4 v0, 0x1

    #@2f
    .line 333
    .local v0, "enabled":Z
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_3

    #@35
    if-eqz v0, :cond_3

    #@37
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3a
    move-result-object v2

    #@3b
    :goto_2
    return-object v2

    #@3c
    .line 324
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v1, 0x0

    #@3d
    .local v1, "name":Ljava/lang/String;
    goto :goto_0

    #@3e
    .line 331
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    #@3f
    .restart local v0    # "enabled":Z
    goto :goto_1

    #@40
    .line 333
    :cond_3
    const/4 v2, 0x0

    #@41
    goto :goto_2
.end method

.method private getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 276
    iget-object v5, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v5

    #@6
    .line 277
    const-string/jumbo v6, "screensaver_components"

    #@9
    .line 276
    invoke-static {v5, v6, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 279
    .local v3, "names":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    #@10
    move-result-object v1

    #@11
    .line 282
    .local v1, "components":[Landroid/content/ComponentName;
    new-instance v4, Ljava/util/ArrayList;

    #@13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 283
    .local v4, "validComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_1

    #@18
    .line 284
    const/4 v5, 0x0

    #@19
    array-length v6, v1

    #@1a
    :goto_0
    if-ge v5, v6, :cond_1

    #@1c
    aget-object v0, v1, v5

    #@1e
    .line 285
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    #@21
    move-result v7

    #@22
    if-eqz v7, :cond_0

    #@24
    .line 286
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@27
    .line 284
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 292
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    #@33
    move-result-object v2

    #@34
    .line 294
    .local v2, "defaultDream":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    #@36
    .line 295
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
    .line 296
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 299
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
    .line 338
    if-eqz p1, :cond_0

    #@3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    :cond_0
    return-object v1

    #@f
    .line 339
    :catch_0
    move-exception v0

    #@10
    .line 340
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1
.end method

.method private isDreamingInternal()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 147
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 148
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
    .line 149
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
    .line 147
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
    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v0

    #@5
    .line 168
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@7
    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    #@a
    .line 169
    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    #@d
    .line 163
    return-void
.end method

.method private requestDreamInternal()V
    .locals 4

    #@0
    .prologue
    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v0

    #@4
    .line 159
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@6
    const/4 v3, 0x1

    #@7
    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    #@a
    .line 160
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    #@c
    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->nap(J)V

    #@f
    .line 153
    return-void
.end method

.method private setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Landroid/content/ComponentName;

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 304
    const-string/jumbo v1, "screensaver_components"

    #@9
    .line 305
    invoke-static {p2}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 303
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    #@10
    .line 302
    return-void
.end method

.method private startDozingInternal(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    #@0
    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 223
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    #@d
    .line 224
    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    #@f
    .line 225
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@11
    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    #@14
    .line 227
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@16
    if-nez v0, :cond_0

    #@18
    .line 228
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@1b
    .line 229
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    #@1d
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    :cond_0
    monitor-exit v1

    #@21
    .line 214
    return-void

    #@22
    .line 221
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
    .line 198
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    #@3
    move-result v1

    #@4
    .line 199
    .local v1, "userId":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    #@7
    move-result-object v0

    #@8
    .line 200
    .local v0, "dream":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@a
    .line 201
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@c
    monitor-enter v2

    #@d
    .line 202
    const/4 v3, 0x0

    #@e
    :try_start_0
    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 197
    :cond_0
    return-void

    #@13
    .line 201
    :catchall_0
    move-exception v3

    #@14
    monitor-exit v2

    #@15
    throw v3
.end method

.method private startDreamLocked(Landroid/content/ComponentName;ZZI)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isTest"    # Z
    .param p3, "canDoze"    # Z
    .param p4, "userId"    # I

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    #@2
    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 347
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    #@a
    if-ne v0, p2, :cond_0

    #@c
    .line 348
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@e
    if-ne v0, p3, :cond_0

    #@10
    .line 349
    iget v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    #@12
    if-ne v0, p4, :cond_0

    #@14
    .line 350
    return-void

    #@15
    .line 353
    :cond_0
    const/4 v0, 0x1

    #@16
    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    #@19
    .line 355
    const-string/jumbo v0, "DreamManagerService"

    #@1c
    const-string/jumbo v1, "Entering dreamland."

    #@1f
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 357
    new-instance v2, Landroid/os/Binder;

    #@24
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@27
    .line 358
    .local v2, "newToken":Landroid/os/Binder;
    iput-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@29
    .line 359
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    #@2b
    .line 360
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    #@2d
    .line 361
    iput-boolean p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    #@2f
    .line 362
    iput p4, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    #@31
    .line 364
    iget-object v7, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@33
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$5;

    #@35
    move-object v1, p0

    #@36
    move-object v3, p1

    #@37
    move v4, p2

    #@38
    move v5, p3

    #@39
    move v6, p4

    #@3a
    invoke-direct/range {v0 .. v6}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZI)V

    #@3d
    invoke-virtual {v7, v0}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    #@40
    .line 345
    return-void
.end method

.method private stopDozingInternal(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@5
    if-ne v0, p1, :cond_0

    #@7
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 242
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    #@e
    .line 243
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    #@10
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@13
    .line 244
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    #@15
    .line 245
    const/4 v2, 0x0

    #@16
    const/4 v3, -0x1

    #@17
    .line 244
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v1

    #@1b
    .line 235
    return-void

    #@1c
    .line 240
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
    .line 208
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 209
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 207
    return-void

    #@8
    .line 208
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
    .line 373
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 374
    if-eqz p1, :cond_1

    #@6
    .line 375
    const-string/jumbo v0, "DreamManagerService"

    #@9
    const-string/jumbo v1, "Leaving dreamland."

    #@c
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    .line 376
    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    #@12
    .line 384
    :goto_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    #@14
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$6;

    #@16
    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;Z)V

    #@19
    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    #@1c
    .line 372
    :cond_0
    return-void

    #@1d
    .line 377
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 378
    return-void

    #@22
    .line 380
    :cond_2
    const-string/jumbo v0, "DreamManagerService"

    #@25
    const-string/jumbo v1, "Gently waking up from dream."

    #@28
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 381
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
    .line 192
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 193
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
    .line 191
    return-void

    #@a
    .line 192
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
    .line 260
    if-nez p1, :cond_0

    #@3
    return v4

    #@4
    .line 261
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    #@7
    move-result-object v0

    #@8
    .line 262
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v0, :cond_1

    #@a
    .line 263
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
    .line 264
    return v4

    #@2c
    .line 265
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2e
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@30
    const/16 v2, 0x15

    #@32
    if-lt v1, v2, :cond_2

    #@34
    .line 266
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
    .line 272
    :cond_2
    const/4 v1, 0x1

    #@40
    return v1

    #@41
    .line 267
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
    .line 268
    const-string/jumbo v3, " is not available because its manifest is missing the "

    #@57
    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    .line 268
    const-string/jumbo v3, "android.permission.BIND_DREAM_SERVICE"

    #@5e
    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 269
    const-string/jumbo v3, " permission on the dream service declaration."

    #@65
    .line 267
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
    .line 270
    return v4
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 107
    const/16 v0, 0x258

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 108
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 109
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    #@a
    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    #@d
    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    #@f
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$3;

    #@11
    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    #@14
    .line 118
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
    .line 111
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@22
    .line 106
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 101
    const-string/jumbo v0, "dreams"

    #@4
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$BinderService;

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$BinderService;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@c
    .line 102
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    #@e
    new-instance v1, Lcom/android/server/dreams/DreamManagerService$LocalService;

    #@10
    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$LocalService;)V

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@16
    .line 100
    return-void
.end method
