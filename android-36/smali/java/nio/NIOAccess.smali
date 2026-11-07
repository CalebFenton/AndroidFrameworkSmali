.class public final Ljava/nio/NIOAccess;
.super Ljava/lang/Object;
.source "NIOAccess.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist test-api getBaseArray(Ljava/nio/Buffer;)Ljava/lang/Object;
    .registers 2
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 64
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/nio/Buffer;->array()Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static greylist test-api getBaseArrayOffset(Ljava/nio/Buffer;)I
    .registers 3
    .param p0, "b"    # Ljava/nio/Buffer;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static greylist getBasePointer(Ljava/nio/Buffer;)J
    .registers 6
    .param p0, "b"    # Ljava/nio/Buffer;

    .line 45
    iget-wide v0, p0, Ljava/nio/Buffer;->address:J

    .line 46
    .local v0, "address":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    .line 47
    return-wide v2

    .line 49
    :cond_9
    iget v2, p0, Ljava/nio/Buffer;->position:I

    iget v3, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method
