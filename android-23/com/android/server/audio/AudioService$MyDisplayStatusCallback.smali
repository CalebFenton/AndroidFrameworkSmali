.class Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDisplayStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 5535
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .param p1, "status"    # I

    #@0
    .prologue
    .line 5537
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get23(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 5538
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@a
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get23(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    #@d
    move-result-object v1

    #@e
    monitor-enter v1

    #@f
    .line 5539
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@11
    const/4 v0, -0x1

    #@12
    if-eq p1, v0, :cond_2

    #@14
    const/4 v0, 0x1

    #@15
    :goto_0
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-set8(Lcom/android/server/audio/AudioService;Z)Z

    #@18
    .line 5541
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@1a
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@22
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get22(Lcom/android/server/audio/AudioService;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_3

    #@28
    .line 5544
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@2a
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap11(Lcom/android/server/audio/AudioService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v1

    #@2e
    .line 5536
    :cond_1
    return-void

    #@2f
    .line 5539
    :cond_2
    const/4 v0, 0x0

    #@30
    goto :goto_0

    #@31
    .line 5542
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;->this$0:Lcom/android/server/audio/AudioService;

    #@33
    iget v2, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@35
    and-int/lit16 v2, v2, -0x401

    #@37
    iput v2, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_1

    #@3a
    .line 5538
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v1

    #@3c
    throw v0
.end method
