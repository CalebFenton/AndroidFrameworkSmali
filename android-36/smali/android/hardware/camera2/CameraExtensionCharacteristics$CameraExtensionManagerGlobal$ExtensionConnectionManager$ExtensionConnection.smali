.class Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionConnection"
.end annotation


# instance fields
.field public blacklist mConnection:Landroid/content/ServiceConnection;

.field public blacklist mConnectionCount:I

.field public blacklist mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

.field public blacklist mSupportsAdvancedExtensions:Z


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    .line 683
    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 684
    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mConnectionCount:I

    .line 685
    iput-boolean p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;->mSupportsAdvancedExtensions:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;Landroid/hardware/camera2/CameraExtensionCharacteristics-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager$ExtensionConnection;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$ExtensionConnectionManager;)V

    return-void
.end method
