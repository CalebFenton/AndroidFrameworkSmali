.class Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "AbstractRemoteService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AbstractRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/infra/AbstractRemoteService;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 536
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>.RemoteServiceConnection;"
    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 568
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>.RemoteServiceConnection;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-boolean v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "onBindingDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_f
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$mscheduleUnbind(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 570
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 539
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>.RemoteServiceConnection;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-boolean v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_f
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {v0}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fgetmDestroyed(Lcom/android/internal/infra/AbstractRemoteService;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {v0}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fgetmConnecting(Lcom/android/internal/infra/AbstractRemoteService;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_54

    .line 545
    :cond_20
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmConnecting(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 547
    :try_start_26
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_4d

    .line 551
    nop

    .line 552
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object v2, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-virtual {v2, p2}, Lcom/android/internal/infra/AbstractRemoteService;->getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    .line 553
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmServiceExitReason(Lcom/android/internal/infra/AbstractRemoteService;I)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {v0, v2}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmServiceExitSubReason(Lcom/android/internal/infra/AbstractRemoteService;I)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$mhandleOnConnectedStateChangedInternal(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmServiceDied(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 557
    return-void

    .line 548
    :catch_4d
    move-exception v0

    .line 549
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$mhandleBinderDied(Lcom/android/internal/infra/AbstractRemoteService;)V

    .line 550
    return-void

    .line 542
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "onServiceConnected() was dispatched after unbindService."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 561
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>.RemoteServiceConnection;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-boolean v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_f
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmConnecting(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 563
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    .line 564
    return-void
.end method
