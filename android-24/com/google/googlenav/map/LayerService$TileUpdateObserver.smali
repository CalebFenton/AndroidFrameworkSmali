.class public interface abstract Lcom/google/googlenav/map/LayerService$TileUpdateObserver;
.super Ljava/lang/Object;
.source "LayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlenav/map/LayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TileUpdateObserver"
.end annotation


# virtual methods
.method public abstract getLayerInfo()Lcom/google/googlenav/layer/LayerInfo;
.end method

.method public abstract setLayerTilesDirty()V
.end method

.method public abstract updateLayerInfo(Ljava/lang/String;[Lcom/google/common/io/protocol/ProtoBuf;)V
.end method
