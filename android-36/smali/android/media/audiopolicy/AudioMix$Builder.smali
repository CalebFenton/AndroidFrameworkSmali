.class public Landroid/media/audiopolicy/AudioMix$Builder;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCallbackFlags:I

.field private greylist-max-o mDeviceAddress:Ljava/lang/String;

.field private greylist-max-o mDeviceSystemType:I

.field private greylist-max-o mFormat:Landroid/media/AudioFormat;

.field private greylist-max-o mRouteFlags:I

.field private greylist-max-o mRule:Landroid/media/audiopolicy/AudioMixingRule;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mVirtualDeviceId:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 378
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 379
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 380
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    .line 381
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mToken:Landroid/os/IBinder;

    .line 382
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mVirtualDeviceId:I

    .line 384
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 385
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/audiopolicy/AudioMixingRule;)V
    .registers 4
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 378
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 379
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 380
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    .line 381
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mToken:Landroid/os/IBinder;

    .line 382
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mVirtualDeviceId:I

    .line 384
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 385
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 400
    if-eqz p1, :cond_1a

    .line 403
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 404
    return-void

    .line 401
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getLoopbackDeviceSystemTypeForAudioMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)I
    .registers 5
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;

    .line 612
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mixing rule type - 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 620
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v2

    .line 619
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :pswitch_2a
    const v0, -0x7fffff00

    return v0

    .line 614
    :pswitch_2e
    const v0, 0x8000

    return v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public whitelist build()Landroid/media/audiopolicy/AudioMix;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    if-eqz v0, :cond_107

    .line 540
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    const/4 v1, 0x2

    if-nez v0, :cond_b

    .line 542
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 544
    :cond_b
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    const/4 v2, 0x1

    if-nez v0, :cond_29

    .line 546
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v0

    .line 547
    .local v0, "rate":I
    if-gtz v0, :cond_19

    .line 548
    const v0, 0xac44

    .line 550
    :cond_19
    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    iput-object v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 551
    .end local v0    # "rate":I
    goto :goto_56

    .line 555
    :cond_29
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_56

    .line 557
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    if-ne v0, v2, :cond_56

    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 558
    invoke-virtual {v0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_56

    .line 559
    new-instance v0, Landroid/media/AudioFormat$Builder;

    iget-object v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-direct {v0, v4}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 567
    :cond_56
    :goto_56
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_96

    .line 568
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    if-nez v0, :cond_68

    .line 570
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioMix$Builder;->getLoopbackDeviceSystemTypeForAudioMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    goto :goto_96

    .line 571
    :cond_68
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    invoke-static {v0}, Landroid/media/AudioSystem;->isRemoteSubmixDevice(I)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_96

    .line 573
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not supported for loopback mix."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_96
    :goto_96
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_ce

    .line 579
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    if-eqz v0, :cond_c6

    .line 584
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    iget v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 589
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    if-eq v0, v2, :cond_b6

    goto :goto_ce

    .line 590
    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROUTE_FLAG_RENDER/ROUTE_FLAG_LOOP_BACK_RENDER is not supported for non-playback mix rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input device is not supported with ROUTE_FLAG_RENDER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_c6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have flag ROUTE_FLAG_RENDER without an audio device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_ce
    :goto_ce
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->allowPrivilegedMediaPlaybackCapture()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 597
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioMix;->canBeUsedForPrivilegedMediaCapture(Landroid/media/AudioFormat;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_df

    goto :goto_e5

    .line 599
    :cond_df
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    .end local v0    # "error":Ljava/lang/String;
    :cond_e5
    :goto_e5
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f0

    .line 604
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mToken:Landroid/os/IBinder;

    .line 607
    :cond_f0
    new-instance v1, Landroid/media/audiopolicy/AudioMix;

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    iget v5, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    iget v6, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    iget-object v7, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v8, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mToken:Landroid/os/IBinder;

    iget v9, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mVirtualDeviceId:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/os/IBinder;ILandroid/media/audiopolicy/AudioMix-IA;)V

    return-object v1

    .line 538
    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setCallbackFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 448
    if-eqz p1, :cond_28

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7

    goto :goto_28

    .line 449
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal callback flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_28
    :goto_28
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    .line 453
    return-object p0
.end method

.method public greylist-max-o setDevice(ILjava/lang/String;)Landroid/media/audiopolicy/AudioMix$Builder;
    .registers 3
    .param p1, "deviceType"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 465
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 466
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method public whitelist setDevice(Landroid/media/AudioDeviceInfo;)Landroid/media/audiopolicy/AudioMix$Builder;
    .registers 4
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 520
    if-eqz p1, :cond_21

    .line 523
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 526
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    .line 527
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    .line 528
    return-object p0

    .line 524
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported device type on mix, not a sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioDeviceInfo argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;
    .registers 4
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 478
    if-eqz p1, :cond_5

    .line 481
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    .line 482
    return-object p0

    .line 479
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)Landroid/media/audiopolicy/AudioMix$Builder;
    .registers 4
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 415
    if-eqz p1, :cond_5

    .line 418
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 419
    return-object p0

    .line 416
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMixingRule argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .registers 6
    .param p1, "routeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 495
    if-eqz p1, :cond_51

    .line 498
    and-int/lit8 v0, p1, 0x3

    const-string v1, "when configuring an AudioMix"

    if-eqz v0, :cond_30

    .line 502
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_f

    .line 506
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    .line 507
    return-object p0

    .line 503
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown route flags 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 504
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid route flags 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 500
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal empty route flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setToken(Landroid/os/IBinder;)Landroid/media/audiopolicy/AudioMix$Builder;
    .registers 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 427
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mToken:Landroid/os/IBinder;

    .line 428
    return-object p0
.end method

.method blacklist setVirtualDeviceId(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .registers 2
    .param p1, "virtualDeviceId"    # I

    .line 436
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mVirtualDeviceId:I

    .line 437
    return-object p0
.end method
