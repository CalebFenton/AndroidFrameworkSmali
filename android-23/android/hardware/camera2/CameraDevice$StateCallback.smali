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


# static fields
.field public static final ERROR_CAMERA_DEVICE:I = 0x4

.field public static final ERROR_CAMERA_DISABLED:I = 0x3

.field public static final ERROR_CAMERA_IN_USE:I = 0x1

.field public static final ERROR_CAMERA_SERVICE:I = 0x5

.field public static final ERROR_MAX_CAMERAS_IN_USE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    #@0
    .prologue
    .line 869
    return-void
.end method

.method public abstract onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
.end method

.method public abstract onError(Landroid/hardware/camera2/CameraDevice;I)V
.end method

.method public abstract onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end method
