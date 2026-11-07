.class public final synthetic Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

.field public final synthetic blacklist f$1:Landroid/media/RouteListingPreference;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;Landroid/media/RouteListingPreference;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    iput-object p2, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$1:Landroid/media/RouteListingPreference;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    iget-object v1, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;->f$1:Landroid/media/RouteListingPreference;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->lambda$notifyRouteListingPreferenceUpdated$7(Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;Landroid/media/RouteListingPreference;)V

    return-void
.end method
