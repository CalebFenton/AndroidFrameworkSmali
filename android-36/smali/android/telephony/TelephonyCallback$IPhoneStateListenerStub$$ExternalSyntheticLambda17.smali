.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$CellLocationListener;

.field public final synthetic blacklist f$1:Landroid/telephony/CellLocation;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/TelephonyCallback$CellLocationListener;

    iput-object p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;->f$1:Landroid/telephony/CellLocation;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;->f$0:Landroid/telephony/TelephonyCallback$CellLocationListener;

    iget-object v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda17;->f$1:Landroid/telephony/CellLocation;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCellLocationChanged$6(Landroid/telephony/TelephonyCallback$CellLocationListener;Landroid/telephony/CellLocation;)V

    return-void
.end method
