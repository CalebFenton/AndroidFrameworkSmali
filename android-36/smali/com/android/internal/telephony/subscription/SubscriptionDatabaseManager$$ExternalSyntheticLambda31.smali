.class public final synthetic Lcom/android/internal/telephony/subscription/SubscriptionDatabaseManager$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->setSatelliteEntitlementDataPlanForPlmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;

    move-result-object p0

    return-object p0
.end method
