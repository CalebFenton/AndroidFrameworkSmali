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
.field final synthetic blacklist this$0:Landroid/filterpacks/videosrc/CameraSource;


# direct methods
.method constructor blacklist <init>(Landroid/filterpacks/videosrc/CameraSource;)V
    .registers 2
    .param p1, "this$0"    # Landroid/filterpacks/videosrc/CameraSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 340
    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 343
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/CameraSource;->-$$Nest$fgetmLogVerbose(Landroid/filterpacks/videosrc/CameraSource;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "CameraSource"

    const-string v1, "New frame from camera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_f
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    monitor-enter v0

    .line 345
    :try_start_12
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterpacks/videosrc/CameraSource;->-$$Nest$fputmNewFrameAvailable(Landroid/filterpacks/videosrc/CameraSource;Z)V

    .line 346
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource$1;->this$0:Landroid/filterpacks/videosrc/CameraSource;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 347
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v1
.end method
