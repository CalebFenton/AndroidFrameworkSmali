.class public final Landroid/telephony/data/NetworkSliceInfo$Builder;
.super Ljava/lang/Object;
.source "NetworkSliceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/NetworkSliceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMappedHplmnSliceDifferentiator:I

.field private blacklist mMappedHplmnSliceServiceType:I

.field private blacklist mSliceDifferentiator:I

.field private blacklist mSliceServiceType:I

.field private blacklist mStatus:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceServiceType:I

    .line 341
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceDifferentiator:I

    .line 343
    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceServiceType:I

    .line 345
    iput v1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceDifferentiator:I

    .line 347
    iput v0, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mStatus:I

    .line 355
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/data/NetworkSliceInfo;
    .registers 8

    .line 447
    new-instance v0, Landroid/telephony/data/NetworkSliceInfo;

    iget v1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceServiceType:I

    iget v2, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceDifferentiator:I

    iget v3, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceServiceType:I

    iget v4, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceDifferentiator:I

    iget v5, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mStatus:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/data/NetworkSliceInfo;-><init>(IIIIILandroid/telephony/data/NetworkSliceInfo-IA;)V

    return-object v0
.end method

.method public whitelist setMappedHplmnSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .registers 4
    .param p1, "mappedHplmnSliceDifferentiator"    # I

    .line 416
    const/4 v0, -0x1

    if-lt p1, v0, :cond_b

    const v0, 0xfffffe

    if-gt p1, v0, :cond_b

    .line 420
    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceDifferentiator:I

    .line 421
    return-object p0

    .line 418
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The slice diffentiator value is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMappedHplmnSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .registers 2
    .param p1, "mappedHplmnSliceServiceType"    # I

    .line 398
    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mMappedHplmnSliceServiceType:I

    .line 399
    return-object p0
.end method

.method public whitelist setSliceDifferentiator(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .registers 4
    .param p1, "sliceDifferentiator"    # I

    .line 382
    const/4 v0, -0x1

    if-lt p1, v0, :cond_b

    const v0, 0xfffffe

    if-gt p1, v0, :cond_b

    .line 386
    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceDifferentiator:I

    .line 387
    return-object p0

    .line 384
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The slice diffentiator value is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSliceServiceType(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .registers 2
    .param p1, "mSliceServiceType"    # I

    .line 364
    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mSliceServiceType:I

    .line 365
    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/telephony/data/NetworkSliceInfo$Builder;
    .registers 4
    .param p1, "status"    # I

    .line 433
    if-ltz p1, :cond_8

    const/4 v0, 0x5

    if-gt p1, v0, :cond_8

    .line 436
    iput p1, p0, Landroid/telephony/data/NetworkSliceInfo$Builder;->mStatus:I

    .line 437
    return-object p0

    .line 434
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The slice status is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
