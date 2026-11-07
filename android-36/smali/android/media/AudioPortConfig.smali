.class public Landroid/media/AudioPortConfig;
.super Ljava/lang/Object;
.source "AudioPortConfig.java"


# static fields
.field static final greylist-max-o CHANNEL_MASK:I = 0x2

.field static final greylist-max-o FORMAT:I = 0x4

.field static final greylist-max-o GAIN:I = 0x8

.field static final greylist-max-o SAMPLE_RATE:I = 0x1


# instance fields
.field private final greylist mChannelMask:I

.field greylist-max-r mConfigMask:I

.field private final greylist mFormat:I

.field private final greylist mGain:Landroid/media/AudioGainConfig;

.field final greylist mPort:Landroid/media/AudioPort;

.field private final greylist mSamplingRate:I


# direct methods
.method constructor greylist <init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V
    .registers 7
    .param p1, "port"    # Landroid/media/AudioPort;
    .param p2, "samplingRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "format"    # I
    .param p5, "gain"    # Landroid/media/AudioGainConfig;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    .line 61
    iput p2, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    .line 62
    iput p3, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    .line 63
    iput p4, p0, Landroid/media/AudioPortConfig;->mFormat:I

    .line 64
    iput-object p5, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioPortConfig;->mConfigMask:I

    .line 66
    return-void
.end method


# virtual methods
.method public greylist-max-o channelMask()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    return v0
.end method

.method public greylist-max-o format()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/media/AudioPortConfig;->mFormat:I

    return v0
.end method

.method public greylist-max-o gain()Landroid/media/AudioGainConfig;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    return-object v0
.end method

.method public greylist port()Landroid/media/AudioPort;
    .registers 2

    .line 73
    iget-object v0, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    return-object v0
.end method

.method public greylist-max-o samplingRate()I
    .registers 2

    .line 80
    iget v0, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mPort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSamplingRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannelMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPortConfig;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
