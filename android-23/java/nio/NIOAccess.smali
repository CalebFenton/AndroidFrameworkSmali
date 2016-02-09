.class final Ljava/nio/NIOAccess;
.super Ljava/lang/Object;
.source "NIOAccess.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getBaseArray(Ljava/nio/Buffer;)Ljava/lang/Object;
    .locals 1
    .param p0, "b"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/nio/Buffer;->array()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method static getBaseArrayOffset(Ljava/nio/Buffer;)I
    .locals 2
    .param p0, "b"    # Ljava/nio/Buffer;

    #@0
    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/nio/Buffer;->arrayOffset()I

    #@9
    move-result v0

    #@a
    iget v1, p0, Ljava/nio/Buffer;->position:I

    #@c
    add-int/2addr v0, v1

    #@d
    iget v1, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    #@f
    shl-int/2addr v0, v1

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method static getBasePointer(Ljava/nio/Buffer;)J
    .locals 6
    .param p0, "b"    # Ljava/nio/Buffer;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 30
    iget-wide v0, p0, Ljava/nio/Buffer;->effectiveDirectAddress:J

    #@4
    .line 31
    .local v0, "address":J
    cmp-long v2, v0, v4

    #@6
    if-nez v2, :cond_0

    #@8
    .line 32
    return-wide v4

    #@9
    .line 34
    :cond_0
    iget v2, p0, Ljava/nio/Buffer;->position:I

    #@b
    iget v3, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    #@d
    shl-int/2addr v2, v3

    #@e
    int-to-long v2, v2

    #@f
    add-long/2addr v2, v0

    #@10
    return-wide v2
.end method
