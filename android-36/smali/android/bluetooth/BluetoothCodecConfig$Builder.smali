.class public final Landroid/bluetooth/BluetoothCodecConfig$Builder;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitsPerSample:I

.field private blacklist mChannelMode:I

.field private blacklist mCodecPriority:I

.field private blacklist mCodecSpecific1:J

.field private blacklist mCodecSpecific2:J

.field private blacklist mCodecSpecific3:J

.field private blacklist mCodecSpecific4:J

.field private blacklist mCodecType:Landroid/bluetooth/BluetoothCodecType;

.field private blacklist mSampleRate:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    .line 832
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    .line 833
    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    .line 834
    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    .line 835
    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    .line 837
    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    .line 838
    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    .line 839
    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothCodecConfig;
    .registers 15

    .line 959
    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    iget-wide v6, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    iget-wide v8, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    iget-wide v10, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    iget-wide v12, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(Landroid/bluetooth/BluetoothCodecType;IIIIJJJJ)V

    return-object v0
.end method

.method public whitelist setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "bitsPerSample"    # I

    .line 894
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    .line 895
    return-object p0
.end method

.method public whitelist setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "channelMode"    # I

    .line 905
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    .line 906
    return-object p0
.end method

.method public whitelist setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "codecPriority"    # I

    .line 872
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    .line 873
    return-object p0
.end method

.method public whitelist setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3
    .param p1, "codecSpecific1"    # J

    .line 916
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    .line 917
    return-object p0
.end method

.method public whitelist setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3
    .param p1, "codecSpecific2"    # J

    .line 927
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    .line 928
    return-object p0
.end method

.method public whitelist setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3
    .param p1, "codecSpecific3"    # J

    .line 938
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    .line 939
    return-object p0
.end method

.method public whitelist setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3
    .param p1, "codecSpecific4"    # J

    .line 949
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    .line 950
    return-object p0
.end method

.method public whitelist setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3
    .param p1, "codecType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 850
    invoke-static {p1}, Landroid/bluetooth/BluetoothCodecType;->createFromType(I)Landroid/bluetooth/BluetoothCodecType;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    .line 851
    return-object p0
.end method

.method public whitelist setExtendedCodecType(Landroid/bluetooth/BluetoothCodecType;)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "codecType"    # Landroid/bluetooth/BluetoothCodecType;

    .line 861
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    .line 862
    return-object p0
.end method

.method public whitelist setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "sampleRate"    # I

    .line 883
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    .line 884
    return-object p0
.end method
