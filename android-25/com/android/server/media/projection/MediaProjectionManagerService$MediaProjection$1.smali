.class Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->start(Landroid/media/projection/IMediaProjectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field final synthetic val$callback:Landroid/media/projection/IMediaProjectionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .param p2, "val$callback"    # Landroid/media/projection/IMediaProjectionCallback;

    #@0
    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->this$1:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    #@2
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->val$callback:Landroid/media/projection/IMediaProjectionCallback;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->this$1:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    #@2
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    #@4
    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-get1(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->val$callback:Landroid/media/projection/IMediaProjectionCallback;

    #@a
    invoke-virtual {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionCallback;)V

    #@d
    .line 416
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->this$1:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    #@f
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    #@12
    .line 414
    return-void
.end method
