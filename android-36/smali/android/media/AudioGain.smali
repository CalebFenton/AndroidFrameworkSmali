.class public Landroid/media/AudioGain;
.super Ljava/lang/Object;
.source "AudioGain.java"


# static fields
.field public static final greylist-max-o MODE_CHANNELS:I = 0x2

.field public static final greylist-max-o MODE_JOINT:I = 0x1

.field public static final greylist-max-o MODE_RAMP:I = 0x4


# instance fields
.field private final greylist-max-o mChannelMask:I

.field private final greylist-max-o mDefaultValue:I

.field private final greylist-max-o mIndex:I

.field private final greylist-max-o mMaxValue:I

.field private final greylist-max-o mMinValue:I

.field private final greylist-max-o mMode:I

.field private final greylist-max-o mRampDurationMaxMs:I

.field private final greylist-max-o mRampDurationMinMs:I

.field private final greylist-max-o mStepValue:I


# direct methods
.method constructor greylist-max-r <init>(IIIIIIIII)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "mode"    # I
    .param p3, "channelMask"    # I
    .param p4, "minValue"    # I
    .param p5, "maxValue"    # I
    .param p6, "defaultValue"    # I
    .param p7, "stepValue"    # I
    .param p8, "rampDurationMinMs"    # I
    .param p9, "rampDurationMaxMs"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Landroid/media/AudioGain;->mIndex:I

    .line 80
    iput p2, p0, Landroid/media/AudioGain;->mMode:I

    .line 81
    iput p3, p0, Landroid/media/AudioGain;->mChannelMask:I

    .line 82
    iput p4, p0, Landroid/media/AudioGain;->mMinValue:I

    .line 83
    iput p5, p0, Landroid/media/AudioGain;->mMaxValue:I

    .line 84
    iput p6, p0, Landroid/media/AudioGain;->mDefaultValue:I

    .line 85
    iput p7, p0, Landroid/media/AudioGain;->mStepValue:I

    .line 86
    iput p8, p0, Landroid/media/AudioGain;->mRampDurationMinMs:I

    .line 87
    iput p9, p0, Landroid/media/AudioGain;->mRampDurationMaxMs:I

    .line 88
    return-void
.end method


# virtual methods
.method public greylist-max-o buildConfig(II[II)Landroid/media/AudioGainConfig;
    .registers 12
    .param p1, "mode"    # I
    .param p2, "channelMask"    # I
    .param p3, "values"    # [I
    .param p4, "rampDurationMs"    # I

    .line 161
    new-instance v0, Landroid/media/AudioGainConfig;

    iget v1, p0, Landroid/media/AudioGain;->mIndex:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "mode":I
    .end local p2    # "channelMask":I
    .end local p3    # "values":[I
    .end local p4    # "rampDurationMs":I
    .local v3, "mode":I
    .local v4, "channelMask":I
    .local v5, "values":[I
    .local v6, "rampDurationMs":I
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioGainConfig;-><init>(ILandroid/media/AudioGain;II[II)V

    return-object v0
.end method

.method public greylist-max-o channelMask()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/media/AudioGain;->mChannelMask:I

    return v0
.end method

.method public greylist-max-o defaultValue()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/media/AudioGain;->mDefaultValue:I

    return v0
.end method

.method public greylist-max-o maxValue()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/media/AudioGain;->mMaxValue:I

    return v0
.end method

.method public greylist-max-o minValue()I
    .registers 2

    .line 109
    iget v0, p0, Landroid/media/AudioGain;->mMinValue:I

    return v0
.end method

.method public greylist-max-o mode()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/media/AudioGain;->mMode:I

    return v0
.end method

.method public greylist-max-o rampDurationMaxMs()I
    .registers 2

    .line 146
    iget v0, p0, Landroid/media/AudioGain;->mRampDurationMaxMs:I

    return v0
.end method

.method public greylist-max-o rampDurationMinMs()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/media/AudioGain;->mRampDurationMinMs:I

    return v0
.end method

.method public greylist-max-o stepValue()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/media/AudioGain;->mStepValue:I

    return v0
.end method
