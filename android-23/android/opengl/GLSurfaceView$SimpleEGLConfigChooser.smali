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


# instance fields
.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;Z)V
    .locals 8
    .param p1, "this$0"    # Landroid/opengl/GLSurfaceView;
    .param p2, "withDepthBuffer"    # Z

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    const/4 v5, 0x0

    #@3
    .line 976
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    #@5
    .line 977
    if-eqz p2, :cond_0

    #@7
    const/16 v6, 0x10

    #@9
    :goto_0
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move v3, v2

    #@c
    move v4, v2

    #@d
    move v7, v5

    #@e
    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    #@11
    .line 976
    return-void

    #@12
    :cond_0
    move v6, v5

    #@13
    .line 977
    goto :goto_0
.end method
