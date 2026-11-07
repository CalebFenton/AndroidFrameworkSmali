.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoopbackCallback"
.end annotation


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V
    .registers 3
    .param p1, "reader"    # Landroid/media/ImageReader;
    .param p2, "img"    # Landroid/media/Image;

    .line 1372
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 1373
    return-void
.end method

.method public blacklist onImageDropped(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 1368
    return-void
.end method
