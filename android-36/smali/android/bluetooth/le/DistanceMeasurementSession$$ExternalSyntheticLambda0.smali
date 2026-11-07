.class public final synthetic Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/DistanceMeasurementSession;

.field public final synthetic blacklist f$1:Landroid/bluetooth/BluetoothDevice;

.field public final synthetic blacklist f$2:Landroid/bluetooth/le/DistanceMeasurementResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/DistanceMeasurementSession;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/DistanceMeasurementSession;

    iput-object p2, p0, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda0;->f$2:Landroid/bluetooth/le/DistanceMeasurementResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/DistanceMeasurementSession;

    iget-object v1, p0, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Landroid/bluetooth/le/DistanceMeasurementSession$$ExternalSyntheticLambda0;->f$2:Landroid/bluetooth/le/DistanceMeasurementResult;

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/DistanceMeasurementSession;->$r8$lambda$6GUYHtxl0O0yG7CALVeV0g-ZfKY(Landroid/bluetooth/le/DistanceMeasurementSession;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V

    return-void
.end method
