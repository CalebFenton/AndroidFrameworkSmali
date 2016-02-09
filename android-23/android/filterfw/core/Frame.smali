.class public abstract Landroid/filterfw/core/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field public static final NO_BINDING:I = 0x0

.field public static final TIMESTAMP_NOT_SET:J = -0x2L

.field public static final TIMESTAMP_UNKNOWN:J = -0x1L


# instance fields
.field private mBindingId:J

.field private mBindingType:I

.field private mFormat:Landroid/filterfw/core/FrameFormat;

.field private mFrameManager:Landroid/filterfw/core/FrameManager;

.field private mReadOnly:Z

.field private mRefCount:I

.field private mReusable:Z

.field private mTimestamp:J


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    #@6
    .line 39
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    #@8
    .line 40
    const/4 v0, 0x1

    #@9
    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@b
    .line 41
    iput v1, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    #@d
    .line 42
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    #@11
    .line 43
    const-wide/16 v0, -0x2

    #@13
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    #@15
    .line 46
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    #@1b
    .line 47
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@1d
    .line 45
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;
    .param p3, "bindingType"    # I
    .param p4, "bindingId"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    #@6
    .line 39
    iput-boolean v1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    #@8
    .line 40
    const/4 v0, 0x1

    #@9
    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@b
    .line 41
    iput v1, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    #@d
    .line 42
    const-wide/16 v0, 0x0

    #@f
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    #@11
    .line 43
    const-wide/16 v0, -0x2

    #@13
    iput-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    #@15
    .line 51
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    #@1b
    .line 52
    iput-object p2, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@1d
    .line 53
    iput p3, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    #@1f
    .line 54
    iput-wide p4, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    #@21
    .line 50
    return-void
.end method

.method protected static convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@3
    move-result-object v1

    #@4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 182
    return-object p0

    #@9
    .line 184
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    #@f
    move-result-object v0

    #@10
    .line 185
    .local v0, "result":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    #@12
    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v2, "Error converting bitmap to RGBA!"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 187
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@22
    move-result v2

    #@23
    mul-int/lit8 v2, v2, 0x4

    #@25
    if-eq v1, v2, :cond_2

    #@27
    .line 188
    new-instance v1, Ljava/lang/RuntimeException;

    #@29
    const-string/jumbo v2, "Unsupported row byte count in bitmap!"

    #@2c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v1

    #@30
    .line 190
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected assertFrameMutable()V
    .locals 2

    #@0
    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v1, "Attempting to modify read-only frame!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 161
    :cond_0
    return-void
.end method

.method final decRefCount()I
    .locals 1

    #@0
    .prologue
    .line 223
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@6
    .line 224
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@8
    return v0
.end method

.method public getBindingId()J
    .locals 2

    #@0
    .prologue
    .line 74
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mBindingId:J

    #@2
    return-wide v0
.end method

.method public getBindingType()I
    .locals 1

    #@0
    .prologue
    .line 70
    iget v0, p0, Landroid/filterfw/core/Frame;->mBindingType:I

    #@2
    return v0
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public getCapacity()I
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getFloats()[F
.end method

.method public getFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    #@2
    return-object v0
.end method

.method public getFrameManager()Landroid/filterfw/core/FrameManager;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@2
    return-object v0
.end method

.method public abstract getInts()[I
.end method

.method public abstract getObjectValue()Ljava/lang/Object;
.end method

.method public getRefCount()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@2
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 126
    iget-wide v0, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    #@2
    return-wide v0
.end method

.method protected abstract hasNativeAllocation()Z
.end method

.method final incRefCount()I
    .locals 1

    #@0
    .prologue
    .line 218
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@6
    .line 219
    iget v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@8
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    #@2
    return v0
.end method

.method final isReusable()Z
    .locals 1

    #@0
    .prologue
    .line 228
    iget-boolean v0, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    #@2
    return v0
.end method

.method final markReadOnly()V
    .locals 1

    #@0
    .prologue
    .line 232
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    #@3
    .line 231
    return-void
.end method

.method protected onFrameFetch()V
    .locals 0

    #@0
    .prologue
    .line 209
    return-void
.end method

.method protected onFrameStore()V
    .locals 0

    #@0
    .prologue
    .line 203
    return-void
.end method

.method public release()Landroid/filterfw/core/Frame;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 143
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@6
    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 145
    :cond_0
    return-object p0
.end method

.method protected abstract releaseNativeAllocation()V
.end method

.method protected requestResize([I)Z
    .locals 1
    .param p1, "newDimensions"    # [I

    #@0
    .prologue
    .line 134
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 1
    .param p1, "newFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    #@6
    .line 196
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/filterfw/core/Frame;->mReadOnly:Z

    #@9
    .line 197
    const/4 v0, 0x1

    #@a
    iput v0, p0, Landroid/filterfw/core/Frame;->mRefCount:I

    #@c
    .line 194
    return-void
.end method

.method public retain()Landroid/filterfw/core/Frame;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 151
    iget-object v0, p0, Landroid/filterfw/core/Frame;->mFrameManager:Landroid/filterfw/core/FrameManager;

    #@6
    invoke-virtual {v0, p0}, Landroid/filterfw/core/FrameManager;->retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 153
    :cond_0
    return-object p0
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;II)V

    #@8
    .line 107
    return-void
.end method

.method public abstract setData(Ljava/nio/ByteBuffer;II)V
.end method

.method public setData([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 112
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    #@7
    .line 111
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 1
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getData()Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    #@7
    .line 129
    return-void
.end method

.method public abstract setFloats([F)V
.end method

.method protected setFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/filterfw/core/Frame;->mFormat:Landroid/filterfw/core/FrameFormat;

    #@6
    .line 171
    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Cannot set object value of unsupported type: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

.method public abstract setInts([I)V
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/filterfw/core/Frame;->assertFrameMutable()V

    #@3
    .line 82
    instance-of v0, p1, [I

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 83
    check-cast p1, [I

    #@9
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setInts([I)V

    #@c
    .line 77
    :goto_0
    return-void

    #@d
    .line 84
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [F

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 85
    check-cast p1, [F

    #@13
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setFloats([F)V

    #@16
    goto :goto_0

    #@17
    .line 86
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 87
    check-cast p1, Ljava/nio/ByteBuffer;

    #@1d
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    #@20
    goto :goto_0

    #@21
    .line 88
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Landroid/graphics/Bitmap;

    #@23
    if-eqz v0, :cond_3

    #@25
    .line 89
    check-cast p1, Landroid/graphics/Bitmap;

    #@27
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    #@2a
    goto :goto_0

    #@2b
    .line 91
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Frame;->setGenericObjectValue(Ljava/lang/Object;)V

    #@2e
    goto :goto_0
.end method

.method protected setReusable(Z)V
    .locals 0
    .param p1, "reusable"    # Z

    #@0
    .prologue
    .line 168
    iput-boolean p1, p0, Landroid/filterfw/core/Frame;->mReusable:Z

    #@2
    .line 167
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 122
    iput-wide p1, p0, Landroid/filterfw/core/Frame;->mTimestamp:J

    #@2
    .line 121
    return-void
.end method
