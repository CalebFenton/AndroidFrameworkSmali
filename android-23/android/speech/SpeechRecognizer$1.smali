.class Landroid/speech/SpeechRecognizer$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizer;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 128
    :goto_0
    return-void

    #@6
    .line 131
    :pswitch_0
    iget-object v1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    #@8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Landroid/content/Intent;

    #@c
    invoke-static {v1, v0}, Landroid/speech/SpeechRecognizer;->-wrap2(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V

    #@f
    goto :goto_0

    #@10
    .line 134
    :pswitch_1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    #@12
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-wrap3(Landroid/speech/SpeechRecognizer;)V

    #@15
    goto :goto_0

    #@16
    .line 137
    :pswitch_2
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    #@18
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-wrap0(Landroid/speech/SpeechRecognizer;)V

    #@1b
    goto :goto_0

    #@1c
    .line 140
    :pswitch_3
    iget-object v1, p0, Landroid/speech/SpeechRecognizer$1;->this$0:Landroid/speech/SpeechRecognizer;

    #@1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@20
    check-cast v0, Landroid/speech/RecognitionListener;

    #@22
    invoke-static {v1, v0}, Landroid/speech/SpeechRecognizer;->-wrap1(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V

    #@25
    goto :goto_0

    #@26
    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
