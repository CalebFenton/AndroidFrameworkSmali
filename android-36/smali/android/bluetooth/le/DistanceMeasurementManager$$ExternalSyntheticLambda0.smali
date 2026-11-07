.class public final synthetic Landroid/bluetooth/le/DistanceMeasurementManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/DistanceMeasurementSession;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/DistanceMeasurementSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/DistanceMeasurementManager$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/DistanceMeasurementSession;

    return-void
.end method


# virtual methods
.method public final whitelist onCancel()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/DistanceMeasurementSession;

    invoke-static {v0}, Landroid/bluetooth/le/DistanceMeasurementManager;->lambda$startMeasurementSession$0(Landroid/bluetooth/le/DistanceMeasurementSession;)V

    return-void
.end method
