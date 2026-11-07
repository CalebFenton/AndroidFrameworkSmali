.class public Landroid/media/AudioRecord$Builder;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist ERROR_MESSAGE_SOURCE_MISMATCH:Ljava/lang/String; = "Cannot both set audio source and set playback capture config"

.field private static final blacklist PRIVACY_SENSITIVE_DEFAULT:I = -0x1

.field private static final blacklist PRIVACY_SENSITIVE_DISABLED:I = 0x0

.field private static final blacklist PRIVACY_SENSITIVE_ENABLED:I = 0x1


# instance fields
.field private greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field private blacklist mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

.field private greylist-max-o mBufferSizeInBytes:I

.field private blacklist mCallRedirectionMode:I

.field private blacklist mContext:Landroid/content/Context;

.field private greylist-max-o mFormat:Landroid/media/AudioFormat;

.field private blacklist mIsHotwordLookback:Z

.field private blacklist mIsHotwordStream:Z

.field private blacklist mMaxSharedAudioHistoryMs:I

.field private blacklist mPrivacySensitive:I

.field private greylist-max-o mSessionId:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    .line 608
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioRecord$Builder;->mPrivacySensitive:I

    .line 609
    iput v0, p0, Landroid/media/AudioRecord$Builder;->mMaxSharedAudioHistoryMs:I

    .line 610
    iput v0, p0, Landroid/media/AudioRecord$Builder;->mCallRedirectionMode:I

    .line 611
    iput-boolean v0, p0, Landroid/media/AudioRecord$Builder;->mIsHotwordStream:Z

    .line 612
    iput-boolean v0, p0, Landroid/media/AudioRecord$Builder;->mIsHotwordLookback:Z

    .line 622
    return-void
.end method

.method private blacklist buildAudioPlaybackCaptureRecord()Landroid/media/AudioRecord;
    .registers 8

    .line 792
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    iget-object v1, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, v1}, Landroid/media/AudioPlaybackCaptureConfiguration;->createAudioMix(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix;

    move-result-object v0

    .line 793
    .local v0, "audioMix":Landroid/media/audiopolicy/AudioMix;
    iget-object v1, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackCaptureConfiguration;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v1

    .line 794
    .local v1, "projection":Landroid/media/projection/MediaProjection;
    new-instance v2, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setMediaProjection(Landroid/media/projection/MediaProjection;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v2

    .line 796
    invoke-virtual {v2, v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v2

    .line 798
    .local v2, "audioPolicy":Landroid/media/audiopolicy/AudioPolicy;
    invoke-static {v2}, Landroid/media/AudioManager;->registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v3

    .line 799
    .local v3, "error":I
    if-nez v3, :cond_39

    .line 803
    invoke-virtual {v2, v0}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object v4

    .line 804
    .local v4, "record":Landroid/media/AudioRecord;
    if-eqz v4, :cond_31

    .line 807
    invoke-static {v4, v2}, Landroid/media/AudioRecord;->-$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioRecord;Landroid/media/audiopolicy/AudioPolicy;)V

    .line 808
    return-object v4

    .line 805
    :cond_31
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Cannot create AudioRecord"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 800
    .end local v4    # "record":Landroid/media/AudioRecord;
    :cond_39
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Error: could not register audio policy"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist buildCallExtractionRecord()Landroid/media/AudioRecord;
    .registers 7

    .line 841
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 844
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 845
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 846
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 842
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 849
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 850
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 851
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 847
    invoke-virtual {v0, v3, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 852
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v0

    .line 854
    .local v0, "audioMixingRule":Landroid/media/audiopolicy/AudioMixingRule;
    new-instance v1, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v1, v0}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 855
    invoke-virtual {v1, v3}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v1

    .line 856
    invoke-virtual {v1, v2}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v1

    .line 857
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v1

    .line 858
    .local v1, "audioMix":Landroid/media/audiopolicy/AudioMix;
    new-instance v2, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v2

    .line 859
    .local v2, "audioPolicy":Landroid/media/audiopolicy/AudioPolicy;
    invoke-static {v2}, Landroid/media/AudioManager;->registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v3

    if-nez v3, :cond_75

    .line 862
    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object v3

    .line 863
    .local v3, "record":Landroid/media/AudioRecord;
    if-eqz v3, :cond_6d

    .line 866
    invoke-static {v3, v2}, Landroid/media/AudioRecord;->-$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioRecord;Landroid/media/audiopolicy/AudioPolicy;)V

    .line 867
    return-object v3

    .line 864
    :cond_6d
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Cannot create extraction AudioRecord"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 860
    .end local v3    # "record":Landroid/media/AudioRecord;
    :cond_75
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Error: could not register audio policy"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioRecord;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 973
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    if-eqz v0, :cond_9

    .line 974
    invoke-direct {p0}, Landroid/media/AudioRecord$Builder;->buildAudioPlaybackCaptureRecord()Landroid/media/AudioRecord;

    move-result-object v0

    return-object v0

    .line 976
    :cond_9
    const/4 v0, 0x0

    .line 977
    .local v0, "halInputFlags":I
    iget-boolean v1, p0, Landroid/media/AudioRecord$Builder;->mIsHotwordStream:Z

    if-eqz v1, :cond_1e

    .line 978
    iget-boolean v1, p0, Landroid/media/AudioRecord$Builder;->mIsHotwordLookback:Z

    if-nez v1, :cond_16

    .line 983
    const/16 v0, 0x200

    move v8, v0

    goto :goto_27

    .line 979
    :cond_16
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "setRequestHotwordLookbackStream and setRequestHotwordStream used concurrently"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 985
    :cond_1e
    iget-boolean v1, p0, Landroid/media/AudioRecord$Builder;->mIsHotwordLookback:Z

    if-eqz v1, :cond_26

    .line 986
    const/16 v0, 0x600

    move v8, v0

    goto :goto_27

    .line 985
    :cond_26
    move v8, v0

    .line 990
    .end local v0    # "halInputFlags":I
    .local v8, "halInputFlags":I
    :goto_27
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-nez v0, :cond_42

    .line 991
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 992
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 993
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    goto :goto_7c

    .line 996
    :cond_42
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    if-nez v0, :cond_5b

    .line 997
    new-instance v0, Landroid/media/AudioFormat$Builder;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-direct {v0, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    .line 998
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 999
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1001
    :cond_5b
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1002
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v0

    if-nez v0, :cond_7c

    .line 1003
    new-instance v0, Landroid/media/AudioFormat$Builder;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-direct {v0, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    .line 1004
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1008
    :cond_7c
    :goto_7c
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    if-nez v0, :cond_90

    .line 1009
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1010
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1014
    :cond_90
    iget-boolean v0, p0, Landroid/media/AudioRecord$Builder;->mIsHotwordStream:Z

    if-nez v0, :cond_98

    iget-boolean v0, p0, Landroid/media/AudioRecord$Builder;->mIsHotwordLookback:Z

    if-eqz v0, :cond_aa

    .line 1015
    :cond_98
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 1016
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1022
    :cond_aa
    iget v0, p0, Landroid/media/AudioRecord$Builder;->mPrivacySensitive:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_fe

    .line 1023
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    .line 1024
    .local v0, "source":I
    const/16 v3, 0x8

    if-eq v0, v3, :cond_e5

    const/16 v3, 0x7ce

    if-eq v0, v3, :cond_e5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e5

    if-eq v0, v2, :cond_e5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_e5

    const/16 v3, 0x7cd

    if-eq v0, v3, :cond_e5

    .line 1034
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    iget-object v5, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v3, v5}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 1035
    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    iget v5, p0, Landroid/media/AudioRecord$Builder;->mPrivacySensitive:I

    if-ne v5, v4, :cond_da

    move v1, v4

    .line 1036
    :cond_da
    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setPrivacySensitive(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1037
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    goto :goto_fe

    .line 1030
    :cond_e5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot request private capture with source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1040
    .end local v0    # "source":I
    :cond_fe
    :goto_fe
    iget v0, p0, Landroid/media/AudioRecord$Builder;->mCallRedirectionMode:I

    if-ne v0, v2, :cond_107

    .line 1041
    invoke-direct {p0}, Landroid/media/AudioRecord$Builder;->buildCallExtractionRecord()Landroid/media/AudioRecord;

    move-result-object v0

    return-object v0

    .line 1042
    :cond_107
    iget v0, p0, Landroid/media/AudioRecord$Builder;->mCallRedirectionMode:I

    if-ne v0, v4, :cond_11c

    .line 1043
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v1, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 1044
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1052
    :cond_11c
    :try_start_11c
    iget v0, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    if-nez v0, :cond_133

    .line 1053
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1054
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    .line 1056
    :cond_133
    new-instance v1, Landroid/media/AudioRecord;

    iget-object v2, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v3, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v4, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    iget v5, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    iget-object v6, p0, Landroid/media/AudioRecord$Builder;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/media/AudioRecord$Builder;->mMaxSharedAudioHistoryMs:I

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;IILandroid/media/AudioRecord-IA;)V

    .line 1059
    .local v1, "record":Landroid/media/AudioRecord;
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_14c

    .line 1063
    return-object v1

    .line 1061
    :cond_14c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot create AudioRecord"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v8    # "halInputFlags":I
    .end local p0    # "this":Landroid/media/AudioRecord$Builder;
    throw v0
    :try_end_154
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11c .. :try_end_154} :catch_154

    .line 1064
    .end local v1    # "record":Landroid/media/AudioRecord;
    .restart local v8    # "halInputFlags":I
    .restart local p0    # "this":Landroid/media/AudioRecord$Builder;
    :catch_154
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioRecord$Builder;
    .registers 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 669
    if-eqz p1, :cond_14

    .line 672
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 677
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 678
    return-object p0

    .line 673
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid capture preset in AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;
    .registers 4
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 688
    if-eqz p1, :cond_5

    .line 692
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 693
    return-object p0

    .line 689
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;
    .registers 4
    .param p1, "config"    # Landroid/media/AudioPlaybackCaptureConfiguration;

    .line 726
    const-string v0, "Illegal null AudioPlaybackCaptureConfiguration argument"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Cannot both set audio source and set playback capture config"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 731
    iput-object p1, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    .line 732
    return-object p0
.end method

.method public whitelist setAudioSource(I)Landroid/media/AudioRecord$Builder;
    .registers 5
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 631
    iget-object v0, p0, Landroid/media/AudioRecord$Builder;->mAudioPlaybackCaptureConfiguration:Landroid/media/AudioPlaybackCaptureConfiguration;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Cannot both set audio source and set playback capture config"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 634
    if-ltz p1, :cond_24

    .line 635
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-gt p1, v0, :cond_24

    .line 638
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 639
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 641
    return-object p0

    .line 636
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;
    .registers 5
    .param p1, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 709
    if-lez p1, :cond_5

    .line 712
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mBufferSizeInBytes:I

    .line 713
    return-object p0

    .line 710
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCallRedirectionMode(I)Landroid/media/AudioRecord$Builder;
    .registers 5
    .param p1, "callRedirectionMode"    # I

    .line 827
    packed-switch p1, :pswitch_data_20

    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid call redirection mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mCallRedirectionMode:I

    .line 832
    nop

    .line 837
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setContext(Landroid/content/Context;)Landroid/media/AudioRecord$Builder;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 654
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/media/AudioRecord$Builder;->mContext:Landroid/content/Context;

    .line 655
    return-object p0
.end method

.method public whitelist setMaxSharedAudioHistoryMillis(J)Landroid/media/AudioRecord$Builder;
    .registers 5
    .param p1, "maxSharedAudioHistoryMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 885
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-gtz v0, :cond_10

    .line 889
    long-to-int v0, p1

    iput v0, p0, Landroid/media/AudioRecord$Builder;->mMaxSharedAudioHistoryMs:I

    .line 890
    return-object p0

    .line 887
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal maxSharedAudioHistoryMillis argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPrivacySensitive(Z)Landroid/media/AudioRecord$Builder;
    .registers 2
    .param p1, "privacySensitive"    # Z

    .line 760
    nop

    .line 761
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mPrivacySensitive:I

    .line 762
    return-object p0
.end method

.method public whitelist setRequestHotwordLookbackStream(Z)Landroid/media/AudioRecord$Builder;
    .registers 2
    .param p1, "hotwordLookbackContent"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 959
    iput-boolean p1, p0, Landroid/media/AudioRecord$Builder;->mIsHotwordLookback:Z

    .line 960
    return-object p0
.end method

.method public whitelist setRequestHotwordStream(Z)Landroid/media/AudioRecord$Builder;
    .registers 2
    .param p1, "hotwordContent"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 936
    iput-boolean p1, p0, Landroid/media/AudioRecord$Builder;->mIsHotwordStream:Z

    .line 937
    return-object p0
.end method

.method public whitelist setSessionId(I)Landroid/media/AudioRecord$Builder;
    .registers 5
    .param p1, "sessionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 779
    if-ltz p1, :cond_11

    .line 783
    iget v0, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    if-nez v0, :cond_9

    .line 784
    iput p1, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    goto :goto_10

    .line 786
    :cond_9
    const-string v0, "android.media.AudioRecord"

    const-string v1, "setSessionId() called twice or after setSharedAudioEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_10
    return-object p0

    .line 780
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSharedAudioEvent(Landroid/media/MediaSyncEvent;)Landroid/media/AudioRecord$Builder;
    .registers 5
    .param p1, "event"    # Landroid/media/MediaSyncEvent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 907
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_35

    .line 912
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v0

    if-eqz v0, :cond_18

    .line 917
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecord$Builder;->mSessionId:I

    .line 918
    return-object p0

    .line 913
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 914
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 910
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
