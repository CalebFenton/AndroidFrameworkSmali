.class public Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;
.source "AndroidTileOverlayRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;
    }
.end annotation


# static fields
.field private static final WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;

.field private static final bgPaint:Landroid/graphics/Paint;


# instance fields
.field private final painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

.field private final trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 32
    new-instance v0, Landroid/graphics/DashPathEffect;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [F

    #@5
    const/4 v2, 0x0

    #@6
    const/high16 v3, 0x40a00000    # 5.0f

    #@8
    aput v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    const/high16 v3, 0x40000000    # 2.0f

    #@d
    aput v3, v1, v2

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    #@13
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;

    #@15
    .line 34
    new-instance v0, Landroid/graphics/Paint;

    #@17
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@1a
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->bgPaint:Landroid/graphics/Paint;

    #@1c
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;-><init>()V

    #@3
    .line 36
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    #@5
    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;)V

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    #@a
    .line 37
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    #@c
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;-><init>()V

    #@f
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    #@11
    .line 102
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;
    .param p1, "x1"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@0
    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$100()Landroid/graphics/PathEffect;
    .locals 1

    #@0
    .prologue
    .line 30
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->WALKING_DASH_PATH_EFFECT:Landroid/graphics/PathEffect;

    #@2
    return-object v0
.end method

.method private static paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "image"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 97
    new-instance v0, Landroid/graphics/Canvas;

    #@3
    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@6
    .line 98
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getBitmap()Landroid/graphics/Bitmap;

    #@9
    move-result-object v1

    #@a
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->bgPaint:Landroid/graphics/Paint;

    #@c
    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@f
    .line 99
    return-object v0
.end method


# virtual methods
.method protected generateNewTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 13
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .param p2, "tt"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@0
    .prologue
    const/16 v4, 0x100

    #@2
    const/4 v12, 0x0

    #@3
    .line 48
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@6
    move-result-object v11

    #@7
    .local v11, "tileImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    move-object v9, v11

    #@8
    .line 49
    check-cast v9, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@a
    .local v9, "image":Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
    const/4 v7, 0x0

    #@b
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    #@c
    .line 60
    .local v8, "canvas":Landroid/graphics/Canvas;
    if-nez p2, :cond_1

    #@e
    .line 74
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    #@10
    invoke-virtual {v0, v8, v7, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->setup(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)V

    #@13
    .line 76
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    #@15
    if-nez v0, :cond_2

    #@17
    .line 83
    :goto_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    #@19
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->getBitmap()Landroid/graphics/Bitmap;

    #@1c
    move-result-object v0

    #@1d
    if-nez v0, :cond_3

    #@1f
    .line 86
    return-object v12

    #@20
    .line 60
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isEmpty()Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_0

    #@26
    .line 64
    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getWidth()I

    #@29
    move-result v0

    #@2a
    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->getHeight()I

    #@2d
    move-result v1

    #@2e
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@30
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@33
    move-result-object v7

    #@34
    .line 66
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v7, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->paintTileBgAndCreateCanvas(Landroid/graphics/Bitmap;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;)Landroid/graphics/Canvas;

    #@37
    move-result-object v8

    #@38
    .line 67
    .local v8, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    #@3a
    invoke-virtual {v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->setup(Landroid/graphics/Canvas;)V

    #@3d
    .line 68
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

    #@3f
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->trafficPainter:Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;

    #@41
    invoke-virtual {v0, p2, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;->renderTrafficTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;)V

    #@44
    goto :goto_0

    #@45
    .line 77
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@48
    move-result-object v10

    #@49
    .line 78
    .local v10, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    #@4b
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    #@4d
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXPixelTopLeft()I

    #@50
    move-result v2

    #@51
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYPixelTopLeft()I

    #@54
    move-result v3

    #@55
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@58
    move-result-object v6

    #@59
    move v5, v4

    #@5a
    invoke-virtual/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->render(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    #@5d
    goto :goto_1

    #@5e
    .line 84
    .end local v10    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_3
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@60
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->painter:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;

    #@62
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/android/AndroidTileOverlayRenderer$AndroidPainter;->getBitmap()Landroid/graphics/Bitmap;

    #@65
    move-result-object v1

    #@66
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    #@69
    return-object v0
.end method

.method public isFast()Z
    .locals 1

    #@0
    .prologue
    .line 40
    const/4 v0, 0x1

    #@1
    return v0
.end method
