.class Landroid/app/admin/DevicePolicyKeyguardService$1;
.super Landroid/app/admin/IKeyguardClient$Stub;
.source "DevicePolicyKeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/admin/DevicePolicyKeyguardService;


# direct methods
.method public static synthetic blacklist $r8$lambda$3SCUbppfTeP7ol7-aEkBsLmgs10(Landroid/app/admin/DevicePolicyKeyguardService$1;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyKeyguardService$1;->lambda$onCreateKeyguardSurface$0(Landroid/os/IBinder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/admin/DevicePolicyKeyguardService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/admin/DevicePolicyKeyguardService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-direct {p0}, Landroid/app/admin/IKeyguardClient$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onCreateKeyguardSurface$0(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "hostInputToken"    # Landroid/os/IBinder;

    .line 57
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    .line 58
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyKeyguardService;->onCreateKeyguardSurface(Landroid/os/IBinder;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    .line 61
    .local v0, "surfacePackage":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    :try_start_6
    iget-object v1, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-static {v1}, Landroid/app/admin/DevicePolicyKeyguardService;->-$$Nest$fgetmCallback(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/app/admin/IKeyguardCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/admin/IKeyguardCallback;->onRemoteContentReady(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 64
    goto :goto_18

    .line 62
    :catch_10
    move-exception v1

    .line 63
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DevicePolicyKeyguardService"

    const-string v3, "Failed to return created SurfacePackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method


# virtual methods
.method public blacklist onCreateKeyguardSurface(Landroid/os/IBinder;Landroid/app/admin/IKeyguardCallback;)V
    .registers 5
    .param p1, "hostInputToken"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/admin/IKeyguardCallback;

    .line 55
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-static {v0, p2}, Landroid/app/admin/DevicePolicyKeyguardService;->-$$Nest$fputmCallback(Landroid/app/admin/DevicePolicyKeyguardService;Landroid/app/admin/IKeyguardCallback;)V

    .line 56
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-static {v0}, Landroid/app/admin/DevicePolicyKeyguardService;->-$$Nest$fgetmHandler(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/admin/DevicePolicyKeyguardService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/admin/DevicePolicyKeyguardService$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/admin/DevicePolicyKeyguardService$1;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method
