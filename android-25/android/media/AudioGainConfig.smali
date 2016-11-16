.class public Landroid/media/AudioGainConfig;
.super Ljava/lang/Object;
.source "AudioGainConfig.java"


# instance fields
.field private final mChannelMask:I

.field mGain:Landroid/media/AudioGain;

.field private final mIndex:I

.field private final mMode:I

.field private final mRampDurationMs:I

.field private final mValues:[I


# direct methods
.method constructor <init>(ILandroid/media/AudioGain;II[II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "gain"    # Landroid/media/AudioGain;
    .param p3, "mode"    # I
    .param p4, "channelMask"    # I
    .param p5, "values"    # [I
    .param p6, "rampDurationMs"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput p1, p0, Landroid/media/AudioGainConfig;->mIndex:I

    #@5
    .line 38
    iput-object p2, p0, Landroid/media/AudioGainConfig;->mGain:Landroid/media/AudioGain;

    #@7
    .line 39
    iput p3, p0, Landroid/media/AudioGainConfig;->mMode:I

    #@9
    .line 40
    iput p4, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    #@b
    .line 41
    iput-object p5, p0, Landroid/media/AudioGainConfig;->mValues:[I

    #@d
    .line 42
    iput p6, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    #@f
    .line 36
    return-void
.end method


# virtual methods
.method public channelMask()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget v0, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    #@2
    return v0
.end method

.method index()I
    .locals 1

    #@0
    .prologue
    .line 50
    iget v0, p0, Landroid/media/AudioGainConfig;->mIndex:I

    #@2
    return v0
.end method

.method public mode()I
    .locals 1

    #@0
    .prologue
    .line 58
    iget v0, p0, Landroid/media/AudioGainConfig;->mMode:I

    #@2
    return v0
.end method

.method public rampDurationMs()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    #@2
    return v0
.end method

.method public values()[I
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Landroid/media/AudioGainConfig;->mValues:[I

    #@2
    return-object v0
.end method
