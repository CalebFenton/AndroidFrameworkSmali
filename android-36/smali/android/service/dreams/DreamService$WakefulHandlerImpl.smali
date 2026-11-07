.class final Landroid/service/dreams/DreamService$WakefulHandlerImpl;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/service/dreams/DreamService$WakefulHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WakefulHandlerImpl"
.end annotation


# static fields
.field private static final blacklist SERVICE_HANDLER_WAKE_LOCK_TAG:Ljava/lang/String; = "dream:service:handler"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mContext:Landroid/content/Context;

    .line 384
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    .line 385
    invoke-direct {p0}, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 386
    return-void
.end method

.method private blacklist getWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 4

    .line 367
    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 369
    return-object v1

    .line 372
    :cond_c
    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 374
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-nez v0, :cond_19

    .line 375
    return-object v1

    .line 378
    :cond_19
    const/4 v1, 0x1

    const-string v2, "dream:service:handler"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 401
    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist postIfNeeded(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 390
    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 391
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_25

    .line 392
    :cond_10
    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_20

    .line 393
    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    .line 395
    :cond_20
    iget-object v0, p0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    :goto_25
    return-void
.end method
