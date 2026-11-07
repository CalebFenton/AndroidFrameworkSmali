.class Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;
.super Landroid/opengl/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/opengl/GLSurfaceView;Z)V
    .registers 12
    .param p2, "withDepthBuffer"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1007
    if-eqz p2, :cond_5

    const/16 v0, 0x10

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    move v7, v0

    const/4 v8, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    .line 1008
    return-void
.end method
