.class Landroid/location/Geocoder$GeocodeCallbackImpl;
.super Landroid/location/provider/IGeocodeCallback$Stub;
.source "Geocoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Geocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeocodeCallbackImpl"
.end annotation


# instance fields
.field private blacklist mListener:Landroid/location/Geocoder$GeocodeListener;


# direct methods
.method constructor blacklist <init>(Landroid/location/Geocoder$GeocodeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/Geocoder$GeocodeListener;

    .line 349
    invoke-direct {p0}, Landroid/location/provider/IGeocodeCallback$Stub;-><init>()V

    .line 350
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geocoder$GeocodeListener;

    iput-object v0, p0, Landroid/location/Geocoder$GeocodeCallbackImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    .line 351
    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .line 355
    iget-object v0, p0, Landroid/location/Geocoder$GeocodeCallbackImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    if-nez v0, :cond_5

    .line 356
    return-void

    .line 359
    :cond_5
    iget-object v0, p0, Landroid/location/Geocoder$GeocodeCallbackImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    invoke-interface {v0, p1}, Landroid/location/Geocoder$GeocodeListener;->onError(Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Geocoder$GeocodeCallbackImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    .line 361
    return-void
.end method

.method public blacklist onResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .line 365
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Landroid/location/Geocoder$GeocodeCallbackImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    if-nez v0, :cond_5

    .line 366
    return-void

    .line 369
    :cond_5
    iget-object v0, p0, Landroid/location/Geocoder$GeocodeCallbackImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    invoke-interface {v0, p1}, Landroid/location/Geocoder$GeocodeListener;->onGeocode(Ljava/util/List;)V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Geocoder$GeocodeCallbackImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    .line 371
    return-void
.end method
