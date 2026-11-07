.class public final synthetic Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    check-cast p2, Landroid/media/RoutingSessionInfo;

    invoke-static {p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->$r8$lambda$weFlKxNxSmpPLGtn_TsVwtAHp3w(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method
