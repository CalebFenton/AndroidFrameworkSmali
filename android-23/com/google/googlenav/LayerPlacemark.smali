.class public Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;
.source "LayerPlacemark.java"


# instance fields
.field private activeIconIndex:I

.field private authorGaiaId:J

.field private authorName:Ljava/lang/String;

.field private clusterDocId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private distanceSquaredToTarget:J

.field private height:I

.field private final itemId:Ljava/lang/String;

.field private final layerId:Ljava/lang/String;

.field private locationName:Ljava/lang/String;

.field private mediaUrls:Ljava/util/Vector;

.field private needToFetchDetails:Z

.field private nextRefreshTime:J

.field private normalIconIndex:I

.field private numberComments:I

.field private shadowIconIndex:I

.field private snippet:Ljava/lang/String;

.field private timestamp:J

.field private width:I


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    .locals 9
    .param p1, "item"    # Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
    .param p2, "area"    # Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    .line 141
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getName()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    invoke-direct {p0, v4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;-><init>(Landroid_maps_conflict_avoidance/com/google/map/Geometry;Ljava/lang/String;)V

    #@f
    .line 75
    iput-boolean v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->needToFetchDetails:Z

    #@11
    .line 142
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getLayerId()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->layerId:Ljava/lang/String;

    #@17
    .line 143
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getItemId()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->itemId:Ljava/lang/String;

    #@1d
    .line 144
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getSnippet()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->snippet:Ljava/lang/String;

    #@23
    .line 145
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getIconIndex()I

    #@26
    move-result v4

    #@27
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->activeIconIndex:I

    #@29
    .line 146
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getIconInactiveIndex()I

    #@2c
    move-result v4

    #@2d
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->normalIconIndex:I

    #@2f
    .line 147
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getIconShadowIndex()I

    #@32
    move-result v4

    #@33
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->shadowIconIndex:I

    #@35
    .line 148
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getWidth()I

    #@38
    move-result v4

    #@39
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->width:I

    #@3b
    .line 149
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;->getHeight()I

    #@3e
    move-result v4

    #@3f
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->height:I

    #@41
    .line 150
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->needToFetchDetails:Z

    #@43
    const-wide/16 v4, -0x1

    #@45
    .line 151
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->nextRefreshTime:J

    #@47
    const-wide v4, 0x7fffffffffffffffL

    #@4c
    .line 152
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->distanceSquaredToTarget:J

    #@4e
    .line 154
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->getBuzzSnippet()Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@51
    move-result-object v0

    #@52
    .line 156
    .local v0, "activitySnippet":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_1

    #@54
    .line 195
    :cond_0
    return-void

    #@55
    :cond_1
    const/4 v4, 0x2

    #@56
    .line 159
    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getSubProtoOrNull(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@59
    move-result-object v1

    #@5a
    .line 162
    .local v1, "author":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    if-nez v1, :cond_2

    #@5c
    :goto_0
    const/4 v4, 0x5

    #@5d
    .line 171
    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoLongValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    #@60
    move-result-wide v4

    #@61
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->timestamp:J

    #@63
    const/4 v4, 0x6

    #@64
    .line 174
    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)I

    #@67
    move-result v4

    #@68
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->numberComments:I

    #@6a
    const/4 v4, 0x7

    #@6b
    .line 177
    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->clusterDocId:Ljava/lang/String;

    #@71
    .line 180
    invoke-static {v0, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->content:Ljava/lang/String;

    #@77
    const/16 v4, 0x8

    #@79
    .line 183
    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->locationName:Ljava/lang/String;

    #@7f
    const/16 v4, 0x9

    #@81
    .line 187
    invoke-static {v0, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrFalse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Z

    #@84
    move-result v4

    #@85
    if-eqz v4, :cond_0

    #@87
    .line 188
    invoke-virtual {v0, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@8a
    move-result v3

    #@8b
    .line 189
    .local v3, "size":I
    new-instance v4, Ljava/util/Vector;

    #@8d
    invoke-direct {v4, v3}, Ljava/util/Vector;-><init>(I)V

    #@90
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->mediaUrls:Ljava/util/Vector;

    #@92
    const/4 v2, 0x0

    #@93
    .line 190
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    #@95
    .line 191
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->mediaUrls:Ljava/util/Vector;

    #@97
    invoke-virtual {v0, v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    #@9a
    move-result-object v5

    #@9b
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@9e
    .line 190
    add-int/lit8 v2, v2, 0x1

    #@a0
    goto :goto_1

    #@a1
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    const/4 v4, 0x4

    #@a2
    .line 163
    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->authorName:Ljava/lang/String;

    #@a8
    const/4 v4, 0x3

    #@a9
    .line 166
    invoke-static {v1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getProtoLongValueOrZero(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;I)J

    #@ac
    move-result-wide v4

    #@ad
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/LayerPlacemark;->authorGaiaId:J

    #@af
    goto :goto_0
.end method
