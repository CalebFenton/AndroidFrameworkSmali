.class public Landroid/media/AudioFormat$Builder;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mChannelIndexMask:I

.field private greylist-max-o mChannelMask:I

.field private greylist-max-o mEncoding:I

.field private greylist-max-o mPropertySetMask:I

.field private greylist-max-o mSampleRate:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1443
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 1444
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 1445
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 1446
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 1447
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 1453
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioFormat;)V
    .registers 3
    .param p1, "af"    # Landroid/media/AudioFormat;

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1443
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 1444
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 1445
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 1446
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 1447
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 1460
    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmEncoding(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 1461
    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmSampleRate(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 1462
    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmChannelMask(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 1463
    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmChannelIndexMask(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 1464
    invoke-static {p1}, Landroid/media/AudioFormat;->-$$Nest$fgetmPropertySetMask(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 1465
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioFormat;
    .registers 8

    .line 1473
    new-instance v0, Landroid/media/AudioFormat;

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    iget v2, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    iget v3, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    iget v4, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    iget v5, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioFormat;-><init>(IIIIILandroid/media/AudioFormat-IA;)V

    .line 1480
    .local v0, "af":Landroid/media/AudioFormat;
    return-object v0
.end method

.method public whitelist setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;
    .registers 5
    .param p1, "channelIndexMask"    # I

    .line 1632
    if-eqz p1, :cond_3d

    .line 1634
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    if-eqz v0, :cond_34

    .line 1635
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v0, v1, :cond_13

    goto :goto_34

    .line 1636
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched channel count for index mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1637
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

    .line 1639
    :cond_34
    :goto_34
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 1640
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 1641
    return-object p0

    .line 1633
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid zero channel index mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setChannelMask(I)Landroid/media/AudioFormat$Builder;
    .registers 5
    .param p1, "channelMask"    # I

    .line 1579
    if-eqz p1, :cond_3d

    .line 1581
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    if-eqz v0, :cond_34

    .line 1582
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-ne v0, v1, :cond_13

    goto :goto_34

    .line 1583
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched channel count for mask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1584
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

    .line 1586
    :cond_34
    :goto_34
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 1587
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 1588
    return-object p0

    .line 1580
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid zero channel mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEncoding(I)Landroid/media/AudioFormat$Builder;
    .registers 5
    .param p1, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1490
    packed-switch p1, :pswitch_data_2a

    .line 1541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1537
    :pswitch_1c
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 1538
    goto :goto_23

    .line 1492
    :pswitch_1f
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 1493
    nop

    .line 1543
    :goto_23
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 1544
    return-object p0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setSampleRate(I)Landroid/media/AudioFormat$Builder;
    .registers 5
    .param p1, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1654
    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p1, v0, :cond_8

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p1, v0, :cond_a

    :cond_8
    if-nez p1, :cond_13

    .line 1658
    :cond_a
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 1659
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 1660
    return-object p0

    .line 1656
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
