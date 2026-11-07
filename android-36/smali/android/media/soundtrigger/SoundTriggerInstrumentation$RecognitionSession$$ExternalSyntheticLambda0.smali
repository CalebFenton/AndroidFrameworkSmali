.class public final synthetic Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$1:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;->f$1:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;->f$1:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    invoke-static {v0, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->lambda$setRecognitionCallback$0(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V

    return-void
.end method
