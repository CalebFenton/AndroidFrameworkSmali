.class public Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;
.super Ljava/io/OutputStream;
.source "MarkedOutputStream.java"


# instance fields
.field private contents:[B

.field private markers:[I

.field private nextContent:I

.field private nextMarker:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 34
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@4
    .line 27
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@6
    .line 32
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    #@8
    .line 35
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->clear()V

    #@b
    .line 36
    return-void
.end method

.method private static calculateSize(III)I
    .locals 1
    .param p0, "needed"    # I
    .param p1, "size"    # I
    .param p2, "current"    # I

    #@0
    .prologue
    .line 66
    sub-int v0, p1, p2

    #@2
    .line 67
    .local v0, "remaining":I
    :goto_0
    if-lt v0, p0, :cond_0

    #@4
    .line 71
    return p1

    #@5
    .line 68
    :cond_0
    add-int/2addr v0, p1

    #@6
    .line 69
    shl-int/lit8 p1, p1, 0x1

    #@8
    goto :goto_0
.end method

.method private expandContentsIfNecessary(I)V
    .locals 5
    .param p1, "needed"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 120
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    #@3
    array-length v2, v2

    #@4
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@6
    invoke-static {p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->calculateSize(III)I

    #@9
    move-result v1

    #@a
    .line 121
    .local v1, "size":I
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    #@c
    array-length v2, v2

    #@d
    if-gt v1, v2, :cond_0

    #@f
    .line 126
    :goto_0
    return-void

    #@10
    .line 122
    :cond_0
    new-array v0, v1, [B

    #@12
    .line 123
    .local v0, "newContents":[B
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    #@14
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@16
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 124
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    #@1b
    goto :goto_0
.end method

.method private expandMarkersIfNecessary(I)V
    .locals 5
    .param p1, "needed"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 75
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    #@3
    array-length v2, v2

    #@4
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    #@6
    invoke-static {p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->calculateSize(III)I

    #@9
    move-result v1

    #@a
    .line 76
    .local v1, "size":I
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    #@c
    array-length v2, v2

    #@d
    if-gt v1, v2, :cond_0

    #@f
    .line 81
    :goto_0
    return-void

    #@10
    .line 77
    :cond_0
    new-array v0, v1, [I

    #@12
    .line 78
    .local v0, "newMarkers":[I
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    #@14
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    #@16
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@19
    .line 79
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    #@1b
    goto :goto_0
.end method


# virtual methods
.method public addMarker(I)V
    .locals 3
    .param p1, "marker"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 102
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandMarkersIfNecessary(I)V

    #@4
    .line 103
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    #@6
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    #@8
    add-int/lit8 v2, v1, 0x1

    #@a
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    #@c
    aput p1, v0, v1

    #@e
    .line 104
    return-void
.end method

.method public availableContent()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@2
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 51
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->reset()V

    #@3
    const/16 v0, 0x10

    #@5
    .line 52
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    #@9
    const/4 v0, 0x1

    #@a
    .line 55
    new-array v0, v0, [I

    #@c
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    #@e
    .line 56
    return-void
.end method

.method public getMarker(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public numMarkers()I
    .locals 1

    #@0
    .prologue
    .line 95
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    #@2
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 42
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@3
    .line 43
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextMarker:I

    #@5
    .line 44
    return-void
.end method

.method public setMarker(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "marker"    # I

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->markers:[I

    #@2
    aput p2, v0, p1

    #@4
    .line 117
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 137
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    #@4
    .line 138
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    #@6
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@8
    add-int/lit8 v2, v1, 0x1

    #@a
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@c
    and-int/lit16 v2, p1, 0xff

    #@e
    int-to-byte v2, v2

    #@f
    int-to-byte v2, v2

    #@10
    aput-byte v2, v0, v1

    #@12
    .line 139
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    array-length v0, p1

    #@1
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    #@4
    const/4 v0, 0x0

    #@5
    .line 143
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    #@7
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@9
    array-length v3, p1

    #@a
    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@d
    .line 144
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@f
    array-length v1, p1

    #@10
    add-int/2addr v0, v1

    #@11
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@13
    .line 145
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    invoke-direct {p0, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    #@3
    .line 149
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    #@5
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@7
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a
    .line 150
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@c
    add-int/2addr v0, p3

    #@d
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->nextContent:I

    #@f
    .line 151
    return-void
.end method

.method public writeContentsTo(Ljava/io/OutputStream;II)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->contents:[B

    #@2
    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 134
    return-void
.end method
