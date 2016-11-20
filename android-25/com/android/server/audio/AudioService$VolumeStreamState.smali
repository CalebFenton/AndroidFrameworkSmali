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
    .line 3852
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3848
    new-instance v0, Landroid/util/SparseIntArray;

    #@7
    const/16 v1, 0x8

    #@9
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    #@c
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@e
    .line 3854
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    #@10
    .line 3856
    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@12
    .line 3857
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
    .line 3858
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
    .line 3859
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
    .line 3861
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    #@34
    .line 3862
    new-instance v0, Landroid/content/Intent;

    #@36
    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    #@39
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@3c
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@3e
    .line 3863
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@40
    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@43
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@45
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@48
    .line 3864
    new-instance v0, Landroid/content/Intent;

    #@4a
    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    #@4d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@50
    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    #@52
    .line 3865
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    #@54
    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@57
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5c
    .line 3852
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
    .line 4186
    const-string/jumbo v7, "   Muted: "

    #@5
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    .line 4187
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@a
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    #@d
    .line 4188
    const-string/jumbo v7, "   Min: "

    #@10
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@13
    .line 4189
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@15
    add-int/lit8 v7, v7, 0x5

    #@17
    div-int/lit8 v7, v7, 0xa

    #@19
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    #@1c
    .line 4190
    const-string/jumbo v7, "   Max: "

    #@1f
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    .line 4191
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@24
    add-int/lit8 v7, v7, 0x5

    #@26
    div-int/lit8 v7, v7, 0xa

    #@28
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    #@2b
    .line 4192
    const-string/jumbo v7, "   Current: "

    #@2e
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    .line 4193
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
    .line 4194
    if-lez v3, :cond_0

    #@3c
    .line 4195
    const-string/jumbo v7, ", "

    #@3f
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@42
    .line 4197
    :cond_0
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@44
    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@47
    move-result v0

    #@48
    .line 4198
    .local v0, "device":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    .line 4199
    if-ne v0, v9, :cond_2

    #@51
    const-string/jumbo v1, "default"

    #@54
    .line 4201
    .local v1, "deviceName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@57
    move-result v7

    #@58
    if-nez v7, :cond_1

    #@5a
    .line 4202
    const-string/jumbo v7, " ("

    #@5d
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    .line 4203
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    .line 4204
    const-string/jumbo v7, ")"

    #@66
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@69
    .line 4206
    :cond_1
    const-string/jumbo v7, ": "

    #@6c
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6f
    .line 4207
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
    .line 4208
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    #@7c
    .line 4193
    add-int/lit8 v3, v3, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 4200
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_2
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    goto :goto_1

    #@84
    .line 4210
    .end local v0    # "device":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@87
    .line 4211
    const-string/jumbo v7, "   Devices: "

    #@8a
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    .line 4212
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@8f
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@91
    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->-wrap5(Lcom/android/server/audio/AudioService;I)I

    #@94
    move-result v2

    #@95
    .line 4213
    .local v2, "devices":I
    const/4 v3, 0x0

    #@96
    const/4 v5, 0x0

    #@97
    .local v5, "n":I
    move v6, v5

    #@98
    .line 4216
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
    .line 4217
    and-int v7, v2, v0

    #@9f
    if-eqz v7, :cond_6

    #@a1
    .line 4218
    add-int/lit8 v5, v6, 0x1

    #@a3
    .end local v6    # "n":I
    .restart local v5    # "n":I
    if-lez v6, :cond_4

    #@a5
    .line 4219
    const-string/jumbo v7, ", "

    #@a8
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ab
    .line 4221
    :cond_4
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    #@ae
    move-result-object v7

    #@af
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b2
    .line 4223
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@b4
    move v6, v5

    #@b5
    .end local v5    # "n":I
    .restart local v6    # "n":I
    goto :goto_2

    #@b6
    .line 4185
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

.method private getAbsoluteVolumeIndex(I)I
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 3954
    if-nez p1, :cond_0

    #@2
    .line 3956
    const/4 p1, 0x0

    #@3
    .line 3970
    :goto_0
    return p1

    #@4
    .line 3957
    :cond_0
    const/4 v0, 0x1

    #@5
    if-ne p1, v0, :cond_1

    #@7
    .line 3959
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@9
    int-to-double v0, v0

    #@a
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@c
    mul-double/2addr v0, v2

    #@d
    double-to-int v0, v0

    #@e
    div-int/lit8 p1, v0, 0xa

    #@10
    goto :goto_0

    #@11
    .line 3960
    :cond_1
    const/4 v0, 0x2

    #@12
    if-ne p1, v0, :cond_2

    #@14
    .line 3962
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@16
    int-to-double v0, v0

    #@17
    const-wide v2, 0x3fe6666666666666L    # 0.7

    #@1c
    mul-double/2addr v0, v2

    #@1d
    double-to-int v0, v0

    #@1e
    div-int/lit8 p1, v0, 0xa

    #@20
    goto :goto_0

    #@21
    .line 3963
    :cond_2
    const/4 v0, 0x3

    #@22
    if-ne p1, v0, :cond_3

    #@24
    .line 3965
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@26
    int-to-double v0, v0

    #@27
    const-wide v2, 0x3feb333333333333L    # 0.85

    #@2c
    mul-double/2addr v0, v2

    #@2d
    double-to-int v0, v0

    #@2e
    div-int/lit8 p1, v0, 0xa

    #@30
    goto :goto_0

    #@31
    .line 3968
    :cond_3
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@33
    add-int/lit8 v0, v0, 0x5

    #@35
    div-int/lit8 p1, v0, 0xa

    #@37
    goto :goto_0
.end method

.method private getValidIndex(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 4176
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 4177
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@6
    return v0

    #@7
    .line 4178
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@9
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@11
    if-le p1, v0, :cond_2

    #@13
    .line 4179
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@15
    return v0

    #@16
    .line 4182
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
    .line 4021
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
    .locals 6

    #@0
    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    #@2
    .line 3989
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@4
    monitor-enter v4

    #@5
    .line 3992
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@8
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    #@b
    move-result v3

    #@c
    if-ge v1, v3, :cond_4

    #@e
    .line 3993
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@10
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@13
    move-result v0

    #@14
    .line 3994
    .local v0, "device":I
    if-eq v0, v5, :cond_0

    #@16
    .line 3995
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 3996
    const/4 v2, 0x0

    #@1b
    .line 4005
    .local v2, "index":I
    :goto_1
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@1d
    invoke-static {v3, v2, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    #@20
    .line 3992
    .end local v2    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 3997
    :cond_1
    and-int/lit16 v3, v0, 0x380

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 3998
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@29
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Z

    #@2c
    move-result v3

    #@2d
    .line 3997
    if-eqz v3, :cond_2

    #@2f
    .line 3999
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@32
    move-result v3

    #@33
    add-int/lit8 v3, v3, 0x5

    #@35
    div-int/lit8 v3, v3, 0xa

    #@37
    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    #@3a
    move-result v2

    #@3b
    .restart local v2    # "index":I
    goto :goto_1

    #@3c
    .line 4000
    .end local v2    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@3e
    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@40
    and-int/2addr v3, v0

    #@41
    if-eqz v3, :cond_3

    #@43
    .line 4001
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@45
    add-int/lit8 v3, v3, 0x5

    #@47
    div-int/lit8 v2, v3, 0xa

    #@49
    .restart local v2    # "index":I
    goto :goto_1

    #@4a
    .line 4003
    .end local v2    # "index":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@4c
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@4f
    move-result v3

    #@50
    add-int/lit8 v3, v3, 0x5

    #@52
    div-int/lit8 v2, v3, 0xa

    #@54
    .restart local v2    # "index":I
    goto :goto_1

    #@55
    .line 4010
    .end local v0    # "device":I
    .end local v2    # "index":I
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@57
    if-eqz v3, :cond_5

    #@59
    .line 4011
    const/4 v2, 0x0

    #@5a
    .line 4016
    .restart local v2    # "index":I
    :goto_2
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@5c
    const/high16 v5, 0x40000000    # 2.0f

    #@5e
    .line 4015
    invoke-static {v3, v2, v5}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    monitor-exit v4

    #@62
    .line 3988
    return-void

    #@63
    .line 4013
    .end local v2    # "index":I
    :cond_5
    const/high16 v3, 0x40000000    # 2.0f

    #@65
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@68
    move-result v3

    #@69
    add-int/lit8 v3, v3, 0x5

    #@6b
    div-int/lit8 v2, v3, 0xa
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    .restart local v2    # "index":I
    goto :goto_2

    #@6e
    .line 3989
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    #@6f
    monitor-exit v4

    #@70
    throw v3
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .locals 2
    .param p1, "device"    # I

    #@0
    .prologue
    .line 3976
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 3977
    const/4 v0, 0x0

    #@5
    .line 3985
    .local v0, "index":I
    :goto_0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@7
    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    #@a
    .line 3974
    return-void

    #@b
    .line 3978
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
    if-eqz v1, :cond_1

    #@17
    .line 3979
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@1a
    move-result v1

    #@1b
    add-int/lit8 v1, v1, 0x5

    #@1d
    div-int/lit8 v1, v1, 0xa

    #@1f
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    #@22
    move-result v0

    #@23
    .restart local v0    # "index":I
    goto :goto_0

    #@24
    .line 3980
    .end local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@26
    iget v1, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@28
    and-int/2addr v1, p1

    #@29
    if-eqz v1, :cond_2

    #@2b
    .line 3981
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@2d
    add-int/lit8 v1, v1, 0x5

    #@2f
    div-int/lit8 v0, v1, 0xa

    #@31
    .restart local v0    # "index":I
    goto :goto_0

    #@32
    .line 3983
    .end local v0    # "index":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@35
    move-result v1

    #@36
    add-int/lit8 v1, v1, 0x5

    #@38
    div-int/lit8 v0, v1, 0xa

    #@3a
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public checkFixedVolumeDevices()V
    .locals 6

    #@0
    .prologue
    .line 4159
    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v4

    #@3
    .line 4161
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@5
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)[I

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
    .line 4162
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
    .line 4163
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@1b
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@1e
    move-result v0

    #@1f
    .line 4164
    .local v0, "device":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@21
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@24
    move-result v2

    #@25
    .line 4165
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@27
    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    #@29
    and-int/2addr v3, v0

    #@2a
    if-nez v3, :cond_0

    #@2c
    .line 4166
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
    .line 4167
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@37
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@39
    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@3c
    .line 4169
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    .line 4162
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
    .line 4158
    return-void

    #@44
    .line 4159
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
    .line 4079
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    monitor-enter v2

    #@4
    .line 4080
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@6
    const/4 v3, -0x1

    #@7
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    #@a
    move-result v0

    #@b
    .line 4081
    .local v0, "index":I
    if-ne v0, v4, :cond_0

    #@d
    .line 4083
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
    .line 4085
    return v0

    #@17
    .line 4079
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
    .line 4090
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@2
    return v0
.end method

.method public getMinIndex()I
    .locals 1

    #@0
    .prologue
    .line 4094
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    #@2
    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # I

    #@0
    .prologue
    .line 3890
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    #@2
    .line 3891
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 3892
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 3893
    return-object v0

    #@d
    .line 3895
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
    .line 4155
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@2
    return v0
.end method

.method public mute(Z)V
    .locals 10
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 4128
    const/4 v7, 0x0

    #@1
    .line 4129
    .local v7, "changed":Z
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    monitor-enter v9

    #@4
    .line 4130
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 4131
    const/4 v7, 0x1

    #@9
    .line 4132
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    #@b
    .line 4137
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@d
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@10
    move-result-object v0

    #@11
    .line 4138
    const/16 v1, 0xa

    #@13
    .line 4139
    const/4 v2, 0x2

    #@14
    .line 4140
    const/4 v3, 0x0

    #@15
    .line 4141
    const/4 v4, 0x0

    #@16
    .line 4142
    const/4 v6, 0x0

    #@17
    move-object v5, p0

    #@18
    .line 4137
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :cond_0
    monitor-exit v9

    #@1c
    .line 4145
    if-eqz v7, :cond_1

    #@1e
    .line 4147
    new-instance v8, Landroid/content/Intent;

    #@20
    const-string/jumbo v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    #@23
    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@26
    .line 4148
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    #@29
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@2b
    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2e
    .line 4149
    const-string/jumbo v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    #@31
    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@34
    .line 4150
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@36
    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->-wrap33(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    #@39
    .line 4127
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    #@3a
    .line 4129
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
    .line 3869
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@2
    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    #@5
    move-result v0

    #@6
    .line 3870
    .local v0, "devices":I
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    #@8
    if-ne v0, v2, :cond_0

    #@a
    .line 3871
    return v0

    #@b
    .line 3873
    :cond_0
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    #@d
    .line 3874
    .local v1, "prevDevices":I
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    #@f
    .line 3875
    if-eqz p1, :cond_1

    #@11
    .line 3877
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@13
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@15
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap19(Lcom/android/server/audio/AudioService;I)V

    #@18
    .line 3880
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@1a
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)[I

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
    .line 3881
    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@28
    invoke-static {v2, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    #@2b
    .line 3883
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@2d
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    #@2f
    .line 3884
    const-string/jumbo v4, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    #@32
    .line 3883
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@35
    move-result-object v3

    #@36
    .line 3885
    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    #@39
    .line 3883
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap33(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    #@40
    .line 3886
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
    .line 3899
    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@5
    monitor-enter v7

    #@6
    .line 3901
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@8
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 3902
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
    .line 3903
    return-void

    #@19
    .line 3908
    :cond_0
    :try_start_1
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@1b
    if-eq v6, v10, :cond_1

    #@1d
    .line 3909
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@1f
    const/4 v8, 0x7

    #@20
    if-ne v6, v8, :cond_3

    #@22
    .line 3910
    :cond_1
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@24
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@26
    aget v6, v6, v8

    #@28
    mul-int/lit8 v3, v6, 0xa

    #@2a
    .line 3911
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
    .line 3912
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
    .line 3913
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    :cond_2
    :try_start_3
    monitor-exit v8

    #@40
    .line 3916
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
    .line 3917
    return-void

    #@49
    .line 3911
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
    .line 3899
    .end local v3    # "index":I
    :catchall_1
    move-exception v6

    #@4d
    monitor-exit v7

    #@4e
    throw v6

    #@4f
    .line 3920
    :cond_3
    const v5, 0x41ffffff    # 31.999998f

    #@52
    .line 3922
    .local v5, "remainingDevices":I
    const/4 v2, 0x0

    #@53
    .local v2, "i":I
    :goto_0
    if-eqz v5, :cond_7

    #@55
    .line 3923
    shl-int v1, v10, v2

    #@57
    .line 3924
    .local v1, "device":I
    and-int v6, v1, v5

    #@59
    if-nez v6, :cond_5

    #@5b
    .line 3922
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 3927
    :cond_5
    not-int v6, v1

    #@5f
    and-int/2addr v5, v6

    #@60
    .line 3930
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    .line 3933
    .local v4, "name":Ljava/lang/String;
    if-ne v1, v9, :cond_6

    #@66
    .line 3934
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    #@68
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@6a
    aget v0, v6, v8

    #@6c
    .line 3936
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
    .line 3935
    invoke-static {v6, v4, v0, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@76
    move-result v3

    #@77
    .line 3937
    .restart local v3    # "index":I
    const/4 v6, -0x1

    #@78
    if-eq v3, v6, :cond_4

    #@7a
    .line 3941
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
    .line 3934
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
    .line 3898
    return-void
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 8
    .param p1, "srcStream"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4098
    const-class v6, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v6

    #@3
    .line 4099
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    #@6
    move-result v4

    #@7
    .line 4102
    .local v4, "srcStreamType":I
    const/high16 v5, 0x40000000    # 2.0f

    #@9
    invoke-virtual {p1, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@c
    move-result v2

    #@d
    .line 4103
    .local v2, "index":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@f
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@11
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    #@14
    move-result v2

    #@15
    .line 4104
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
    .line 4105
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
    .line 4104
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 4108
    :cond_0
    iget-object v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@2e
    .line 4109
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
    .line 4110
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@38
    move-result v0

    #@39
    .line 4111
    .local v0, "device":I
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@3c
    move-result v2

    #@3d
    .line 4112
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@3f
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@41
    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    #@44
    move-result v2

    #@45
    .line 4114
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@48
    .line 4109
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_1

    #@4b
    .end local v0    # "device":I
    :cond_1
    monitor-exit v6

    #@4c
    .line 4097
    return-void

    #@4d
    .line 4098
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
    .line 4120
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@2
    monitor-enter v2

    #@3
    .line 4121
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
    .line 4122
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
    .line 4121
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    :cond_0
    monitor-exit v2

    #@1d
    .line 4119
    return-void

    #@1e
    .line 4120
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v2

    #@20
    throw v1
.end method

.method public setIndex(IILjava/lang/String;)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "device"    # I
    .param p3, "caller"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4025
    const/4 v0, 0x0

    #@2
    .line 4027
    .local v0, "changed":Z
    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@4
    monitor-enter v7

    #@5
    .line 4028
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@8
    move-result v3

    #@9
    .line 4029
    .local v3, "oldIndex":I
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    #@c
    move-result p1

    #@d
    .line 4030
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@f
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    #@12
    move-result-object v8

    #@13
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@14
    .line 4031
    :try_start_1
    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@16
    const/4 v10, 0x7

    #@17
    if-ne v9, v10, :cond_0

    #@19
    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@1b
    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-get13(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    #@1e
    move-result-object v9

    #@1f
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    #@22
    move-result v9

    #@23
    if-eqz v9, :cond_0

    #@25
    .line 4032
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    :cond_0
    :try_start_2
    monitor-exit v8

    #@28
    .line 4035
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    #@2a
    invoke-virtual {v8, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    #@2d
    .line 4037
    if-eq v3, p1, :cond_2

    #@2f
    const/4 v0, 0x1

    #@30
    .line 4038
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_4

    #@32
    .line 4042
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@34
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@36
    invoke-static {v6, v8}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    #@39
    move-result v6

    #@3a
    if-ne p2, v6, :cond_3

    #@3c
    const/4 v1, 0x1

    #@3d
    .line 4043
    .local v1, "currentDevice":Z
    :goto_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@40
    move-result v2

    #@41
    .line 4044
    .local v2, "numStreamTypes":I
    add-int/lit8 v5, v2, -0x1

    #@43
    .local v5, "streamType":I
    :goto_2
    if-ltz v5, :cond_4

    #@45
    .line 4045
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@47
    if-eq v5, v6, :cond_1

    #@49
    .line 4046
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@4b
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)[I

    #@4e
    move-result-object v6

    #@4f
    aget v6, v6, v5

    #@51
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@53
    if-ne v6, v8, :cond_1

    #@55
    .line 4047
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@57
    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@59
    invoke-static {v6, p1, v8, v5}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    #@5c
    move-result v4

    #@5d
    .line 4048
    .local v4, "scaledIndex":I
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@5f
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@62
    move-result-object v6

    #@63
    aget-object v6, v6, v5

    #@65
    invoke-virtual {v6, v4, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@68
    .line 4049
    if-eqz v1, :cond_1

    #@6a
    .line 4050
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@6c
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@6f
    move-result-object v6

    #@70
    aget-object v6, v6, v5

    #@72
    .line 4051
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@74
    invoke-static {v8, v5}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    #@77
    move-result v8

    #@78
    .line 4050
    invoke-virtual {v6, v4, v8, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    #@7b
    .line 4044
    .end local v4    # "scaledIndex":I
    :cond_1
    add-int/lit8 v5, v5, -0x1

    #@7d
    goto :goto_2

    #@7e
    .line 4030
    .end local v1    # "currentDevice":Z
    .end local v2    # "numStreamTypes":I
    .end local v5    # "streamType":I
    .local v0, "changed":Z
    :catchall_0
    move-exception v6

    #@7f
    monitor-exit v8

    #@80
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@81
    .line 4027
    .end local v0    # "changed":Z
    .end local v3    # "oldIndex":I
    :catchall_1
    move-exception v6

    #@82
    monitor-exit v7

    #@83
    throw v6

    #@84
    .restart local v0    # "changed":Z
    .restart local v3    # "oldIndex":I
    :cond_2
    move v0, v6

    #@85
    .line 4037
    goto :goto_0

    #@86
    .line 4042
    .local v0, "changed":Z
    :cond_3
    const/4 v1, 0x0

    #@87
    .restart local v1    # "currentDevice":Z
    goto :goto_1

    #@88
    .end local v1    # "currentDevice":Z
    :cond_4
    monitor-exit v7

    #@89
    .line 4057
    if-eqz v0, :cond_7

    #@8b
    .line 4058
    add-int/lit8 v6, v3, 0x5

    #@8d
    div-int/lit8 v3, v6, 0xa

    #@8f
    .line 4059
    add-int/lit8 v6, p1, 0x5

    #@91
    div-int/lit8 p1, v6, 0xa

    #@93
    .line 4061
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@95
    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)[I

    #@98
    move-result-object v6

    #@99
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@9b
    aget v6, v6, v7

    #@9d
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@9f
    if-ne v6, v7, :cond_6

    #@a1
    .line 4062
    if-nez p3, :cond_5

    #@a3
    .line 4063
    const-string/jumbo v6, "AudioService"

    #@a6
    const-string/jumbo v7, "No caller for volume_changed event"

    #@a9
    new-instance v8, Ljava/lang/Throwable;

    #@ab
    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    #@ae
    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b1
    .line 4065
    :cond_5
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@b3
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    #@b5
    div-int/lit8 v7, v7, 0xa

    #@b7
    invoke-static {v6, v3, p1, v7, p3}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    #@ba
    .line 4069
    :cond_6
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@bc
    const-string/jumbo v7, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    #@bf
    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@c2
    .line 4070
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@c4
    const-string/jumbo v7, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    #@c7
    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@ca
    .line 4071
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@cc
    const-string/jumbo v7, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    #@cf
    .line 4072
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@d1
    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)[I

    #@d4
    move-result-object v8

    #@d5
    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    #@d7
    aget v8, v8, v9

    #@d9
    .line 4071
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@dc
    .line 4073
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    #@de
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    #@e0
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->-wrap33(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    #@e3
    .line 4075
    :cond_7
    return v0
.end method
