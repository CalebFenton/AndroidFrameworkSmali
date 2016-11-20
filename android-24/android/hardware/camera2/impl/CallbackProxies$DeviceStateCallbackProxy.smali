.class public Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;
.super Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
.source "CallbackProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CallbackProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceStateCallbackProxy"
.end annotation


# instance fields
.field private final mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/MethodNameInvoker",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 43
    .local p1, "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;-><init>()V

    #@3
    .line 45
    const-string/jumbo v0, "dispatchTarget must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    .end local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;>;"
    check-cast p1, Landroid/hardware/camera2/dispatch/Dispatchable;

    #@c
    .line 46
    .restart local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;>;"
    new-instance v0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@e
    const-class v1, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    #@10
    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    #@13
    iput-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@15
    .line 44
    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onActive"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 70
    return-void
.end method

.method public onBusy(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onBusy"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 75
    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onClosed"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 80
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onDisconnected"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 55
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onError"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x1

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    .line 60
    return-void
.end method

.method public onIdle(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onIdle"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 85
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onOpened"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 50
    return-void
.end method

.method public onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onUnconfigured"

    #@5
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 65
    return-void
.end method
