.class public Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;
.super Ljava/io/InputStream;
.source "BoundInputStream.java"


# instance fields
.field private base:Ljava/io/InputStream;

.field private buf:[B

.field private bufPos:I

.field private bufSize:I

.field private remaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "base"    # Ljava/io/InputStream;
    .param p2, "len"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 35
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->base:Ljava/io/InputStream;

    #@5
    .line 36
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    #@7
    const/16 v0, 0x1000

    #@9
    .line 38
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@c
    move-result v0

    #@d
    new-array v0, v0, [B

    #@f
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    #@11
    .line 39
    return-void
.end method

.method private checkBuf()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 46
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 50
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    #@7
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 58
    :goto_0
    const/4 v0, 0x1

    #@c
    return v0

    #@d
    .line 47
    :cond_0
    return v4

    #@e
    .line 51
    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->base:Ljava/io/InputStream;

    #@10
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    #@12
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    #@14
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    #@16
    array-length v3, v3

    #@17
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    #@21
    .line 52
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    #@23
    if-lez v0, :cond_2

    #@25
    .line 56
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    #@27
    goto :goto_0

    #@28
    .line 53
    :cond_2
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    #@2a
    .line 54
    return v4
.end method


# virtual methods
.method public available()I
    .locals 2

    #@0
    .prologue
    .line 62
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    #@2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->checkBuf()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 69
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    #@c
    .line 70
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    #@e
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    #@14
    aget-byte v0, v0, v1

    #@16
    and-int/lit16 v0, v0, 0xff

    #@18
    return v0

    #@19
    :cond_0
    const/4 v0, -0x1

    #@1a
    .line 67
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->checkBuf()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 77
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufSize:I

    #@8
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    #@a
    sub-int/2addr v0, v1

    #@b
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    #@e
    move-result p3

    #@f
    .line 78
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->buf:[B

    #@11
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    #@13
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    .line 79
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    #@18
    add-int/2addr v0, p3

    #@19
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->bufPos:I

    #@1b
    .line 80
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    #@1d
    sub-int/2addr v0, p3

    #@1e
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/BoundInputStream;->remaining:I

    #@20
    .line 81
    return p3

    #@21
    :cond_0
    const/4 v0, -0x1

    #@22
    .line 75
    return v0
.end method
