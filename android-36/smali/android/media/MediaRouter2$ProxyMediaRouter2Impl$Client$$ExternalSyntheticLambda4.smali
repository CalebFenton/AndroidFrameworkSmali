.class public final synthetic Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    check-cast p1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/media/RouteListingPreference;

    invoke-static {p1, p2, p3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->$r8$lambda$mrVyffRBx4nsfSpuI3Qk3oigKa0(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method
