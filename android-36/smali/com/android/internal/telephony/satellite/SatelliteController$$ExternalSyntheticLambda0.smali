.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteController;->$r8$lambda$pXagdJNcCmLQ_JbWZjcP_m2hZbs(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
