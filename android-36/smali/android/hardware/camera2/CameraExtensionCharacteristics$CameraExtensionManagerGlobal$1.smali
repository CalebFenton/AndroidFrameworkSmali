.class Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->connectToProxyLocked(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

.field final synthetic blacklist val$extension:I

.field final synthetic blacklist val$initFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;ILandroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    iput p2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->val$extension:I

    iput-object p3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->val$initFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 336
    nop

    .line 337
    invoke-static {p2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v0

    .line 338
    .local v0, "proxy":Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->-$$Nest$fgetmConnectionManager(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->val$extension:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->setProxy(ILandroid/hardware/camera2/extension/ICameraExtensionsProxyService;)V

    .line 339
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->-$$Nest$fgetmConnectionManager(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->val$extension:I

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 343
    :try_start_1e
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->-$$Nest$fgetmConnectionManager(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->val$extension:I

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-static {v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->-$$Nest$fgetmConnectionManager(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    move-result-object v3

    iget v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->val$extension:I

    .line 344
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->getProxy(I)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    move-result-object v3

    .line 345
    invoke-interface {v3}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->advancedExtensionsSupported()Z

    move-result v3

    .line 343
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->setAdvancedExtensionsSupported(IZ)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_39} :catch_3a

    .line 348
    goto :goto_42

    .line 346
    :catch_3a
    move-exception v1

    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CameraExtensionManagerGlobal"

    const-string v3, "Remote IPC failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_42
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->val$initFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->setStatus(Z)V

    .line 350
    return-void

    .line 340
    :cond_49
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Camera Proxy service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 330
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->-$$Nest$fgetmConnectionManager(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->val$extension:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->setConnection(ILandroid/content/ServiceConnection;)V

    .line 331
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->this$0:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->-$$Nest$fgetmConnectionManager(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;->val$extension:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;->setProxy(ILandroid/hardware/camera2/extension/ICameraExtensionsProxyService;)V

    .line 332
    return-void
.end method
