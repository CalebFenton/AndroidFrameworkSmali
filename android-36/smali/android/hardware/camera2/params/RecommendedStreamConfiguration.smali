.class public final Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
.super Landroid/hardware/camera2/params/StreamConfiguration;
.source "RecommendedStreamConfiguration.java"


# instance fields
.field private final blacklist mUsecaseBitmap:I


# direct methods
.method public constructor blacklist <init>(IIIZI)V
    .registers 6
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "input"    # Z
    .param p5, "usecaseBitmap"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .line 54
    iput p5, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 77
    return v0

    .line 79
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 80
    return v1

    .line 82
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    if-eqz v2, :cond_2f

    .line 83
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    .line 84
    .local v2, "other":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    if-ne v3, v4, :cond_2e

    iget-boolean v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    if-ne v3, v4, :cond_2e

    move v0, v1

    :cond_2e
    return v0

    .line 90
    .end local v2    # "other":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    :cond_2f
    return v0
.end method

.method public blacklist getUsecaseBitmap()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 98
    iget v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    iget v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    iget-boolean v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    iget v4, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
