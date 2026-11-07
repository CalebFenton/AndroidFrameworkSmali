.class public final synthetic Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Landroid/media/RouteListingPreference;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iput-object p2, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;->f$2:Landroid/media/RouteListingPreference;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;->f$0:Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;->f$2:Landroid/media/RouteListingPreference;

    invoke-static {v0, v1, v2}, Landroid/media/MediaRouter2Manager;->lambda$updateRouteListingPreference$10(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method
