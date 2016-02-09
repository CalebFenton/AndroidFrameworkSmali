.class Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/radio/RadioModule;Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

.field final synthetic val$callback:Landroid/hardware/radio/RadioTuner$Callback;


# direct methods
.method constructor <init>(Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/radio/RadioTuner$Callback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$callback"    # Landroid/hardware/radio/RadioTuner$Callback;

    #@0
    .prologue
    .line 111
    iput-object p1, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->this$1:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

    #@2
    iput-object p3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@7
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 114
    iget v5, p1, Landroid/os/Message;->what:I

    #@4
    sparse-switch v5, :sswitch_data_0

    #@7
    .line 113
    :cond_0
    :goto_0
    return-void

    #@8
    .line 116
    :sswitch_0
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 117
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@e
    invoke-virtual {v3, v4}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    #@11
    goto :goto_0

    #@12
    .line 121
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Landroid/hardware/radio/RadioManager$BandConfig;

    #@16
    .line 122
    .local v0, "config":Landroid/hardware/radio/RadioManager$BandConfig;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@18
    packed-switch v3, :pswitch_data_0

    #@1b
    .line 129
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 130
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@21
    const/4 v4, 0x4

    #@22
    invoke-virtual {v3, v4}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    #@25
    goto :goto_0

    #@26
    .line 124
    :pswitch_0
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 125
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@2c
    invoke-virtual {v3, v0}, Landroid/hardware/radio/RadioTuner$Callback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    #@2f
    goto :goto_0

    #@30
    .line 136
    .end local v0    # "config":Landroid/hardware/radio/RadioManager$BandConfig;
    :sswitch_2
    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@32
    if-eqz v5, :cond_0

    #@34
    .line 137
    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@36
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@38
    if-ne v6, v3, :cond_1

    #@3a
    :goto_1
    invoke-virtual {v5, v3}, Landroid/hardware/radio/RadioTuner$Callback;->onAntennaState(Z)V

    #@3d
    goto :goto_0

    #@3e
    :cond_1
    move v3, v4

    #@3f
    goto :goto_1

    #@40
    .line 142
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@42
    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    #@44
    .line 143
    .local v1, "info":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@46
    sparse-switch v3, :sswitch_data_1

    #@49
    .line 156
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@4b
    if-eqz v3, :cond_0

    #@4d
    .line 157
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@4f
    const/4 v4, 0x2

    #@50
    invoke-virtual {v3, v4}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    #@53
    goto :goto_0

    #@54
    .line 145
    :sswitch_4
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@56
    if-eqz v3, :cond_0

    #@58
    .line 146
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@5a
    invoke-virtual {v3, v1}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    #@5d
    goto :goto_0

    #@5e
    .line 150
    :sswitch_5
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@60
    if-eqz v3, :cond_0

    #@62
    .line 151
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@64
    const/4 v4, 0x3

    #@65
    invoke-virtual {v3, v4}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    #@68
    goto :goto_0

    #@69
    .line 163
    .end local v1    # "info":Landroid/hardware/radio/RadioManager$ProgramInfo;
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6b
    check-cast v2, Landroid/hardware/radio/RadioMetadata;

    #@6d
    .line 164
    .local v2, "metadata":Landroid/hardware/radio/RadioMetadata;
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@6f
    if-eqz v3, :cond_0

    #@71
    .line 165
    iget-object v3, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@73
    invoke-virtual {v3, v2}, Landroid/hardware/radio/RadioTuner$Callback;->onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V

    #@76
    goto :goto_0

    #@77
    .line 169
    .end local v2    # "metadata":Landroid/hardware/radio/RadioMetadata;
    :sswitch_7
    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@79
    if-eqz v5, :cond_0

    #@7b
    .line 170
    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@7d
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@7f
    if-ne v6, v3, :cond_2

    #@81
    :goto_2
    invoke-virtual {v5, v3}, Landroid/hardware/radio/RadioTuner$Callback;->onTrafficAnnouncement(Z)V

    #@84
    goto :goto_0

    #@85
    :cond_2
    move v3, v4

    #@86
    goto :goto_2

    #@87
    .line 174
    :sswitch_8
    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@89
    if-eqz v5, :cond_0

    #@8b
    .line 175
    iget-object v5, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@8d
    iget v6, p1, Landroid/os/Message;->arg2:I

    #@8f
    if-ne v6, v3, :cond_3

    #@91
    :goto_3
    invoke-virtual {v5, v3}, Landroid/hardware/radio/RadioTuner$Callback;->onControlChanged(Z)V

    #@94
    goto/16 :goto_0

    #@96
    :cond_3
    move v3, v4

    #@97
    goto :goto_3

    #@98
    .line 179
    :sswitch_9
    iget-object v4, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@9a
    if-eqz v4, :cond_0

    #@9c
    .line 180
    iget-object v4, p0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate$1;->val$callback:Landroid/hardware/radio/RadioTuner$Callback;

    #@9e
    invoke-virtual {v4, v3}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    #@a1
    goto/16 :goto_0

    #@a3
    .line 114
    nop

    #@a4
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_3
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
    .end sparse-switch

    #@ca
    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    #@d0
    .line 143
    :sswitch_data_1
    .sparse-switch
        -0x6e -> :sswitch_5
        0x0 -> :sswitch_4
    .end sparse-switch
.end method
