.class public Landroid/hardware/Camera$CameraInfo;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraInfo"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CAMERA_FACING_BACK:I = 0x0

.field public static final whitelist CAMERA_FACING_FRONT:I = 0x1


# instance fields
.field public whitelist canDisableShutterSound:Z

.field public whitelist facing:I

.field public whitelist orientation:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
