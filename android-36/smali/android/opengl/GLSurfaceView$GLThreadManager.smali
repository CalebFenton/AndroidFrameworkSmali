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
.field private static greylist-max-o TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1910
    const-string v0, "GLThreadManager"

    sput-object v0, Landroid/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/opengl/GLSurfaceView-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V
    .registers 2
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    .line 1925
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1926
    return-void
.end method

.method public declared-synchronized greylist-max-o threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V
    .registers 3
    .param p1, "thread"    # Landroid/opengl/GLSurfaceView$GLThread;

    monitor-enter p0

    .line 1916
    const/4 v0, 0x1

    :try_start_2
    invoke-static {p1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->-$$Nest$fputmExited(Landroid/opengl/GLSurfaceView$GLThread;Z)V

    .line 1917
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 1918
    monitor-exit p0

    return-void

    .line 1915
    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThreadManager;
    .end local p1    # "thread":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method
