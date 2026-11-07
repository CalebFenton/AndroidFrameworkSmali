.class public final synthetic Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic blacklist f$1:Landroid/hardware/radio/RadioManager$ProgramInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object p2, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;->f$1:Landroid/hardware/radio/RadioManager$ProgramInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda12;->f$1:Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-static {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->$r8$lambda$y1ut7YMgV05Qolos8IIFRn41Ng0(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method
