.class public final synthetic Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/PhoneStateListener;

.field public final synthetic blacklist f$1:Landroid/telephony/CellIdentity;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/PhoneStateListener;

    iput-object p2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/CellIdentity;

    iput-object p3, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput p4, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$3:I

    iput p5, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$4:I

    iput p6, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$5:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/CellIdentity;

    iget-object v2, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget v3, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$3:I

    iget v4, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$4:I

    iget v5, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub$$ExternalSyntheticLambda6;->f$5:I

    invoke-static/range {v0 .. v5}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->lambda$onRegistrationFailed$60(Landroid/telephony/PhoneStateListener;Landroid/telephony/CellIdentity;Ljava/lang/String;III)V

    return-void
.end method
