.class public Landroid/media/AudioTrack$Builder;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAttributes:Landroid/media/AudioAttributes;

.field private greylist-max-o mBufferSizeInBytes:I

.field private blacklist mCallRedirectionMode:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEncapsulationMode:I

.field private greylist-max-o mFormat:Landroid/media/AudioFormat;

.field private greylist-max-o mMode:I

.field private greylist-max-o mOffload:Z

.field private greylist-max-o mPerformanceMode:I

.field private greylist-max-o mSessionId:I

.field private blacklist mTunerConfiguration:Landroid/media/AudioTrack$TunerConfiguration;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack$Builder;->mEncapsulationMode:I

    .line 1099
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    .line 1100
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    .line 1101
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    .line 1102
    iput-boolean v0, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    .line 1104
    iput v0, p0, Landroid/media/AudioTrack$Builder;->mCallRedirectionMode:I

    .line 1110
    return-void
.end method

.method private blacklist buildCallInjectionTrack()Landroid/media/AudioTrack;
    .registers 7

    .line 1347
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1350
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1351
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1352
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1348
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 1353
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v0

    .line 1354
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v0

    .line 1355
    .local v0, "audioMixingRule":Landroid/media/audiopolicy/AudioMixingRule;
    new-instance v1, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v1, v0}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    iget-object v3, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1356
    invoke-virtual {v1, v3}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v1

    .line 1357
    invoke-virtual {v1, v2}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v1

    .line 1358
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v1

    .line 1359
    .local v1, "audioMix":Landroid/media/audiopolicy/AudioMix;
    new-instance v2, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v3, p0, Landroid/media/AudioTrack$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    .line 1360
    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v2

    .line 1362
    .local v2, "audioPolicy":Landroid/media/audiopolicy/AudioPolicy;
    invoke-static {v2}, Landroid/media/AudioManager;->registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v3

    if-nez v3, :cond_5f

    .line 1365
    invoke-virtual {v2, v1}, Landroid/media/audiopolicy/AudioPolicy;->createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;

    move-result-object v3

    .line 1366
    .local v3, "track":Landroid/media/AudioTrack;
    if-eqz v3, :cond_57

    .line 1369
    invoke-static {v3, v2}, Landroid/media/AudioTrack;->-$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioTrack;Landroid/media/audiopolicy/AudioPolicy;)V

    .line 1370
    return-object v3

    .line 1367
    :cond_57
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Cannot create injection AudioTrack"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1363
    .end local v3    # "track":Landroid/media/AudioTrack;
    :cond_5f
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Error: could not register audio policy"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioTrack;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 1383
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1384
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1385
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1387
    :cond_14
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    packed-switch v0, :pswitch_data_118

    goto :goto_60

    .line 1389
    :pswitch_1a
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1390
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x100

    and-int/lit16 v2, v2, -0x201

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1394
    goto :goto_60

    .line 1396
    :pswitch_36
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    iget v4, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    invoke-static {v0, v2, v3, v4}, Landroid/media/AudioTrack;->-$$Nest$smshouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1397
    goto :goto_60

    .line 1401
    :cond_45
    :pswitch_45
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1402
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    and-int/lit16 v2, v2, -0x101

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1405
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1409
    :goto_60
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    if-nez v0, :cond_79

    .line 1410
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1411
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1413
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1414
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1417
    :cond_79
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mCallRedirectionMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_83

    .line 1418
    invoke-direct {p0}, Landroid/media/AudioTrack$Builder;->buildCallInjectionTrack()Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0

    .line 1419
    :cond_83
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mCallRedirectionMode:I

    if-ne v0, v1, :cond_98

    .line 1420
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 1421
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1422
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1425
    :cond_98
    iget-boolean v0, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    if-eqz v0, :cond_bb

    .line 1426
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    if-eq v0, v1, :cond_b3

    .line 1430
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    if-eqz v0, :cond_ab

    goto :goto_bb

    .line 1432
    :cond_ab
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create AudioTrack, offload format / attributes not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_b3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Offload and low latency modes are incompatible"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1442
    :cond_bb
    :goto_bb
    iget v0, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    if-ne v0, v1, :cond_e6

    iget v0, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    if-nez v0, :cond_e6

    .line 1443
    const/4 v1, 0x1

    .line 1444
    .local v1, "bytesPerSample":I
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1446
    :try_start_d0
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v0
    :try_end_da
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d0 .. :try_end_da} :catch_dc

    move v1, v0

    .line 1449
    goto :goto_dd

    .line 1447
    :catch_dc
    move-exception v0

    .line 1451
    :cond_dd
    :goto_dd
    iget-object v0, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    .line 1455
    .end local v1    # "bytesPerSample":I
    :cond_e6
    :try_start_e6
    new-instance v2, Landroid/media/AudioTrack;

    iget-object v3, p0, Landroid/media/AudioTrack$Builder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v5, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v6, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    iget v7, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    iget v8, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    iget-boolean v9, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    iget v10, p0, Landroid/media/AudioTrack$Builder;->mEncapsulationMode:I

    iget-object v11, p0, Landroid/media/AudioTrack$Builder;->mTunerConfiguration:Landroid/media/AudioTrack$TunerConfiguration;

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/media/AudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZILandroid/media/AudioTrack$TunerConfiguration;Landroid/media/AudioTrack-IA;)V

    .line 1458
    .local v2, "track":Landroid/media/AudioTrack;
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_105

    .line 1462
    return-object v2

    .line 1460
    :cond_105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot create AudioTrack"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioTrack$Builder;
    throw v0
    :try_end_10d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_10d} :catch_10d

    .line 1463
    .end local v2    # "track":Landroid/media/AudioTrack;
    .restart local p0    # "this":Landroid/media/AudioTrack$Builder;
    :catch_10d
    move-exception v0

    .line 1464
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_36
        :pswitch_1a
        :pswitch_45
    .end packed-switch
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;
    .registers 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1134
    if-eqz p1, :cond_5

    .line 1138
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    .line 1139
    return-object p0

    .line 1135
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;
    .registers 4
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1152
    if-eqz p1, :cond_5

    .line 1156
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 1157
    return-object p0

    .line 1153
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;
    .registers 5
    .param p1, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1176
    if-lez p1, :cond_5

    .line 1179
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    .line 1180
    return-object p0

    .line 1177
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

.method public blacklist setCallRedirectionMode(I)Landroid/media/AudioTrack$Builder;
    .registers 5
    .param p1, "callRedirectionMode"    # I

    .line 1333
    packed-switch p1, :pswitch_data_20

    .line 1340
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

    .line 1337
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mCallRedirectionMode:I

    .line 1338
    nop

    .line 1343
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setContext(Landroid/content/Context;)Landroid/media/AudioTrack$Builder;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/media/AudioTrack$Builder;->mContext:Landroid/content/Context;

    .line 1122
    return-object p0
.end method

.method public whitelist setEncapsulationMode(I)Landroid/media/AudioTrack$Builder;
    .registers 5
    .param p1, "encapsulationMode"    # I

    .line 1197
    packed-switch p1, :pswitch_data_20

    .line 1204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encapsulation mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1201
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mEncapsulationMode:I

    .line 1202
    nop

    .line 1207
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;
    .registers 2
    .param p1, "offload"    # Z

    .line 1290
    iput-boolean p1, p0, Landroid/media/AudioTrack$Builder;->mOffload:Z

    .line 1291
    return-object p0
.end method

.method public whitelist setPerformanceMode(I)Landroid/media/AudioTrack$Builder;
    .registers 5
    .param p1, "performanceMode"    # I

    .line 1265
    packed-switch p1, :pswitch_data_20

    .line 1272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid performance mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    .line 1270
    nop

    .line 1275
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setSessionId(I)Landroid/media/AudioTrack$Builder;
    .registers 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1245
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    goto :goto_1f

    .line 1246
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_1f
    :goto_1f
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    .line 1249
    return-object p0
.end method

.method public whitelist setTransferMode(I)Landroid/media/AudioTrack$Builder;
    .registers 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1219
    packed-switch p1, :pswitch_data_20

    .line 1225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transfer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1222
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    .line 1223
    nop

    .line 1227
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setTunerConfiguration(Landroid/media/AudioTrack$TunerConfiguration;)Landroid/media/AudioTrack$Builder;
    .registers 4
    .param p1, "tunerConfiguration"    # Landroid/media/AudioTrack$TunerConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1309
    if-eqz p1, :cond_5

    .line 1312
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mTunerConfiguration:Landroid/media/AudioTrack$TunerConfiguration;

    .line 1313
    return-object p0

    .line 1310
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tunerConfiguration is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
