.class public Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
.super Ljava/lang/Object;
.source "LayerInfo.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private maxZoomLevel:I

.field private minZoomLevel:I

.field private name:Ljava/lang/String;

.field private parameters:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->id:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParameters()[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->parameters:[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@2
    return-object v0
.end method

.method public isValidZoomLevel(I)Z
    .locals 1
    .param p1, "currentZoomLevel"    # I

    #@0
    .prologue
    .line 358
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->minZoomLevel:I

    #@2
    if-ge p1, v0, :cond_1

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->maxZoomLevel:I

    #@8
    if-gt p1, v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->id:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", name="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->name:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", description="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->description:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
