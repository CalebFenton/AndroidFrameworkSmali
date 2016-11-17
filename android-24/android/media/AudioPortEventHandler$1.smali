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
.field final synthetic this$0:Landroid/media/AudioPortEventHandler;


# direct methods
.method constructor <init>(Landroid/media/AudioPortEventHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioPortEventHandler;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 62
    monitor-enter p0

    #@4
    .line 63
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    #@6
    const/4 v8, 0x4

    #@7
    if-ne v7, v8, :cond_3

    #@9
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    #@b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@e
    .line 65
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    iget-object v7, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    #@10
    invoke-static {v7}, Landroid/media/AudioPortEventHandler;->-get0(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;

    #@13
    move-result-object v7

    #@14
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@16
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_0

    #@1c
    .line 66
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    #@20
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    :goto_0
    monitor-exit p0

    #@24
    .line 74
    iget v7, p1, Landroid/os/Message;->what:I

    #@26
    if-eq v7, v10, :cond_1

    #@28
    .line 75
    iget v7, p1, Landroid/os/Message;->what:I

    #@2a
    const/4 v8, 0x2

    #@2b
    if-ne v7, v8, :cond_4

    #@2d
    .line 77
    :cond_1
    :goto_1
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    #@30
    .line 80
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@33
    move-result v7

    #@34
    if-eqz v7, :cond_5

    #@36
    .line 81
    return-void

    #@37
    .line 69
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :cond_3
    :try_start_1
    iget-object v7, p0, Landroid/media/AudioPortEventHandler$1;->this$0:Landroid/media/AudioPortEventHandler;

    #@39
    invoke-static {v7}, Landroid/media/AudioPortEventHandler;->-get0(Landroid/media/AudioPortEventHandler;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    move-result-object v1

    #@3d
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    goto :goto_0

    #@3e
    .line 62
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :catchall_0
    move-exception v7

    #@3f
    monitor-exit p0

    #@40
    throw v7

    #@41
    .line 76
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$OnAudioPortUpdateListener;>;"
    :cond_4
    iget v7, p1, Landroid/os/Message;->what:I

    #@43
    if-ne v7, v11, :cond_2

    #@45
    goto :goto_1

    #@46
    .line 84
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    #@48
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@4b
    .line 85
    .local v5, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@4d
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@50
    .line 86
    .local v3, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    iget v7, p1, Landroid/os/Message;->what:I

    #@52
    if-eq v7, v11, :cond_6

    #@54
    .line 87
    const/4 v7, 0x0

    #@55
    invoke-static {v5, v3, v7}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    #@58
    move-result v6

    #@59
    .line 88
    .local v6, "status":I
    if-eqz v6, :cond_6

    #@5b
    .line 89
    return-void

    #@5c
    .line 93
    .end local v6    # "status":I
    :cond_6
    iget v7, p1, Landroid/os/Message;->what:I

    #@5e
    packed-switch v7, :pswitch_data_0

    #@61
    .line 60
    :cond_7
    return-void

    #@62
    .line 96
    :pswitch_0
    new-array v7, v9, [Landroid/media/AudioPort;

    #@64
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@67
    move-result-object v4

    #@68
    check-cast v4, [Landroid/media/AudioPort;

    #@6a
    .line 97
    .local v4, "portList":[Landroid/media/AudioPort;
    const/4 v0, 0x0

    #@6b
    .local v0, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v7

    #@6f
    if-ge v0, v7, :cond_8

    #@71
    .line 98
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v7

    #@75
    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    #@77
    invoke-interface {v7, v4}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPortListUpdate([Landroid/media/AudioPort;)V

    #@7a
    .line 97
    add-int/lit8 v0, v0, 0x1

    #@7c
    goto :goto_2

    #@7d
    .line 100
    :cond_8
    iget v7, p1, Landroid/os/Message;->what:I

    #@7f
    if-eq v7, v10, :cond_7

    #@81
    .line 106
    .end local v0    # "i":I
    .end local v4    # "portList":[Landroid/media/AudioPort;
    :pswitch_1
    new-array v7, v9, [Landroid/media/AudioPatch;

    #@83
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@86
    move-result-object v2

    #@87
    check-cast v2, [Landroid/media/AudioPatch;

    #@89
    .line 107
    .local v2, "patchList":[Landroid/media/AudioPatch;
    const/4 v0, 0x0

    #@8a
    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8d
    move-result v7

    #@8e
    if-ge v0, v7, :cond_7

    #@90
    .line 108
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@93
    move-result-object v7

    #@94
    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    #@96
    invoke-interface {v7, v2}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onAudioPatchListUpdate([Landroid/media/AudioPatch;)V

    #@99
    .line 107
    add-int/lit8 v0, v0, 0x1

    #@9b
    goto :goto_3

    #@9c
    .line 113
    .end local v0    # "i":I
    .end local v2    # "patchList":[Landroid/media/AudioPatch;
    :pswitch_2
    const/4 v0, 0x0

    #@9d
    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a0
    move-result v7

    #@a1
    if-ge v0, v7, :cond_7

    #@a3
    .line 114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a6
    move-result-object v7

    #@a7
    check-cast v7, Landroid/media/AudioManager$OnAudioPortUpdateListener;

    #@a9
    invoke-interface {v7}, Landroid/media/AudioManager$OnAudioPortUpdateListener;->onServiceDied()V

    #@ac
    .line 113
    add-int/lit8 v0, v0, 0x1

    #@ae
    goto :goto_4

    #@af
    .line 93
    nop

    #@b0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
