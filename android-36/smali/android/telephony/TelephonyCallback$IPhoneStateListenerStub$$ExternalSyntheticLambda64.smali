.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$PreciseCallStateListener;

.field public final synthetic blacklist f$1:Landroid/telephony/PreciseCallState;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;->f$0:Landroid/telephony/TelephonyCallback$PreciseCallStateListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;->f$1:Landroid/telephony/PreciseCallState;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;->f$0:Landroid/telephony/TelephonyCallback$PreciseCallStateListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda64;->f$1:Landroid/telephony/PreciseCallState;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onPreciseCallStateChanged$20(Landroid/telephony/TelephonyCallback$PreciseCallStateListener;Landroid/telephony/PreciseCallState;)V

    return-void
.end method
