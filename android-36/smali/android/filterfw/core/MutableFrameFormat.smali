.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "MutableFrameFormat.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    .line 31
    return-void
.end method

.method public constructor greylist <init>(II)V
    .registers 3
    .param p1, "baseType"    # I
    .param p2, "target"    # I

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    .line 36
    return-void
.end method


# virtual methods
.method public greylist-max-o setBaseType(I)V
    .registers 3
    .param p1, "baseType"    # I

    .line 39
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBaseType:I

    .line 40
    invoke-static {p1}, Landroid/filterfw/core/MutableFrameFormat;->bytesPerSampleOf(I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    .line 41
    return-void
.end method

.method public greylist setBytesPerSample(I)V
    .registers 3
    .param p1, "bytesPerSample"    # I

    .line 49
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 51
    return-void
.end method

.method public greylist-max-o setDimensionCount(I)V
    .registers 3
    .param p1, "count"    # I

    .line 84
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 85
    return-void
.end method

.method public greylist-max-o setDimensions(I)V
    .registers 4
    .param p1, "size"    # I

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 60
    .local v0, "dimensions":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 61
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 63
    return-void
.end method

.method public greylist setDimensions(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 68
    .local v0, "dimensions":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 69
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 70
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 72
    return-void
.end method

.method public greylist-max-o setDimensions(III)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # I

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 76
    .local v0, "dimensions":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 77
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 78
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 79
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 81
    return-void
.end method

.method public greylist-max-o setDimensions([I)V
    .registers 3
    .param p1, "dimensions"    # [I

    .line 54
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_9
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    .line 56
    return-void
.end method

.method public greylist-max-o setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    .line 95
    :cond_b
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public greylist-max-o setObjectClass(Ljava/lang/Class;)V
    .registers 2
    .param p1, "objectClass"    # Ljava/lang/Class;

    .line 88
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mObjectClass:Ljava/lang/Class;

    .line 89
    return-void
.end method

.method public greylist-max-o setTarget(I)V
    .registers 2
    .param p1, "target"    # I

    .line 44
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mTarget:I

    .line 45
    return-void
.end method
