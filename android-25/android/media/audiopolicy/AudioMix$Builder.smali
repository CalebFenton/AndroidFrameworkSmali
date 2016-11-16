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
.field private mCallbackFlags:I

.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceSystemType:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mRouteFlags:I

.field private mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 182
    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@7
    .line 183
    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@9
    .line 184
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@b
    .line 185
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    #@d
    .line 187
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@f
    .line 188
    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    #@11
    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;)V
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 182
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@7
    .line 183
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@9
    .line 184
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@b
    .line 185
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    #@d
    .line 187
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@f
    .line 188
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    #@11
    .line 204
    if-nez p1, :cond_0

    #@13
    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Illegal null AudioMixingRule argument"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 207
    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@1e
    .line 203
    return-void
.end method


# virtual methods
.method public build()Landroid/media/audiopolicy/AudioMix;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const v2, -0x7fffff00

    #@5
    const/4 v7, 0x0

    #@6
    .line 326
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Illegal null AudioMixingRule"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 329
    :cond_0
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@15
    if-nez v0, :cond_1

    #@17
    .line 331
    iput v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@19
    .line 334
    :cond_1
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@1b
    const/4 v1, 0x3

    #@1c
    if-ne v0, v1, :cond_2

    #@1e
    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Unsupported route behavior combination 0x"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 336
    iget v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@2e
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 338
    :cond_2
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@40
    if-nez v0, :cond_4

    #@42
    .line 340
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    #@45
    move-result v8

    #@46
    .line 341
    .local v8, "rate":I
    if-gtz v8, :cond_3

    #@48
    .line 342
    const v8, 0xac44

    #@4b
    .line 344
    :cond_3
    new-instance v0, Landroid/media/AudioFormat$Builder;

    #@4d
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@50
    invoke-virtual {v0, v8}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@5a
    .line 346
    .end local v8    # "rate":I
    :cond_4
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@5c
    if-eqz v0, :cond_6

    #@5e
    .line 347
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@60
    const v1, 0x8000

    #@63
    if-eq v0, v1, :cond_6

    #@65
    .line 348
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@67
    if-eq v0, v2, :cond_6

    #@69
    .line 349
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@6b
    and-int/lit8 v0, v0, 0x1

    #@6d
    if-nez v0, :cond_5

    #@6f
    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@71
    .line 351
    const-string/jumbo v1, "Can\'t have audio device without flag ROUTE_FLAG_RENDER"

    #@74
    .line 350
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@77
    throw v0

    #@78
    .line 353
    :cond_5
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@7a
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_8

    #@80
    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@82
    const-string/jumbo v1, "Unsupported device on non-playback mix"

    #@85
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@88
    throw v0

    #@89
    .line 357
    :cond_6
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@8b
    and-int/lit8 v0, v0, 0x1

    #@8d
    if-ne v0, v3, :cond_7

    #@8f
    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@91
    .line 359
    const-string/jumbo v1, "Can\'t have flag ROUTE_FLAG_RENDER without an audio device"

    #@94
    .line 358
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@97
    throw v0

    #@98
    .line 361
    :cond_7
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@9a
    and-int/lit8 v0, v0, 0x3

    #@9c
    if-ne v0, v4, :cond_8

    #@9e
    .line 362
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@a0
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    #@a3
    move-result v0

    #@a4
    if-nez v0, :cond_9

    #@a6
    .line 363
    const v0, 0x8000

    #@a9
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@ab
    .line 371
    :cond_8
    :goto_0
    new-instance v0, Landroid/media/audiopolicy/AudioMix;

    #@ad
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@af
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@b1
    iget v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@b3
    iget v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    #@b5
    iget v5, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@b7
    .line 372
    iget-object v6, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    #@b9
    .line 371
    invoke-direct/range {v0 .. v7}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/media/audiopolicy/AudioMix;)V

    #@bc
    return-object v0

    #@bd
    .line 364
    :cond_9
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@bf
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    #@c2
    move-result v0

    #@c3
    if-ne v0, v3, :cond_a

    #@c5
    .line 365
    iput v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@c7
    goto :goto_0

    #@c8
    .line 367
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@ca
    const-string/jumbo v1, "Unknown mixing rule type"

    #@cd
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d0
    throw v0
.end method

.method setCallbackFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 234
    if-eqz p1, :cond_0

    #@2
    and-int/lit8 v0, p1, 0x1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal callback flags 0x"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 238
    :cond_0
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    #@2a
    .line 239
    return-object p0
.end method

.method setDevice(ILjava/lang/String;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 0
    .param p1, "deviceType"    # I
    .param p2, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 250
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@2
    .line 251
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    #@4
    .line 252
    return-object p0
.end method

.method public setDevice(Landroid/media/AudioDeviceInfo;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    if-nez p1, :cond_0

    #@2
    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioDeviceInfo argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_1

    #@11
    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Unsupported device type on mix, not a sink"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    #@1d
    move-result v0

    #@1e
    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceSystemType:I

    #@24
    .line 315
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mDeviceAddress:Ljava/lang/String;

    #@2a
    .line 316
    return-object p0
.end method

.method public setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    if-nez p1, :cond_0

    #@2
    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioFormat argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 267
    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@d
    .line 268
    return-object p0
.end method

.method setMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    if-nez p1, :cond_0

    #@2
    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioMixingRule argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 222
    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@d
    .line 223
    return-object p0
.end method

.method public setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .param p1, "routeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 282
    if-nez p1, :cond_0

    #@2
    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal empty route flags"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 285
    :cond_0
    and-int/lit8 v0, p1, 0x3

    #@d
    if-nez v0, :cond_1

    #@f
    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Invalid route flags 0x"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 287
    const-string/jumbo v2, "when configuring an AudioMix"

    #@28
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 289
    :cond_1
    and-int/lit8 v0, p1, -0x4

    #@36
    if-eqz v0, :cond_2

    #@38
    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "Unknown route flags 0x"

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 291
    const-string/jumbo v2, "when configuring an AudioMix"

    #@51
    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v1

    #@59
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0

    #@5d
    .line 293
    :cond_2
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@5f
    .line 294
    return-object p0
.end method
