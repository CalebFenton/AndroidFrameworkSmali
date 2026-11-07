.class public final synthetic Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

.field public final synthetic blacklist f$1:F

.field public final synthetic blacklist f$2:F

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;FFILjava/util/Map;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    iput p2, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$4:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    iget v1, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$1:F

    iget v2, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$2:F

    iget v3, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;->f$4:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/PowerManager$5;->lambda$onHeadroomChange$0(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;FFILjava/util/Map;)V

    return-void
.end method
