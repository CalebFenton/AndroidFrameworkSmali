.class public Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;
.super Ljava/lang/Object;
.source "LayerItem.java"


# instance fields
.field private final activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field private final isRoutable:Z

.field private final itemId:Ljava/lang/String;

.field private final layerId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final ranking:I

.field private final rating:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field private final snippet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 6
    .param p1, "layerItem"    # Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@0
    .prologue
    const/4 v5, 0x6

    #@1
    const/4 v4, 0x5

    #@2
    const/4 v3, 0x4

    #@3
    const/4 v2, 0x3

    #@4
    const/4 v1, 0x0

    #@5
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    const/4 v0, 0x1

    #@9
    .line 30
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->layerId:Ljava/lang/String;

    #@f
    const/4 v0, 0x2

    #@10
    .line 31
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->itemId:Ljava/lang/String;

    #@16
    .line 33
    invoke-virtual {p1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_0

    #@1c
    const-string/jumbo v0, ""

    #@1f
    :goto_0
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->name:Ljava/lang/String;

    #@21
    .line 35
    invoke-virtual {p1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_1

    #@27
    const-string/jumbo v0, ""

    #@2a
    :goto_1
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->snippet:Ljava/lang/String;

    #@2c
    .line 37
    invoke-virtual {p1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_2

    #@32
    move v0, v1

    #@33
    :goto_2
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->isRoutable:Z

    #@35
    .line 39
    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_3

    #@3b
    const/4 v0, 0x0

    #@3c
    :goto_3
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->rating:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@3e
    const/4 v0, 0x7

    #@3f
    .line 41
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_4

    #@45
    :goto_4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->ranking:I

    #@47
    const/16 v0, 0x9

    #@49
    .line 43
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_5

    #@4f
    const/4 v0, 0x0

    #@50
    :goto_5
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@52
    .line 45
    return-void

    #@53
    .line 33
    :cond_0
    invoke-virtual {p1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    goto :goto_0

    #@58
    .line 35
    :cond_1
    invoke-virtual {p1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    goto :goto_1

    #@5d
    .line 37
    :cond_2
    invoke-virtual {p1, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    #@60
    move-result v0

    #@61
    goto :goto_2

    #@62
    .line 39
    :cond_3
    invoke-virtual {p1, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@65
    move-result-object v0

    #@66
    goto :goto_3

    #@67
    :cond_4
    const/4 v0, 0x7

    #@68
    .line 41
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getInt(I)I

    #@6b
    move-result v1

    #@6c
    goto :goto_4

    #@6d
    :cond_5
    const/16 v0, 0x9

    #@6f
    .line 43
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@72
    move-result-object v0

    #@73
    goto :goto_5
.end method


# virtual methods
.method public getBuzzSnippet()Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->activitySnippet:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2
    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->itemId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLayerId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->layerId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->snippet:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "layerId: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->layerId:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", itemId: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->itemId:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", name: "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->name:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, ", snippet: "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerItem;->snippet:Ljava/lang/String;

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method
