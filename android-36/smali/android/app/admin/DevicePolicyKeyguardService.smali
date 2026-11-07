.class public Landroid/app/admin/DevicePolicyKeyguardService;
.super Landroid/app/Service;
.source "DevicePolicyKeyguardService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DevicePolicyKeyguardService"


# instance fields
.field private blacklist mCallback:Landroid/app/admin/IKeyguardCallback;

.field private final blacklist mClient:Landroid/app/admin/IKeyguardClient;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/app/admin/IKeyguardCallback;
    .registers 1

    iget-object p0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mCallback:Landroid/app/admin/IKeyguardCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/app/admin/DevicePolicyKeyguardService;Landroid/app/admin/IKeyguardCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mCallback:Landroid/app/admin/IKeyguardCallback;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Landroid/app/admin/DevicePolicyKeyguardService$1;

    invoke-direct {v0, p0}, Landroid/app/admin/DevicePolicyKeyguardService$1;-><init>(Landroid/app/admin/DevicePolicyKeyguardService;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mClient:Landroid/app/admin/IKeyguardClient;

    return-void
.end method


# virtual methods
.method public whitelist dismiss()V
    .registers 4

    .line 110
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mCallback:Landroid/app/admin/IKeyguardCallback;

    const-string v1, "DevicePolicyKeyguardService"

    if-nez v0, :cond_c

    .line 111
    const-string v0, "KeyguardCallback was unexpectedly null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mCallback:Landroid/app/admin/IKeyguardCallback;

    invoke-interface {v0}, Landroid/app/admin/IKeyguardCallback;->onDismiss()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 118
    goto :goto_19

    .line 116
    :catch_12
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "onDismiss failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mClient:Landroid/app/admin/IKeyguardClient;

    invoke-interface {v0}, Landroid/app/admin/IKeyguardClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onCreateKeyguardSurface(Landroid/os/IBinder;)Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 3
    .param p1, "hostInputToken"    # Landroid/os/IBinder;

    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 71
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
