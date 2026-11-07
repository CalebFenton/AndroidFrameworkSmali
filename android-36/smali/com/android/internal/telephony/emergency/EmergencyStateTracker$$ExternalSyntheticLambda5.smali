.class public final synthetic Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

.field public final synthetic blacklist f$1:Landroid/telecom/Connection;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/telecom/Connection;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda5;->f$1:Landroid/telecom/Connection;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda5;->f$1:Landroid/telecom/Connection;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->$r8$lambda$edvEK3WbYMIRTkHSJZTy_4gUO6E(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Landroid/telecom/Connection;Ljava/lang/Boolean;)V

    return-void
.end method
