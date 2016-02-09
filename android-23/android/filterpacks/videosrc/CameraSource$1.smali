.class Landroid/filterpacks/videosrc/CameraSource$1;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/CameraSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/CameraSource;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterpacks/videosrc/CameraSource;

    #@0
    .prologue
    .line 340
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    #@2
    invoke-static {v0}, Landroid/filterpacks/videosrc/CameraSource;->-get0(Landroid/filterpacks/videosrc/CameraSource;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "CameraSource"

    #@b
    const-string/jumbo v1, "New frame from camera"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 344
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    #@13
    monitor-enter v1

    #@14
    .line 345
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    #@16
    const/4 v2, 0x1

    #@17
    invoke-static {v0, v2}, Landroid/filterpacks/videosrc/CameraSource;->-set0(Landroid/filterpacks/videosrc/CameraSource;Z)Z

    #@1a
    .line 346
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    #@1c
    invoke-virtual {v0}, Landroid/filterpacks/videosrc/CameraSource;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit v1

    #@20
    .line 342
    return-void

    #@21
    .line 344
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method
