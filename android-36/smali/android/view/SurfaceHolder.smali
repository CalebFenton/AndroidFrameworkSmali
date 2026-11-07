.class public interface abstract Landroid/view/SurfaceHolder;
.super Ljava/lang/Object;
.source "SurfaceHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceHolder$Callback2;,
        Landroid/view/SurfaceHolder$Callback;,
        Landroid/view/SurfaceHolder$BadSurfaceTypeException;
    }
.end annotation


# static fields
.field public static final whitelist SURFACE_TYPE_GPU:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SURFACE_TYPE_HARDWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SURFACE_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SURFACE_TYPE_PUSH_BUFFERS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract whitelist addCallback(Landroid/view/SurfaceHolder$Callback;)V
.end method

.method public abstract whitelist getSurface()Landroid/view/Surface;
.end method

.method public abstract whitelist getSurfaceFrame()Landroid/graphics/Rect;
.end method

.method public abstract whitelist isCreating()Z
.end method

.method public abstract whitelist lockCanvas()Landroid/graphics/Canvas;
.end method

.method public abstract whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .registers 3

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This SurfaceHolder doesn\'t support lockHardwareCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist removeCallback(Landroid/view/SurfaceHolder$Callback;)V
.end method

.method public abstract whitelist setFixedSize(II)V
.end method

.method public abstract whitelist setFormat(I)V
.end method

.method public abstract whitelist setKeepScreenOn(Z)V
.end method

.method public abstract whitelist setSizeFromLayout()V
.end method

.method public abstract whitelist setType(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
.end method
