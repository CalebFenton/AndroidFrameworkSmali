.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

.field public final synthetic blacklist f$1:Landroid/telephony/satellite/NtnSignalStrength;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;->f$0:Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;->f$1:Landroid/telephony/satellite/NtnSignalStrength;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;->f$0:Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda23;->f$1:Landroid/telephony/satellite/NtnSignalStrength;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCarrierRoamingNtnSignalStrengthChanged$82(Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;Landroid/telephony/satellite/NtnSignalStrength;)V

    return-void
.end method
