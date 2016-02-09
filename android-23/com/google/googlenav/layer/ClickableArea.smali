.class public Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
.super Ljava/lang/Object;
.source "ClickableArea.java"


# instance fields
.field private final centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

.field private final height:I

.field private final iconInactiveIndex:I

.field private final iconIndex:I

.field private final iconShadowIndex:I

.field private items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

.field private final type:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 8
    .param p1, "clickableArea"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v7, 0x2

    #@3
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 33
    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    #@9
    move-result v4

    #@a
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->type:I

    #@c
    .line 35
    invoke-virtual {p1, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@f
    move-result-object v1

    #@10
    .local v1, "icon":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    const/16 v4, 0x1f

    #@12
    .line 39
    invoke-virtual {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@15
    move-result-object v2

    #@16
    .line 42
    .local v2, "pixelPoint":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v2, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    #@19
    move-result v4

    #@1a
    invoke-virtual {v2, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    #@1d
    move-result v5

    #@1e
    invoke-virtual {v2, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    #@21
    move-result v6

    #@22
    invoke-static {v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getMapPointFromXY(III)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@25
    move-result-object v4

    #@26
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@28
    const/16 v4, 0x20

    #@2a
    .line 47
    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I

    #@2d
    move-result v4

    #@2e
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->width:I

    #@30
    const/16 v4, 0x21

    #@32
    .line 49
    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I

    #@35
    move-result v4

    #@36
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->height:I

    #@38
    const/16 v4, 0x22

    #@3a
    .line 52
    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrNegativeOne(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    #@3d
    move-result-wide v4

    #@3e
    long-to-int v4, v4

    #@3f
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconIndex:I

    #@41
    const/16 v4, 0x23

    #@43
    .line 56
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconIndex:I

    #@45
    invoke-static {v1, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrDefault(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)I

    #@48
    move-result v4

    #@49
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconInactiveIndex:I

    #@4b
    const/16 v4, 0x24

    #@4d
    .line 58
    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrNegativeOne(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    #@50
    move-result-wide v4

    #@51
    long-to-int v4, v4

    #@52
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconShadowIndex:I

    #@54
    .line 62
    invoke-virtual {p1, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@57
    move-result v3

    #@58
    .line 63
    .local v3, "size":I
    new-array v4, v3, [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    #@5a
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    #@5c
    const/4 v0, 0x0

    #@5d
    .line 64
    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    #@5f
    .line 68
    return-void

    #@60
    .line 65
    :cond_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    #@62
    new-instance v5, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    #@64
    invoke-virtual {p1, v7, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@67
    move-result-object v6

    #@68
    invoke-direct {v5, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@6b
    aput-object v5, v4, v0

    #@6d
    .line 64
    add-int/lit8 v0, v0, 0x1

    #@6f
    goto :goto_0
.end method


# virtual methods
.method public getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->height:I

    #@2
    return v0
.end method

.method public getIconInactiveIndex()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconInactiveIndex:I

    #@2
    return v0
.end method

.method public getIconIndex()I
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconIndex:I

    #@2
    return v0
.end method

.method public getIconShadowIndex()I
    .locals 1

    #@0
    .prologue
    .line 95
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->iconShadowIndex:I

    #@2
    return v0
.end method

.method public getItems()[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->width:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CenterPoint: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->centerPoint:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->items:[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;

    #@1b
    array-length v1, v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    const-string/jumbo v1, " items"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
