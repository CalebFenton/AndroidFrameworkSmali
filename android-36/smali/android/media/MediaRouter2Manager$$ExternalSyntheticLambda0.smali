.class public final synthetic Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/RoutingSessionInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/RoutingSessionInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda0;->f$0:Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda0;->f$0:Landroid/media/RoutingSessionInfo;

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-static {v0, p1}, Landroid/media/MediaRouter2Manager;->lambda$getTransferableRoutes$1(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)Z

    move-result p1

    return p1
.end method
