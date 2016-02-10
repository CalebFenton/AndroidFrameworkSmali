.class public Lcom/google/android/maps/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"


# instance fields
.field private final mMapPoint:Landroid/com/google/map/MapPoint;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "latitudeE6"    # I
    .param p2, "longitudeE6"    # I

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const v0, -0xaba9500

    #@6
    if-ne p2, v0, :cond_0

    #@8
    mul-int/lit8 p2, p2, -0x1

    #@a
    .line 51
    :cond_0
    new-instance v0, Landroid/com/google/map/MapPoint;

    #@c
    invoke-direct {v0, p1, p2}, Landroid/com/google/map/MapPoint;-><init>(II)V

    #@f
    iput-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid/com/google/map/MapPoint;

    #@11
    .line 47
    return-void
.end method

.method constructor <init>(Landroid/com/google/map/MapPoint;)V
    .locals 0
    .param p1, "mp"    # Landroid/com/google/map/MapPoint;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid/com/google/map/MapPoint;

    #@5
    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 77
    if-ne p0, p1, :cond_0

    #@3
    .line 78
    return v3

    #@4
    .line 80
    :cond_0
    instance-of v1, p1, Lcom/google/android/maps/GeoPoint;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 81
    check-cast v0, Lcom/google/android/maps/GeoPoint;

    #@b
    .line 82
    .local v0, "p":Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid/com/google/map/MapPoint;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid/com/google/map/MapPoint;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Landroid/com/google/map/MapPoint;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 83
    return v3

    #@1a
    .line 87
    .end local v0    # "p":Lcom/google/android/maps/GeoPoint;
    :cond_1
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public getLatitudeE6()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid/com/google/map/MapPoint;

    #@2
    invoke-virtual {v0}, Landroid/com/google/map/MapPoint;->getLatitude()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLongitudeE6()I
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid/com/google/map/MapPoint;

    #@2
    invoke-virtual {v0}, Landroid/com/google/map/MapPoint;->getLongitude()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getMapPoint()Landroid/com/google/map/MapPoint;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid/com/google/map/MapPoint;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid/com/google/map/MapPoint;

    #@2
    invoke-virtual {v0}, Landroid/com/google/map/MapPoint;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid/com/google/map/MapPoint;

    #@7
    invoke-virtual {v1}, Landroid/com/google/map/MapPoint;->getLatitude()I

    #@a
    move-result v1

    #@b
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, ","

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p0, Lcom/google/android/maps/GeoPoint;->mMapPoint:Landroid/com/google/map/MapPoint;

    #@1c
    invoke-virtual {v1}, Landroid/com/google/map/MapPoint;->getLongitude()I

    #@1f
    move-result v1

    #@20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method
