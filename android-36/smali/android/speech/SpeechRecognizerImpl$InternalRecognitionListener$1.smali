.class Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;
.super Landroid/os/Handler;
.source "SpeechRecognizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 594
    iput-object p1, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 597
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 598
    return-void

    .line 600
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_bc

    goto/16 :goto_ba

    .line 635
    :pswitch_10
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onLanguageDetection(Landroid/os/Bundle;)V

    goto/16 :goto_ba

    .line 632
    :pswitch_1f
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSegmentedSession()V

    .line 633
    goto/16 :goto_ba

    .line 629
    :pswitch_2a
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onSegmentResults(Landroid/os/Bundle;)V

    .line 630
    goto/16 :goto_ba

    .line 626
    :pswitch_39
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    .line 627
    goto/16 :goto_ba

    .line 623
    :pswitch_4a
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    .line 624
    goto :goto_ba

    .line 620
    :pswitch_5c
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 621
    goto :goto_ba

    .line 617
    :pswitch_6a
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 618
    goto :goto_ba

    .line 614
    :pswitch_78
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 615
    goto :goto_ba

    .line 611
    :pswitch_86
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onError(I)V

    .line 612
    goto :goto_ba

    .line 608
    :pswitch_98
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    .line 609
    goto :goto_ba

    .line 605
    :pswitch_a2
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    .line 606
    goto :goto_ba

    .line 602
    :pswitch_b0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizerImpl$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    .line 603
    nop

    .line 638
    :goto_ba
    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_a2
        :pswitch_98
        :pswitch_86
        :pswitch_78
        :pswitch_6a
        :pswitch_5c
        :pswitch_4a
        :pswitch_39
        :pswitch_2a
        :pswitch_1f
        :pswitch_10
    .end packed-switch
.end method
