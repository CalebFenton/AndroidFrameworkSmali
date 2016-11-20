.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 413
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@6
    .line 414
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@8
    .line 415
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@b
    .line 416
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@d
    .line 417
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@12
    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@14
    .line 428
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 413
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@6
    .line 414
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@8
    .line 415
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@b
    .line 416
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@d
    .line 417
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@12
    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@14
    .line 437
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get3(Landroid/media/AudioAttributes;)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@1a
    .line 438
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get0(Landroid/media/AudioAttributes;)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@20
    .line 439
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get1(Landroid/media/AudioAttributes;)I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@26
    .line 440
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get2(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/util/HashSet;

    #@30
    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@32
    .line 436
    return-void
.end method


# virtual methods
.method public addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 554
    if-nez p1, :cond_0

    #@2
    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null bundle"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 557
    :cond_0
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 558
    new-instance v0, Landroid/os/Bundle;

    #@11
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@14
    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    #@16
    .line 562
    :goto_0
    return-object p0

    #@17
    .line 560
    :cond_1
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    #@19
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@1c
    goto :goto_0
.end method

.method public addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 572
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5
    .line 573
    return-object p0
.end method

.method public build()Landroid/media/AudioAttributes;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 450
    new-instance v0, Landroid/media/AudioAttributes;

    #@3
    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes;)V

    #@6
    .line 451
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@8
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set1(Landroid/media/AudioAttributes;I)I

    #@b
    .line 452
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@d
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set6(Landroid/media/AudioAttributes;I)I

    #@10
    .line 453
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@12
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set4(Landroid/media/AudioAttributes;I)I

    #@15
    .line 454
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@17
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set2(Landroid/media/AudioAttributes;I)I

    #@1a
    .line 455
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@1c
    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/util/HashSet;

    #@22
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set5(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;

    #@25
    .line 456
    const-string/jumbo v1, ";"

    #@28
    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@2a
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set3(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;

    #@31
    .line 457
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    #@33
    if-eqz v1, :cond_0

    #@35
    .line 458
    new-instance v1, Landroid/os/Bundle;

    #@37
    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    #@39
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@3c
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set0(Landroid/media/AudioAttributes;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@3f
    .line 460
    :cond_0
    return-object v0
.end method

.method public setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "preset"    # I

    #@0
    .prologue
    .line 650
    packed-switch p1, :pswitch_data_0

    #@3
    .line 660
    :pswitch_0
    const-string/jumbo v0, "AudioAttributes"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Invalid capture preset "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " for AudioAttributes"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 662
    :goto_0
    return-object p0

    #@25
    .line 657
    :pswitch_1
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@27
    goto :goto_0

    #@28
    .line 650
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "contentType"    # I

    #@0
    .prologue
    .line 520
    packed-switch p1, :pswitch_data_0

    #@3
    .line 529
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@6
    .line 531
    :goto_0
    return-object p0

    #@7
    .line 526
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@9
    goto :goto_0

    #@a
    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 541
    and-int/lit16 p1, p1, 0x1ff

    #@2
    .line 542
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@7
    .line 543
    return-object p0
.end method

.method public setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "preset"    # I

    #@0
    .prologue
    .line 674
    const/16 v0, 0x7cf

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 675
    const/16 v0, 0x8

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 677
    :cond_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@a
    .line 681
    :goto_0
    return-object p0

    #@b
    .line 676
    :cond_1
    const/16 v0, 0x7ce

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 679
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    #@12
    goto :goto_0
.end method

.method public setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "streamType"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x4

    #@2
    .line 597
    packed-switch p1, :pswitch_data_0

    #@5
    .line 630
    const-string/jumbo v0, "AudioAttributes"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Invalid stream type "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " for AudioAttributes"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 632
    :goto_0
    invoke-static {p1}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@2c
    .line 633
    return-object p0

    #@2d
    .line 599
    :pswitch_0
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@2f
    goto :goto_0

    #@30
    .line 602
    :pswitch_1
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@32
    or-int/lit8 v0, v0, 0x1

    #@34
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@36
    .line 605
    :pswitch_2
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@38
    goto :goto_0

    #@39
    .line 608
    :pswitch_3
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@3b
    goto :goto_0

    #@3c
    .line 611
    :pswitch_4
    const/4 v0, 0x2

    #@3d
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@3f
    goto :goto_0

    #@40
    .line 614
    :pswitch_5
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@42
    goto :goto_0

    #@43
    .line 617
    :pswitch_6
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@45
    goto :goto_0

    #@46
    .line 620
    :pswitch_7
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@48
    .line 621
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@4a
    or-int/lit8 v0, v0, 0x4

    #@4c
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@4e
    goto :goto_0

    #@4f
    .line 624
    :pswitch_8
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@51
    goto :goto_0

    #@52
    .line 627
    :pswitch_9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@54
    goto :goto_0

    #@55
    .line 597
    nop

    #@56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "streamType"    # I

    #@0
    .prologue
    .line 587
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setUsage(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "usage"    # I

    #@0
    .prologue
    .line 483
    packed-switch p1, :pswitch_data_0

    #@3
    .line 503
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@6
    .line 505
    :goto_0
    return-object p0

    #@7
    .line 500
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@9
    goto :goto_0

    #@a
    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
