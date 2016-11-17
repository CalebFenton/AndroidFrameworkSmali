.class Lcom/android/server/audio/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mEncodedSurroundMode:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4702
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@3
    .line 4703
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@b
    .line 4704
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@e
    move-result-object v0

    #@f
    .line 4705
    const-string/jumbo v1, "mode_ringer_streams_affected"

    #@12
    .line 4704
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@19
    .line 4706
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@1c
    move-result-object v0

    #@1d
    .line 4707
    const-string/jumbo v1, "dock_audio_media_enabled"

    #@20
    .line 4706
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@27
    .line 4708
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@2a
    move-result-object v0

    #@2b
    .line 4709
    const-string/jumbo v1, "master_mono"

    #@2e
    .line 4708
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@35
    .line 4712
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@38
    move-result-object v0

    #@39
    const-string/jumbo v1, "encoded_surround_output"

    #@3c
    .line 4711
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->mEncodedSurroundMode:I

    #@42
    .line 4714
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@45
    move-result-object v0

    #@46
    .line 4715
    const-string/jumbo v1, "encoded_surround_output"

    #@49
    .line 4714
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@50
    .line 4702
    return-void
.end method

.method private updateEncodedSurroundOutput()V
    .locals 10

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4741
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@3
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@6
    move-result-object v0

    #@7
    const-string/jumbo v1, "encoded_surround_output"

    #@a
    .line 4740
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v8

    #@e
    .line 4744
    .local v8, "newSurroundMode":I
    iget v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->mEncodedSurroundMode:I

    #@10
    if-eq v0, v8, :cond_1

    #@12
    .line 4746
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@14
    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;I)V

    #@17
    .line 4747
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@19
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@1c
    move-result-object v9

    #@1d
    monitor-enter v9

    #@1e
    .line 4749
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@20
    const-string/jumbo v1, ""

    #@23
    const/16 v2, 0x400

    #@25
    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioService;->-wrap8(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v7

    #@29
    .line 4750
    .local v7, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@2b
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    check-cast v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    #@35
    .line 4751
    .local v6, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v6, :cond_0

    #@37
    .line 4753
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@39
    .line 4754
    const-string/jumbo v3, ""

    #@3c
    const-string/jumbo v4, ""

    #@3f
    .line 4755
    const-string/jumbo v5, "android"

    #@42
    .line 4753
    const/16 v1, 0x400

    #@44
    .line 4754
    const/4 v2, 0x0

    #@45
    .line 4753
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 4756
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@4a
    .line 4757
    const-string/jumbo v3, ""

    #@4d
    const-string/jumbo v4, ""

    #@50
    .line 4758
    const-string/jumbo v5, "android"

    #@53
    .line 4756
    const/16 v1, 0x400

    #@55
    .line 4757
    const/4 v2, 0x1

    #@56
    .line 4756
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    :cond_0
    monitor-exit v9

    #@5a
    .line 4761
    iput v8, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->mEncodedSurroundMode:I

    #@5c
    .line 4739
    .end local v6    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v7    # "key":Ljava/lang/String;
    :cond_1
    return-void

    #@5d
    .line 4747
    :catchall_0
    move-exception v0

    #@5e
    monitor-exit v9

    #@5f
    throw v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 4720
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    #@3
    .line 4725
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@5
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get30(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    monitor-enter v1

    #@a
    .line 4726
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@c
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap2(Lcom/android/server/audio/AudioService;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 4731
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@14
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@16
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@19
    move-result v2

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioService;->-wrap40(Lcom/android/server/audio/AudioService;IZ)V

    #@1e
    .line 4733
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@20
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@22
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@25
    move-result-object v2

    #@26
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-wrap31(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    #@29
    .line 4734
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@2b
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@2d
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@30
    move-result-object v2

    #@31
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-wrap42(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    #@34
    .line 4735
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SettingsObserver;->updateEncodedSurroundOutput()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    monitor-exit v1

    #@38
    .line 4719
    return-void

    #@39
    .line 4725
    :catchall_0
    move-exception v0

    #@3a
    monitor-exit v1

    #@3b
    throw v0
.end method
