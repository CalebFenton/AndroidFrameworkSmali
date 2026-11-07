.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda101;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

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
    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p0, p3}, Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager;->setSatelliteEntitlementPlmns(ILjava/lang/String;)V

    return-void
.end method
