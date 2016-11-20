.class Landroid/service/voice/VoiceInteractionService$MyHandler;
.super Landroid/os/Handler;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/voice/VoiceInteractionService;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@8
    .line 105
    :goto_0
    return-void

    #@9
    .line 108
    :pswitch_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    #@b
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionService;->onReady()V

    #@e
    goto :goto_0

    #@f
    .line 111
    :pswitch_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    #@11
    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->-wrap0(Landroid/service/voice/VoiceInteractionService;)V

    #@14
    goto :goto_0

    #@15
    .line 114
    :pswitch_2
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    #@17
    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->-wrap1(Landroid/service/voice/VoiceInteractionService;)V

    #@1a
    goto :goto_0

    #@1b
    .line 117
    :pswitch_3
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    #@1d
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionService;->onLaunchVoiceAssistFromKeyguard()V

    #@20
    goto :goto_0

    #@21
    .line 106
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
