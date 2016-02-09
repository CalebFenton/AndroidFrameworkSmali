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
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 654
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    #@6
    .line 655
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    #@8
    .line 656
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    #@a
    .line 657
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    #@c
    .line 658
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@e
    .line 663
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFormat;)V
    .locals 1
    .param p1, "af"    # Landroid/media/AudioFormat;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 654
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    #@6
    .line 655
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    #@8
    .line 656
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    #@a
    .line 657
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    #@c
    .line 658
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@e
    .line 671
    invoke-static {p1}, Landroid/media/AudioFormat;->-get2(Landroid/media/AudioFormat;)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    #@14
    .line 672
    invoke-static {p1}, Landroid/media/AudioFormat;->-get4(Landroid/media/AudioFormat;)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    #@1a
    .line 673
    invoke-static {p1}, Landroid/media/AudioFormat;->-get1(Landroid/media/AudioFormat;)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    #@20
    .line 674
    invoke-static {p1}, Landroid/media/AudioFormat;->-get0(Landroid/media/AudioFormat;)I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    #@26
    .line 675
    invoke-static {p1}, Landroid/media/AudioFormat;->-get3(Landroid/media/AudioFormat;)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@2c
    .line 670
    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioFormat;
    .locals 3

    #@0
    .prologue
    .line 684
    new-instance v0, Landroid/media/AudioFormat;

    #@2
    const/16 v1, 0x7bc

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/media/AudioFormat;-><init>(ILandroid/media/AudioFormat;)V

    #@8
    .line 685
    .local v0, "af":Landroid/media/AudioFormat;
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    #@a
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set2(Landroid/media/AudioFormat;I)I

    #@d
    .line 686
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    #@f
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set4(Landroid/media/AudioFormat;I)I

    #@12
    .line 687
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    #@14
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set1(Landroid/media/AudioFormat;I)I

    #@17
    .line 688
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    #@19
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set0(Landroid/media/AudioFormat;I)I

    #@1c
    .line 689
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@1e
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->-set3(Landroid/media/AudioFormat;I)I

    #@21
    .line 690
    return-object v0
.end method

.method public setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "channelIndexMask"    # I

    #@0
    .prologue
    .line 815
    if-nez p1, :cond_0

    #@2
    .line 816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid zero channel index mask"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 817
    :cond_0
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 818
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    #@12
    move-result v0

    #@13
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    #@18
    move-result v1

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 819
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Mismatched channel count for index mask "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 820
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 819
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 822
    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    #@3f
    .line 823
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@41
    or-int/lit8 v0, v0, 0x8

    #@43
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@45
    .line 824
    return-object p0
.end method

.method public setChannelMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "channelMask"    # I

    #@0
    .prologue
    .line 762
    if-nez p1, :cond_0

    #@2
    .line 763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid zero channel mask"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 764
    :cond_0
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 765
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    #@12
    move-result v0

    #@13
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    #@18
    move-result v1

    #@19
    if-eq v0, v1, :cond_1

    #@1b
    .line 766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "Mismatched channel count for mask "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 767
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    .line 766
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 769
    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    #@3f
    .line 770
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@41
    or-int/lit8 v0, v0, 0x4

    #@43
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@45
    .line 771
    return-object p0
.end method

.method public setEncoding(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "encoding"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 707
    packed-switch p1, :pswitch_data_0

    #@3
    .line 722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Invalid encoding "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 709
    :pswitch_0
    const/4 v0, 0x2

    #@1e
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    #@20
    .line 724
    :goto_0
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@22
    or-int/lit8 v0, v0, 0x1

    #@24
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@26
    .line 725
    return-object p0

    #@27
    .line 718
    :pswitch_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    #@29
    goto :goto_0

    #@2a
    .line 707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setSampleRate(I)Landroid/media/AudioFormat$Builder;
    .locals 3
    .param p1, "sampleRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 834
    if-lez p1, :cond_0

    #@2
    const v0, 0x2ee00

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 835
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Invalid sample rate "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 837
    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    #@23
    .line 838
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@25
    or-int/lit8 v0, v0, 0x2

    #@27
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    #@29
    .line 839
    return-object p0
.end method
