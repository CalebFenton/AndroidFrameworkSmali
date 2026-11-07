.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

.field public final synthetic blacklist f$1:Landroid/telephony/TelephonyCallback$DisplayInfoListener;

.field public final synthetic blacklist f$2:Landroid/telephony/TelephonyDisplayInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;->f$1:Landroid/telephony/TelephonyCallback$DisplayInfoListener;

    iput-object p3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;->f$2:Landroid/telephony/TelephonyDisplayInfo;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;->f$0:Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;->f$1:Landroid/telephony/TelephonyCallback$DisplayInfoListener;

    iget-object v2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda42;->f$2:Landroid/telephony/TelephonyDisplayInfo;

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->$r8$lambda$MCk3FIc5EE0oMkyh_ynCvnb_290(Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallback$DisplayInfoListener;Landroid/telephony/TelephonyDisplayInfo;)V

    return-void
.end method
