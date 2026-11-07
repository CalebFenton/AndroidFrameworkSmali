.class public Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
.super Ljava/lang/Object;
.source "CameraExtensionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceInfo"
.end annotation


# instance fields
.field public blacklist mFormat:I

.field public blacklist mHeight:I

.field public blacklist mUsage:J

.field public blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    .line 67
    iput v0, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    return-void
.end method
