.class public final Landroid/hardware/camera2/params/StreamConfigurationDuration;
.super Ljava/lang/Object;
.source "StreamConfigurationDuration.java"


# instance fields
.field private final mDurationNs:J

.field private final mFormat:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 2
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "durationNs"    # J

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    #@9
    .line 58
    const-string/jumbo v0, "width must be positive"

    #@c
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    #@12
    .line 59
    const-string/jumbo v0, "height must be positive"

    #@15
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    #@1b
    .line 60
    const-string/jumbo v0, "durationNs must be non-negative"

    #@1e
    invoke-static {p4, p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    #@21
    move-result-wide v0

    #@22
    iput-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    #@24
    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 122
    if-nez p1, :cond_0

    #@4
    .line 123
    return v2

    #@5
    .line 125
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 126
    return v1

    #@8
    .line 128
    :cond_1
    instance-of v3, p1, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@a
    if-eqz v3, :cond_4

    #@c
    move-object v0, p1

    #@d
    .line 129
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@f
    .line 130
    .local v0, "other":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    #@11
    iget v4, v0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    #@13
    if-ne v3, v4, :cond_3

    #@15
    .line 131
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    #@17
    iget v4, v0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    #@19
    if-ne v3, v4, :cond_3

    #@1b
    .line 132
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    #@1d
    iget v4, v0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    #@1f
    if-ne v3, v4, :cond_3

    #@21
    .line 133
    iget-wide v4, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    #@23
    iget-wide v6, v0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    #@25
    cmp-long v3, v4, v6

    #@27
    if-nez v3, :cond_2

    #@29
    .line 130
    :goto_0
    return v1

    #@2a
    :cond_2
    move v1, v2

    #@2b
    .line 133
    goto :goto_0

    #@2c
    :cond_3
    move v1, v2

    #@2d
    .line 130
    goto :goto_0

    #@2e
    .line 135
    .end local v0    # "other":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_4
    return v2
.end method

.method public getDuration()J
    .locals 2

    #@0
    .prologue
    .line 109
    iget-wide v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    #@2
    return-wide v0
.end method

.method public final getFormat()I
    .locals 1

    #@0
    .prologue
    .line 72
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    #@2
    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    .line 100
    new-instance v0, Landroid/util/Size;

    #@2
    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    #@4
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    #@6
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@9
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 143
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [I

    #@3
    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mFormat:I

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mWidth:I

    #@a
    const/4 v2, 0x1

    #@b
    aput v1, v0, v2

    #@d
    iget v1, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mHeight:I

    #@f
    const/4 v2, 0x2

    #@10
    aput v1, v0, v2

    #@12
    .line 144
    iget-wide v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    #@14
    long-to-int v1, v2

    #@15
    const/4 v2, 0x3

    #@16
    aput v1, v0, v2

    #@18
    iget-wide v2, p0, Landroid/hardware/camera2/params/StreamConfigurationDuration;->mDurationNs:J

    #@1a
    const/16 v1, 0x20

    #@1c
    ushr-long/2addr v2, v1

    #@1d
    long-to-int v1, v2

    #@1e
    const/4 v2, 0x4

    #@1f
    aput v1, v0, v2

    #@21
    .line 143
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@24
    move-result v0

    #@25
    return v0
.end method
