.class public final synthetic Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

.field public final synthetic blacklist f$1:Landroid/bluetooth/le/PeriodicAdvertisingReport;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iput-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/le/PeriodicAdvertisingReport;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda0;->f$1:Landroid/bluetooth/le/PeriodicAdvertisingReport;

    invoke-static {v0, v1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->lambda$onPeriodicAdvertisingReport$1(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    return-void
.end method
