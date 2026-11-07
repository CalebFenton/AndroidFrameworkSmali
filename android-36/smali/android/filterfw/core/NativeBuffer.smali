.class public Landroid/filterfw/core/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# instance fields
.field private greylist-max-o mAttachedFrame:Landroid/filterfw/core/Frame;

.field private greylist-max-o mDataPointer:J

.field private greylist-max-o mOwnsData:Z

.field private greylist-max-o mRefCount:I

.field private greylist-max-o mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 104
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    .line 33
    iput-boolean v0, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    .line 37
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 4
    .param p1, "count"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    .line 33
    iput-boolean v0, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    .line 40
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-direct {p0, v1}, Landroid/filterfw/core/NativeBuffer;->allocate(I)Z

    .line 41
    iput-boolean v0, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    .line 42
    return-void
.end method

.method private native greylist-max-o allocate(I)Z
.end method

.method private native greylist-max-o deallocate(Z)Z
.end method

.method private native greylist-max-o nativeCopyTo(Landroid/filterfw/core/NativeBuffer;)Z
.end method


# virtual methods
.method protected greylist-max-o assertReadable()V
    .registers 5

    .line 114
    iget-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    .line 115
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 118
    :cond_18
    return-void

    .line 116
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempting to read from null data frame!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o assertWritable()V
    .registers 3

    .line 121
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_7

    .line 124
    return-void

    .line 122
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to modify read-only native (structured) data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o attachToFrame(Landroid/filterfw/core/Frame;)V
    .registers 2
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 110
    iput-object p1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    .line 111
    return-void
.end method

.method public greylist-max-o count()I
    .registers 5

    .line 64
    iget-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public greylist-max-o getElementSize()I
    .registers 2

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o isReadOnly()Z
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o mutableCopy()Landroid/filterfw/core/NativeBuffer;
    .registers 6

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "result":Landroid/filterfw/core/NativeBuffer;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, "myClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/NativeBuffer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_20

    .line 52
    .end local v0    # "result":Landroid/filterfw/core/NativeBuffer;
    .end local v1    # "myClass":Ljava/lang/Class;
    .local v2, "result":Landroid/filterfw/core/NativeBuffer;
    nop

    .line 53
    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    if-lez v0, :cond_1f

    invoke-direct {p0, v2}, Landroid/filterfw/core/NativeBuffer;->nativeCopyTo(Landroid/filterfw/core/NativeBuffer;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 54
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to copy NativeBuffer to mutable instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1f
    :goto_1f
    return-object v2

    .line 49
    .end local v2    # "result":Landroid/filterfw/core/NativeBuffer;
    .restart local v0    # "result":Landroid/filterfw/core/NativeBuffer;
    :catch_20
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to allocate a copy of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "! Make sure the class has a default constructor!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o release()Landroid/filterfw/core/NativeBuffer;
    .registers 5

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "doDealloc":Z
    iget-object v1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_12

    .line 84
    iget-object v1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    move-result-object v1

    if-nez v1, :cond_10

    move v2, v3

    :cond_10
    move v0, v2

    goto :goto_21

    .line 85
    :cond_12
    iget-boolean v1, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    if-eqz v1, :cond_21

    .line 86
    iget v1, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    .line 87
    iget v1, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    if-nez v1, :cond_20

    move v2, v3

    :cond_20
    move v0, v2

    .line 91
    :cond_21
    :goto_21
    if-eqz v0, :cond_2a

    .line 92
    iget-boolean v1, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    invoke-direct {p0, v1}, Landroid/filterfw/core/NativeBuffer;->deallocate(Z)Z

    .line 93
    const/4 v1, 0x0

    return-object v1

    .line 95
    :cond_2a
    return-object p0
.end method

.method public greylist-max-o retain()Landroid/filterfw/core/NativeBuffer;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_a

    .line 73
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    goto :goto_14

    .line 74
    :cond_a
    iget-boolean v0, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    if-eqz v0, :cond_14

    .line 75
    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    .line 77
    :cond_14
    :goto_14
    return-object p0
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    return v0
.end method
