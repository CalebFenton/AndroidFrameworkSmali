.class public final synthetic Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda12;
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
    check-cast p1, Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result p0

    return p0
.end method
