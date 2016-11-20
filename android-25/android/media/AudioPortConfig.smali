.class public Landroid/media/AudioPortConfig;
.super Ljava/lang/Object;
.source "AudioPortConfig.java"


# static fields
.field static final CHANNEL_MASK:I = 0x2

.field static final FORMAT:I = 0x4

.field static final GAIN:I = 0x8

.field static final SAMPLE_RATE:I = 0x1


# instance fields
.field private final mChannelMask:I

.field mConfigMask:I

.field private final mFormat:I

.field private final mGain:Landroid/media/AudioGainConfig;

.field final mPort:Landroid/media/AudioPort;

.field private final mSamplingRate:I


# direct methods
.method constructor <init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V
    .locals 1
    .param p1, "port"    # Landroid/media/AudioPort;
    .param p2, "samplingRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "format"    # I
    .param p5, "gain"    # Landroid/media/AudioGainConfig;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    #@5
    .line 51
    iput p2, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    #@7
    .line 52
    iput p3, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    #@9
    .line 53
    iput p4, p0, Landroid/media/AudioPortConfig;->mFormat:I

    #@b
    .line 54
    iput-object p5, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    #@d
    .line 55
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/media/AudioPortConfig;->mConfigMask:I

    #@10
    .line 49
    return-void
.end method


# virtual methods
.method public channelMask()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    #@2
    return v0
.end method

.method public format()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Landroid/media/AudioPortConfig;->mFormat:I

    #@2
    return v0
.end method

.method public gain()Landroid/media/AudioGainConfig;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    #@2
    return-object v0
.end method

.method public port()Landroid/media/AudioPort;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    #@2
    return-object v0
.end method

.method public samplingRate()I
    .locals 1

    #@0
    .prologue
    .line 69
    iget v0, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{mPort:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 97
    const-string/jumbo v1, ", mSamplingRate:"

    #@15
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 97
    iget v1, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    #@1b
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 98
    const-string/jumbo v1, ", mChannelMask: "

    #@22
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 98
    iget v1, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    #@28
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 99
    const-string/jumbo v1, ", mFormat:"

    #@2f
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 99
    iget v1, p0, Landroid/media/AudioPortConfig;->mFormat:I

    #@35
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 100
    const-string/jumbo v1, ", mGain:"

    #@3c
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 100
    iget-object v1, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    #@42
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 101
    const-string/jumbo v1, "}"

    #@49
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method
