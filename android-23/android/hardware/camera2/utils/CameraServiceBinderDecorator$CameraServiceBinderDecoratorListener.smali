.class Landroid/hardware/camera2/utils/CameraServiceBinderDecorator$CameraServiceBinderDecoratorListener;
.super Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;
.source "CameraServiceBinderDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CameraServiceBinderDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CameraServiceBinderDecoratorListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCatchException(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 42
    instance-of v0, p3, Landroid/os/DeadObjectException;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 51
    :cond_0
    :goto_0
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 45
    :cond_1
    instance-of v0, p3, Landroid/os/RemoteException;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 48
    const-string/jumbo v0, "CameraServiceBinderDecorator"

    #@d
    const-string/jumbo v1, "Unexpected RemoteException from camera service call."

    #@10
    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    goto :goto_0
.end method
