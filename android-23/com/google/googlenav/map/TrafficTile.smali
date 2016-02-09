.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
.super Ljava/lang/Object;
.source "TrafficTile.java"


# instance fields
.field private dataTime:J

.field private lastAccess:J

.field private final location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .locals 2
    .param p1, "location"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/high16 v0, -0x8000000000000000L

    #@5
    .line 47
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->dataTime:J

    #@7
    .line 55
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@9
    .line 56
    return-void
.end method


# virtual methods
.method public getDataTime()J
    .locals 2

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->dataTime:J

    #@8
    :goto_0
    return-wide v0

    #@9
    :cond_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@14
    move-result-wide v0

    #@15
    goto :goto_0
.end method

.method getLastAccess()J
    .locals 2

    #@0
    .prologue
    .line 172
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->lastAccess:J

    #@2
    return-wide v0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2
    return-object v0
.end method

.method public getTrafficRoads()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@2
    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 179
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@3
    if-nez v1, :cond_1

    #@5
    :cond_0
    :goto_0
    return v0

    #@6
    :cond_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@8
    array-length v1, v1

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public readData([B)V
    .locals 12
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v11, 0x6

    #@2
    .line 119
    new-instance v0, Ljava/io/DataInputStream;

    #@4
    new-instance v9, Ljava/io/ByteArrayInputStream;

    #@6
    invoke-direct {v9, p1, v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@9
    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@c
    .line 121
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    #@f
    move-result v9

    #@10
    const v10, 0x54524133

    #@13
    if-ne v10, v9, :cond_0

    #@15
    .line 126
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    #@18
    move-result v3

    #@19
    .line 129
    .local v3, "inflatedDataSize":I
    array-length v9, p1

    #@1a
    add-int/lit8 v4, v9, -0x6

    #@1c
    .line 132
    .local v4, "lengthOfDeflatedBytes":I
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;->isTest()Z

    #@1f
    move-result v9

    #@20
    if-nez v9, :cond_1

    #@22
    .line 141
    invoke-static {p1, v11, v4, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->inflate([BIII)[B

    #@25
    move-result-object v9

    #@26
    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    #@29
    move-result-object v1

    #@2a
    .line 146
    .local v1, "dis":Ljava/io/DataInput;
    :goto_0
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    #@2d
    move-result v8

    #@2e
    .line 147
    .local v8, "roadwayPropertyLength":I
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    #@31
    move-result v6

    #@32
    .line 148
    .local v6, "roadPointLength":I
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    #@35
    move-result v5

    #@36
    .line 149
    .local v5, "numRoadways":I
    new-array v7, v5, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@38
    .local v7, "roads":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    const/4 v2, 0x0

    #@39
    .line 150
    .local v2, "i":I
    :goto_1
    if-lt v2, v5, :cond_2

    #@3b
    .line 157
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@3e
    move-result-object v9

    #@3f
    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@42
    move-result-object v9

    #@43
    invoke-interface {v9}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@46
    move-result-wide v10

    #@47
    invoke-virtual {p0, v10, v11, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setData(J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;)V

    #@4a
    .line 159
    return-void

    #@4b
    .line 122
    .end local v1    # "dis":Ljava/io/DataInput;
    .end local v2    # "i":I
    .end local v3    # "inflatedDataSize":I
    .end local v4    # "lengthOfDeflatedBytes":I
    .end local v5    # "numRoadways":I
    .end local v6    # "roadPointLength":I
    .end local v7    # "roads":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .end local v8    # "roadwayPropertyLength":I
    :cond_0
    new-instance v9, Ljava/io/IOException;

    #@4d
    const-string/jumbo v10, "Bad traffic header"

    #@50
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@53
    throw v9

    #@54
    .line 138
    .restart local v3    # "inflatedDataSize":I
    .restart local v4    # "lengthOfDeflatedBytes":I
    :cond_1
    new-instance v1, Ljava/io/DataInputStream;

    #@56
    new-instance v9, Ljava/io/ByteArrayInputStream;

    #@58
    invoke-direct {v9, p1, v11, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@5b
    invoke-direct {v1, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@5e
    .restart local v1    # "dis":Ljava/io/DataInput;
    goto :goto_0

    #@5f
    .line 153
    .restart local v2    # "i":I
    .restart local v5    # "numRoadways":I
    .restart local v6    # "roadPointLength":I
    .restart local v7    # "roads":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .restart local v8    # "roadwayPropertyLength":I
    :cond_2
    invoke-static {v1, v8, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;->readTrafficRoad(Ljava/io/DataInput;II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@62
    move-result-object v9

    #@63
    aput-object v9, v7, v2

    #@65
    .line 150
    add-int/lit8 v2, v2, 0x1

    #@67
    goto :goto_1
.end method

.method protected setData(J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "roads"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@0
    .prologue
    .line 105
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->dataTime:J

    #@2
    .line 106
    iput-object p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->roads:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@4
    .line 107
    return-void
.end method

.method public setLastAccess(J)V
    .locals 1
    .param p1, "time"    # J

    #@0
    .prologue
    .line 165
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->lastAccess:J

    #@2
    .line 166
    return-void
.end method
