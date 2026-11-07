.class public final Landroid/os/VibrationAttributes$Builder;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFlags:I

.field private blacklist mOriginalAudioUsage:I

.field private blacklist mUsage:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 411
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 412
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 418
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;)V
    .registers 3
    .param p1, "audio"    # Landroid/media/AudioAttributes;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 411
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 412
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 435
    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setUsage(Landroid/media/AudioAttributes;)V

    .line 436
    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(Landroid/media/AudioAttributes;)V

    .line 437
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/VibrationAttributes;)V
    .registers 3
    .param p1, "vib"    # Landroid/os/VibrationAttributes;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 411
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 412
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 424
    if-eqz p1, :cond_1e

    .line 425
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 426
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 427
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 429
    :cond_1e
    return-void
.end method

.method private blacklist setFlags(Landroid/media/AudioAttributes;)V
    .registers 3
    .param p1, "audio"    # Landroid/media/AudioAttributes;

    .line 477
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    .line 478
    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 480
    :cond_e
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1c

    .line 483
    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 485
    :cond_1c
    return-void
.end method

.method private blacklist setUsage(Landroid/media/AudioAttributes;)V
    .registers 3
    .param p1, "audio"    # Landroid/media/AudioAttributes;

    .line 440
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 441
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 472
    :pswitch_d
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_34

    .line 462
    :pswitch_11
    const/16 v0, 0x12

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 463
    goto :goto_34

    .line 459
    :pswitch_16
    const/16 v0, 0x42

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 460
    goto :goto_34

    .line 456
    :pswitch_1b
    const/16 v0, 0x21

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 457
    goto :goto_34

    .line 447
    :pswitch_20
    const/16 v0, 0x31

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 448
    goto :goto_34

    .line 465
    :pswitch_25
    const/16 v0, 0x11

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 466
    goto :goto_34

    .line 453
    :pswitch_2a
    const/16 v0, 0x41

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 454
    goto :goto_34

    .line 469
    :pswitch_2f
    const/16 v0, 0x13

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 470
    nop

    .line 474
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2a
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_16
        :pswitch_2a
        :pswitch_11
        :pswitch_2f
        :pswitch_d
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public whitelist build()Landroid/os/VibrationAttributes;
    .registers 6

    .line 493
    new-instance v0, Landroid/os/VibrationAttributes;

    iget v1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iget v2, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    iget v3, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/VibrationAttributes;-><init>(IIILandroid/os/VibrationAttributes-IA;)V

    .line 495
    .local v0, "ans":Landroid/os/VibrationAttributes;
    return-object v0
.end method

.method public blacklist setFlags(I)Landroid/os/VibrationAttributes$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 533
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFlags(II)Landroid/os/VibrationAttributes$Builder;
    .registers 5
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 518
    and-int/lit8 p2, p2, 0xf

    .line 519
    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 520
    return-object p0
.end method

.method public whitelist setUsage(I)Landroid/os/VibrationAttributes$Builder;
    .registers 3
    .param p1, "usage"    # I

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 505
    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 506
    return-object p0
.end method
