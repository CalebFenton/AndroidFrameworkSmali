.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvInputHardwareImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;
    }
.end annotation


# instance fields
.field private mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field private final mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private mAudioSink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:Landroid/media/AudioDevicePort;

.field private mCommittedVolume:F

.field private mDesiredChannelMask:I

.field private mDesiredFormat:I

.field private mDesiredSamplingRate:I

.field private final mImplLock:Ljava/lang/Object;

.field private final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mOverrideAudioAddress:Ljava/lang/String;

.field private mOverrideAudioType:I

.field private mReleased:Z

.field private mSourceVolume:F

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)Landroid/media/AudioPatch;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z
    .locals 1
    .param p1, "config"    # Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->stopCapture(Landroid/media/tv/TvStreamConfig;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->handleAudioSinkUpdated()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 683
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@5
    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    #@8
    .line 641
    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    #@a
    .line 642
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@11
    .line 645
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    #@13
    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    #@16
    .line 644
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    #@18
    .line 667
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    #@1a
    .line 668
    const-string/jumbo v0, ""

    #@1d
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    #@1f
    .line 670
    new-instance v0, Ljava/util/ArrayList;

    #@21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@26
    .line 671
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@28
    .line 674
    const/high16 v0, -0x40800000    # -1.0f

    #@2a
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    #@2c
    .line 675
    const/4 v0, 0x0

    #@2d
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    #@2f
    .line 677
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    #@31
    .line 679
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    #@33
    .line 680
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    #@35
    .line 681
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    #@37
    .line 684
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@39
    .line 685
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    #@3c
    move-result-object v0

    #@3d
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    #@3f
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    #@42
    .line 686
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@44
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_0

    #@4a
    .line 687
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@4c
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    #@4f
    move-result v0

    #@50
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@52
    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    #@55
    move-result-object v1

    #@56
    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    #@59
    move-result-object v0

    #@5a
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@5c
    .line 688
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@5e
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    #@61
    .line 683
    :cond_0
    return-void
.end method

.method private findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .locals 5
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 707
    if-nez p1, :cond_0

    #@3
    .line 708
    return-object v4

    #@4
    .line 710
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 711
    .local v0, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@b
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    #@e
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_1

    #@14
    .line 712
    return-object v4

    #@15
    .line 714
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v2

    #@19
    .local v2, "port$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_3

    #@1f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid/media/AudioDevicePort;

    #@25
    .line 715
    .local v1, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    #@28
    move-result v3

    #@29
    if-ne v3, p1, :cond_2

    #@2b
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 716
    return-object v1

    #@36
    .line 719
    .end local v1    # "port":Landroid/media/AudioDevicePort;
    :cond_3
    return-object v4
.end method

.method private findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 693
    .local p1, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    #@3
    .line 694
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 695
    .local v0, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@a
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    #@d
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 696
    return-void

    #@14
    .line 698
    :cond_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@16
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    #@19
    move-result-object v4

    #@1a
    const/4 v5, 0x3

    #@1b
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    #@1e
    move-result v3

    #@1f
    .line 699
    .local v3, "sinkDevice":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v2

    #@23
    .local v2, "port$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_2

    #@29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Landroid/media/AudioDevicePort;

    #@2f
    .line 700
    .local v1, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    #@32
    move-result v4

    #@33
    and-int/2addr v4, v3

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 701
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 692
    .end local v1    # "port":Landroid/media/AudioDevicePort;
    :cond_2
    return-void
.end method

.method private handleAudioSinkUpdated()V
    .locals 2

    #@0
    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1003
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1001
    return-void

    #@8
    .line 1002
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 937
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 938
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v3, :cond_0

    #@8
    monitor-exit v2

    #@9
    .line 939
    return v1

    #@a
    .line 941
    :cond_0
    if-eqz p1, :cond_1

    #@c
    if-nez p2, :cond_2

    #@e
    :cond_1
    monitor-exit v2

    #@f
    .line 942
    return v1

    #@10
    .line 944
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result v3

    #@14
    const/4 v4, 0x2

    #@15
    if-eq v3, v4, :cond_3

    #@17
    monitor-exit v2

    #@18
    .line 945
    return v1

    #@19
    .line 948
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@1b
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    #@1e
    move-result-object v3

    #@1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@21
    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@24
    move-result v4

    #@25
    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    move-result v0

    #@29
    .line 949
    .local v0, "result":I
    if-nez v0, :cond_4

    #@2b
    const/4 v1, 0x1

    #@2c
    :cond_4
    monitor-exit v2

    #@2d
    return v1

    #@2e
    .line 937
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit v2

    #@30
    throw v1
.end method

.method private stopCapture(Landroid/media/tv/TvStreamConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/media/tv/TvStreamConfig;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 954
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 955
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v3, :cond_0

    #@8
    monitor-exit v2

    #@9
    .line 956
    return v1

    #@a
    .line 958
    :cond_0
    if-nez p1, :cond_1

    #@c
    monitor-exit v2

    #@d
    .line 959
    return v1

    #@e
    .line 962
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@10
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@16
    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@19
    move-result v4

    #@1a
    invoke-virtual {v3, v4, p1}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result v0

    #@1e
    .line 963
    .local v0, "result":I
    if-nez v0, :cond_2

    #@20
    const/4 v1, 0x1

    #@21
    :cond_2
    monitor-exit v2

    #@22
    return v1

    #@23
    .line 954
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method private updateAudioConfigLocked()V
    .locals 34

    #@0
    .prologue
    .line 783
    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSinkLocked()Z

    #@3
    move-result v19

    #@4
    .line 784
    .local v19, "sinkUpdated":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSourceLocked()Z

    #@7
    move-result v26

    #@8
    .line 788
    .local v26, "sourceUpdated":Z
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@c
    move-object/from16 v29, v0

    #@e
    if-eqz v29, :cond_0

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@14
    move-object/from16 v29, v0

    #@16
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    #@19
    move-result v29

    #@1a
    if-nez v29, :cond_0

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    #@20
    move-object/from16 v29, v0

    #@22
    if-nez v29, :cond_2

    #@24
    .line 789
    :cond_0
    move-object/from16 v0, p0

    #@26
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@28
    move-object/from16 v29, v0

    #@2a
    if-eqz v29, :cond_1

    #@2c
    .line 790
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@30
    move-object/from16 v29, v0

    #@32
    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    #@35
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@39
    move-object/from16 v29, v0

    #@3b
    invoke-static/range {v29 .. v29}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    #@3e
    .line 791
    const/16 v29, 0x0

    #@40
    move-object/from16 v0, v29

    #@42
    move-object/from16 v1, p0

    #@44
    iput-object v0, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@46
    .line 793
    :cond_1
    return-void

    #@47
    .line 796
    :cond_2
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@4b
    move-object/from16 v29, v0

    #@4d
    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap5(Lcom/android/server/tv/TvInputHardwareManager;)V

    #@50
    .line 797
    move-object/from16 v0, p0

    #@52
    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    #@54
    move/from16 v29, v0

    #@56
    move-object/from16 v0, p0

    #@58
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@5a
    move-object/from16 v30, v0

    #@5c
    invoke-static/range {v30 .. v30}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap2(Lcom/android/server/tv/TvInputHardwareManager;)F

    #@5f
    move-result v30

    #@60
    mul-float v28, v29, v30

    #@62
    .line 798
    .local v28, "volume":F
    const/16 v24, 0x0

    #@64
    .line 799
    .local v24, "sourceGainConfig":Landroid/media/AudioGainConfig;
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@68
    move-object/from16 v29, v0

    #@6a
    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    #@6d
    move-result-object v29

    #@6e
    move-object/from16 v0, v29

    #@70
    array-length v0, v0

    #@71
    move/from16 v29, v0

    #@73
    if-lez v29, :cond_4

    #@75
    move-object/from16 v0, p0

    #@77
    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    #@79
    move/from16 v29, v0

    #@7b
    cmpl-float v29, v28, v29

    #@7d
    if-eqz v29, :cond_4

    #@7f
    .line 800
    const/16 v23, 0x0

    #@81
    .line 801
    .local v23, "sourceGain":Landroid/media/AudioGain;
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@85
    move-object/from16 v29, v0

    #@87
    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    #@8a
    move-result-object v30

    #@8b
    const/16 v29, 0x0

    #@8d
    move-object/from16 v0, v30

    #@8f
    array-length v0, v0

    #@90
    move/from16 v31, v0

    #@92
    :goto_0
    move/from16 v0, v29

    #@94
    move/from16 v1, v31

    #@96
    if-ge v0, v1, :cond_3

    #@98
    aget-object v9, v30, v29

    #@9a
    .line 802
    .local v9, "gain":Landroid/media/AudioGain;
    invoke-virtual {v9}, Landroid/media/AudioGain;->mode()I

    #@9d
    move-result v32

    #@9e
    and-int/lit8 v32, v32, 0x1

    #@a0
    if-eqz v32, :cond_d

    #@a2
    .line 803
    move-object/from16 v23, v9

    #@a4
    .line 808
    .end local v9    # "gain":Landroid/media/AudioGain;
    .end local v23    # "sourceGain":Landroid/media/AudioGain;
    :cond_3
    if-eqz v23, :cond_f

    #@a6
    .line 809
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->maxValue()I

    #@a9
    move-result v29

    #@aa
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->minValue()I

    #@ad
    move-result v30

    #@ae
    sub-int v29, v29, v30

    #@b0
    .line 810
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->stepValue()I

    #@b3
    move-result v30

    #@b4
    .line 809
    div-int v27, v29, v30

    #@b6
    .line 811
    .local v27, "steps":I
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->minValue()I

    #@b9
    move-result v10

    #@ba
    .line 812
    .local v10, "gainValue":I
    const/high16 v29, 0x3f800000    # 1.0f

    #@bc
    cmpg-float v29, v28, v29

    #@be
    if-gez v29, :cond_e

    #@c0
    .line 813
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->stepValue()I

    #@c3
    move-result v29

    #@c4
    move/from16 v0, v27

    #@c6
    int-to-float v0, v0

    #@c7
    move/from16 v30, v0

    #@c9
    mul-float v30, v30, v28

    #@cb
    move/from16 v0, v30

    #@cd
    float-to-double v0, v0

    #@ce
    move-wide/from16 v30, v0

    #@d0
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    #@d2
    add-double v30, v30, v32

    #@d4
    move-wide/from16 v0, v30

    #@d6
    double-to-int v0, v0

    #@d7
    move/from16 v30, v0

    #@d9
    mul-int v29, v29, v30

    #@db
    add-int v10, v10, v29

    #@dd
    .line 818
    :goto_1
    const/16 v29, 0x1

    #@df
    move/from16 v0, v29

    #@e1
    new-array v11, v0, [I

    #@e3
    const/16 v29, 0x0

    #@e5
    aput v10, v11, v29

    #@e7
    .line 820
    .local v11, "gainValues":[I
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->channelMask()I

    #@ea
    move-result v29

    #@eb
    .line 819
    const/16 v30, 0x1

    #@ed
    .line 820
    const/16 v31, 0x0

    #@ef
    .line 819
    move-object/from16 v0, v23

    #@f1
    move/from16 v1, v30

    #@f3
    move/from16 v2, v29

    #@f5
    move/from16 v3, v31

    #@f7
    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    #@fa
    move-result-object v24

    #@fb
    .line 826
    .end local v10    # "gainValue":I
    .end local v11    # "gainValues":[I
    .end local v24    # "sourceGainConfig":Landroid/media/AudioGainConfig;
    .end local v27    # "steps":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@ff
    move-object/from16 v29, v0

    #@101
    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    #@104
    move-result-object v21

    #@105
    .line 827
    .local v21, "sourceConfig":Landroid/media/AudioPortConfig;
    new-instance v16, Ljava/util/ArrayList;

    #@107
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@10a
    .line 828
    .local v16, "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    const/16 v29, 0x1

    #@10c
    move/from16 v0, v29

    #@10e
    new-array v6, v0, [Landroid/media/AudioPatch;

    #@110
    move-object/from16 v0, p0

    #@112
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@114
    move-object/from16 v29, v0

    #@116
    const/16 v30, 0x0

    #@118
    aput-object v29, v6, v30

    #@11a
    .line 829
    .local v6, "audioPatchArray":[Landroid/media/AudioPatch;
    if-nez v26, :cond_10

    #@11c
    move/from16 v13, v19

    #@11e
    .line 831
    :goto_3
    move-object/from16 v0, p0

    #@120
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@122
    move-object/from16 v29, v0

    #@124
    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@127
    move-result-object v8

    #@128
    .local v8, "audioSink$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@12b
    move-result v29

    #@12c
    if-eqz v29, :cond_12

    #@12e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@131
    move-result-object v7

    #@132
    check-cast v7, Landroid/media/AudioDevicePort;

    #@134
    .line 832
    .local v7, "audioSink":Landroid/media/AudioDevicePort;
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    #@137
    move-result-object v15

    #@138
    .line 833
    .local v15, "sinkConfig":Landroid/media/AudioPortConfig;
    move-object/from16 v0, p0

    #@13a
    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    #@13c
    move/from16 v18, v0

    #@13e
    .line 834
    .local v18, "sinkSamplingRate":I
    move-object/from16 v0, p0

    #@140
    iget v14, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    #@142
    .line 835
    .local v14, "sinkChannelMask":I
    move-object/from16 v0, p0

    #@144
    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    #@146
    move/from16 v17, v0

    #@148
    .line 838
    .local v17, "sinkFormat":I
    if-eqz v15, :cond_7

    #@14a
    .line 839
    if-nez v18, :cond_5

    #@14c
    .line 840
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    #@14f
    move-result v18

    #@150
    .line 842
    :cond_5
    const/16 v29, 0x1

    #@152
    move/from16 v0, v29

    #@154
    if-ne v14, v0, :cond_6

    #@156
    .line 843
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->channelMask()I

    #@159
    move-result v14

    #@15a
    .line 845
    :cond_6
    const/16 v29, 0x1

    #@15c
    move/from16 v0, v17

    #@15e
    move/from16 v1, v29

    #@160
    if-ne v0, v1, :cond_7

    #@162
    .line 846
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    #@165
    move-result v14

    #@166
    .line 850
    :cond_7
    if-eqz v15, :cond_8

    #@168
    .line 851
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    #@16b
    move-result v29

    #@16c
    move/from16 v0, v29

    #@16e
    move/from16 v1, v18

    #@170
    if-eq v0, v1, :cond_11

    #@172
    .line 855
    :cond_8
    :goto_5
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->samplingRates()[I

    #@175
    move-result-object v29

    #@176
    move-object/from16 v0, v29

    #@178
    move/from16 v1, v18

    #@17a
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    #@17d
    move-result v29

    #@17e
    if-nez v29, :cond_9

    #@180
    .line 856
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->samplingRates()[I

    #@183
    move-result-object v29

    #@184
    move-object/from16 v0, v29

    #@186
    array-length v0, v0

    #@187
    move/from16 v29, v0

    #@189
    if-lez v29, :cond_9

    #@18b
    .line 857
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->samplingRates()[I

    #@18e
    move-result-object v29

    #@18f
    const/16 v30, 0x0

    #@191
    aget v18, v29, v30

    #@193
    .line 859
    :cond_9
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->channelMasks()[I

    #@196
    move-result-object v29

    #@197
    move-object/from16 v0, v29

    #@199
    invoke-static {v0, v14}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    #@19c
    move-result v29

    #@19d
    if-nez v29, :cond_a

    #@19f
    .line 860
    const/4 v14, 0x1

    #@1a0
    .line 862
    :cond_a
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->formats()[I

    #@1a3
    move-result-object v29

    #@1a4
    move-object/from16 v0, v29

    #@1a6
    move/from16 v1, v17

    #@1a8
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    #@1ab
    move-result v29

    #@1ac
    if-nez v29, :cond_b

    #@1ae
    .line 863
    const/16 v17, 0x1

    #@1b0
    .line 866
    :cond_b
    const/16 v29, 0x0

    #@1b2
    .line 865
    move/from16 v0, v18

    #@1b4
    move/from16 v1, v17

    #@1b6
    move-object/from16 v2, v29

    #@1b8
    invoke-virtual {v7, v0, v14, v1, v2}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    #@1bb
    move-result-object v15

    #@1bc
    .line 867
    const/4 v13, 0x1

    #@1bd
    .line 869
    :cond_c
    move-object/from16 v0, v16

    #@1bf
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c2
    goto/16 :goto_4

    #@1c4
    .line 801
    .end local v6    # "audioPatchArray":[Landroid/media/AudioPatch;
    .end local v7    # "audioSink":Landroid/media/AudioDevicePort;
    .end local v8    # "audioSink$iterator":Ljava/util/Iterator;
    .end local v14    # "sinkChannelMask":I
    .end local v15    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v16    # "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    .end local v17    # "sinkFormat":I
    .end local v18    # "sinkSamplingRate":I
    .end local v21    # "sourceConfig":Landroid/media/AudioPortConfig;
    .restart local v9    # "gain":Landroid/media/AudioGain;
    .restart local v23    # "sourceGain":Landroid/media/AudioGain;
    .restart local v24    # "sourceGainConfig":Landroid/media/AudioGainConfig;
    :cond_d
    add-int/lit8 v29, v29, 0x1

    #@1c6
    goto/16 :goto_0

    #@1c8
    .line 815
    .end local v9    # "gain":Landroid/media/AudioGain;
    .end local v23    # "sourceGain":Landroid/media/AudioGain;
    .restart local v10    # "gainValue":I
    .restart local v27    # "steps":I
    :cond_e
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->maxValue()I

    #@1cb
    move-result v10

    #@1cc
    goto/16 :goto_1

    #@1ce
    .line 822
    .end local v10    # "gainValue":I
    .end local v27    # "steps":I
    :cond_f
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    #@1d1
    move-result-object v29

    #@1d2
    const-string/jumbo v30, "No audio source gain with MODE_JOINT support exists."

    #@1d5
    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d8
    goto/16 :goto_2

    #@1da
    .line 829
    .end local v24    # "sourceGainConfig":Landroid/media/AudioGainConfig;
    .restart local v6    # "audioPatchArray":[Landroid/media/AudioPatch;
    .restart local v16    # "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    .restart local v21    # "sourceConfig":Landroid/media/AudioPortConfig;
    :cond_10
    const/4 v13, 0x1

    #@1db
    .local v13, "shouldRecreateAudioPatch":Z
    goto/16 :goto_3

    #@1dd
    .line 852
    .end local v13    # "shouldRecreateAudioPatch":Z
    .restart local v7    # "audioSink":Landroid/media/AudioDevicePort;
    .restart local v8    # "audioSink$iterator":Ljava/util/Iterator;
    .restart local v14    # "sinkChannelMask":I
    .restart local v15    # "sinkConfig":Landroid/media/AudioPortConfig;
    .restart local v17    # "sinkFormat":I
    .restart local v18    # "sinkSamplingRate":I
    :cond_11
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->channelMask()I

    #@1e0
    move-result v29

    #@1e1
    move/from16 v0, v29

    #@1e3
    if-ne v0, v14, :cond_8

    #@1e5
    .line 853
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    #@1e8
    move-result v29

    #@1e9
    move/from16 v0, v29

    #@1eb
    move/from16 v1, v17

    #@1ed
    if-eq v0, v1, :cond_c

    #@1ef
    goto :goto_5

    #@1f0
    .line 873
    .end local v7    # "audioSink":Landroid/media/AudioDevicePort;
    .end local v14    # "sinkChannelMask":I
    .end local v15    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v17    # "sinkFormat":I
    .end local v18    # "sinkSamplingRate":I
    :cond_12
    const/16 v29, 0x0

    #@1f2
    move-object/from16 v0, v16

    #@1f4
    move/from16 v1, v29

    #@1f6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f9
    move-result-object v15

    #@1fa
    check-cast v15, Landroid/media/AudioPortConfig;

    #@1fc
    .line 874
    .restart local v15    # "sinkConfig":Landroid/media/AudioPortConfig;
    if-eqz v21, :cond_13

    #@1fe
    if-eqz v24, :cond_17

    #@200
    .line 875
    :cond_13
    const/16 v25, 0x0

    #@202
    .line 876
    .local v25, "sourceSamplingRate":I
    move-object/from16 v0, p0

    #@204
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@206
    move-object/from16 v29, v0

    #@208
    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->samplingRates()[I

    #@20b
    move-result-object v29

    #@20c
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    #@20f
    move-result v30

    #@210
    invoke-static/range {v29 .. v30}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    #@213
    move-result v29

    #@214
    if-eqz v29, :cond_19

    #@216
    .line 877
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    #@219
    move-result v25

    #@21a
    .line 882
    :cond_14
    :goto_6
    const/16 v20, 0x1

    #@21c
    .line 883
    .local v20, "sourceChannelMask":I
    move-object/from16 v0, p0

    #@21e
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@220
    move-object/from16 v29, v0

    #@222
    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->channelMasks()[I

    #@225
    move-result-object v30

    #@226
    const/16 v29, 0x0

    #@228
    move-object/from16 v0, v30

    #@22a
    array-length v0, v0

    #@22b
    move/from16 v31, v0

    #@22d
    :goto_7
    move/from16 v0, v29

    #@22f
    move/from16 v1, v31

    #@231
    if-ge v0, v1, :cond_15

    #@233
    aget v12, v30, v29

    #@235
    .line 884
    .local v12, "inChannelMask":I
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->channelMask()I

    #@238
    move-result v32

    #@239
    invoke-static/range {v32 .. v32}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@23c
    move-result v32

    #@23d
    .line 885
    invoke-static {v12}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    #@240
    move-result v33

    #@241
    .line 884
    move/from16 v0, v32

    #@243
    move/from16 v1, v33

    #@245
    if-ne v0, v1, :cond_1a

    #@247
    .line 886
    move/from16 v20, v12

    #@249
    .line 890
    .end local v12    # "inChannelMask":I
    :cond_15
    const/16 v22, 0x1

    #@24b
    .line 891
    .local v22, "sourceFormat":I
    move-object/from16 v0, p0

    #@24d
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@24f
    move-object/from16 v29, v0

    #@251
    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->formats()[I

    #@254
    move-result-object v29

    #@255
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    #@258
    move-result v30

    #@259
    invoke-static/range {v29 .. v30}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    #@25c
    move-result v29

    #@25d
    if-eqz v29, :cond_16

    #@25f
    .line 892
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    #@262
    move-result v22

    #@263
    .line 894
    :cond_16
    move-object/from16 v0, p0

    #@265
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@267
    move-object/from16 v29, v0

    #@269
    move-object/from16 v0, v29

    #@26b
    move/from16 v1, v25

    #@26d
    move/from16 v2, v20

    #@26f
    move/from16 v3, v22

    #@271
    move-object/from16 v4, v24

    #@273
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    #@276
    move-result-object v21

    #@277
    .line 896
    const/4 v13, 0x1

    #@278
    .line 898
    .end local v20    # "sourceChannelMask":I
    .end local v22    # "sourceFormat":I
    .end local v25    # "sourceSamplingRate":I
    :cond_17
    if-eqz v13, :cond_18

    #@27a
    .line 899
    move/from16 v0, v28

    #@27c
    move-object/from16 v1, p0

    #@27e
    iput v0, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    #@280
    .line 900
    move-object/from16 v0, p0

    #@282
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@284
    move-object/from16 v29, v0

    #@286
    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    #@289
    .line 902
    const/16 v29, 0x1

    #@28b
    move/from16 v0, v29

    #@28d
    new-array v0, v0, [Landroid/media/AudioPortConfig;

    #@28f
    move-object/from16 v30, v0

    #@291
    const/16 v29, 0x0

    #@293
    aput-object v21, v30, v29

    #@295
    .line 903
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@298
    move-result v29

    #@299
    move/from16 v0, v29

    #@29b
    new-array v0, v0, [Landroid/media/AudioPortConfig;

    #@29d
    move-object/from16 v29, v0

    #@29f
    move-object/from16 v0, v16

    #@2a1
    move-object/from16 v1, v29

    #@2a3
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a6
    move-result-object v29

    #@2a7
    check-cast v29, [Landroid/media/AudioPortConfig;

    #@2a9
    .line 900
    move-object/from16 v0, v30

    #@2ab
    move-object/from16 v1, v29

    #@2ad
    invoke-static {v6, v0, v1}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    #@2b0
    .line 904
    const/16 v29, 0x0

    #@2b2
    aget-object v29, v6, v29

    #@2b4
    move-object/from16 v0, v29

    #@2b6
    move-object/from16 v1, p0

    #@2b8
    iput-object v0, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@2ba
    .line 905
    if-eqz v24, :cond_18

    #@2bc
    .line 906
    move-object/from16 v0, p0

    #@2be
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@2c0
    move-object/from16 v29, v0

    #@2c2
    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    #@2c5
    move-object/from16 v0, p0

    #@2c7
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@2c9
    move-object/from16 v29, v0

    #@2cb
    move-object/from16 v0, v29

    #@2cd
    move-object/from16 v1, v24

    #@2cf
    invoke-static {v0, v1}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    #@2d2
    .line 782
    :cond_18
    return-void

    #@2d3
    .line 878
    .restart local v25    # "sourceSamplingRate":I
    :cond_19
    move-object/from16 v0, p0

    #@2d5
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@2d7
    move-object/from16 v29, v0

    #@2d9
    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->samplingRates()[I

    #@2dc
    move-result-object v29

    #@2dd
    move-object/from16 v0, v29

    #@2df
    array-length v0, v0

    #@2e0
    move/from16 v29, v0

    #@2e2
    if-lez v29, :cond_14

    #@2e4
    .line 880
    move-object/from16 v0, p0

    #@2e6
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@2e8
    move-object/from16 v29, v0

    #@2ea
    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->samplingRates()[I

    #@2ed
    move-result-object v29

    #@2ee
    const/16 v30, 0x0

    #@2f0
    aget v25, v29, v30

    #@2f2
    goto/16 :goto_6

    #@2f4
    .line 883
    .restart local v12    # "inChannelMask":I
    .restart local v20    # "sourceChannelMask":I
    :cond_1a
    add-int/lit8 v29, v29, 0x1

    #@2f6
    goto/16 :goto_7
.end method

.method private updateAudioSinkLocked()Z
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 978
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@4
    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    #@7
    move-result v4

    #@8
    if-nez v4, :cond_0

    #@a
    .line 979
    return v2

    #@b
    .line 981
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@d
    .line 982
    .local v1, "previousSink":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@f
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@14
    .line 983
    iget v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    #@16
    if-nez v4, :cond_2

    #@18
    .line 984
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@1a
    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    #@1d
    .line 994
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@1f
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@22
    move-result v4

    #@23
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@26
    move-result v5

    #@27
    if-eq v4, v5, :cond_3

    #@29
    .line 995
    return v3

    #@2a
    .line 987
    :cond_2
    iget v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    #@2c
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    #@2e
    invoke-direct {p0, v4, v5}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    #@31
    move-result-object v0

    #@32
    .line 988
    .local v0, "audioSink":Landroid/media/AudioDevicePort;
    if-eqz v0, :cond_1

    #@34
    .line 989
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@36
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 997
    .end local v0    # "audioSink":Landroid/media/AudioDevicePort;
    :cond_3
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    #@3c
    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    #@3f
    .line 998
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_4

    #@45
    :goto_1
    return v2

    #@46
    :cond_4
    move v2, v3

    #@47
    goto :goto_1
.end method

.method private updateAudioSourceLocked()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 968
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@4
    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_0

    #@a
    .line 969
    return v2

    #@b
    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@d
    .line 972
    .local v0, "previousSource":Landroid/media/AudioDevicePort;
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@f
    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    #@12
    move-result v3

    #@13
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@15
    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-direct {p0, v3, v4}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    #@1c
    move-result-object v3

    #@1d
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@1f
    .line 973
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@21
    if-nez v3, :cond_3

    #@23
    if-eqz v0, :cond_2

    #@25
    :cond_1
    :goto_0
    return v1

    #@26
    :cond_2
    move v1, v2

    #@27
    goto :goto_0

    #@28
    .line 974
    :cond_3
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    #@2a
    invoke-virtual {v3, v0}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    move v1, v2

    #@31
    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 924
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 925
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 926
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v2, "Device already released."

    #@d
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 924
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0

    #@14
    :cond_0
    monitor-exit v1

    #@15
    .line 929
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@17
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    #@1a
    move-result v0

    #@1b
    const/16 v1, 0x9

    #@1d
    if-eq v0, v1, :cond_1

    #@1f
    .line 930
    return v2

    #@20
    .line 933
    :cond_1
    return v2
.end method

.method public onMediaStreamVolumeChanged()V
    .locals 2

    #@0
    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1024
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 1022
    return-void

    #@8
    .line 1023
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .locals 2
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I

    #@0
    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1011
    :try_start_0
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    #@5
    .line 1012
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    #@7
    .line 1014
    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    #@9
    .line 1015
    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    #@b
    .line 1016
    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    #@d
    .line 1018
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 1009
    return-void

    #@12
    .line 1010
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    .line 723
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@5
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    #@8
    move-result-object v0

    #@9
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    #@b
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    #@e
    .line 725
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 726
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@14
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    #@17
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@19
    invoke-static {v0}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    #@1c
    .line 727
    const/4 v0, 0x0

    #@1d
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    #@1f
    .line 729
    :cond_0
    const/4 v0, 0x1

    #@20
    iput-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit v1

    #@23
    .line 722
    return-void

    #@24
    .line 723
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method public setStreamVolume(F)V
    .locals 3
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 913
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 914
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v2, "Device already released."

    #@c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 913
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 917
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    #@15
    .line 918
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v1

    #@19
    .line 912
    return-void
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 739
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 740
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 741
    new-instance v1, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v2, "Device already released."

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 739
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v3

    #@14
    throw v1

    #@15
    .line 744
    :cond_0
    const/4 v0, 0x0

    #@16
    .line 745
    .local v0, "result":I
    if-nez p1, :cond_3

    #@18
    .line 747
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    #@1a
    if-eqz v4, :cond_2

    #@1c
    .line 748
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@1e
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    #@21
    move-result-object v4

    #@22
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@24
    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@27
    move-result v5

    #@28
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    #@2a
    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    #@2d
    move-result v0

    #@2e
    .line 749
    const/4 v4, 0x0

    #@2f
    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    #@31
    .line 774
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    .line 775
    if-nez v0, :cond_7

    #@36
    :goto_1
    monitor-exit v3

    #@37
    return v1

    #@38
    :cond_2
    monitor-exit v3

    #@39
    .line 752
    return v1

    #@3a
    .line 756
    :cond_3
    if-nez p2, :cond_4

    #@3c
    monitor-exit v3

    #@3d
    .line 757
    return v2

    #@3e
    .line 760
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    #@40
    if-eqz v4, :cond_5

    #@42
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    #@44
    invoke-virtual {p2, v4}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v4

    #@48
    if-eqz v4, :cond_6

    #@4a
    .line 767
    :cond_5
    :goto_2
    if-nez v0, :cond_1

    #@4c
    .line 768
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@4e
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    #@51
    move-result-object v4

    #@52
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@54
    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@57
    move-result v5

    #@58
    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    #@5b
    move-result v0

    #@5c
    .line 769
    if-nez v0, :cond_1

    #@5e
    .line 770
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    #@60
    goto :goto_0

    #@61
    .line 761
    :cond_6
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    #@63
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    #@66
    move-result-object v4

    #@67
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    #@69
    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@6c
    move-result v5

    #@6d
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    #@6f
    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    #@72
    move-result v0

    #@73
    .line 762
    if-eqz v0, :cond_5

    #@75
    .line 763
    const/4 v4, 0x0

    #@76
    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@78
    goto :goto_2

    #@79
    :cond_7
    move v1, v2

    #@7a
    .line 775
    goto :goto_1
.end method
