.class public final synthetic Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

.field public final synthetic blacklist f$1:Landroid/media/RoutingSessionInfo;

.field public final synthetic blacklist f$2:Landroid/media/MediaRoute2Info;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iput-object p2, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;->f$1:Landroid/media/RoutingSessionInfo;

    iput-object p3, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;->f$2:Landroid/media/MediaRoute2Info;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;->f$1:Landroid/media/RoutingSessionInfo;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;->f$2:Landroid/media/MediaRoute2Info;

    invoke-static {v0, v1, v2}, Landroid/media/MediaRouter2Manager;->lambda$notifyTransferFailed$8(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method
