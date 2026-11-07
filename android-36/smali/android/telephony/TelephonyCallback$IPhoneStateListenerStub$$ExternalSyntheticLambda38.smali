.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$DisplayInfoListener;

.field public final synthetic blacklist f$1:Landroid/telephony/TelephonyDisplayInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;->f$0:Landroid/telephony/TelephonyCallback$DisplayInfoListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;->f$1:Landroid/telephony/TelephonyDisplayInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;->f$0:Landroid/telephony/TelephonyCallback$DisplayInfoListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda38;->f$1:Landroid/telephony/TelephonyDisplayInfo;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onDisplayInfoChanged$34(Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method
