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
.field final synthetic this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;I)V
    .locals 0
    .param p1, "this$2"    # Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
    .param p2, "val$volume"    # I

    #@0
    .prologue
    .line 2247
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@2
    iput p2, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->val$volume:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 2250
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$1:Landroid/media/MediaRouter$UserRouteInfo;

    #@4
    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2251
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@a
    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$1:Landroid/media/MediaRouter$UserRouteInfo;

    #@c
    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@e
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    #@10
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@12
    iget-object v1, v1, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$1:Landroid/media/MediaRouter$UserRouteInfo;

    #@14
    iget-object v1, v1, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@16
    iget-object v1, v1, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    #@18
    iget v2, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$1;->val$volume:I

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    #@1d
    .line 2249
    :cond_0
    return-void
.end method
