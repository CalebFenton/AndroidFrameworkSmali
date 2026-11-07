.class public final synthetic Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda0;->f$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection$$ExternalSyntheticLambda0;->f$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;

    check-cast p1, Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;

    invoke-static {v0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$Injection;->lambda$onRecognitionStarted$2(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;)V

    return-void
.end method
