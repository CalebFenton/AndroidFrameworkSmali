.class public final Landroid_maps_conflict_avoidance/com/google/map/Zoom;
.super Ljava/lang/Object;
.source "Zoom.java"


# static fields
.field private static minZoomLevel:I

.field private static final zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# instance fields
.field private final equatorPixels:I

.field private final zoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x16

    #@2
    const/4 v2, 0x1

    #@3
    .line 38
    sput v2, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->minZoomLevel:I

    #@5
    .line 51
    new-array v2, v5, [Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@7
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@9
    const/16 v0, 0x100

    #@b
    .local v0, "equatorPixels":I
    const/4 v1, 0x1

    #@c
    .line 66
    .local v1, "zoomLevel":I
    :goto_0
    if-le v1, v5, :cond_0

    #@e
    .line 70
    return-void

    #@f
    .line 67
    :cond_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@11
    add-int/lit8 v3, v1, -0x1

    #@13
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@15
    invoke-direct {v4, v1, v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;-><init>(II)V

    #@18
    aput-object v4, v2, v3

    #@1a
    .line 68
    mul-int/lit8 v0, v0, 0x2

    #@1c
    .line 66
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "zoomLevel"    # I
    .param p2, "equatorPixels"    # I

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    #@5
    .line 60
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    #@7
    .line 61
    return-void
.end method

.method public static getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 3
    .param p0, "zoomLevel"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 95
    .local v0, "zoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    sget v1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->minZoomLevel:I

    #@3
    if-ge p0, v1, :cond_1

    #@5
    .line 99
    .end local v0    # "zoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :cond_0
    :goto_0
    return-object v0

    #@6
    .restart local v0    # "zoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :cond_1
    const/16 v1, 0x16

    #@8
    .line 95
    if-gt p0, v1, :cond_0

    #@a
    .line 96
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomArray:[Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@c
    add-int/lit8 v2, p0, -0x1

    #@e
    aget-object v0, v1, v2

    #@10
    .local v0, "zoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    goto :goto_0
.end method


# virtual methods
.method public changePixelsToTargetZoomlevel(II)I
    .locals 1
    .param p1, "pixels"    # I
    .param p2, "zoomTargetLevel"    # I

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    #@2
    if-lt v0, p2, :cond_0

    #@4
    .line 166
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    #@6
    sub-int/2addr v0, p2

    #@7
    shr-int v0, p1, v0

    #@9
    return v0

    #@a
    .line 164
    :cond_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    #@c
    sub-int v0, p2, v0

    #@e
    shl-int v0, p1, v0

    #@10
    return v0
.end method

.method public getEquatorPixels()I
    .locals 1

    #@0
    .prologue
    .line 131
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    #@2
    return v0
.end method

.method public getNextHigherZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    #@0
    .prologue
    .line 150
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    #@0
    .prologue
    .line 175
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getPixelsForDistance(I)I
    .locals 4
    .param p1, "meters"    # I

    #@0
    .prologue
    .line 77
    int-to-long v0, p1

    #@1
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    #@3
    int-to-long v2, v2

    #@4
    mul-long/2addr v0, v2

    #@5
    const-wide/32 v2, 0x26382e0

    #@8
    div-long/2addr v0, v2

    #@9
    long-to-int v0, v0

    #@a
    const/4 v1, 0x1

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getZoomLevel()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    #@2
    return v0
.end method

.method public getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 2
    .param p1, "zoomIn"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 118
    iget v0, p1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    #@2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->equatorPixels:I

    #@4
    div-int/2addr v0, v1

    #@5
    return v0
.end method

.method public isMoreZoomedIn(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Z
    .locals 2
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 142
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    #@2
    iget v1, p1, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->zoomLevel:I

    #@4
    if-gt v0, v1, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 182
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
