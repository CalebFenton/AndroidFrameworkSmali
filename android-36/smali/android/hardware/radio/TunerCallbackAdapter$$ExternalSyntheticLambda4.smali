.class public final synthetic Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/radio/ProgramList$OnCloseListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic blacklist f$1:Landroid/hardware/radio/ProgramList;

.field public final synthetic blacklist f$2:Landroid/hardware/radio/ProgramList$OnCloseListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object p2, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/radio/ProgramList;

    iput-object p3, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;->f$2:Landroid/hardware/radio/ProgramList$OnCloseListener;

    return-void
.end method


# virtual methods
.method public final blacklist onClose()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/radio/ProgramList;

    iget-object v2, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda4;->f$2:Landroid/hardware/radio/ProgramList$OnCloseListener;

    invoke-static {v0, v1, v2}, Landroid/hardware/radio/TunerCallbackAdapter;->$r8$lambda$7a_n6tedil5Bl5LuujmhznY88z8(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;Landroid/hardware/radio/ProgramList$OnCloseListener;)V

    return-void
.end method
