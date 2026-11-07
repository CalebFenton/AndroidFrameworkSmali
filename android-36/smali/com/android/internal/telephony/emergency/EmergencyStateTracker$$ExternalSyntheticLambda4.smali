.class public final synthetic Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/emergency/EmergencyStateTracker$PhoneSwitcherProxy;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist getPhoneSwitcher()Lcom/android/internal/telephony/data/PhoneSwitcher;
    .registers 1

    .line 0
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p0

    return-object p0
.end method
