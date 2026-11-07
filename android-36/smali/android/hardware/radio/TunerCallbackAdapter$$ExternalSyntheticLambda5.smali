.class public final synthetic Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/radio/ProgramList$OnCompleteListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/radio/TunerCallbackAdapter;

.field public final synthetic blacklist f$1:Landroid/hardware/radio/ProgramList;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iput-object p2, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/radio/ProgramList;

    return-void
.end method


# virtual methods
.method public final whitelist onComplete()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/radio/TunerCallbackAdapter;

    iget-object v1, p0, Landroid/hardware/radio/TunerCallbackAdapter$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/radio/ProgramList;

    invoke-static {v0, v1}, Landroid/hardware/radio/TunerCallbackAdapter;->$r8$lambda$vpTCfcW5zZD1jM-AF8-5sx5iUk0(Landroid/hardware/radio/TunerCallbackAdapter;Landroid/hardware/radio/ProgramList;)V

    return-void
.end method
