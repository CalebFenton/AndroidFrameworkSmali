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
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4502
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@3
    .line 4503
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@b
    .line 4504
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@e
    move-result-object v0

    #@f
    .line 4505
    const-string/jumbo v1, "mode_ringer_streams_affected"

    #@12
    .line 4504
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@19
    .line 4506
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@1c
    move-result-object v0

    #@1d
    .line 4507
    const-string/jumbo v1, "dock_audio_media_enabled"

    #@20
    .line 4506
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@27
    .line 4502
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 4512
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    #@3
    .line 4517
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@5
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    monitor-enter v1

    #@a
    .line 4518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@c
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap2(Lcom/android/server/audio/AudioService;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 4523
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
    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioService;->-wrap38(Lcom/android/server/audio/AudioService;IZ)V

    #@1e
    .line 4525
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@20
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    #@22
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@25
    move-result-object v2

    #@26
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-wrap32(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v1

    #@2a
    .line 4511
    return-void

    #@2b
    .line 4517
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0
.end method
