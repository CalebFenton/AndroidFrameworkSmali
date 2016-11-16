.class Landroid/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1879
    const-string/jumbo v0, "GLThreadManager"

    #@3
    sput-object v0, Landroid/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    #@5
    .line 1878
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/opengl/GLSurfaceView$GLThreadManager;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V
    .locals 0
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    #@0
    .prologue
    .line 1894
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V

    #@3
    .line 1893
    return-void
.end method

.method public declared-synchronized threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1885
    const/4 v0, 0x1

    #@2
    :try_start_0
    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->-set0(Landroid/opengl/GLSurfaceView$GLThread;Z)Z

    #@5
    .line 1886
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    .line 1881
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method
