.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1775
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    #@7
    .line 1784
    iput-object v1, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    #@9
    .line 1793
    iput-object v1, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    #@b
    .line 1802
    iput-object v1, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    #@d
    .line 1715
    return-void
.end method
