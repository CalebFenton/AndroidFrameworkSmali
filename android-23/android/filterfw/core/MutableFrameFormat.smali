.class public Landroid/filterfw/core/MutableFrameFormat;
.super Landroid/filterfw/core/FrameFormat;
.source "MutableFrameFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Landroid/filterfw/core/FrameFormat;-><init>()V

    #@3
    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "baseType"    # I
    .param p2, "target"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/FrameFormat;-><init>(II)V

    #@3
    .line 34
    return-void
.end method


# virtual methods
.method public setBaseType(I)V
    .locals 1
    .param p1, "baseType"    # I

    #@0
    .prologue
    .line 39
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBaseType:I

    #@2
    .line 40
    invoke-static {p1}, Landroid/filterfw/core/MutableFrameFormat;->bytesPerSampleOf(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    #@8
    .line 38
    return-void
.end method

.method public setBytesPerSample(I)V
    .locals 1
    .param p1, "bytesPerSample"    # I

    #@0
    .prologue
    .line 48
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mBytesPerSample:I

    #@2
    .line 49
    const/4 v0, -0x1

    #@3
    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    #@5
    .line 47
    return-void
.end method

.method public setDimensionCount(I)V
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 82
    new-array v0, p1, [I

    #@2
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    #@4
    .line 81
    return-void
.end method

.method public setDimensions(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 58
    const/4 v1, 0x1

    #@1
    new-array v0, v1, [I

    #@3
    .line 59
    .local v0, "dimensions":[I
    const/4 v1, 0x0

    #@4
    aput p1, v0, v1

    #@6
    .line 60
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    #@8
    .line 61
    const/4 v1, -0x1

    #@9
    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    #@b
    .line 57
    return-void
.end method

.method public setDimensions(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 65
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [I

    #@3
    .line 66
    .local v0, "dimensions":[I
    const/4 v1, 0x0

    #@4
    aput p1, v0, v1

    #@6
    .line 67
    const/4 v1, 0x1

    #@7
    aput p2, v0, v1

    #@9
    .line 68
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    #@b
    .line 69
    const/4 v1, -0x1

    #@c
    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    #@e
    .line 64
    return-void
.end method

.method public setDimensions(III)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # I

    #@0
    .prologue
    .line 73
    const/4 v1, 0x3

    #@1
    new-array v0, v1, [I

    #@3
    .line 74
    .local v0, "dimensions":[I
    const/4 v1, 0x0

    #@4
    aput p1, v0, v1

    #@6
    .line 75
    const/4 v1, 0x1

    #@7
    aput p2, v0, v1

    #@9
    .line 76
    const/4 v1, 0x2

    #@a
    aput p3, v0, v1

    #@c
    .line 77
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    #@e
    .line 78
    const/4 v1, -0x1

    #@f
    iput v1, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    #@11
    .line 72
    return-void
.end method

.method public setDimensions([I)V
    .locals 1
    .param p1, "dimensions"    # [I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 53
    if-nez p1, :cond_0

    #@3
    :goto_0
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mDimensions:[I

    #@5
    .line 54
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mSize:I

    #@8
    .line 52
    return-void

    #@9
    .line 53
    :cond_0
    array-length v0, p1

    #@a
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 91
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    #@6
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    #@9
    iput-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@b
    .line 93
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/MutableFrameFormat;->mMetaData:Landroid/filterfw/core/KeyValueMap;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 89
    return-void
.end method

.method public setObjectClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "objectClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mObjectClass:Ljava/lang/Class;

    #@2
    .line 85
    return-void
.end method

.method public setTarget(I)V
    .locals 0
    .param p1, "target"    # I

    #@0
    .prologue
    .line 44
    iput p1, p0, Landroid/filterfw/core/MutableFrameFormat;->mTarget:I

    #@2
    .line 43
    return-void
.end method
