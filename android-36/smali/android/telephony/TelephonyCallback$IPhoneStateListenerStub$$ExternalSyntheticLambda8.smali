.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;->f$0:Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;

    iput-boolean p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;->f$0:Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;

    iget-boolean v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda8;->f$1:Z

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCallForwardingIndicatorChanged$4(Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;Z)V

    return-void
.end method
