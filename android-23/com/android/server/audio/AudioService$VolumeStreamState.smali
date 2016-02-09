.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private final mIndexMax:I

.field private final mIndexMin:I

.field private mIsMuted:Z

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private final mVolumeChanged:Landroid/content/Intent;

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    #@0
    .prologue
    .line 3666
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3662
    new-instance v0, Landroid/util/SparseIntArray;

    #@7
    const/16 v1, 0x8

    #@9
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@c
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@e
    .line 3668
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    #@10
    .line 3670
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@12
    .line 3671
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get1()[I

    #@15
    move-result-object v0

    #@16
    aget v0, v0, p3

    #@18
    mul-int/lit8 v0, v0, 0xa

    #@1a
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@1c
    .line 3672
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get0()[I

    #@1f
    move-result-object v0

    #@20
    aget v0, v0, p3

    #@22
    mul-int/lit8 v0, v0, 0xa

    #@24
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@26
    .line 3673
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@28
    div-int/lit8 v0, v0, 0xa

    #@2a
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@2c
    div-int/lit8 v1, v1, 0xa

    #@2e
    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    #@31
    .line 3675
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    #@34
    .line 3676
    new-instance v0, Landroid/content/Intent;

    #@36
    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    #@39
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3c
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@3e
    .line 3677
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@40
    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@43
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@45
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@48
    .line 3678
    new-instance v0, Landroid/content/Intent;

    #@4a
    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    #@4d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@50
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    #@52
    .line 3679
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    #@54
    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@57
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5c
    .line 3666
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    #@2
    .line 3971
    const-string/jumbo v7, "   Muted: "

    #@5
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 3972
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@a
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    #@d
    .line 3973
    const-string/jumbo v7, "   Min: "

    #@10
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 3974
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@15
    add-int/lit8 v7, v7, 0x5

    #@17
    div-int/lit8 v7, v7, 0xa

    #@19
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    #@1c
    .line 3975
    const-string/jumbo v7, "   Max: "

    #@1f
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    .line 3976
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@24
    add-int/lit8 v7, v7, 0x5

    #@26
    div-int/lit8 v7, v7, 0xa

    #@28
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    #@2b
    .line 3977
    const-string/jumbo v7, "   Current: "

    #@2e
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    .line 3978
    const/4 v3, 0x0

    #@32
    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@34
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    #@37
    move-result v7

    #@38
    if-ge v3, v7, :cond_3

    #@3a
    .line 3979
    if-lez v3, :cond_0

    #@3c
    .line 3980
    const-string/jumbo v7, ", "

    #@3f
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 3982
    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@44
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@47
    move-result v0

    #@48
    .line 3983
    .local v0, "device":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    .line 3984
    if-ne v0, v9, :cond_2

    #@51
    const-string/jumbo v1, "default"

    #@54
    .line 3986
    .local v1, "deviceName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@57
    move-result v7

    #@58
    if-nez v7, :cond_1

    #@5a
    .line 3987
    const-string/jumbo v7, " ("

    #@5d
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 3988
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    .line 3989
    const-string/jumbo v7, ")"

    #@66
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 3991
    :cond_1
    const-string/jumbo v7, ": "

    #@6c
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    .line 3992
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@71
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@74
    move-result v7

    #@75
    add-int/lit8 v7, v7, 0x5

    #@77
    div-int/lit8 v4, v7, 0xa

    #@79
    .line 3993
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    #@7c
    .line 3978
    add-int/lit8 v3, v3, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 3985
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_2
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    .restart local v1    # "deviceName":Ljava/lang/String;
    goto :goto_1

    #@84
    .line 3995
    .end local v0    # "device":I
    .end local v1    # "deviceName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@87
    .line 3996
    const-string/jumbo v7, "   Devices: "

    #@8a
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    .line 3997
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@8f
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@91
    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->-wrap5(Lcom/android/server/audio/AudioService;I)I

    #@94
    move-result v2

    #@95
    .line 3998
    .local v2, "devices":I
    const/4 v3, 0x0

    #@96
    const/4 v5, 0x0

    #@97
    .local v5, "n":I
    move v6, v5

    #@98
    .line 4001
    .end local v5    # "n":I
    .local v6, "n":I
    :goto_2
    const/4 v7, 0x1

    #@99
    shl-int v0, v7, v3

    #@9b
    .restart local v0    # "device":I
    if-eq v0, v9, :cond_5

    #@9d
    .line 4002
    and-int v7, v2, v0

    #@9f
    if-eqz v7, :cond_6

    #@a1
    .line 4003
    add-int/lit8 v5, v6, 0x1

    #@a3
    .end local v6    # "n":I
    .restart local v5    # "n":I
    if-lez v6, :cond_4

    #@a5
    .line 4004
    const-string/jumbo v7, ", "

    #@a8
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 4006
    :cond_4
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    #@ae
    move-result-object v7

    #@af
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    .line 4008
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@b4
    move v6, v5

    #@b5
    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_2

    #@b6
    .line 3970
    :cond_5
    return-void

    #@b7
    :cond_6
    move v5, v6

    #@b8
    .end local v6    # "n":I
    .restart local v5    # "n":I
    goto :goto_3
.end method

.method private getValidIndex(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 3961
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 3962
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@6
    return v0

    #@7
    .line 3963
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@9
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@11
    if-le p1, v0, :cond_2

    #@13
    .line 3964
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@15
    return v0

    #@16
    .line 3967
    :cond_2
    return p1
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .locals 1
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3806
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@3
    move-result v0

    #@4
    add-int/2addr v0, p1

    #@5
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public applyAllVolumes()V
    .locals 7

    #@0
    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    #@2
    .line 3775
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@4
    monitor-enter v4

    #@5
    .line 3779
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 3780
    const/4 v2, 0x0

    #@a
    .line 3784
    .local v2, "index":I
    :goto_0
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@c
    const/high16 v5, 0x40000000    # 2.0f

    #@e
    invoke-static {v3, v2, v5}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    #@11
    .line 3786
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    #@17
    move-result v3

    #@18
    if-ge v1, v3, :cond_6

    #@1a
    .line 3787
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@1c
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1f
    move-result v0

    #@20
    .line 3788
    .local v0, "device":I
    if-eq v0, v6, :cond_0

    #@22
    .line 3789
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 3790
    const/4 v2, 0x0

    #@27
    .line 3799
    :goto_2
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@29
    invoke-static {v3, v2, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    #@2c
    .line 3786
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 3782
    .end local v0    # "device":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    #@31
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@34
    move-result v3

    #@35
    add-int/lit8 v3, v3, 0x5

    #@37
    div-int/lit8 v2, v3, 0xa

    #@39
    .restart local v2    # "index":I
    goto :goto_0

    #@3a
    .line 3791
    .restart local v0    # "device":I
    .restart local v1    # "i":I
    :cond_2
    and-int/lit16 v3, v0, 0x380

    #@3c
    if-eqz v3, :cond_3

    #@3e
    .line 3792
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@40
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Z

    #@43
    move-result v3

    #@44
    .line 3791
    if-nez v3, :cond_4

    #@46
    .line 3793
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@48
    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@4a
    and-int/2addr v3, v0

    #@4b
    if-eqz v3, :cond_5

    #@4d
    .line 3795
    :cond_4
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@4f
    add-int/lit8 v3, v3, 0x5

    #@51
    div-int/lit8 v2, v3, 0xa

    #@53
    goto :goto_2

    #@54
    .line 3797
    :cond_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@56
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@59
    move-result v3

    #@5a
    add-int/lit8 v3, v3, 0x5

    #@5c
    div-int/lit8 v2, v3, 0xa
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    goto :goto_2

    #@5f
    .end local v0    # "device":I
    :cond_6
    monitor-exit v4

    #@60
    .line 3774
    return-void

    #@61
    .line 3775
    .end local v1    # "i":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    #@62
    monitor-exit v4

    #@63
    throw v3
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .locals 2
    .param p1, "device"    # I

    #@0
    .prologue
    .line 3763
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3764
    const/4 v0, 0x0

    #@5
    .line 3771
    .local v0, "index":I
    :goto_0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@7
    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    #@a
    .line 3761
    return-void

    #@b
    .line 3765
    .end local v0    # "index":I
    :cond_0
    and-int/lit16 v1, p1, 0x380

    #@d
    if-eqz v1, :cond_1

    #@f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@11
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_2

    #@17
    .line 3766
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@19
    iget v1, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@1b
    and-int/2addr v1, p1

    #@1c
    if-eqz v1, :cond_3

    #@1e
    .line 3767
    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@20
    add-int/lit8 v1, v1, 0x5

    #@22
    div-int/lit8 v0, v1, 0xa

    #@24
    .restart local v0    # "index":I
    goto :goto_0

    #@25
    .line 3769
    .end local v0    # "index":I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@28
    move-result v1

    #@29
    add-int/lit8 v1, v1, 0x5

    #@2b
    div-int/lit8 v0, v1, 0xa

    #@2d
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public checkFixedVolumeDevices()V
    .locals 6

    #@0
    .prologue
    .line 3944
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v4

    #@3
    .line 3946
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@5
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)[I

    #@8
    move-result-object v3

    #@9
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@b
    aget v3, v3, v5

    #@d
    const/4 v5, 0x3

    #@e
    if-ne v3, v5, :cond_2

    #@10
    .line 3947
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@13
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    #@16
    move-result v3

    #@17
    if-ge v1, v3, :cond_2

    #@19
    .line 3948
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@1b
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1e
    move-result v0

    #@1f
    .line 3949
    .local v0, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@21
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@24
    move-result v2

    #@25
    .line 3950
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@27
    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@29
    and-int/2addr v3, v0

    #@2a
    if-nez v3, :cond_0

    #@2c
    .line 3951
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@2e
    iget v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    #@30
    and-int/2addr v3, v0

    #@31
    if-eqz v3, :cond_1

    #@33
    if-eqz v2, :cond_1

    #@35
    .line 3952
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@37
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@39
    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@3c
    .line 3954
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 3947
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_0

    #@42
    .end local v0    # "device":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_2
    monitor-exit v4

    #@43
    .line 3943
    return-void

    #@44
    .line 3944
    :catchall_0
    move-exception v3

    #@45
    monitor-exit v4

    #@46
    throw v3
.end method

.method public getIndex(I)I
    .locals 5
    .param p1, "device"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 3864
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    monitor-enter v2

    #@4
    .line 3865
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@6
    const/4 v3, -0x1

    #@7
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@a
    move-result v0

    #@b
    .line 3866
    .local v0, "index":I
    if-ne v0, v4, :cond_0

    #@d
    .line 3868
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@f
    const/high16 v3, 0x40000000    # 2.0f

    #@11
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v0

    #@15
    :cond_0
    monitor-exit v2

    #@16
    .line 3870
    return v0

    #@17
    .line 3864
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@18
    monitor-exit v2

    #@19
    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    #@0
    .prologue
    .line 3875
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@2
    return v0
.end method

.method public getMinIndex()I
    .locals 1

    #@0
    .prologue
    .line 3879
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@2
    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # I

    #@0
    .prologue
    .line 3704
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    #@2
    .line 3705
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 3706
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 3707
    return-object v0

    #@d
    .line 3709
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, "_"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    return-object v2
.end method

.method public getStreamType()I
    .locals 1

    #@0
    .prologue
    .line 3940
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@2
    return v0
.end method

.method public mute(Z)V
    .locals 10
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 3913
    const/4 v7, 0x0

    #@1
    .line 3914
    .local v7, "changed":Z
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    monitor-enter v9

    #@4
    .line 3915
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 3916
    const/4 v7, 0x1

    #@9
    .line 3917
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@b
    .line 3922
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@d
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@10
    move-result-object v0

    #@11
    .line 3923
    const/16 v1, 0xa

    #@13
    .line 3924
    const/4 v2, 0x2

    #@14
    .line 3925
    const/4 v3, 0x0

    #@15
    .line 3926
    const/4 v4, 0x0

    #@16
    .line 3927
    const/4 v6, 0x0

    #@17
    move-object v5, p0

    #@18
    .line 3922
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v9

    #@1c
    .line 3930
    if-eqz v7, :cond_1

    #@1e
    .line 3932
    new-instance v8, Landroid/content/Intent;

    #@20
    const-string/jumbo v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    #@23
    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@26
    .line 3933
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@29
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@2b
    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2e
    .line 3934
    const-string/jumbo v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    #@31
    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@34
    .line 3935
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@36
    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    #@39
    .line 3912
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    #@3a
    .line 3914
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit v9

    #@3c
    throw v0
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .locals 5
    .param p1, "checkOthers"    # Z

    #@0
    .prologue
    .line 3683
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@2
    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    #@5
    move-result v0

    #@6
    .line 3684
    .local v0, "devices":I
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    #@8
    if-ne v0, v2, :cond_0

    #@a
    .line 3685
    return v0

    #@b
    .line 3687
    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    #@d
    .line 3688
    .local v1, "prevDevices":I
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    #@f
    .line 3689
    if-eqz p1, :cond_1

    #@11
    .line 3691
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@13
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@15
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap20(Lcom/android/server/audio/AudioService;I)V

    #@18
    .line 3694
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@1a
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)[I

    #@1d
    move-result-object v2

    #@1e
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@20
    aget v2, v2, v3

    #@22
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@24
    if-ne v2, v3, :cond_2

    #@26
    .line 3695
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@28
    invoke-static {v2, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    #@2b
    .line 3697
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@2d
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    #@2f
    .line 3698
    const-string/jumbo v4, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    #@32
    .line 3697
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@35
    move-result-object v3

    #@36
    .line 3699
    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    #@39
    .line 3697
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    #@40
    .line 3700
    return v0
.end method

.method public readSettings()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/high16 v9, 0x40000000    # 2.0f

    #@3
    .line 3713
    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@5
    monitor-enter v7

    #@6
    .line 3715
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@8
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 3716
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@10
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@12
    const/high16 v9, 0x40000000    # 2.0f

    #@14
    invoke-virtual {v6, v9, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@17
    monitor-exit v7

    #@18
    .line 3717
    return-void

    #@19
    .line 3722
    :cond_0
    :try_start_1
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@1b
    if-eq v6, v10, :cond_1

    #@1d
    .line 3723
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@1f
    const/4 v8, 0x7

    #@20
    if-ne v6, v8, :cond_3

    #@22
    .line 3724
    :cond_1
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@24
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@26
    aget v6, v6, v8

    #@28
    mul-int/lit8 v3, v6, 0xa

    #@2a
    .line 3725
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@2c
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    #@2f
    move-result-object v8

    #@30
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@31
    .line 3726
    :try_start_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@33
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_2

    #@3d
    .line 3727
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    :cond_2
    :try_start_3
    monitor-exit v8

    #@40
    .line 3730
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@42
    const/high16 v8, 0x40000000    # 2.0f

    #@44
    invoke-virtual {v6, v8, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@47
    monitor-exit v7

    #@48
    .line 3731
    return-void

    #@49
    .line 3725
    :catchall_0
    move-exception v6

    #@4a
    :try_start_4
    monitor-exit v8

    #@4b
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@4c
    .line 3713
    .end local v3    # "index":I
    :catchall_1
    move-exception v6

    #@4d
    monitor-exit v7

    #@4e
    throw v6

    #@4f
    .line 3734
    :cond_3
    const v5, 0x40ffffff    # 7.9999995f

    #@52
    .line 3736
    .local v5, "remainingDevices":I
    const/4 v2, 0x0

    #@53
    .local v2, "i":I
    :goto_0
    if-eqz v5, :cond_7

    #@55
    .line 3737
    shl-int v1, v10, v2

    #@57
    .line 3738
    .local v1, "device":I
    and-int v6, v1, v5

    #@59
    if-nez v6, :cond_5

    #@5b
    .line 3736
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 3741
    :cond_5
    not-int v6, v1

    #@5f
    and-int/2addr v5, v6

    #@60
    .line 3744
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    .line 3747
    .local v4, "name":Ljava/lang/String;
    if-ne v1, v9, :cond_6

    #@66
    .line 3748
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@68
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@6a
    aget v0, v6, v8

    #@6c
    .line 3750
    .local v0, "defaultIndex":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@6e
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@71
    move-result-object v6

    #@72
    const/4 v8, -0x2

    #@73
    .line 3749
    invoke-static {v6, v4, v0, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@76
    move-result v3

    #@77
    .line 3751
    .restart local v3    # "index":I
    const/4 v6, -0x1

    #@78
    if-eq v3, v6, :cond_4

    #@7a
    .line 3755
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@7c
    mul-int/lit8 v8, v3, 0xa

    #@7e
    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    #@81
    move-result v8

    #@82
    invoke-virtual {v6, v1, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@85
    goto :goto_1

    #@86
    .line 3748
    .end local v0    # "defaultIndex":I
    .end local v3    # "index":I
    :cond_6
    const/4 v0, -0x1

    #@87
    .restart local v0    # "defaultIndex":I
    goto :goto_2

    #@88
    .end local v0    # "defaultIndex":I
    .end local v1    # "device":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_7
    monitor-exit v7

    #@89
    .line 3712
    return-void
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 8
    .param p1, "srcStream"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3883
    const-class v6, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v6

    #@3
    .line 3884
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    #@6
    move-result v4

    #@7
    .line 3887
    .local v4, "srcStreamType":I
    const/high16 v5, 0x40000000    # 2.0f

    #@9
    invoke-virtual {p1, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@c
    move-result v2

    #@d
    .line 3888
    .local v2, "index":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@f
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@11
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    #@14
    move-result v2

    #@15
    .line 3889
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@18
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    #@1b
    move-result v5

    #@1c
    if-ge v1, v5, :cond_0

    #@1e
    .line 3890
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@20
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@22
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@25
    move-result v7

    #@26
    invoke-virtual {v5, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    #@29
    .line 3889
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 3893
    :cond_0
    iget-object v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@2e
    .line 3894
    .local v3, "srcMap":Landroid/util/SparseIntArray;
    const/4 v1, 0x0

    #@2f
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    #@32
    move-result v5

    #@33
    if-ge v1, v5, :cond_1

    #@35
    .line 3895
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@38
    move-result v0

    #@39
    .line 3896
    .local v0, "device":I
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@3c
    move-result v2

    #@3d
    .line 3897
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@3f
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@41
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    #@44
    move-result v2

    #@45
    .line 3899
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 3894
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_1

    #@4b
    .end local v0    # "device":I
    :cond_1
    monitor-exit v6

    #@4c
    .line 3882
    return-void

    #@4d
    .line 3883
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "srcMap":Landroid/util/SparseIntArray;
    .end local v4    # "srcStreamType":I
    :catchall_0
    move-exception v5

    #@4e
    monitor-exit v6

    #@4f
    throw v5
.end method

.method public setAllIndexesToMax()V
    .locals 5

    #@0
    .prologue
    .line 3905
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v2

    #@3
    .line 3906
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@6
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 3907
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@e
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@10
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@13
    move-result v3

    #@14
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@16
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 3906
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    :cond_0
    monitor-exit v2

    #@1d
    .line 3904
    return-void

    #@1e
    .line 3905
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public setIndex(IILjava/lang/String;)Z
    .locals 10
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3810
    const/4 v0, 0x0

    #@1
    .line 3812
    .local v0, "changed":Z
    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    monitor-enter v7

    #@4
    .line 3813
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@7
    move-result v3

    #@8
    .line 3814
    .local v3, "oldIndex":I
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    #@b
    move-result p1

    #@c
    .line 3815
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@e
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    #@11
    move-result-object v8

    #@12
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@13
    .line 3816
    :try_start_1
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@15
    const/4 v9, 0x7

    #@16
    if-ne v6, v9, :cond_0

    #@18
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@1a
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_0

    #@24
    .line 3817
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    :cond_0
    :try_start_2
    monitor-exit v8

    #@27
    .line 3820
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@29
    invoke-virtual {v6, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    #@2c
    .line 3822
    if-eq v3, p1, :cond_2

    #@2e
    const/4 v0, 0x1

    #@2f
    .line 3823
    :goto_0
    if-eqz v0, :cond_4

    #@31
    .line 3827
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@33
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@35
    invoke-static {v6, v8}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    #@38
    move-result v6

    #@39
    if-ne p2, v6, :cond_3

    #@3b
    const/4 v1, 0x1

    #@3c
    .line 3828
    .local v1, "currentDevice":Z
    :goto_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@3f
    move-result v2

    #@40
    .line 3829
    .local v2, "numStreamTypes":I
    add-int/lit8 v5, v2, -0x1

    #@42
    .local v5, "streamType":I
    :goto_2
    if-ltz v5, :cond_4

    #@44
    .line 3830
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@46
    if-eq v5, v6, :cond_1

    #@48
    .line 3831
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@4a
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)[I

    #@4d
    move-result-object v6

    #@4e
    aget v6, v6, v5

    #@50
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@52
    if-ne v6, v8, :cond_1

    #@54
    .line 3832
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@56
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@58
    invoke-static {v6, p1, v8, v5}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    #@5b
    move-result v4

    #@5c
    .line 3833
    .local v4, "scaledIndex":I
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@5e
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@61
    move-result-object v6

    #@62
    aget-object v6, v6, v5

    #@64
    invoke-virtual {v6, v4, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@67
    .line 3834
    if-eqz v1, :cond_1

    #@69
    .line 3835
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@6b
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@6e
    move-result-object v6

    #@6f
    aget-object v6, v6, v5

    #@71
    .line 3836
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@73
    invoke-static {v8, v5}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    #@76
    move-result v8

    #@77
    .line 3835
    invoke-virtual {v6, v4, v8, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@7a
    .line 3829
    .end local v4    # "scaledIndex":I
    :cond_1
    add-int/lit8 v5, v5, -0x1

    #@7c
    goto :goto_2

    #@7d
    .line 3815
    .end local v1    # "currentDevice":Z
    .end local v2    # "numStreamTypes":I
    .end local v5    # "streamType":I
    :catchall_0
    move-exception v6

    #@7e
    monitor-exit v8

    #@7f
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@80
    .line 3812
    .end local v3    # "oldIndex":I
    :catchall_1
    move-exception v6

    #@81
    monitor-exit v7

    #@82
    throw v6

    #@83
    .line 3822
    .restart local v3    # "oldIndex":I
    :cond_2
    const/4 v0, 0x0

    #@84
    goto :goto_0

    #@85
    .line 3827
    :cond_3
    const/4 v1, 0x0

    #@86
    .restart local v1    # "currentDevice":Z
    goto :goto_1

    #@87
    .end local v1    # "currentDevice":Z
    :cond_4
    monitor-exit v7

    #@88
    .line 3842
    if-eqz v0, :cond_7

    #@8a
    .line 3843
    add-int/lit8 v6, v3, 0x5

    #@8c
    div-int/lit8 v3, v6, 0xa

    #@8e
    .line 3844
    add-int/lit8 v6, p1, 0x5

    #@90
    div-int/lit8 p1, v6, 0xa

    #@92
    .line 3846
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@94
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)[I

    #@97
    move-result-object v6

    #@98
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@9a
    aget v6, v6, v7

    #@9c
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@9e
    if-ne v6, v7, :cond_6

    #@a0
    .line 3847
    if-nez p3, :cond_5

    #@a2
    .line 3848
    const-string/jumbo v6, "AudioService"

    #@a5
    const-string/jumbo v7, "No caller for volume_changed event"

    #@a8
    new-instance v8, Ljava/lang/Throwable;

    #@aa
    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    #@ad
    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b0
    .line 3850
    :cond_5
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@b2
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@b4
    div-int/lit8 v7, v7, 0xa

    #@b6
    invoke-static {v6, v3, p1, v7, p3}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    #@b9
    .line 3854
    :cond_6
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@bb
    const-string/jumbo v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    #@be
    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@c1
    .line 3855
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@c3
    const-string/jumbo v7, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    #@c6
    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@c9
    .line 3856
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@cb
    const-string/jumbo v7, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    #@ce
    .line 3857
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@d0
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)[I

    #@d3
    move-result-object v8

    #@d4
    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@d6
    aget v8, v8, v9

    #@d8
    .line 3856
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@db
    .line 3858
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@dd
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@df
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    #@e2
    .line 3860
    :cond_7
    return v0
.end method
