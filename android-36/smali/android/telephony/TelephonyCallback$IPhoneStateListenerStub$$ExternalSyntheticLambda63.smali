.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;->f$0:Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

    iput p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;->f$1:I

    iput-wide p3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;->f$2:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;->f$0:Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;

    iget v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;->f$1:I

    iget-wide v2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda63;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onAllowedNetworkTypesChanged$62(Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;IJ)V

    return-void
.end method
