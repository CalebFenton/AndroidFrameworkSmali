.class public final Landroid/hardware/camera2/params/InputConfiguration;
.super Ljava/lang/Object;
.source "InputConfiguration.java"


# instance fields
.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final blacklist mIsMultiResolution:Z

.field private final greylist-max-o mWidth:I


# direct methods
.method public constructor whitelist <init>(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    .line 61
    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    .line 62
    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(IIIZ)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "isMultiResolution"    # Z

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    .line 105
    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    .line 106
    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    .line 107
    iput-boolean p4, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    .line 108
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Collection;I)V
    .registers 5
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;I)V"
        }
    .end annotation

    .line 91
    .local p1, "multiResolutionInputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "Input multi-resolution stream info"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 94
    .local v0, "info":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    .line 95
    invoke-virtual {v0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    .line 96
    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    .line 98
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 161
    instance-of v0, p1, Landroid/hardware/camera2/params/InputConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 162
    return v1

    .line 165
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    .line 167
    .local v0, "otherInputConfig":Landroid/hardware/camera2/params/InputConfiguration;
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    if-ne v2, v3, :cond_2b

    .line 168
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    if-ne v2, v3, :cond_2b

    .line 169
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    if-ne v2, v3, :cond_2b

    .line 170
    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    if-ne v2, v3, :cond_2b

    .line 171
    const/4 v1, 0x1

    return v1

    .line 173
    :cond_2b
    return v1
.end method

.method public whitelist getFormat()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 181
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    iget-boolean v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist isMultiResolution()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 195
    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 195
    const-string v1, "InputConfiguration(w:%d, h:%d, format:%d, isMultiResolution %b)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
