.class public interface abstract Landroid/location/Geocoder$GeocodeListener;
.super Ljava/lang/Object;
.source "Geocoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Geocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GeocodeListener"
.end annotation


# virtual methods
.method public whitelist onError(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 71
    return-void
.end method

.method public abstract whitelist onGeocode(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation
.end method
