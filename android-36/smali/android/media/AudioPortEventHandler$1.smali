.class Landroid/media/AudioPortEventHandler$1;
.super Landroid/os/Handler;
.source "AudioPortEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioPortEventHandler;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioPortEventHandler;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioPortEventHandler;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/AudioPortEventHandler;
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

    .line 71
    iput-object p1, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 75
    iget-object v0, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-static {v0}, Landroid/media/AudioPortEventHandler;->-$$Nest$fgetmLock(Landroid/media/AudioPortEventHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_27

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    iget-object v2, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-static {v2}, Landroid/media/AudioPortEventHandler;->-$$Nest$fgetmListeners(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 79
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 82
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :cond_27
    iget-object v1, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    invoke-static {v1}, Landroid/media/AudioPortEventHandler;->-$$Nest$fgetmListeners(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 85
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :cond_33
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_c4

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_43

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_43

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_46

    .line 91
    :cond_43
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 94
    :cond_46
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 95
    return-void

    .line 98
    :cond_4d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    .line 101
    .local v4, "status":I
    if-eqz v4, :cond_6c

    .line 106
    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v5}, Landroid/media/AudioPortEventHandler$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v5, 0x64

    invoke-virtual {p0, v2, v5, v6}, Landroid/media/AudioPortEventHandler$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 108
    return-void

    .line 111
    :cond_6c
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_c8

    goto :goto_c3

    .line 131
    :pswitch_73
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_74
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_86

    .line 132
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v5}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onServiceDied()V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 134
    .end local v2    # "i":I
    :cond_86
    goto :goto_c3

    .line 114
    :pswitch_87
    new-array v5, v6, [Landroid/media/AudioPort;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/media/AudioPort;

    .line 115
    .local v5, "portList":[Landroid/media/AudioPort;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a2

    .line 116
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v8, v5}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPortListUpdate([Landroid/media/AudioPort;)V

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_90

    .line 118
    .end local v7    # "i":I
    :cond_a2
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v2, :cond_a7

    .line 119
    goto :goto_c3

    .line 124
    .end local v5    # "portList":[Landroid/media/AudioPort;
    :cond_a7
    :pswitch_a7
    new-array v2, v6, [Landroid/media/AudioPatch;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/AudioPatch;

    .line 125
    .local v2, "patchList":[Landroid/media/AudioPatch;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_c2

    .line 126
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-interface {v6, v2}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPatchListUpdate([Landroid/media/AudioPatch;)V

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto :goto_b0

    .line 128
    .end local v5    # "i":I
    :cond_c2
    nop

    .line 139
    .end local v2    # "patchList":[Landroid/media/AudioPatch;
    :goto_c3
    return-void

    .line 85
    .end local v0    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    .end local v3    # "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v4    # "status":I
    :catchall_c4
    move-exception v1

    :try_start_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v1

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_87
        :pswitch_a7
        :pswitch_73
        :pswitch_87
    .end packed-switch
.end method
