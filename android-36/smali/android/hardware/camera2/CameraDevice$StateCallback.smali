.class public abstract Landroid/hardware/camera2/CameraDevice$StateCallback;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraDevice$StateCallback$ErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_CAMERA_DEVICE:I = 0x4

.field public static final whitelist ERROR_CAMERA_DISABLED:I = 0x3

.field public static final whitelist ERROR_CAMERA_IN_USE:I = 0x1

.field public static final whitelist ERROR_CAMERA_SERVICE:I = 0x5

.field public static final whitelist ERROR_MAX_CAMERAS_IN_USE:I = 0x2


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClientSharedAccessPriorityChanged(Landroid/hardware/camera2/CameraDevice;Z)V
    .registers 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "isPrimaryClient"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1619
    return-void
.end method

.method public whitelist onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 1634
    return-void
.end method

.method public abstract whitelist onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
.end method

.method public abstract whitelist onError(Landroid/hardware/camera2/CameraDevice;I)V
.end method

.method public abstract whitelist onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end method

.method public whitelist onOpenedInSharedMode(Landroid/hardware/camera2/CameraDevice;Z)V
    .registers 3
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "isPrimaryClient"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1596
    return-void
.end method
