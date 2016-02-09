.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
.super Ljava/lang/Object;
.source "TrafficRoad.java"


# instance fields
.field private final roadContent:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "roadContent"    # [B

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    #@5
    .line 50
    return-void
.end method

.method private static readShortFrom([BI)I
    .locals 2
    .param p0, "content"    # [B
    .param p1, "startByte"    # I

    #@0
    .prologue
    .line 147
    aget-byte v0, p0, p1

    #@2
    shl-int/lit8 v0, v0, 0x8

    #@4
    add-int/lit8 v1, p1, 0x1

    #@6
    aget-byte v1, p0, v1

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public static readTrafficRoad(Ljava/io/DataInput;II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .locals 9
    .param p0, "dis"    # Ljava/io/DataInput;
    .param p1, "roadwayPropertyLength"    # I
    .param p2, "roadPointLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 107
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    #@3
    move-result v6

    #@4
    .line 108
    .local v6, "trafficLineWidth":I
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    #@7
    move-result v5

    #@8
    .line 109
    .local v5, "trafficLineBackgroundWidth":I
    add-int/lit8 v7, p1, -0x2

    #@a
    invoke-interface {p0, v7}, Ljava/io/DataInput;->skipBytes(I)I

    #@d
    .line 112
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    #@10
    move-result v3

    #@11
    .line 113
    .local v3, "numPoints":I
    mul-int/lit8 v7, v3, 0x5

    #@13
    add-int/lit8 v7, v7, 0x2

    #@15
    new-array v4, v7, [B

    #@17
    .local v4, "roadPointsContent":[B
    const/4 v7, 0x0

    #@18
    .line 118
    const/4 v1, 0x1

    #@19
    .local v1, "nextByte":I
    int-to-byte v8, v6

    #@1a
    int-to-byte v8, v8

    #@1b
    aput-byte v8, v4, v7

    #@1d
    .line 119
    add-int/lit8 v2, v1, 0x1

    #@1f
    .end local v1    # "nextByte":I
    .local v2, "nextByte":I
    int-to-byte v7, v5

    #@20
    int-to-byte v7, v7

    #@21
    aput-byte v7, v4, v1

    #@23
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    move v1, v2

    #@25
    .line 121
    .end local v2    # "nextByte":I
    .restart local v1    # "nextByte":I
    :goto_0
    if-lt v0, v3, :cond_0

    #@27
    .line 137
    new-instance v7, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@29
    invoke-direct {v7, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;-><init>([B)V

    #@2c
    return-object v7

    #@2d
    .line 124
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    #@30
    move-result v7

    #@31
    invoke-static {v7, v4, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->writeShortTo(I[BI)I

    #@34
    move-result v1

    #@35
    .line 127
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    #@38
    move-result v7

    #@39
    invoke-static {v7, v4, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->writeShortTo(I[BI)I

    #@3c
    move-result v1

    #@3d
    .line 130
    add-int/lit8 v2, v1, 0x1

    #@3f
    .end local v1    # "nextByte":I
    .restart local v2    # "nextByte":I
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    #@42
    move-result v7

    #@43
    int-to-byte v7, v7

    #@44
    int-to-byte v7, v7

    #@45
    aput-byte v7, v4, v1

    #@47
    .line 133
    add-int/lit8 v7, p2, -0x5

    #@49
    invoke-interface {p0, v7}, Ljava/io/DataInput;->skipBytes(I)I

    #@4c
    .line 121
    add-int/lit8 v0, v0, 0x1

    #@4e
    move v1, v2

    #@4f
    .end local v2    # "nextByte":I
    .restart local v1    # "nextByte":I
    goto :goto_0
.end method

.method private static writeShortTo(I[BI)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "content"    # [B
    .param p2, "nextByte"    # I

    #@0
    .prologue
    .line 141
    add-int/lit8 v0, p2, 0x1

    #@2
    .end local p2    # "nextByte":I
    .local v0, "nextByte":I
    shr-int/lit8 v1, p0, 0x8

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    int-to-byte v1, v1

    #@7
    int-to-byte v1, v1

    #@8
    aput-byte v1, p1, p2

    #@a
    .line 142
    add-int/lit8 p2, v0, 0x1

    #@c
    .end local v0    # "nextByte":I
    .restart local p2    # "nextByte":I
    and-int/lit16 v1, p0, 0xff

    #@e
    int-to-byte v1, v1

    #@f
    int-to-byte v1, v1

    #@10
    aput-byte v1, p1, v0

    #@12
    .line 143
    return p2
.end method


# virtual methods
.method public getNumPoints()I
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    #@2
    array-length v0, v0

    #@3
    add-int/lit8 v0, v0, -0x2

    #@5
    div-int/lit8 v0, v0, 0x5

    #@7
    return v0
.end method

.method public getSpeedCategory(I)I
    .locals 2
    .param p1, "pointIndex"    # I

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    #@2
    mul-int/lit8 v1, p1, 0x5

    #@4
    add-int/lit8 v1, v1, 0x6

    #@6
    aget-byte v0, v0, v1

    #@8
    and-int/lit16 v0, v0, 0xff

    #@a
    return v0
.end method

.method public getTrafficLineBackgroundWidth()I
    .locals 2

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    #@2
    const/4 v1, 0x1

    #@3
    aget-byte v0, v0, v1

    #@5
    and-int/lit16 v0, v0, 0xff

    #@7
    return v0
.end method

.method public getTrafficLineWidth()I
    .locals 2

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    #@2
    const/4 v1, 0x0

    #@3
    aget-byte v0, v0, v1

    #@5
    and-int/lit16 v0, v0, 0xff

    #@7
    return v0
.end method

.method public getXOffset(I)I
    .locals 2
    .param p1, "pointIndex"    # I

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    #@2
    mul-int/lit8 v1, p1, 0x5

    #@4
    add-int/lit8 v1, v1, 0x2

    #@6
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->readShortFrom([BI)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getYOffset(I)I
    .locals 2
    .param p1, "pointIndex"    # I

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->roadContent:[B

    #@2
    mul-int/lit8 v1, p1, 0x5

    #@4
    add-int/lit8 v1, v1, 0x4

    #@6
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->readShortFrom([BI)I

    #@9
    move-result v0

    #@a
    return v0
.end method
