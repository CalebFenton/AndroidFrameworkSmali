.class public final Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
.super Ljava/lang/Object;
.source "HighSpeedVideoConfiguration.java"


# static fields
.field private static final HIGH_SPEED_MAX_MINIMAL_FPS:I = 0x78


# instance fields
.field private final mBatchSizeMax:I

.field private final mFpsMax:I

.field private final mFpsMin:I

.field private final mFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private final mSize:Landroid/util/Size;

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fpsMin"    # I
    .param p4, "fpsMax"    # I
    .param p5, "batchSizeMax"    # I

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    const/16 v0, 0x78

    #@5
    if-ge p4, v0, :cond_0

    #@7
    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "fpsMax must be at least 120"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 58
    :cond_0
    iput p4, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    #@12
    .line 59
    const-string/jumbo v0, "width must be positive"

    #@15
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    #@1b
    .line 60
    const-string/jumbo v0, "height must be positive"

    #@1e
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    #@24
    .line 61
    const-string/jumbo v0, "fpsMin must be positive"

    #@27
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    #@2d
    .line 62
    new-instance v0, Landroid/util/Size;

    #@2f
    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    #@31
    iget v2, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    #@33
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    #@36
    iput-object v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mSize:Landroid/util/Size;

    #@38
    .line 63
    const-string/jumbo v0, "batchSizeMax must be positive"

    #@3b
    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mBatchSizeMax:I

    #@41
    .line 64
    new-instance v0, Landroid/util/Range;

    #@43
    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    #@45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@48
    move-result-object v1

    #@49
    iget v2, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    #@4b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v2

    #@4f
    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    #@52
    iput-object v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsRange:Landroid/util/Range;

    #@54
    .line 53
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
    .line 140
    if-nez p1, :cond_0

    #@4
    .line 141
    return v2

    #@5
    .line 143
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 144
    return v1

    #@8
    .line 146
    :cond_1
    instance-of v3, p1, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@a
    if-eqz v3, :cond_4

    #@c
    move-object v0, p1

    #@d
    .line 147
    check-cast v0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@f
    .line 148
    .local v0, "other":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    #@11
    iget v4, v0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    #@13
    if-ne v3, v4, :cond_3

    #@15
    .line 149
    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    #@17
    iget v4, v0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    #@19
    if-ne v3, v4, :cond_3

    #@1b
    .line 150
    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    #@1d
    iget v4, v0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    #@1f
    if-ne v3, v4, :cond_3

    #@21
    .line 151
    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    #@23
    iget v4, v0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    #@25
    if-ne v3, v4, :cond_3

    #@27
    .line 152
    iget v3, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mBatchSizeMax:I

    #@29
    iget v4, v0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mBatchSizeMax:I

    #@2b
    if-ne v3, v4, :cond_2

    #@2d
    .line 148
    :goto_0
    return v1

    #@2e
    :cond_2
    move v1, v2

    #@2f
    .line 152
    goto :goto_0

    #@30
    :cond_3
    move v1, v2

    #@31
    .line 148
    goto :goto_0

    #@32
    .line 154
    .end local v0    # "other":Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    :cond_4
    return v2
.end method

.method public getBatchSizeMax()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mBatchSizeMax:I

    #@2
    return v0
.end method

.method public getFpsMax()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    #@2
    return v0
.end method

.method public getFpsMin()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    #@2
    return v0
.end method

.method public getFpsRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsRange:Landroid/util/Range;

    #@2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    #@2
    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mSize:Landroid/util/Size;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget v0, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 162
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [I

    #@3
    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mWidth:I

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mHeight:I

    #@a
    const/4 v2, 0x1

    #@b
    aput v1, v0, v2

    #@d
    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMin:I

    #@f
    const/4 v2, 0x2

    #@10
    aput v1, v0, v2

    #@12
    iget v1, p0, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->mFpsMax:I

    #@14
    const/4 v2, 0x3

    #@15
    aput v1, v0, v2

    #@17
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    #@1a
    move-result v0

    #@1b
    return v0
.end method
