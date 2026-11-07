.class Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->onSetVolumeTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

.field final synthetic blacklist val$volume:I


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;I)V
    .registers 3
    .param p1, "this$1"    # Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2563
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->this$1:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iput p2, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 2566
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->this$1:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$0:Landroid/media/MediaRouter$UserRouteInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-eqz v0, :cond_1d

    .line 2567
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->this$1:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$0:Landroid/media/MediaRouter$UserRouteInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->this$1:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iget-object v1, v1, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$0:Landroid/media/MediaRouter$UserRouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v1, v1, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    iget v2, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->val$volume:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2569
    :cond_1d
    return-void
.end method
