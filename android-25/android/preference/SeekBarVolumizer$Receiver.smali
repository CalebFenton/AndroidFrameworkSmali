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
    .line 391
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

.method private updateVolumeSlider(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "streamValue"    # I

    #@0
    .prologue
    .line 433
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@2
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get7(Landroid/preference/SeekBarVolumizer;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-wrap0(I)Z

    #@b
    move-result v1

    #@c
    .line 435
    :goto_0
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@e
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get8(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    #@11
    move-result-object v2

    #@12
    if-eqz v2, :cond_0

    #@14
    if-eqz v1, :cond_0

    #@16
    const/4 v2, -0x1

    #@17
    if-eq p2, v2, :cond_0

    #@19
    .line 436
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@1b
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@21
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get9(Landroid/preference/SeekBarVolumizer;)I

    #@24
    move-result v3

    #@25
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_3

    #@2b
    .line 437
    if-nez p2, :cond_4

    #@2d
    const/4 v0, 0x1

    #@2e
    .line 438
    .local v0, "muted":Z
    :goto_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@30
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get10(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    #@33
    move-result-object v2

    #@34
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@36
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)I

    #@39
    move-result v3

    #@3a
    invoke-virtual {v2, p2, v3, v0}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    #@3d
    .line 432
    .end local v0    # "muted":Z
    :cond_0
    return-void

    #@3e
    .line 434
    :cond_1
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@40
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get9(Landroid/preference/SeekBarVolumizer;)I

    #@43
    move-result v2

    #@44
    if-ne p1, v2, :cond_2

    #@46
    const/4 v1, 0x1

    #@47
    .local v1, "streamMatch":Z
    goto :goto_0

    #@48
    .end local v1    # "streamMatch":Z
    :cond_2
    const/4 v1, 0x0

    #@49
    .restart local v1    # "streamMatch":Z
    goto :goto_0

    #@4a
    .line 436
    .end local v1    # "streamMatch":Z
    :cond_3
    const/4 v0, 0x1

    #@4b
    .restart local v0    # "muted":Z
    goto :goto_1

    #@4c
    .line 437
    .end local v0    # "muted":Z
    :cond_4
    const/4 v0, 0x0

    #@4d
    .restart local v0    # "muted":Z
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 410
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 411
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.media.VOLUME_CHANGED_ACTION"

    #@8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 412
    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@11
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@14
    move-result v1

    #@15
    .line 413
    .local v1, "streamType":I
    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    #@18
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@1b
    move-result v2

    #@1c
    .line 414
    .local v2, "streamValue":I
    invoke-direct {p0, v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    #@1f
    .line 409
    .end local v1    # "streamType":I
    .end local v2    # "streamValue":I
    :cond_0
    :goto_0
    return-void

    #@20
    .line 415
    :cond_1
    const-string/jumbo v4, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    #@23
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_3

    #@29
    .line 416
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@2b
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-get7(Landroid/preference/SeekBarVolumizer;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 417
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@33
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@35
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    #@3c
    move-result v5

    #@3d
    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->-set3(Landroid/preference/SeekBarVolumizer;I)I

    #@40
    .line 419
    :cond_2
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@42
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-get0(Landroid/preference/SeekBarVolumizer;)Z

    #@45
    move-result v4

    #@46
    if-eqz v4, :cond_0

    #@48
    .line 420
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@4a
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-wrap2(Landroid/preference/SeekBarVolumizer;)V

    #@4d
    goto :goto_0

    #@4e
    .line 422
    :cond_3
    const-string/jumbo v4, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    #@51
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v4

    #@55
    if-eqz v4, :cond_4

    #@57
    .line 423
    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@5a
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@5d
    move-result v1

    #@5e
    .line 424
    .restart local v1    # "streamType":I
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@60
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@67
    move-result v3

    #@68
    .line 425
    .local v3, "streamVolume":I
    invoke-direct {p0, v1, v3}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    #@6b
    goto :goto_0

    #@6c
    .line 426
    .end local v1    # "streamType":I
    .end local v3    # "streamVolume":I
    :cond_4
    const-string/jumbo v4, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    #@6f
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v4

    #@73
    if-eqz v4, :cond_0

    #@75
    .line 427
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@77
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@79
    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get6(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    #@7c
    move-result-object v5

    #@7d
    invoke-virtual {v5}, Landroid/app/NotificationManager;->getZenMode()I

    #@80
    move-result v5

    #@81
    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->-set4(Landroid/preference/SeekBarVolumizer;I)I

    #@84
    .line 428
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@86
    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-wrap2(Landroid/preference/SeekBarVolumizer;)V

    #@89
    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    #@0
    .prologue
    .line 395
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    #@2
    if-ne v1, p1, :cond_0

    #@4
    return-void

    #@5
    .line 396
    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    #@7
    .line 397
    if-eqz p1, :cond_1

    #@9
    .line 398
    new-instance v0, Landroid/content/IntentFilter;

    #@b
    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    #@e
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@11
    .line 399
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    #@14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@17
    .line 400
    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    #@1a
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1d
    .line 401
    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    #@20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@23
    .line 402
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@25
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@2c
    .line 394
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    #@2d
    .line 404
    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    #@2f
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@36
    goto :goto_0
.end method
