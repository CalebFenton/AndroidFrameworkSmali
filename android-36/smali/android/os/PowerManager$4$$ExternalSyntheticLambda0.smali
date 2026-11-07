.class public final synthetic Landroid/os/PowerManager$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/PowerManager$OnThermalStatusChangedListener;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    iput p2, p0, Landroid/os/PowerManager$4$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/PowerManager$4$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    iget v1, p0, Landroid/os/PowerManager$4$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/os/PowerManager$4;->lambda$onStatusChange$0(Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V

    return-void
.end method
