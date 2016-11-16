.class public Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CallbackProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CallbackProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionStateCallbackProxy"
.end annotation


# instance fields
.field private final mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/MethodNameInvoker",
            "<",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
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
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 147
    .local p1, "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    #@3
    .line 149
    const-string/jumbo v0, "dispatchTarget must not be null"

    #@6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    .end local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    check-cast p1, Landroid/hardware/camera2/dispatch/Dispatchable;

    #@c
    .line 150
    .restart local p1    # "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<Landroid/hardware/camera2/CameraCaptureSession$StateCallback;>;"
    new-instance v0, Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@e
    .line 151
    const-class v1, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    #@10
    .line 150
    invoke-direct {v0, p1, v1}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    #@13
    iput-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@15
    .line 148
    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

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
    .line 171
    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

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
    .line 176
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onConfigureFailed"

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
    .line 161
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onConfigured"

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
    .line 155
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onReady"

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
    .line 166
    return-void
.end method

.method public onSurfacePrepared(Landroid/hardware/camera2/CameraCaptureSession;Landroid/view/Surface;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->mProxy:Landroid/hardware/camera2/dispatch/MethodNameInvoker;

    #@2
    const-string/jumbo v1, "onSurfacePrepared"

    #@5
    const/4 v2, 0x2

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p1, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    aput-object p2, v2, v3

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/dispatch/MethodNameInvoker;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 181
    return-void
.end method
