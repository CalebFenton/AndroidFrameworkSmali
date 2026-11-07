.class public Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
.super Ljava/lang/Object;
.source "MultiResolutionStreamInfo.java"


# instance fields
.field private blacklist mPhysicalCameraId:Ljava/lang/String;

.field private blacklist mStreamHeight:I

.field private blacklist mStreamWidth:I


# direct methods
.method public constructor whitelist <init>(IILjava/lang/String;)V
    .registers 7
    .param p1, "streamWidth"    # I
    .param p2, "streamHeight"    # I
    .param p3, "physicalCameraId"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-lez p1, :cond_27

    .line 67
    if-lez p2, :cond_e

    .line 70
    iput p1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    .line 71
    iput p2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    .line 72
    iput-object p3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    .line 73
    return-void

    .line 68
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 105
    return v0

    .line 107
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 108
    return v1

    .line 110
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    if-eqz v2, :cond_29

    .line 111
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 112
    .local v2, "other":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    iget v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    if-ne v3, v4, :cond_27

    iget v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    nop

    .line 112
    :goto_28
    return v0

    .line 116
    .end local v2    # "other":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    :cond_29
    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    return v0
.end method

.method public whitelist getPhysicalCameraId()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 124
    iget v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 124
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
