.class Landroid/media/MediaRouter$RouteInfo$1$1;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$RouteInfo$1;->dispatchRemoteVolumeUpdate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/media/MediaRouter$RouteInfo$1;

.field final synthetic val$direction:I

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteInfo$1;II)V
    .locals 0
    .param p1, "this$2"    # Landroid/media/MediaRouter$RouteInfo$1;
    .param p2, "val$direction"    # I
    .param p3, "val$value"    # I

    #@0
    .prologue
    .line 1953
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$2:Landroid/media/MediaRouter$RouteInfo$1;

    #@2
    iput p2, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$direction:I

    #@4
    iput p3, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$value:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 1956
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$2:Landroid/media/MediaRouter$RouteInfo$1;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo$1;->this$1:Landroid/media/MediaRouter$RouteInfo;

    #@4
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1957
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$direction:I

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1958
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$2:Landroid/media/MediaRouter$RouteInfo$1;

    #@e
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo$1;->this$1:Landroid/media/MediaRouter$RouteInfo;

    #@10
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@12
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    #@14
    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$2:Landroid/media/MediaRouter$RouteInfo$1;

    #@16
    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo$1;->this$1:Landroid/media/MediaRouter$RouteInfo;

    #@18
    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@1a
    iget-object v1, v1, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    #@1c
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$direction:I

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    #@21
    .line 1955
    :cond_0
    :goto_0
    return-void

    #@22
    .line 1960
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$2:Landroid/media/MediaRouter$RouteInfo$1;

    #@24
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo$1;->this$1:Landroid/media/MediaRouter$RouteInfo;

    #@26
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@28
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    #@2a
    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$2:Landroid/media/MediaRouter$RouteInfo$1;

    #@2c
    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo$1;->this$1:Landroid/media/MediaRouter$RouteInfo;

    #@2e
    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@30
    iget-object v1, v1, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    #@32
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$value:I

    #@34
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    #@37
    goto :goto_0
.end method
