.class Landroid/media/MediaRouter$VolumeCallbackInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeCallbackInfo"
.end annotation


# instance fields
.field public final greylist-max-o route:Landroid/media/MediaRouter$RouteInfo;

.field public final greylist-max-o vcb:Landroid/media/MediaRouter$VolumeCallback;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 3
    .param p1, "vcb"    # Landroid/media/MediaRouter$VolumeCallback;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 3137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3138
    iput-object p1, p0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    .line 3139
    iput-object p2, p0, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    .line 3140
    return-void
.end method
