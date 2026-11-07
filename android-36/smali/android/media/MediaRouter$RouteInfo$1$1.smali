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
.field final synthetic blacklist this$1:Landroid/media/MediaRouter$RouteInfo$1;

.field final synthetic blacklist val$direction:I

.field final synthetic blacklist val$value:I


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter$RouteInfo$1;II)V
    .registers 4
    .param p1, "this$1"    # Landroid/media/MediaRouter$RouteInfo$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2268
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$1:Landroid/media/MediaRouter$RouteInfo$1;

    iput p2, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$direction:I

    iput p3, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 2271
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$1:Landroid/media/MediaRouter$RouteInfo$1;

    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo$1;->this$0:Landroid/media/MediaRouter$RouteInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-eqz v0, :cond_37

    .line 2272
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$direction:I

    if-eqz v0, :cond_22

    .line 2273
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$1:Landroid/media/MediaRouter$RouteInfo$1;

    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo$1;->this$0:Landroid/media/MediaRouter$RouteInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$1:Landroid/media/MediaRouter$RouteInfo$1;

    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo$1;->this$0:Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v1, v1, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$direction:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_37

    .line 2275
    :cond_22
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$1:Landroid/media/MediaRouter$RouteInfo$1;

    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo$1;->this$0:Landroid/media/MediaRouter$RouteInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$1:Landroid/media/MediaRouter$RouteInfo$1;

    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo$1;->this$0:Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v1, v1, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$value:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2278
    :cond_37
    :goto_37
    return-void
.end method
