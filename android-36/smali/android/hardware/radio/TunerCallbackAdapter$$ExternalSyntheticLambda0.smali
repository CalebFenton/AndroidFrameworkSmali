.class public final synthetic Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/hardware/radio/ProgramSelector;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput p2, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/radio/ProgramSelector;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget v1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/hardware/radio/ProgramSelector;

    invoke-static {v0, v1, v2}, Landroid/hardware/radio/TunerCallbackAdapter;->$r8$lambda$v0HEq8fnlZwVmBYjDRoA9qx4S5M(Landroid/hardware/radio/TunerCallbackAdapter;ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method
