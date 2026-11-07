.class Landroid/graphics/SurfaceTexture$1;
.super Landroid/os/Handler;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/SurfaceTexture;

.field final synthetic blacklist val$listener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .registers 6
    .param p1, "this$0"    # Landroid/graphics/SurfaceTexture;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/os/Handler$Callback;
    .param p4, "async"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Landroid/graphics/SurfaceTexture$1;->this$0:Landroid/graphics/SurfaceTexture;

    iput-object p5, p0, Landroid/graphics/SurfaceTexture$1;->val$listener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 239
    iget-object v0, p0, Landroid/graphics/SurfaceTexture$1;->val$listener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v1, p0, Landroid/graphics/SurfaceTexture$1;->this$0:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 240
    return-void
.end method
