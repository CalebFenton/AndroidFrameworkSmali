.class public interface abstract Landroid/location/LocationListener;
.super Ljava/lang/Object;
.source "LocationListener.java"


# virtual methods
.method public whitelist onFlushComplete(I)V
    .registers 2
    .param p1, "requestCode"    # I

    .line 73
    return-void
.end method

.method public abstract whitelist onLocationChanged(Landroid/location/Location;)V
.end method

.method public whitelist onLocationChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 62
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-interface {p0, v2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    .end local v1    # "i":I
    :cond_13
    return-void
.end method

.method public whitelist onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 112
    return-void
.end method

.method public whitelist onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 99
    return-void
.end method

.method public whitelist onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    return-void
.end method
