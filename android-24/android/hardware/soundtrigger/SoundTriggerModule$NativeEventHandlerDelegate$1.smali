.class Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

.field final synthetic val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# direct methods
.method constructor <init>(Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$listener"    # Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->this$1:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    #@2
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@7
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 144
    :cond_0
    :goto_0
    return-void

    #@6
    .line 147
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 148
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@c
    .line 149
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@e
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    #@10
    .line 148
    invoke-interface {v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    #@13
    goto :goto_0

    #@14
    .line 153
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 154
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@1a
    .line 155
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    #@1e
    .line 154
    invoke-interface {v1, v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V

    #@21
    goto :goto_0

    #@22
    .line 159
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 160
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@28
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@2a
    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onServiceStateChange(I)V

    #@2d
    goto :goto_0

    #@2e
    .line 164
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@30
    if-eqz v0, :cond_0

    #@32
    .line 165
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    #@34
    invoke-interface {v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onServiceDied()V

    #@37
    goto :goto_0

    #@38
    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
