.class public interface abstract Lcom/google/googlenav/map/MapTileStorage;
.super Ljava/lang/Object;
.source "MapTileStorage.java"


# virtual methods
.method public abstract close(Z)V
.end method

.method public abstract getMapTile(Lcom/google/googlenav/map/Tile;)Lcom/google/googlenav/map/MapTile;
.end method

.method public abstract mapChanged()V
.end method

.method public abstract setTileEditionAndTextSize(II)Z
.end method

.method public abstract writeCache()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
