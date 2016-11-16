.class public Landroid/media/AudioPort;
.super Ljava/lang/Object;
.source "AudioPort.java"


# static fields
.field public static final ROLE_NONE:I = 0x0

.field public static final ROLE_SINK:I = 0x2

.field public static final ROLE_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioPort"

.field public static final TYPE_DEVICE:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SESSION:I = 0x3

.field public static final TYPE_SUBMIX:I = 0x2


# instance fields
.field private mActiveConfig:Landroid/media/AudioPortConfig;

.field private final mChannelIndexMasks:[I

.field private final mChannelMasks:[I

.field private final mFormats:[I

.field private final mGains:[Landroid/media/AudioGain;

.field mHandle:Landroid/media/AudioHandle;

.field private final mName:Ljava/lang/String;

.field protected final mRole:I

.field private final mSamplingRates:[I


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V
    .locals 0
    .param p1, "handle"    # Landroid/media/AudioHandle;
    .param p2, "role"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "samplingRates"    # [I
    .param p5, "channelMasks"    # [I
    .param p6, "channelIndexMasks"    # [I
    .param p7, "formats"    # [I
    .param p8, "gains"    # [Landroid/media/AudioGain;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    iput-object p1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    #@5
    .line 84
    iput p2, p0, Landroid/media/AudioPort;->mRole:I

    #@7
    .line 85
    iput-object p3, p0, Landroid/media/AudioPort;->mName:Ljava/lang/String;

    #@9
    .line 86
    iput-object p4, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    #@b
    .line 87
    iput-object p5, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    #@d
    .line 88
    iput-object p6, p0, Landroid/media/AudioPort;->mChannelIndexMasks:[I

    #@f
    .line 89
    iput-object p7, p0, Landroid/media/AudioPort;->mFormats:[I

    #@11
    .line 90
    iput-object p8, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    #@13
    .line 81
    return-void
.end method


# virtual methods
.method public activeConfig()Landroid/media/AudioPortConfig;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/media/AudioPort;->mActiveConfig:Landroid/media/AudioPortConfig;

    #@2
    return-object v0
.end method

.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 6
    .param p1, "samplingRate"    # I
    .param p2, "channelMask"    # I
    .param p3, "format"    # I
    .param p4, "gain"    # Landroid/media/AudioGainConfig;

    #@0
    .prologue
    .line 184
    new-instance v0, Landroid/media/AudioPortConfig;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move-object v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    #@a
    return-object v0
.end method

.method public channelIndexMasks()[I
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/AudioPort;->mChannelIndexMasks:[I

    #@2
    return-object v0
.end method

.method public channelMasks()[I
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    #@2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 196
    if-eqz p1, :cond_0

    #@2
    instance-of v1, p1, Landroid/media/AudioPort;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object v0, p1

    #@7
    .line 199
    check-cast v0, Landroid/media/AudioPort;

    #@9
    .line 200
    .local v0, "ap":Landroid/media/AudioPort;
    iget-object v1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    #@b
    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 197
    .end local v0    # "ap":Landroid/media/AudioPort;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public formats()[I
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioPort;->mFormats:[I

    #@2
    return-object v0
.end method

.method gain(I)Landroid/media/AudioGain;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 167
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 168
    :cond_0
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 170
    :cond_1
    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    #@b
    aget-object v0, v0, p1

    #@d
    return-object v0
.end method

.method public gains()[Landroid/media/AudioGain;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    #@2
    return-object v0
.end method

.method handle()Landroid/media/AudioHandle;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioHandle;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public id()I
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    #@2
    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/AudioPort;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public role()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/media/AudioPort;->mRole:I

    #@2
    return v0
.end method

.method public samplingRates()[I
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 210
    iget v1, p0, Landroid/media/AudioPort;->mRole:I

    #@2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 211
    .local v0, "role":Ljava/lang/String;
    iget v1, p0, Landroid/media/AudioPort;->mRole:I

    #@8
    packed-switch v1, :pswitch_data_0

    #@b
    .line 222
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "{mHandle: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 223
    const-string/jumbo v2, ", mRole: "

    #@20
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 224
    const-string/jumbo v2, "}"

    #@2b
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1

    #@34
    .line 213
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@37
    goto :goto_0

    #@38
    .line 216
    :pswitch_1
    const-string/jumbo v0, "SOURCE"

    #@3b
    goto :goto_0

    #@3c
    .line 219
    :pswitch_2
    const-string/jumbo v0, "SINK"

    #@3f
    goto :goto_0

    #@40
    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
