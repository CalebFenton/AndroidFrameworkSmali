.class public final synthetic Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/Phone;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/telephony/Phone;

    iput p3, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda9;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda9;->f$0:Lcom/android/internal/telephony/emergency/EmergencyStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda9;->f$1:Lcom/android/internal/telephony/Phone;

    iget p0, p0, Lcom/android/internal/telephony/emergency/EmergencyStateTracker$$ExternalSyntheticLambda9;->f$2:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyStateTracker;->$r8$lambda$aqmpKW_-D9AUt4EqjFstrEtHvwk(Lcom/android/internal/telephony/emergency/EmergencyStateTracker;Lcom/android/internal/telephony/Phone;ILjava/lang/Boolean;)V

    return-void
.end method
