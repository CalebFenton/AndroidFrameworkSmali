.class Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;
.super Ljava/lang/Object;
.source "RemoteComposeCanvas.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .registers 6
    .param p1, "frameTimeNanos"    # J

    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    const-wide/32 v1, 0xf4240

    div-long v1, p1, v1

    iput-wide v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->currentTime:J

    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    iget v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDebug(I)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->postInvalidateOnAnimation()V

    .line 73
    return-void
.end method
