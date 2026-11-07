.class Landroid/media/MediaRouter2$SystemRoutingController;
.super Landroid/media/MediaRouter2$RoutingController;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemRoutingController"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2351
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 2352
    return-void
.end method


# virtual methods
.method public whitelist isReleased()Z
    .registers 2

    .line 2357
    const/4 v0, 0x0

    return v0
.end method

.method blacklist releaseInternal(Z)V
    .registers 2
    .param p1, "shouldReleaseSession"    # Z

    .line 2369
    return-void
.end method

.method blacklist scheduleRelease()Z
    .registers 2

    .line 2363
    const/4 v0, 0x1

    return v0
.end method
