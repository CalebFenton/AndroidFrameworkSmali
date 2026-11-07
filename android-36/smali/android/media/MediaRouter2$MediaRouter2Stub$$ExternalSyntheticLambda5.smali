.class public final synthetic Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 0
    check-cast p1, Landroid/media/MediaRouter2;

    check-cast p2, Landroid/media/RoutingSessionInfo;

    check-cast p3, Landroid/media/MediaRoute2Info;

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/media/MediaRouter2;->onRequestCreateControllerByManagerOnHandler(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;J)V

    return-void
.end method
