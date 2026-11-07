.class public final synthetic Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;

.field public final synthetic blacklist f$1:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda1;->f$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;

    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda1;->f$1:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda1;->f$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda1;->f$1:Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;

    invoke-static {v0, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->$r8$lambda$7STV3bXHIsskGrX19VACLab-Ttg(Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V

    return-void
.end method
