.class public final Landroid/hardware/camera2/params/StreamConfiguration;
.super Ljava/lang/Object;
.source "StreamConfiguration.java"


# instance fields
.field private final mFormat:I

.field private final mHeight:I

.field private final mInput:Z

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 1
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "input"    # Z

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    #@9
    .line 63
    const-string/jumbo v0, "width must be positive"

    #@c
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    #@12
    .line 64
    const-string/jumbo v0, "height must be positive"

    #@15
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    #@1b
    .line 65
    iput-boolean p4, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    #@1d
    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 143
    if-nez p1, :cond_0

    #@4
    .line 144
    return v2

    #@5
    .line 146
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 147
    return v1

    #@8
    .line 149
    :cond_1
    instance-of v3, p1, Landroid/hardware/camera2/params/StreamConfiguration;

    #@a
    if-eqz v3, :cond_4

    #@c
    move-object v0, p1

    #@d
    .line 150
    check-cast v0, Landroid/hardware/camera2/params/StreamConfiguration;

    #@f
    .line 151
    .local v0, "other":Landroid/hardware/camera2/params/StreamConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    #@11
    iget v4, v0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    #@13
    if-ne v3, v4, :cond_3

    #@15
    .line 152
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    #@17
    iget v4, v0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    #@19
    if-ne v3, v4, :cond_3

    #@1b
    .line 153
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    #@1d
    iget v4, v0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    #@1f
    if-ne v3, v4, :cond_3

    #@21
    .line 154
    iget-boolean v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    #@23
    iget-boolean v4, v0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    #@25
    if-ne v3, v4, :cond_2

    #@27
    .line 151
    :goto_0
    return v1

    #@28
    :cond_2
    move v1, v2

    #@29
    .line 154
    goto :goto_0

    #@2a
    :cond_3
    move v1, v2

    #@2b
    .line 151
    goto :goto_0

    #@2c
    .line 156
    .end local v0    # "other":Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_4
    return v2
.end method

.method public final getFormat()I
    .locals 1

    #@0
    .prologue
    .line 77
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    #@2
    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    .line 105
    new-instance v0, Landroid/util/Size;

    #@2
    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    #@4
    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    #@6
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@9
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 164
    const/4 v2, 0x4

    #@3
    new-array v2, v2, [I

    #@5
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    #@7
    aput v3, v2, v1

    #@9
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    #@b
    aput v3, v2, v0

    #@d
    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    #@f
    const/4 v4, 0x2

    #@10
    aput v3, v2, v4

    #@12
    iget-boolean v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    #@14
    if-eqz v3, :cond_0

    #@16
    :goto_0
    const/4 v1, 0x3

    #@17
    aput v0, v2, v1

    #@19
    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    :cond_0
    move v0, v1

    #@1f
    goto :goto_0
.end method

.method public isInput()Z
    .locals 1

    #@0
    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    #@2
    return v0
.end method

.method public isOutput()Z
    .locals 1

    #@0
    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method
