.class public Landroid/filterfw/core/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# instance fields
.field private mAttachedFrame:Landroid/filterfw/core/Frame;

.field private mDataPointer:J

.field private mOwnsData:Z

.field private mRefCount:I

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 104
    const-string/jumbo v0, "filterfw"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 28
    const-wide/16 v0, 0x0

    #@6
    iput-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    #@8
    .line 29
    iput v2, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    #@a
    .line 33
    iput-boolean v2, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    #@c
    .line 34
    const/4 v0, 0x1

    #@d
    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    #@f
    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "count"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 28
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    #@9
    .line 29
    iput v2, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    #@b
    .line 33
    iput-boolean v2, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    #@d
    .line 34
    iput v3, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    #@f
    .line 40
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I

    #@12
    move-result v0

    #@13
    mul-int/2addr v0, p1

    #@14
    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeBuffer;->allocate(I)Z

    #@17
    .line 41
    iput-boolean v3, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    #@19
    .line 39
    return-void
.end method

.method private native allocate(I)Z
.end method

.method private native deallocate(Z)Z
.end method

.method private native nativeCopyTo(Landroid/filterfw/core/NativeBuffer;)Z
.end method


# virtual methods
.method protected assertReadable()V
    .locals 4

    #@0
    .prologue
    .line 114
    iget-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    #@a
    if-nez v0, :cond_1

    #@c
    .line 116
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@e
    const-string/jumbo v1, "Attempting to read from null data frame!"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 115
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    #@17
    if-eqz v0, :cond_2

    #@19
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    #@1b
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 113
    :cond_2
    return-void
.end method

.method protected assertWritable()V
    .locals 2

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->isReadOnly()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v1, "Attempting to modify read-only native (structured) data!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 120
    :cond_0
    return-void
.end method

.method attachToFrame(Landroid/filterfw/core/Frame;)V
    .locals 0
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    #@2
    .line 107
    return-void
.end method

.method public count()I
    .locals 4

    #@0
    .prologue
    .line 64
    iget-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    #@a
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I

    #@d
    move-result v1

    #@e
    div-int/2addr v0, v1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public getElementSize()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public mutableCopy()Landroid/filterfw/core/NativeBuffer;
    .locals 6

    #@0
    .prologue
    .line 45
    const/4 v2, 0x0

    #@1
    .line 47
    .local v2, "result":Landroid/filterfw/core/NativeBuffer;
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    .line 48
    .local v1, "myClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    .end local v2    # "result":Landroid/filterfw/core/NativeBuffer;
    check-cast v2, Landroid/filterfw/core/NativeBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 53
    .local v2, "result":Landroid/filterfw/core/NativeBuffer;
    iget v3, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    #@d
    if-lez v3, :cond_0

    #@f
    invoke-direct {p0, v2}, Landroid/filterfw/core/NativeBuffer;->nativeCopyTo(Landroid/filterfw/core/NativeBuffer;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 56
    :cond_0
    return-object v2

    #@16
    .line 49
    .end local v1    # "myClass":Ljava/lang/Class;
    .end local v2    # "result":Landroid/filterfw/core/NativeBuffer;
    :catch_0
    move-exception v0

    #@17
    .line 50
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@19
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v5, "Unable to allocate a copy of "

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    const-string/jumbo v5, "! Make "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 51
    const-string/jumbo v5, "sure the class has a default constructor!"

    #@37
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@42
    throw v3

    #@43
    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "myClass":Ljava/lang/Class;
    .restart local v2    # "result":Landroid/filterfw/core/NativeBuffer;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@45
    const-string/jumbo v4, "Failed to copy NativeBuffer to mutable instance!"

    #@48
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v3
.end method

.method public release()Landroid/filterfw/core/NativeBuffer;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 82
    const/4 v0, 0x0

    #@2
    .line 83
    .local v0, "doDealloc":Z
    iget-object v1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 84
    iget-object v1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    #@8
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@b
    move-result-object v1

    #@c
    if-nez v1, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    .line 91
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    #@11
    .line 92
    iget-boolean v1, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    #@13
    invoke-direct {p0, v1}, Landroid/filterfw/core/NativeBuffer;->deallocate(Z)Z

    #@16
    .line 93
    return-object v2

    #@17
    .line 84
    :cond_1
    const/4 v0, 0x0

    #@18
    goto :goto_0

    #@19
    .line 85
    :cond_2
    iget-boolean v1, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    #@1b
    if-eqz v1, :cond_0

    #@1d
    .line 86
    iget v1, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    #@1f
    add-int/lit8 v1, v1, -0x1

    #@21
    iput v1, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    #@23
    .line 87
    iget v1, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    #@25
    if-nez v1, :cond_3

    #@27
    const/4 v0, 0x1

    #@28
    goto :goto_0

    #@29
    :cond_3
    const/4 v0, 0x0

    #@2a
    goto :goto_0

    #@2b
    .line 95
    :cond_4
    return-object p0
.end method

.method public retain()Landroid/filterfw/core/NativeBuffer;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 73
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    #@6
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    #@9
    .line 77
    :cond_0
    :goto_0
    return-object p0

    #@a
    .line 74
    :cond_1
    iget-boolean v0, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 75
    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    #@14
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    #@2
    return v0
.end method
