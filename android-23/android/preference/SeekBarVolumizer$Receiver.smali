.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;

    #@0
    .prologue
    .line 376
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 395
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.media.VOLUME_CHANGED_ACTION"

    #@8
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_5

    #@e
    .line 396
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@11
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@14
    move-result v3

    #@15
    .line 397
    .local v3, "streamType":I
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    #@18
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1b
    move-result v4

    #@1c
    .line 398
    .local v4, "streamValue":I
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@1e
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get7(Landroid/preference/SeekBarVolumizer;)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_1

    #@24
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-wrap0(I)Z

    #@27
    move-result v2

    #@28
    .line 400
    :goto_0
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@2a
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get8(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    #@2d
    move-result-object v5

    #@2e
    if-eqz v5, :cond_0

    #@30
    if-eqz v2, :cond_0

    #@32
    if-eq v4, v6, :cond_0

    #@34
    .line 401
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@36
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    #@39
    move-result-object v5

    #@3a
    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@3c
    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->-get9(Landroid/preference/SeekBarVolumizer;)I

    #@3f
    move-result v6

    #@40
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->isStreamMute(I)Z

    #@43
    move-result v5

    #@44
    if-nez v5, :cond_3

    #@46
    .line 402
    if-nez v4, :cond_4

    #@48
    const/4 v1, 0x1

    #@49
    .line 403
    .local v1, "muted":Z
    :goto_1
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@4b
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get10(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    #@4e
    move-result-object v5

    #@4f
    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@51
    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)I

    #@54
    move-result v6

    #@55
    invoke-virtual {v5, v4, v6, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    #@58
    .line 393
    .end local v1    # "muted":Z
    .end local v3    # "streamType":I
    .end local v4    # "streamValue":I
    :cond_0
    :goto_2
    return-void

    #@59
    .line 399
    .restart local v3    # "streamType":I
    .restart local v4    # "streamValue":I
    :cond_1
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@5b
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get9(Landroid/preference/SeekBarVolumizer;)I

    #@5e
    move-result v5

    #@5f
    if-ne v3, v5, :cond_2

    #@61
    const/4 v2, 0x1

    #@62
    .local v2, "streamMatch":Z
    goto :goto_0

    #@63
    .end local v2    # "streamMatch":Z
    :cond_2
    const/4 v2, 0x0

    #@64
    .restart local v2    # "streamMatch":Z
    goto :goto_0

    #@65
    .line 401
    .end local v2    # "streamMatch":Z
    :cond_3
    const/4 v1, 0x1

    #@66
    .restart local v1    # "muted":Z
    goto :goto_1

    #@67
    .line 402
    .end local v1    # "muted":Z
    :cond_4
    const/4 v1, 0x0

    #@68
    .restart local v1    # "muted":Z
    goto :goto_1

    #@69
    .line 405
    .end local v1    # "muted":Z
    .end local v3    # "streamType":I
    .end local v4    # "streamValue":I
    :cond_5
    const-string/jumbo v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    #@6c
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v5

    #@70
    if-eqz v5, :cond_7

    #@72
    .line 406
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@74
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get7(Landroid/preference/SeekBarVolumizer;)Z

    #@77
    move-result v5

    #@78
    if-eqz v5, :cond_6

    #@7a
    .line 407
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@7c
    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@7e
    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    #@81
    move-result-object v6

    #@82
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    #@85
    move-result v6

    #@86
    invoke-static {v5, v6}, Landroid/preference/SeekBarVolumizer;->-set3(Landroid/preference/SeekBarVolumizer;I)I

    #@89
    .line 409
    :cond_6
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@8b
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get0(Landroid/preference/SeekBarVolumizer;)Z

    #@8e
    move-result v5

    #@8f
    if-eqz v5, :cond_0

    #@91
    .line 410
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@93
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-wrap2(Landroid/preference/SeekBarVolumizer;)V

    #@96
    goto :goto_2

    #@97
    .line 412
    :cond_7
    const-string/jumbo v5, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    #@9a
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v5

    #@9e
    if-eqz v5, :cond_0

    #@a0
    .line 413
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@a2
    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@a4
    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->-get6(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    #@a7
    move-result-object v6

    #@a8
    invoke-virtual {v6}, Landroid/app/NotificationManager;->getZenMode()I

    #@ab
    move-result v6

    #@ac
    invoke-static {v5, v6}, Landroid/preference/SeekBarVolumizer;->-set4(Landroid/preference/SeekBarVolumizer;I)I

    #@af
    .line 414
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@b1
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-wrap2(Landroid/preference/SeekBarVolumizer;)V

    #@b4
    goto :goto_2
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    #@0
    .prologue
    .line 380
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    return-void

    #@5
    .line 381
    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    #@7
    .line 382
    if-eqz p1, :cond_1

    #@9
    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    #@b
    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    #@e
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@11
    .line 384
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    #@14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 385
    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 386
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@1f
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@26
    .line 379
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    #@27
    .line 388
    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@29
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@30
    goto :goto_0
.end method
