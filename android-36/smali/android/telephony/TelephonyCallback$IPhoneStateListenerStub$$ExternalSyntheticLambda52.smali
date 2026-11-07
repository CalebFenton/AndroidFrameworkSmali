.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$SignalStrengthsListener;

.field public final synthetic blacklist f$1:Landroid/telephony/SignalStrength;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;->f$0:Landroid/telephony/TelephonyCallback$SignalStrengthsListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;->f$1:Landroid/telephony/SignalStrength;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;->f$0:Landroid/telephony/TelephonyCallback$SignalStrengthsListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda52;->f$1:Landroid/telephony/SignalStrength;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSignalStrengthsChanged$16(Landroid/telephony/TelephonyCallback$SignalStrengthsListener;Landroid/telephony/SignalStrength;)V

    return-void
.end method
