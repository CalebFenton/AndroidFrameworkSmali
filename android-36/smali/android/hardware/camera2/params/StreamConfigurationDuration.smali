.class public final Landroid/hardware/camera2/params/StreamConfigurationDuration;
.super Ljava/lang/Object;
.source "StreamConfigurationDuration.java"


# instance fields
.field private final greylist-max-o mDurationNs:J

.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mWidth:I


# direct methods
.method public constructor greylist-max-o <init>(IIIJ)V
    .registers 8
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "durationNs"    # J

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    .line 58
    const-string v0, "width must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    .line 59
    const-string v0, "height must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    .line 60
    const-string v0, "durationNs must be non-negative"

    invoke-static {p4, p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 123
    return v0

    .line 125
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 126
    return v1

    .line 128
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    if-eqz v2, :cond_2b

    .line 129
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 130
    .local v2, "other":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    if-ne v3, v4, :cond_2a

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    if-ne v3, v4, :cond_2a

    iget-wide v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    move v0, v1

    :cond_2a
    return v0

    .line 135
    .end local v2    # "other":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_2b
    return v0
.end method

.method public greylist-max-o getDuration()J
    .registers 3

    .line 109
    iget-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    return-wide v0
.end method

.method public final greylist-max-o getFormat()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    return v0
.end method

.method public greylist-max-o getSize()Landroid/util/Size;
    .registers 4

    .line 100
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 143
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    iget-wide v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    long-to-int v3, v3

    iget-wide v4, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
