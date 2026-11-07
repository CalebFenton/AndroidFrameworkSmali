.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;

.field public final synthetic blacklist f$1:Landroid/telephony/SecurityAlgorithmUpdate;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;->f$1:Landroid/telephony/SecurityAlgorithmUpdate;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda7;->f$1:Landroid/telephony/SecurityAlgorithmUpdate;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onSecurityAlgorithmsChanged$84(Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;Landroid/telephony/SecurityAlgorithmUpdate;)V

    return-void
.end method
