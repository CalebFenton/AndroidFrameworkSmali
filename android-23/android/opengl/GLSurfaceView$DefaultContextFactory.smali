.class Landroid/opengl/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method private constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/opengl/GLSurfaceView;

    #@0
    .prologue
    .line 760
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Landroid/opengl/GLSurfaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 761
    const/16 v0, 0x3098

    #@7
    iput v0, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    #@9
    .line 760
    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$DefaultContextFactory;)V
    .locals 0
    .param p1, "this$0"    # Landroid/opengl/GLSurfaceView;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Landroid/opengl/GLSurfaceView;)V

    #@3
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 764
    const/4 v1, 0x3

    #@2
    new-array v0, v1, [I

    #@4
    iget v1, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    #@6
    aput v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Landroid/opengl/GLSurfaceView;

    #@a
    invoke-static {v1}, Landroid/opengl/GLSurfaceView;->-get2(Landroid/opengl/GLSurfaceView;)I

    #@d
    move-result v1

    #@e
    const/4 v2, 0x1

    #@f
    aput v1, v0, v2

    #@11
    .line 765
    const/16 v1, 0x3038

    #@13
    const/4 v2, 0x2

    #@14
    aput v1, v0, v2

    #@16
    .line 767
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@18
    .line 768
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Landroid/opengl/GLSurfaceView;

    #@1a
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->-get2(Landroid/opengl/GLSurfaceView;)I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 767
    .end local v0    # "attrib_list":[I
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    #@23
    move-result-object v1

    #@24
    return-object v1

    #@25
    .line 768
    .restart local v0    # "attrib_list":[I
    :cond_0
    const/4 v0, 0x0

    #@26
    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    #@0
    .prologue
    .line 773
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 774
    const-string/jumbo v0, "DefaultContextFactory"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "display:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " context: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 778
    const-string/jumbo v0, "eglDestroyContex"

    #@2e
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@31
    move-result v1

    #@32
    invoke-static {v0, v1}, Landroid/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    #@35
    .line 772
    :cond_0
    return-void
.end method
