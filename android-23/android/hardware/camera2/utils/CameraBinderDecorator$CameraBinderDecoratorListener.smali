.class Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;
.super Ljava/lang/Object;
.source "CameraBinderDecorator.java"

# interfaces
.implements Landroid/hardware/camera2/utils/Decorator$DecoratorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CameraBinderDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CameraBinderDecoratorListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onAfterInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 72
    check-cast p3, Ljava/lang/Integer;

    #@a
    .end local p3    # "result":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    .line 73
    .local v0, "returnValue":I
    invoke-static {v0}, Landroid/hardware/camera2/utils/CameraBinderDecorator;->throwOnError(I)V

    #@11
    .line 69
    .end local v0    # "returnValue":I
    :cond_0
    return-void
.end method

.method public onBeforeInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 65
    return-void
.end method

.method public onCatchException(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 80
    instance-of v0, p3, Landroid/os/DeadObjectException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 81
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    #@6
    .line 82
    const-string/jumbo v1, "Process hosting the camera service has died unexpectedly"

    #@9
    .line 81
    const/4 v2, 0x2

    #@a
    invoke-direct {v0, v2, v1, p3}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    #@d
    throw v0

    #@e
    .line 84
    :cond_0
    instance-of v0, p3, Landroid/os/RemoteException;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@14
    const-string/jumbo v1, "An unknown RemoteException was thrown which should never happen."

    #@17
    invoke-direct {v0, v1, p3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v0

    #@1b
    .line 89
    :cond_1
    const/4 v0, 0x0

    #@1c
    return v0
.end method

.method public onFinally(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 93
    return-void
.end method
