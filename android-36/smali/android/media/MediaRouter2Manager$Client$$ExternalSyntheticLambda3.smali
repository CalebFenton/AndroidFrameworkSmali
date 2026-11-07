.class public final synthetic Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda3;
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
    check-cast p1, Landroid/media/MediaRouter2Manager;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/media/RouteListingPreference;

    invoke-static {p1, p2, p3}, Landroid/media/MediaRouter2Manager$Client;->$r8$lambda$sGljAAQ1nflSd2P92_JBa-x0x6w(Landroid/media/MediaRouter2Manager;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method
