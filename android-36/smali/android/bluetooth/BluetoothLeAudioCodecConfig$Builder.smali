.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitsPerSample:I

.field private blacklist mChannelCount:I

.field private blacklist mCodecPriority:I

.field private blacklist mCodecType:I

.field private blacklist mFrameDuration:I

.field private blacklist mMaxOctetsPerFrame:I

.field private blacklist mMinOctetsPerFrame:I

.field private blacklist mOctetsPerFrame:I

.field private blacklist mSampleRate:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const v0, 0xf4240

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    .line 500
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    .line 501
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    .line 502
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    .line 503
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    .line 504
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    .line 505
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    .line 506
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    .line 508
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeAudioCodecConfig;)V
    .registers 3
    .param p1, "config"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const v0, 0xf4240

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    .line 500
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    .line 501
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    .line 502
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    .line 503
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    .line 504
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    .line 505
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    .line 506
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    .line 511
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    .line 512
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecPriority()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    .line 513
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    .line 514
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    .line 515
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    .line 516
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    .line 517
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    .line 518
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMinOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    .line 519
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMaxOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    .line 520
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .registers 12

    .line 627
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    iget v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    iget v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    iget v5, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    iget v6, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    iget v7, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    iget v8, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    iget v9, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;-><init>(IIIIIIIIILandroid/bluetooth/BluetoothLeAudioCodecConfig-IA;)V

    return-object v0
.end method

.method public whitelist setBitsPerSample(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2
    .param p1, "bitsPerSample"    # I

    .line 562
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    .line 563
    return-object p0
.end method

.method public whitelist setChannelCount(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2
    .param p1, "channelCount"    # I

    .line 573
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    .line 574
    return-object p0
.end method

.method public whitelist setCodecPriority(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2
    .param p1, "codecPriority"    # I

    .line 540
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    .line 541
    return-object p0
.end method

.method public whitelist setCodecType(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2
    .param p1, "codecType"    # I

    .line 529
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    .line 530
    return-object p0
.end method

.method public whitelist setFrameDuration(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2
    .param p1, "frameDuration"    # I

    .line 584
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    .line 585
    return-object p0
.end method

.method public whitelist setMaxOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2
    .param p1, "maxOctetsPerFrame"    # I

    .line 617
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    .line 618
    return-object p0
.end method

.method public whitelist setMinOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2
    .param p1, "minOctetsPerFrame"    # I

    .line 606
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    .line 607
    return-object p0
.end method

.method public whitelist setOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2
    .param p1, "octetsPerFrame"    # I

    .line 595
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    .line 596
    return-object p0
.end method

.method public whitelist setSampleRate(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2
    .param p1, "sampleRate"    # I

    .line 551
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    .line 552
    return-object p0
.end method
