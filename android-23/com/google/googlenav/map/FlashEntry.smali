.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
.super Ljava/lang/Object;
.source "FlashEntry.java"


# static fields
.field static SIZE_IN_CATALOG:I


# instance fields
.field private final dataSize:I

.field private flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

.field private final tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/16 v0, 0x10

    #@2
    .line 31
    sput v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->SIZE_IN_CATALOG:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .locals 4
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@0
    .prologue
    .line 41
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getDataSize()I

    #@b
    move-result v1

    #@c
    invoke-direct {p0, v0, v2, v3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JI)V

    #@f
    .line 43
    return-void
.end method

.method private constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JI)V
    .locals 0
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "time"    # J
    .param p4, "dataSize"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@5
    .line 47
    invoke-virtual {p0, p2, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setLastAccessTime(J)V

    #@8
    .line 48
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    #@a
    .line 49
    return-void
.end method

.method public static readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .locals 6
    .param p0, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 113
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    #@3
    move-result v2

    #@4
    .line 114
    .local v2, "time":I
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    #@7
    move-result v0

    #@8
    .line 115
    .local v0, "dataSize":I
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@b
    move-result-object v1

    #@c
    .line 117
    .local v1, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@e
    int-to-long v4, v2

    #@f
    invoke-direct {v3, v1, v4, v5, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JI)V

    #@12
    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 135
    if-eq p0, p1, :cond_1

    #@4
    .line 138
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@6
    if-eqz v3, :cond_2

    #@8
    move-object v0, p1

    #@9
    .line 142
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@b
    .line 144
    .local v0, "flashEntry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    #@d
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    #@f
    if-ne v3, v4, :cond_3

    #@11
    .line 148
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@13
    if-eqz v3, :cond_4

    #@15
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@17
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@19
    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    :cond_0
    :goto_0
    return v1

    #@1e
    .line 136
    .end local v0    # "flashEntry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_1
    return v2

    #@1f
    .line 139
    :cond_2
    return v1

    #@20
    .line 145
    .restart local v0    # "flashEntry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_3
    return v1

    #@21
    .line 148
    :cond_4
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@23
    if-nez v3, :cond_0

    #@25
    move v1, v2

    #@26
    goto :goto_0
.end method

.method public getByteSize()I
    .locals 1

    #@0
    .prologue
    .line 89
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    #@2
    add-int/lit8 v0, v0, 0xc

    #@4
    return v0
.end method

.method public getFlashRecord()Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@2
    return-object v0
.end method

.method public getLastAccessTime()J
    .locals 4

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->time:I

    #@2
    int-to-long v0, v0

    #@3
    const-wide/32 v2, 0x424b1f68

    #@6
    add-long/2addr v0, v2

    #@7
    const-wide/16 v2, 0x3e8

    #@9
    mul-long/2addr v0, v2

    #@a
    return-wide v0
.end method

.method public getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 155
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 156
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1d

    #@7
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    #@9
    add-int v0, v1, v2

    #@b
    .line 157
    return v0

    #@c
    .line 155
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@e
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode()I

    #@11
    move-result v0

    #@12
    goto :goto_0
.end method

.method public setFlashRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    .locals 2
    .param p1, "newRecord"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 57
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->flashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@6
    .line 58
    return-void

    #@7
    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "FlashRecord already set"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
.end method

.method public setLastAccessTime(J)V
    .locals 5
    .param p1, "time"    # J

    #@0
    .prologue
    const-wide/16 v0, 0x3e8

    #@2
    .line 72
    div-long v0, p1, v0

    #@4
    const-wide/32 v2, 0x424b1f68

    #@7
    sub-long/2addr v0, v2

    #@8
    long-to-int v0, v0

    #@9
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->time:I

    #@b
    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@7
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "B"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method

.method public writeToCatalog(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "os"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->time:I

    #@2
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    #@5
    .line 130
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->dataSize:I

    #@7
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    #@a
    .line 131
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->tile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@c
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    #@f
    .line 132
    return-void
.end method
