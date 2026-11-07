.class final Landroid/service/dreams/DreamService$DefaultInjector;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/service/dreams/DreamService$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultInjector"
.end annotation


# instance fields
.field private blacklist mClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mWakefulHandler:Landroid/service/dreams/DreamService$WakefulHandler;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/dreams/DreamService-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/service/dreams/DreamService$DefaultInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createOverlayConnection(Landroid/content/ComponentName;Ljava/lang/Runnable;)Landroid/service/dreams/DreamOverlayConnectionHandler;
    .registers 7
    .param p1, "overlayComponent"    # Landroid/content/ComponentName;
    .param p2, "onDisconnected"    # Ljava/lang/Runnable;

    .line 419
    new-instance v0, Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    .line 421
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 422
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/service/dreams/DreamOverlayConnectionHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/Intent;Ljava/lang/Runnable;)V

    .line 419
    return-object v0
.end method

.method public blacklist getDreamActivityComponent()Landroid/content/ComponentName;
    .registers 4

    .line 428
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/service/dreams/DreamActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public blacklist getDreamComponent()Landroid/content/ComponentName;
    .registers 4

    .line 433
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mClassName:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public blacklist getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 2

    .line 443
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDreamPackageName()Ljava/lang/String;
    .registers 2

    .line 438
    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 469
    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 3

    .line 448
    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService$DefaultInjector;->getDreamComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$smfetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWakefulHandler()Landroid/service/dreams/DreamService$WakefulHandler;
    .registers 3

    .line 453
    monitor-enter p0

    .line 454
    :try_start_1
    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mWakefulHandler:Landroid/service/dreams/DreamService$WakefulHandler;

    if-nez v0, :cond_e

    .line 455
    new-instance v0, Landroid/service/dreams/DreamService$WakefulHandlerImpl;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/service/dreams/DreamService$WakefulHandlerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mWakefulHandler:Landroid/service/dreams/DreamService$WakefulHandler;

    .line 457
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 459
    iget-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mWakefulHandler:Landroid/service/dreams/DreamService$WakefulHandler;

    return-object v0

    .line 457
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 411
    iput-object p1, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService$DefaultInjector;->mClassName:Ljava/lang/Class;

    .line 413
    return-void
.end method
