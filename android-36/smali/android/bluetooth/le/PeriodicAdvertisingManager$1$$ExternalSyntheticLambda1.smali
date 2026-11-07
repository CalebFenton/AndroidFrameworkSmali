.class public final synthetic Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/PeriodicAdvertisingCallback;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->lambda$onBigInfoAdvertisingReport$4(Landroid/bluetooth/le/PeriodicAdvertisingCallback;IZ)V

    return-void
.end method
