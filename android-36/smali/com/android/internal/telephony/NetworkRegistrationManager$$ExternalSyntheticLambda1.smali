.class public final synthetic Lcom/android/internal/telephony/NetworkRegistrationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/Phone;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    iput-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public final whitelist onCarrierConfigChanged(IIII)V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/telephony/Phone;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/NetworkRegistrationManager;->$r8$lambda$Jv5V-n_daUib-MQNh4HQ_0aERXA(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/Phone;IIII)V

    return-void
.end method
