.class public Landroid/telephony/CbGeoUtils$Circle;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"

# interfaces
.implements Landroid/telephony/CbGeoUtils$Geometry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CbGeoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Circle"
.end annotation


# instance fields
.field private final blacklist mCenter:Landroid/telephony/CbGeoUtils$LatLng;

.field private final blacklist mRadiusMeter:D


# direct methods
.method public constructor whitelist <init>(Landroid/telephony/CbGeoUtils$LatLng;D)V
    .registers 4
    .param p1, "center"    # Landroid/telephony/CbGeoUtils$LatLng;
    .param p2, "radiusInMeters"    # D

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    .line 345
    iput-wide p2, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    .line 346
    return-void
.end method


# virtual methods
.method public whitelist contains(Landroid/telephony/CbGeoUtils$LatLng;)Z
    .registers 6
    .param p1, "latLng"    # Landroid/telephony/CbGeoUtils$LatLng;

    .line 369
    iget-object v0, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v0, p1}, Landroid/telephony/CbGeoUtils$LatLng;->distance(Landroid/telephony/CbGeoUtils$LatLng;)D

    move-result-wide v0

    iget-wide v2, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 387
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 388
    return v0

    .line 391
    :cond_4
    instance-of v1, p1, Landroid/telephony/CbGeoUtils$Circle;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 392
    return v2

    .line 395
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CbGeoUtils$Circle;

    .line 396
    .local v1, "c":Landroid/telephony/CbGeoUtils$Circle;
    iget-object v3, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    iget-object v4, v1, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v3, v4}, Landroid/telephony/CbGeoUtils$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-wide v3, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    iget-wide v5, v1, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    .line 397
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 396
    :goto_23
    return v0
.end method

.method public whitelist getCenter()Landroid/telephony/CbGeoUtils$LatLng;
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    return-object v0
.end method

.method public whitelist getRadius()D
    .registers 3

    .line 359
    iget-wide v0, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 374
    const-string v0, "Circle: "

    .line 375
    .local v0, "str":Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_25

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CbGeoUtils$Circle;->mCenter:Landroid/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/CbGeoUtils$Circle;->mRadiusMeter:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_25
    return-object v0
.end method
