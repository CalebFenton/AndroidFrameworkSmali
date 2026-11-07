.class public Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;
.super Landroid/hardware/camera2/ICameraInjectionCallback$Stub;
.source "CameraInjectionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraInjectionCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 207
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraInjectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 211
    return-object p0
.end method

.method public blacklist onInjectionError(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 216
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->onInjectionError(I)V

    .line 217
    return-void
.end method
