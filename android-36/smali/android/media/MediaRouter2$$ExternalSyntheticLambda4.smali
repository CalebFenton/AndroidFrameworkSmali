.class public final synthetic Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;
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
    check-cast p1, Landroid/media/MediaRouter2;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter2;->dispatchControllerUpdatedIfNeededOnHandler(Ljava/util/Map;)V

    return-void
.end method
