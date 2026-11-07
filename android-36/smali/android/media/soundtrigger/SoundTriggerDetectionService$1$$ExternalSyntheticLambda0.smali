.class public final synthetic Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    check-cast p1, Landroid/media/soundtrigger/SoundTriggerDetectionService;

    check-cast p2, Ljava/util/UUID;

    check-cast p3, Landroid/os/Bundle;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->onGenericRecognitionEvent(Ljava/util/UUID;Landroid/os/Bundle;ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    return-void
.end method
