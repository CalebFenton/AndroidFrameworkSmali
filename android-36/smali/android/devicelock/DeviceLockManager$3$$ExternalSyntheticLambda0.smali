.class public final synthetic Landroid/devicelock/DeviceLockManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:Landroid/devicelock/ParcelableException;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;Landroid/devicelock/ParcelableException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/devicelock/DeviceLockManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/devicelock/DeviceLockManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/devicelock/ParcelableException;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/devicelock/DeviceLockManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/devicelock/DeviceLockManager$3$$ExternalSyntheticLambda0;->f$1:Landroid/devicelock/ParcelableException;

    invoke-static {v0, v1}, Landroid/devicelock/DeviceLockManager$3;->lambda$onError$1(Landroid/os/OutcomeReceiver;Landroid/devicelock/ParcelableException;)V

    return-void
.end method
