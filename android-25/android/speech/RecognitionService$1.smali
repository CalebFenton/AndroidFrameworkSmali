.class Landroid/speech/RecognitionService$1;
.super Landroid/os/Handler;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method constructor <init>(Landroid/speech/RecognitionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/RecognitionService;

    #@0
    .prologue
    .line 76
    iput-object p1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 78
    :goto_0
    return-void

    #@6
    .line 81
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Landroid/speech/RecognitionService$StartListeningArgs;

    #@a
    .line 82
    .local v0, "args":Landroid/speech/RecognitionService$StartListeningArgs;
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    #@c
    iget-object v2, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mIntent:Landroid/content/Intent;

    #@e
    iget-object v3, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mListener:Landroid/speech/IRecognitionListener;

    #@10
    iget v4, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mCallingUid:I

    #@12
    invoke-static {v1, v2, v3, v4}, Landroid/speech/RecognitionService;->-wrap3(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V

    #@15
    goto :goto_0

    #@16
    .line 85
    .end local v0    # "args":Landroid/speech/RecognitionService$StartListeningArgs;
    :pswitch_1
    iget-object v2, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    #@18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a
    check-cast v1, Landroid/speech/IRecognitionListener;

    #@1c
    invoke-static {v2, v1}, Landroid/speech/RecognitionService;->-wrap4(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    #@1f
    goto :goto_0

    #@20
    .line 88
    :pswitch_2
    iget-object v2, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    #@22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@24
    check-cast v1, Landroid/speech/IRecognitionListener;

    #@26
    invoke-static {v2, v1}, Landroid/speech/RecognitionService;->-wrap1(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    #@29
    goto :goto_0

    #@2a
    .line 91
    :pswitch_3
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    #@2c
    invoke-static {v1}, Landroid/speech/RecognitionService;->-wrap2(Landroid/speech/RecognitionService;)V

    #@2f
    goto :goto_0

    #@30
    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
