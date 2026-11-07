.class public final synthetic Lcom/android/internal/telephony/metrics/SimSlotState$$ExternalSyntheticLambda3;
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
    check-cast p1, Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SimSlotState;->$r8$lambda$8zQi_2eV-Nm0vfTkwDtP81RZ1as(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result p0

    return p0
.end method
