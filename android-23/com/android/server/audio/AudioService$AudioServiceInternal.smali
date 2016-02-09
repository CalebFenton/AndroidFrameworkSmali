.class final Lcom/android/server/audio/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 5917
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public adjustStreamVolumeForUid(IIILjava/lang/String;I)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 5939
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p4

    #@7
    move v6, p5

    #@8
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap8(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    #@b
    .line 5938
    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 5932
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    move v1, p2

    #@3
    move v2, p1

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p4

    #@7
    move v6, p5

    #@8
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap9(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    #@b
    .line 5929
    return-void
.end method

.method public getRingerModeInternal()I
    .locals 1

    #@0
    .prologue
    .line 5951
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVolumeControllerUid()I
    .locals 1

    #@0
    .prologue
    .line 5961
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ControllerService;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/android/server/audio/AudioService$ControllerService;->-get0(Lcom/android/server/audio/AudioService$ControllerService;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .locals 2
    .param p1, "delegate"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@0
    .prologue
    .line 5920
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService;->-set9(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@5
    .line 5921
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@7
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get27(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 5922
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@f
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap2(Lcom/android/server/audio/AudioService;)Z

    #@12
    .line 5923
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    #@15
    move-result v0

    #@16
    const-string/jumbo v1, "AudioService.setRingerModeDelegate"

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    #@1c
    .line 5919
    :cond_0
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5956
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    #@5
    .line 5955
    return-void
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;I)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 5946
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p4

    #@7
    move v6, p5

    #@8
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap40(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V

    #@b
    .line 5945
    return-void
.end method

.method public updateRingerModeAffectedStreamsInternal()V
    .locals 4

    #@0
    .prologue
    .line 5966
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get32(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 5967
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@9
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap2(Lcom/android/server/audio/AudioService;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 5968
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioServiceInternal;->this$0:Lcom/android/server/audio/AudioService;

    #@11
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    #@14
    move-result v2

    #@15
    const/4 v3, 0x0

    #@16
    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioService;->-wrap38(Lcom/android/server/audio/AudioService;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 5965
    return-void

    #@1b
    .line 5966
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method
