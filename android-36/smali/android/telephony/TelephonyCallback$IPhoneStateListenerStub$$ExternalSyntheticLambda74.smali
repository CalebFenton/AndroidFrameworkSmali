.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda74;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;

.field public final synthetic blacklist f$1:Landroid/telephony/PhoneCapability;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda74;->f$0:Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda74;->f$1:Landroid/telephony/PhoneCapability;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda74;->f$0:Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda74;->f$1:Landroid/telephony/PhoneCapability;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPhoneCapabilityChanged$44(Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;Landroid/telephony/PhoneCapability;)V

    return-void
.end method
