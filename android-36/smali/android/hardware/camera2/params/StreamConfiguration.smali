.class public Landroid/hardware/camera2/params/StreamConfiguration;
.super Ljava/lang/Object;
.source "StreamConfiguration.java"


# instance fields
.field protected greylist-max-o mFormat:I

.field protected greylist-max-o mHeight:I

.field protected greylist-max-o mInput:Z

.field protected greylist-max-o mWidth:I


# direct methods
.method public constructor greylist-max-o <init>(IIIZ)V
    .registers 6
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "input"    # Z

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    .line 63
    const-string v0, "width must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    .line 64
    const-string v0, "height must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    .line 65
    iput-boolean p4, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 144
    return v0

    .line 146
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 147
    return v1

    .line 149
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v2, :cond_29

    .line 150
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/StreamConfiguration;

    .line 151
    .local v2, "other":Landroid/hardware/camera2/params/StreamConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    if-ne v3, v4, :cond_28

    iget-boolean v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    if-ne v3, v4, :cond_28

    move v0, v1

    :cond_28
    return v0

    .line 156
    .end local v2    # "other":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_29
    return v0
.end method

.method public final greylist-max-o getFormat()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    return v0
.end method

.method public greylist-max-o getSize()Landroid/util/Size;
    .registers 4

    .line 105
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 164
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iget-boolean v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isInput()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return v0
.end method

.method public greylist-max-o isOutput()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
