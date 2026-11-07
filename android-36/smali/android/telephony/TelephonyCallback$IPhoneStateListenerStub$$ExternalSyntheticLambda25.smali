.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;

.field public final synthetic blacklist f$1:Landroid/telephony/CellularIdentifierDisclosure;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;->f$0:Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;->f$1:Landroid/telephony/CellularIdentifierDisclosure;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;->f$0:Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda25;->f$1:Landroid/telephony/CellularIdentifierDisclosure;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCellularIdentifierDisclosedChanged$86(Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;Landroid/telephony/CellularIdentifierDisclosure;)V

    return-void
.end method
