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
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 317
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@6
    .line 318
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@8
    .line 319
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@b
    .line 320
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@d
    .line 321
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@12
    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@14
    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 317
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@6
    .line 318
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@8
    .line 319
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@b
    .line 320
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@d
    .line 321
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@12
    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@14
    .line 340
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get3(Landroid/media/AudioAttributes;)I

    #@17
    move-result v0

    #@18
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@1a
    .line 341
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get0(Landroid/media/AudioAttributes;)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@20
    .line 342
    invoke-static {p1}, Landroid/media/AudioAttributes;->-get1(Landroid/media/AudioAttributes;)I

    #@23
    move-result v0

    #@24
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@26
    .line 343
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
    .line 339
    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5
    .line 453
    return-object p0
.end method

.method public build()Landroid/media/AudioAttributes;
    .locals 3

    #@0
    .prologue
    .line 353
    new-instance v0, Landroid/media/AudioAttributes;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes;)V

    #@6
    .line 354
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@8
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set0(Landroid/media/AudioAttributes;I)I

    #@b
    .line 355
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@d
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set5(Landroid/media/AudioAttributes;I)I

    #@10
    .line 356
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@12
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set3(Landroid/media/AudioAttributes;I)I

    #@15
    .line 357
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@17
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set1(Landroid/media/AudioAttributes;I)I

    #@1a
    .line 358
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@1c
    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/util/HashSet;

    #@22
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set4(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;

    #@25
    .line 359
    const-string/jumbo v1, ";"

    #@28
    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    #@2a
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->-set2(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;

    #@31
    .line 360
    return-object v0
.end method

.method public setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "preset"    # I

    #@0
    .prologue
    .line 529
    packed-switch p1, :pswitch_data_0

    #@3
    .line 538
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
    .line 540
    :goto_0
    return-object p0

    #@25
    .line 535
    :pswitch_1
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@27
    goto :goto_0

    #@28
    .line 529
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
    .end packed-switch
.end method

.method public setContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "contentType"    # I

    #@0
    .prologue
    .line 420
    packed-switch p1, :pswitch_data_0

    #@3
    .line 429
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@6
    .line 431
    :goto_0
    return-object p0

    #@7
    .line 426
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@9
    goto :goto_0

    #@a
    .line 420
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
    .line 440
    and-int/lit16 p1, p1, 0xff

    #@2
    .line 441
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@7
    .line 442
    return-object p0
.end method

.method public setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "preset"    # I

    #@0
    .prologue
    .line 552
    const/16 v0, 0x7cf

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 553
    const/16 v0, 0x8

    #@6
    if-ne p1, v0, :cond_1

    #@8
    .line 555
    :cond_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    #@a
    .line 559
    :goto_0
    return-object p0

    #@b
    .line 554
    :cond_1
    const/16 v0, 0x7ce

    #@d
    if-eq p1, v0, :cond_0

    #@f
    .line 557
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
    .line 477
    packed-switch p1, :pswitch_data_0

    #@5
    .line 510
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
    .line 512
    :goto_0
    invoke-static {p1}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@2c
    .line 513
    return-object p0

    #@2d
    .line 479
    :pswitch_0
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@2f
    goto :goto_0

    #@30
    .line 482
    :pswitch_1
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@32
    or-int/lit8 v0, v0, 0x1

    #@34
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@36
    .line 485
    :pswitch_2
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@38
    goto :goto_0

    #@39
    .line 488
    :pswitch_3
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@3b
    goto :goto_0

    #@3c
    .line 491
    :pswitch_4
    const/4 v0, 0x2

    #@3d
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@3f
    goto :goto_0

    #@40
    .line 494
    :pswitch_5
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@42
    goto :goto_0

    #@43
    .line 497
    :pswitch_6
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@45
    goto :goto_0

    #@46
    .line 500
    :pswitch_7
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@48
    .line 501
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@4a
    or-int/lit8 v0, v0, 0x4

    #@4c
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    #@4e
    goto :goto_0

    #@4f
    .line 504
    :pswitch_8
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@51
    goto :goto_0

    #@52
    .line 507
    :pswitch_9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    #@54
    goto :goto_0

    #@55
    .line 477
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
    .line 467
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
    .line 383
    packed-switch p1, :pswitch_data_0

    #@3
    .line 403
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@6
    .line 405
    :goto_0
    return-object p0

    #@7
    .line 400
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    #@9
    goto :goto_0

    #@a
    .line 383
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
