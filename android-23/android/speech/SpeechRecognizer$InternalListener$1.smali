.class Landroid/speech/SpeechRecognizer$InternalListener$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer$InternalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/SpeechRecognizer$InternalListener;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer$InternalListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/speech/SpeechRecognizer$InternalListener;

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@2
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 437
    return-void

    #@9
    .line 439
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@b
    packed-switch v0, :pswitch_data_0

    #@e
    .line 435
    :goto_0
    return-void

    #@f
    .line 441
    :pswitch_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@11
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    #@18
    goto :goto_0

    #@19
    .line 444
    :pswitch_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@1b
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@1e
    move-result-object v1

    #@1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21
    check-cast v0, [B

    #@23
    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    #@26
    goto :goto_0

    #@27
    .line 447
    :pswitch_2
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@29
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@2c
    move-result-object v0

    #@2d
    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    #@30
    goto :goto_0

    #@31
    .line 450
    :pswitch_3
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@33
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@36
    move-result-object v1

    #@37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@39
    check-cast v0, Ljava/lang/Integer;

    #@3b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v0

    #@3f
    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onError(I)V

    #@42
    goto :goto_0

    #@43
    .line 453
    :pswitch_4
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@45
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@48
    move-result-object v1

    #@49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4b
    check-cast v0, Landroid/os/Bundle;

    #@4d
    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    #@50
    goto :goto_0

    #@51
    .line 456
    :pswitch_5
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@53
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@56
    move-result-object v1

    #@57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@59
    check-cast v0, Landroid/os/Bundle;

    #@5b
    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    #@5e
    goto :goto_0

    #@5f
    .line 459
    :pswitch_6
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@61
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@64
    move-result-object v1

    #@65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@67
    check-cast v0, Landroid/os/Bundle;

    #@69
    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    #@6c
    goto :goto_0

    #@6d
    .line 462
    :pswitch_7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@6f
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@72
    move-result-object v1

    #@73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@75
    check-cast v0, Ljava/lang/Float;

    #@77
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@7a
    move-result v0

    #@7b
    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    #@7e
    goto :goto_0

    #@7f
    .line 465
    :pswitch_8
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    #@81
    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    #@84
    move-result-object v1

    #@85
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@87
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@89
    check-cast v0, Landroid/os/Bundle;

    #@8b
    invoke-interface {v1, v2, v0}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    #@8e
    goto :goto_0

    #@8f
    .line 439
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
