.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

.field public final synthetic blacklist f$1:Landroid/telephony/emergency/EmergencyNumber;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;->f$0:Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;->f$1:Landroid/telephony/emergency/EmergencyNumber;

    iput p3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;->f$0:Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;->f$1:Landroid/telephony/emergency/EmergencyNumber;

    iget v2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda31;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onOutgoingEmergencySms$42(Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;Landroid/telephony/emergency/EmergencyNumber;I)V

    return-void
.end method
