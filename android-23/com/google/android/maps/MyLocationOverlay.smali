.class public Lcom/google/android/maps/MyLocationOverlay;
.super Lcom/google/android/maps/Overlay;
.source "MyLocationOverlay.java"

# interfaces
.implements Landroid/hardware/SensorListener;
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/maps/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MyLocationOverlay$NameAndDate;,
        Lcom/google/android/maps/MyLocationOverlay$1;
    }
.end annotation


# static fields
.field private static final DESIRED_PROVIDER_NAMES:[Ljava/lang/String;

.field private static final LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

.field private static final LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;


# instance fields
.field private mCompassArrow:Landroid/graphics/drawable/Drawable;

.field private mCompassBase:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/google/android/maps/MapController;

.field private final mEnabledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/MyLocationOverlay$NameAndDate;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsCompassEnabled:Z

.field private volatile mIsMyLocationEnabled:Z

.field private volatile mIsOnScreen:Z

.field private volatile mLastFix:Landroid/location/Location;

.field private volatile mLocationChangedSinceLastDraw:Z

.field private mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

.field private mLocationDotHalfHeight:I

.field private mLocationDotHalfWidth:I

.field private final mMapView:Lcom/google/android/maps/MapView;

.field private volatile mMyLocation:Lcom/google/android/maps/GeoPoint;

.field private volatile mMyLocationTime:J

.field mNetworkLocation:Landroid/location/Location;

.field mNetworkLocationHandler:Landroid/os/Handler;

.field private volatile mOrientation:F

.field private volatile mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

.field private final mRunOnFirstFix:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0xff

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 66
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [Ljava/lang/String;

    #@7
    const-string/jumbo v1, "gps"

    #@a
    aput-object v1, v0, v2

    #@c
    const-string/jumbo v1, "network"

    #@f
    aput-object v1, v0, v3

    #@11
    .line 65
    sput-object v0, Lcom/google/android/maps/MyLocationOverlay;->DESIRED_PROVIDER_NAMES:[Ljava/lang/String;

    #@13
    .line 139
    new-instance v0, Landroid/graphics/Paint;

    #@15
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@18
    sput-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    #@1a
    .line 140
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    #@1c
    const/16 v1, 0x1e

    #@1e
    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@21
    .line 141
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    #@23
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@28
    .line 143
    new-instance v0, Landroid/graphics/Paint;

    #@2a
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@2d
    sput-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@2f
    .line 144
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@31
    const/16 v1, 0x64

    #@33
    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    #@36
    .line 145
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@38
    const/high16 v1, 0x40200000    # 2.5f

    #@3a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@3d
    .line 146
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@3f
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@44
    .line 147
    sget-object v0, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@46
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@49
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 158
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    #@5
    .line 77
    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    #@7
    .line 78
    const/high16 v0, 0x7fc00000    # NaNf

    #@9
    iput v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    #@b
    .line 89
    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    #@d
    .line 90
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    #@f
    .line 91
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@11
    .line 93
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    #@13
    .line 94
    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    #@15
    .line 95
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsOnScreen:Z

    #@18
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    const/4 v1, 0x2

    #@1b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    #@20
    .line 108
    new-instance v0, Landroid/graphics/Point;

    #@22
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@25
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@27
    .line 109
    new-instance v0, Landroid/graphics/Rect;

    #@29
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    #@2e
    .line 111
    new-instance v0, Ljava/util/LinkedList;

    #@30
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@33
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/Queue;

    #@35
    .line 127
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    #@37
    .line 130
    new-instance v0, Lcom/google/android/maps/MyLocationOverlay$1;

    #@39
    invoke-direct {v0, p0}, Lcom/google/android/maps/MyLocationOverlay$1;-><init>(Lcom/google/android/maps/MyLocationOverlay;)V

    #@3c
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    #@3e
    .line 159
    if-nez p2, :cond_0

    #@40
    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@42
    const-string/jumbo v1, "mapView == null"

    #@45
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 162
    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    #@4b
    .line 163
    iput-object p2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    #@4d
    .line 164
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mController:Lcom/google/android/maps/MapController;

    #@53
    .line 158
    return-void
.end method

.method private clearNetworkLocationRebroadcasts()V
    .locals 2

    #@0
    .prologue
    .line 395
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    #@3
    .line 396
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@9
    .line 394
    return-void
.end method

.method private getCompassArrow()Landroid/graphics/drawable/Drawable;
    .locals 6

    #@0
    .prologue
    .line 191
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 193
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v2

    #@a
    sget v3, Lcom/google/android/maps/InternalR$drawable;->compass_arrow:I

    #@c
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v2

    #@10
    .line 192
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    #@12
    .line 194
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@17
    move-result v2

    #@18
    div-int/lit8 v1, v2, 0x2

    #@1a
    .line 195
    .local v1, "w":I
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1f
    move-result v0

    #@20
    .line 196
    .local v0, "h":I
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    #@22
    neg-int v3, v1

    #@23
    add-int/lit8 v4, v0, -0x1c

    #@25
    const/16 v5, -0x1c

    #@27
    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2a
    .line 198
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassArrow:Landroid/graphics/drawable/Drawable;

    #@2c
    return-object v2
.end method

.method private getCompassBase()Landroid/graphics/drawable/Drawable;
    .locals 5

    #@0
    .prologue
    .line 180
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 182
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v2

    #@a
    sget v3, Lcom/google/android/maps/InternalR$drawable;->compass_base:I

    #@c
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v2

    #@10
    .line 181
    iput-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    #@12
    .line 183
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@17
    move-result v2

    #@18
    div-int/lit8 v1, v2, 0x2

    #@1a
    .line 184
    .local v1, "w":I
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1f
    move-result v2

    #@20
    div-int/lit8 v0, v2, 0x2

    #@22
    .line 185
    .local v0, "h":I
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    #@24
    neg-int v3, v1

    #@25
    neg-int v4, v0

    #@26
    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@29
    .line 187
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mCompassBase:Landroid/graphics/drawable/Drawable;

    #@2b
    return-object v2
.end method

.method private getLocationDot()Landroid/graphics/drawable/LevelListDrawable;
    .locals 5

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 169
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    .line 170
    sget v1, Lcom/google/android/maps/InternalR$drawable;->ic_maps_indicator_current_position_anim:I

    #@c
    .line 169
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    #@12
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    #@14
    .line 171
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    #@16
    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicWidth()I

    #@19
    move-result v0

    #@1a
    div-int/lit8 v0, v0, 0x2

    #@1c
    iput v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    #@1e
    .line 172
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    #@20
    invoke-virtual {v0}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicHeight()I

    #@23
    move-result v0

    #@24
    div-int/lit8 v0, v0, 0x2

    #@26
    iput v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    #@28
    .line 173
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    #@2a
    iget v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    #@2c
    neg-int v1, v1

    #@2d
    iget v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    #@2f
    neg-int v2, v2

    #@30
    .line 174
    iget v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    #@32
    iget v4, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    #@34
    .line 173
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/LevelListDrawable;->setBounds(IIII)V

    #@37
    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDot:Landroid/graphics/drawable/LevelListDrawable;

    #@39
    return-object v0
.end method

.method private isCloseToPoint(IILcom/google/android/maps/MapView;)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 462
    iget-object v5, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@3
    if-nez v5, :cond_0

    #@5
    return v4

    #@6
    .line 464
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@9
    move-result-object v5

    #@a
    iget-object v6, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@c
    iget-object v7, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@e
    invoke-interface {v5, v6, v7}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@11
    .line 466
    int-to-long v6, p1

    #@12
    iget-object v5, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@14
    iget v5, v5, Landroid/graphics/Point;->x:I

    #@16
    int-to-long v8, v5

    #@17
    sub-long/2addr v6, v8

    #@18
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    #@1b
    move-result-wide v0

    #@1c
    .line 467
    .local v0, "dx":J
    int-to-long v6, p2

    #@1d
    iget-object v5, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@1f
    iget v5, v5, Landroid/graphics/Point;->y:I

    #@21
    int-to-long v8, v5

    #@22
    sub-long/2addr v6, v8

    #@23
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    #@26
    move-result-wide v2

    #@27
    .line 469
    .local v2, "dy":J
    mul-long v6, v0, v0

    #@29
    mul-long v8, v2, v2

    #@2b
    add-long/2addr v6, v8

    #@2c
    long-to-float v5, v6

    #@2d
    const/high16 v6, 0x44800000    # 1024.0f

    #@2f
    cmpg-float v5, v5, v6

    #@31
    if-gez v5, :cond_1

    #@33
    const/4 v4, 0x1

    #@34
    :cond_1
    return v4
.end method

.method private isLocationOnScreen(Lcom/google/android/maps/MapView;Lcom/google/android/maps/GeoPoint;)Z
    .locals 5
    .param p1, "mapView"    # Lcom/google/android/maps/MapView;
    .param p2, "location"    # Lcom/google/android/maps/GeoPoint;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 320
    new-instance v1, Landroid/graphics/Point;

    #@3
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@6
    .line 321
    .local v1, "tempPoint":Landroid/graphics/Point;
    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2, p2, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@d
    .line 323
    new-instance v0, Landroid/graphics/Rect;

    #@f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@12
    .line 324
    .local v0, "screen":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getWidth()I

    #@15
    move-result v2

    #@16
    invoke-virtual {p1}, Lcom/google/android/maps/MapView;->getHeight()I

    #@19
    move-result v3

    #@1a
    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    #@1d
    .line 326
    iget v2, v1, Landroid/graphics/Point;->x:I

    #@1f
    iget v3, v1, Landroid/graphics/Point;->y:I

    #@21
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    #@24
    move-result v2

    #@25
    return v2
.end method

.method private isect(FFF)F
    .locals 4
    .param p1, "c"    # F
    .param p2, "radius"    # F
    .param p3, "isect"    # F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 523
    mul-float v1, p2, p2

    #@3
    mul-float v2, p1, p1

    #@5
    sub-float/2addr v1, v2

    #@6
    const/high16 v2, 0x40000000    # 2.0f

    #@8
    mul-float/2addr v2, p1

    #@9
    mul-float/2addr v2, p3

    #@a
    add-float/2addr v1, v2

    #@b
    mul-float v2, p3, p3

    #@d
    sub-float v0, v1, v2

    #@f
    .line 524
    .local v0, "disc":F
    cmpl-float v1, v0, v3

    #@11
    if-lez v1, :cond_0

    #@13
    .line 525
    float-to-double v2, v0

    #@14
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@17
    move-result-wide v2

    #@18
    double-to-float v1, v2

    #@19
    return v1

    #@1a
    .line 527
    :cond_0
    return v3
.end method


# virtual methods
.method public declared-synchronized disableCompass()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 226
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 227
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v2, "sensor"

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/hardware/SensorManager;

    #@10
    .line 228
    .local v0, "sm":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    #@12
    .line 229
    const/16 v1, 0x80

    #@14
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    #@17
    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    #@19
    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@1c
    .line 232
    const/4 v1, 0x0

    #@1d
    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .end local v0    # "sm":Landroid/hardware/SensorManager;
    :cond_1
    monitor-exit p0

    #@20
    .line 225
    return-void

    #@21
    :catchall_0
    move-exception v1

    #@22
    monitor-exit p0

    #@23
    throw v1
.end method

.method public declared-synchronized disableMyLocation()V
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v2, "location"

    #@6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/location/LocationManager;

    #@c
    .line 290
    .local v0, "service":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@f
    .line 291
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@14
    .line 292
    const/4 v1, 0x0

    #@15
    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    #@17
    .line 293
    const/4 v1, 0x0

    #@18
    iput-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    #@1a
    .line 294
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    #@1c
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 287
    return-void

    #@22
    .end local v0    # "service":Landroid/location/LocationManager;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit p0

    #@24
    throw v1
.end method

.method protected dispatchTap()Z
    .locals 1

    #@0
    .prologue
    .line 480
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public declared-synchronized draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z
    .param p4, "when"    # J

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 495
    if-eqz p3, :cond_0

    #@4
    monitor-exit p0

    #@5
    return v8

    #@6
    .line 497
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v0

    #@e
    iget-wide v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocationTime:J

    #@10
    sub-long/2addr v0, v2

    #@11
    const-wide/32 v2, 0xea60

    #@14
    cmp-long v0, v0, v2

    #@16
    if-gez v0, :cond_3

    #@18
    .line 500
    iget-object v4, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    #@1a
    iget-object v5, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@1c
    move-object v1, p0

    #@1d
    move-object v2, p1

    #@1e
    move-object v3, p2

    #@1f
    move-wide v6, p4

    #@20
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/maps/MyLocationOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Landroid/location/Location;Lcom/google/android/maps/GeoPoint;J)V

    #@23
    .line 508
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    #@25
    if-eqz v0, :cond_2

    #@27
    iget v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    #@29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_4

    #@2f
    :cond_2
    :goto_1
    monitor-exit p0

    #@30
    .line 512
    return v8

    #@31
    .line 503
    :cond_3
    const/4 v0, 0x0

    #@32
    :try_start_1
    iput-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@34
    .line 504
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    #@36
    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    goto :goto_0

    #@3a
    :catchall_0
    move-exception v0

    #@3b
    monitor-exit p0

    #@3c
    throw v0

    #@3d
    .line 509
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    #@3f
    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/MyLocationOverlay;->drawCompass(Landroid/graphics/Canvas;F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    goto :goto_1
.end method

.method protected drawCompass(Landroid/graphics/Canvas;F)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bearing"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 674
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@4
    .line 675
    const/high16 v0, 0x42480000    # 50.0f

    #@6
    const/high16 v1, 0x42680000    # 58.0f

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@b
    .line 677
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->getCompassBase()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v0

    #@f
    invoke-static {p1, v0, v2, v2, v2}, Lcom/google/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    #@12
    .line 678
    neg-float v0, p2

    #@13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    #@16
    .line 679
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->getCompassArrow()Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v0

    #@1a
    invoke-static {p1, v0, v2, v2, v2}, Lcom/google/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    #@1d
    .line 680
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@20
    .line 673
    return-void
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Landroid/location/Location;Lcom/google/android/maps/GeoPoint;J)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "lastFix"    # Landroid/location/Location;
    .param p4, "myLocation"    # Lcom/google/android/maps/GeoPoint;
    .param p5, "when"    # J

    #@0
    .prologue
    .line 546
    move-object/from16 v0, p0

    #@2
    iget-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    #@4
    if-nez v4, :cond_0

    #@6
    .line 547
    return-void

    #@7
    .line 550
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/MyLocationOverlay;->getLocationDot()Landroid/graphics/drawable/LevelListDrawable;

    #@a
    move-result-object v21

    #@b
    .line 551
    .local v21, "locationDot":Landroid/graphics/drawable/LevelListDrawable;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/LevelListDrawable;->getBounds()Landroid/graphics/Rect;

    #@e
    move-result-object v14

    #@f
    .line 553
    .local v14, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@12
    move-result-object v15

    #@13
    .line 554
    .local v15, "converter":Lcom/google/android/maps/Projection;
    move-object/from16 v0, p0

    #@15
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@17
    move-object/from16 v0, p4

    #@19
    invoke-interface {v15, v0, v4}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@1c
    .line 555
    move-object/from16 v0, p0

    #@1e
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@20
    iget v0, v4, Landroid/graphics/Point;->x:I

    #@22
    move/from16 v26, v0

    #@24
    .line 556
    .local v26, "x":I
    move-object/from16 v0, p0

    #@26
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@28
    iget v0, v4, Landroid/graphics/Point;->y:I

    #@2a
    move/from16 v27, v0

    #@2c
    .line 557
    .local v27, "y":I
    const/16 v22, 0x0

    #@2e
    .line 558
    .local v22, "radius":F
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->hasAccuracy()Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_1

    #@34
    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getAccuracy()F

    #@37
    move-result v4

    #@38
    float-to-int v4, v4

    #@39
    int-to-float v4, v4

    #@3a
    invoke-interface {v15, v4}, Lcom/google/android/maps/Projection;->metersToEquatorPixels(F)F

    #@3d
    move-result v22

    #@3e
    .line 565
    :cond_1
    const-wide/16 v4, 0x3e8

    #@40
    rem-long v4, p5, v4

    #@42
    long-to-int v4, v4

    #@43
    mul-int/lit16 v4, v4, 0x2710

    #@45
    div-int/lit16 v0, v4, 0x3e8

    #@47
    move/from16 v20, v0

    #@49
    .line 566
    .local v20, "level":I
    move-object/from16 v0, v21

    #@4b
    move/from16 v1, v20

    #@4d
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    #@50
    .line 568
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getWidth()I

    #@53
    move-result v25

    #@54
    .line 569
    .local v25, "width":I
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getHeight()I

    #@57
    move-result v18

    #@58
    .line 572
    .local v18, "height":I
    const/4 v4, 0x0

    #@59
    cmpl-float v4, v22, v4

    #@5b
    if-lez v4, :cond_5

    #@5d
    .line 573
    move/from16 v0, v26

    #@5f
    int-to-float v4, v0

    #@60
    move/from16 v0, v27

    #@62
    int-to-float v5, v0

    #@63
    sget-object v7, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_FILL_PAINT:Landroid/graphics/Paint;

    #@65
    move-object/from16 v0, p1

    #@67
    move/from16 v1, v22

    #@69
    invoke-virtual {v0, v4, v5, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@6c
    .line 574
    move/from16 v0, v26

    #@6e
    int-to-float v4, v0

    #@6f
    move/from16 v0, v27

    #@71
    int-to-float v5, v0

    #@72
    sget-object v7, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@74
    move-object/from16 v0, p1

    #@76
    move/from16 v1, v22

    #@78
    invoke-virtual {v0, v4, v5, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@7b
    .line 602
    const/high16 v6, 0x3f800000    # 1.0f

    #@7d
    .line 605
    .local v6, "lineCenter":F
    move/from16 v0, v27

    #@7f
    int-to-float v4, v0

    #@80
    move-object/from16 v0, p0

    #@82
    move/from16 v1, v22

    #@84
    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    #@87
    move-result v17

    #@88
    .line 606
    .local v17, "halfChord":F
    const/4 v4, 0x0

    #@89
    cmpl-float v4, v17, v4

    #@8b
    if-lez v4, :cond_2

    #@8d
    .line 607
    move/from16 v0, v26

    #@8f
    int-to-float v4, v0

    #@90
    sub-float v5, v4, v17

    #@92
    .line 608
    move/from16 v0, v26

    #@94
    int-to-float v4, v0

    #@95
    add-float v7, v4, v17

    #@97
    sget-object v9, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@99
    move-object/from16 v4, p1

    #@9b
    move v8, v6

    #@9c
    .line 607
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@9f
    .line 610
    :cond_2
    move/from16 v0, v27

    #@a1
    int-to-float v4, v0

    #@a2
    move/from16 v0, v18

    #@a4
    int-to-float v5, v0

    #@a5
    .line 602
    const/high16 v7, 0x3f800000    # 1.0f

    #@a7
    .line 610
    sub-float/2addr v5, v7

    #@a8
    move-object/from16 v0, p0

    #@aa
    move/from16 v1, v22

    #@ac
    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    #@af
    move-result v17

    #@b0
    .line 611
    const/4 v4, 0x0

    #@b1
    cmpl-float v4, v17, v4

    #@b3
    if-lez v4, :cond_3

    #@b5
    .line 612
    move/from16 v0, v26

    #@b7
    int-to-float v4, v0

    #@b8
    sub-float v8, v4, v17

    #@ba
    move/from16 v0, v18

    #@bc
    int-to-float v4, v0

    #@bd
    .line 602
    const/high16 v5, 0x3f800000    # 1.0f

    #@bf
    .line 612
    sub-float v9, v4, v5

    #@c1
    .line 613
    move/from16 v0, v26

    #@c3
    int-to-float v4, v0

    #@c4
    add-float v10, v4, v17

    #@c6
    move/from16 v0, v18

    #@c8
    int-to-float v4, v0

    #@c9
    .line 602
    const/high16 v5, 0x3f800000    # 1.0f

    #@cb
    .line 613
    sub-float v11, v4, v5

    #@cd
    sget-object v12, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@cf
    move-object/from16 v7, p1

    #@d1
    .line 612
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@d4
    .line 615
    :cond_3
    move/from16 v0, v26

    #@d6
    int-to-float v4, v0

    #@d7
    move-object/from16 v0, p0

    #@d9
    move/from16 v1, v22

    #@db
    invoke-direct {v0, v4, v1, v6}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    #@de
    move-result v17

    #@df
    .line 616
    const/4 v4, 0x0

    #@e0
    cmpl-float v4, v17, v4

    #@e2
    if-lez v4, :cond_4

    #@e4
    .line 617
    move/from16 v0, v27

    #@e6
    int-to-float v4, v0

    #@e7
    sub-float v7, v4, v17

    #@e9
    .line 618
    move/from16 v0, v27

    #@eb
    int-to-float v4, v0

    #@ec
    add-float v9, v4, v17

    #@ee
    sget-object v10, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@f0
    move-object/from16 v5, p1

    #@f2
    move v8, v6

    #@f3
    .line 617
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@f6
    .line 620
    :cond_4
    move/from16 v0, v26

    #@f8
    int-to-float v4, v0

    #@f9
    move/from16 v0, v25

    #@fb
    int-to-float v5, v0

    #@fc
    .line 602
    const/high16 v7, 0x3f800000    # 1.0f

    #@fe
    .line 620
    sub-float/2addr v5, v7

    #@ff
    move-object/from16 v0, p0

    #@101
    move/from16 v1, v22

    #@103
    invoke-direct {v0, v4, v1, v5}, Lcom/google/android/maps/MyLocationOverlay;->isect(FFF)F

    #@106
    move-result v17

    #@107
    .line 621
    const/4 v4, 0x0

    #@108
    cmpl-float v4, v17, v4

    #@10a
    if-lez v4, :cond_5

    #@10c
    .line 622
    move/from16 v0, v25

    #@10e
    int-to-float v4, v0

    #@10f
    .line 602
    const/high16 v5, 0x3f800000    # 1.0f

    #@111
    .line 622
    sub-float v8, v4, v5

    #@113
    move/from16 v0, v27

    #@115
    int-to-float v4, v0

    #@116
    sub-float v9, v4, v17

    #@118
    .line 623
    move/from16 v0, v25

    #@11a
    int-to-float v4, v0

    #@11b
    .line 602
    const/high16 v5, 0x3f800000    # 1.0f

    #@11d
    .line 623
    sub-float v10, v4, v5

    #@11f
    move/from16 v0, v27

    #@121
    int-to-float v4, v0

    #@122
    add-float v11, v4, v17

    #@124
    sget-object v12, Lcom/google/android/maps/MyLocationOverlay;->LOCATION_ACCURACY_STROKE_PAINT:Landroid/graphics/Paint;

    #@126
    move-object/from16 v7, p1

    #@128
    .line 622
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@12b
    .line 628
    .end local v6    # "lineCenter":F
    .end local v17    # "halfChord":F
    :cond_5
    const/4 v4, 0x0

    #@12c
    move-object/from16 v0, p1

    #@12e
    move-object/from16 v1, v21

    #@130
    move/from16 v2, v26

    #@132
    move/from16 v3, v27

    #@134
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/MyLocationOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    #@137
    .line 631
    move-object/from16 v0, p0

    #@139
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    #@13b
    const/4 v5, 0x0

    #@13c
    const/4 v7, 0x0

    #@13d
    move/from16 v0, v25

    #@13f
    move/from16 v1, v18

    #@141
    invoke-virtual {v4, v5, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@144
    .line 632
    move-object/from16 v0, p0

    #@146
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    #@148
    iget v5, v14, Landroid/graphics/Rect;->left:I

    #@14a
    add-int v5, v5, v26

    #@14c
    iget v7, v14, Landroid/graphics/Rect;->top:I

    #@14e
    add-int v7, v7, v27

    #@150
    .line 633
    iget v8, v14, Landroid/graphics/Rect;->right:I

    #@152
    add-int v8, v8, v26

    #@154
    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    #@156
    add-int v9, v9, v27

    #@158
    .line 632
    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    #@15b
    move-result v4

    #@15c
    move-object/from16 v0, p0

    #@15e
    iput-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mIsOnScreen:Z

    #@160
    .line 635
    move-object/from16 v0, p0

    #@162
    iget-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    #@164
    if-eqz v4, :cond_7

    #@166
    move-object/from16 v0, p0

    #@168
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mController:Lcom/google/android/maps/MapController;

    #@16a
    if-eqz v4, :cond_7

    #@16c
    .line 636
    move-object/from16 v0, p0

    #@16e
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    #@170
    div-int/lit8 v5, v25, 0x14

    #@172
    div-int/lit8 v7, v18, 0x14

    #@174
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->inset(II)V

    #@177
    .line 637
    move-object/from16 v0, p0

    #@179
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    #@17b
    move/from16 v0, v26

    #@17d
    move/from16 v1, v27

    #@17f
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    #@182
    move-result v19

    #@183
    .line 638
    .local v19, "isOnScreenInset":Z
    if-nez v19, :cond_7

    #@185
    .line 640
    const/16 v24, 0x0

    #@187
    .line 641
    .local v24, "wasOnScreen":Z
    move-object/from16 v0, p0

    #@189
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    #@18b
    if-eqz v4, :cond_6

    #@18d
    .line 642
    move-object/from16 v0, p0

    #@18f
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    #@191
    move-object/from16 v0, p0

    #@193
    iget-object v5, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@195
    invoke-interface {v15, v4, v5}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@198
    .line 645
    move-object/from16 v0, p0

    #@19a
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempRect:Landroid/graphics/Rect;

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v5, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@1a0
    iget v5, v5, Landroid/graphics/Point;->x:I

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget-object v7, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@1a6
    iget v7, v7, Landroid/graphics/Point;->y:I

    #@1a8
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->contains(II)Z

    #@1ab
    move-result v24

    #@1ac
    .line 647
    .end local v24    # "wasOnScreen":Z
    :cond_6
    if-eqz v24, :cond_7

    #@1ae
    .line 648
    move-object/from16 v0, p0

    #@1b0
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@1b2
    move-object/from16 v0, p0

    #@1b4
    iget-object v5, v0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@1b6
    invoke-interface {v15, v4, v5}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@1b9
    .line 651
    move-object/from16 v0, p0

    #@1bb
    iget-object v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mController:Lcom/google/android/maps/MapController;

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iget-object v5, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@1c1
    invoke-virtual {v4, v5}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    #@1c4
    .line 657
    .end local v19    # "isOnScreenInset":Z
    :cond_7
    move-object/from16 v0, p0

    #@1c6
    iget-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mIsOnScreen:Z

    #@1c8
    if-eqz v4, :cond_8

    #@1ca
    .line 658
    move-object/from16 v0, p0

    #@1cc
    iget v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfWidth:I

    #@1ce
    move/from16 v23, v0

    #@1d0
    .line 659
    .local v23, "w":I
    move-object/from16 v0, p0

    #@1d2
    iget v0, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationDotHalfHeight:I

    #@1d4
    move/from16 v16, v0

    #@1d6
    .line 660
    .local v16, "h":I
    move-object/from16 v0, p0

    #@1d8
    iget-object v7, v0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    #@1da
    const-wide/16 v8, 0xfa

    #@1dc
    .line 661
    sub-int v10, v26, v23

    #@1de
    sub-int v11, v27, v16

    #@1e0
    add-int v12, v26, v23

    #@1e2
    add-int v13, v27, v16

    #@1e4
    .line 660
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/maps/MapView;->postInvalidateDelayed(JIIII)V

    #@1e7
    .line 663
    .end local v16    # "h":I
    .end local v23    # "w":I
    :cond_8
    const/4 v4, 0x0

    #@1e8
    move-object/from16 v0, p0

    #@1ea
    iput-boolean v4, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    #@1ec
    .line 545
    return-void
.end method

.method public declared-synchronized enableCompass()Z
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 208
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 209
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    #@7
    const-string/jumbo v2, "sensor"

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/hardware/SensorManager;

    #@10
    .line 210
    .local v0, "sm":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_1

    #@12
    .line 211
    const/16 v1, 0x80

    #@14
    .line 212
    const/4 v2, 0x2

    #@15
    .line 211
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    #@18
    .line 213
    const/4 v1, 0x1

    #@19
    iput-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    #@1b
    .line 214
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    #@1d
    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@20
    .line 219
    .end local v0    # "sm":Landroid/hardware/SensorManager;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    monitor-exit p0

    #@23
    return v1

    #@24
    .line 216
    .restart local v0    # "sm":Landroid/hardware/SensorManager;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "Maps.MyLocationOverlay"

    #@27
    const-string/jumbo v2, "Compass SensorManager was unavailable."

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .end local v0    # "sm":Landroid/hardware/SensorManager;
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit p0

    #@30
    throw v1
.end method

.method public declared-synchronized enableMyLocation()Z
    .locals 12

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 254
    :try_start_0
    iget-object v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mContext:Landroid/content/Context;

    #@4
    const-string/jumbo v4, "location"

    #@7
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/location/LocationManager;

    #@d
    .line 255
    .local v0, "service":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    #@10
    .line 256
    iget-object v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@15
    .line 257
    const/4 v3, 0x0

    #@16
    iput-boolean v3, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    #@18
    .line 259
    sget-object v10, Lcom/google/android/maps/MyLocationOverlay;->DESIRED_PROVIDER_NAMES:[Ljava/lang/String;

    #@1a
    array-length v11, v10

    #@1b
    move v9, v2

    #@1c
    :goto_0
    if-ge v9, v11, :cond_1

    #@1e
    aget-object v1, v10, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 261
    .local v1, "name":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    #@23
    move-result v8

    #@24
    .line 262
    .local v8, "isProviderEnabled":Z
    if-nez v8, :cond_0

    #@26
    .line 259
    .end local v8    # "isProviderEnabled":Z
    :goto_1
    add-int/lit8 v2, v9, 0x1

    #@28
    move v9, v2

    #@29
    goto :goto_0

    #@2a
    .line 265
    .restart local v8    # "isProviderEnabled":Z
    :cond_0
    const/4 v2, 0x1

    #@2b
    iput-boolean v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    #@2d
    .line 266
    iget-object v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    #@2f
    new-instance v3, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;

    #@31
    invoke-direct {v3, v1}, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 267
    const-wide/16 v2, 0x0

    #@39
    const/4 v4, 0x0

    #@3a
    move-object v5, p0

    #@3b
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    #@3e
    .line 268
    const-string/jumbo v2, "Maps.MyLocationOverlay"

    #@41
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v4, "Request updates from "

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    goto :goto_1

    #@59
    .line 269
    .end local v8    # "isProviderEnabled":Z
    :catch_0
    move-exception v7

    #@5a
    .line 270
    .local v7, "e":Ljava/lang/SecurityException;
    :try_start_2
    const-string/jumbo v2, "Maps.MyLocationOverlay"

    #@5d
    new-instance v3, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v4, "Couldn\'t get provider "

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    const-string/jumbo v4, ": "

    #@70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@83
    goto :goto_1

    #@84
    .end local v0    # "service":Landroid/location/LocationManager;
    .end local v1    # "name":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v2

    #@85
    monitor-exit p0

    #@86
    throw v2

    #@87
    .line 271
    .restart local v0    # "service":Landroid/location/LocationManager;
    .restart local v1    # "name":Ljava/lang/String;
    :catch_1
    move-exception v6

    #@88
    .line 272
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string/jumbo v2, "Maps.MyLocationOverlay"

    #@8b
    new-instance v3, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v4, "Couldn\'t get provider "

    #@93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v3

    #@9b
    const-string/jumbo v4, ": "

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v3

    #@ae
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@b1
    goto/16 :goto_1

    #@b3
    .line 275
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    #@b5
    if-nez v2, :cond_2

    #@b7
    .line 276
    const-string/jumbo v2, "Maps.MyLocationOverlay"

    #@ba
    const-string/jumbo v3, "None of the desired Location Providers are available"

    #@bd
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c0
    .line 278
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c2
    monitor-exit p0

    #@c3
    return v2
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    #@0
    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    #@2
    return-object v0
.end method

.method public getMyLocation()Lcom/google/android/maps/GeoPoint;
    .locals 1

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@2
    return-object v0
.end method

.method public getOrientation()F
    .locals 1

    #@0
    .prologue
    .line 707
    iget v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    #@2
    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    #@2
    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z

    #@2
    return v0
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .param p1, "sensor"    # I
    .param p2, "accuracy"    # I

    #@0
    .prologue
    .line 746
    return-void
.end method

.method public declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 18
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 335
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@4
    move-result-object v9

    #@5
    const-string/jumbo v12, "network"

    #@8
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v9

    #@c
    if-eqz v9, :cond_0

    #@e
    .line 336
    move-object/from16 v0, p0

    #@10
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    #@12
    const/4 v12, 0x1

    #@13
    invoke-virtual {v9, v12}, Landroid/os/Handler;->removeMessages(I)V

    #@16
    .line 337
    move-object/from16 v0, p0

    #@18
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    #@1a
    if-nez v9, :cond_1

    #@1c
    .line 338
    new-instance v9, Landroid/location/Location;

    #@1e
    move-object/from16 v0, p1

    #@20
    invoke-direct {v9, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    #@27
    .line 342
    :goto_0
    move-object/from16 v0, p0

    #@29
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    #@2b
    const/4 v12, 0x1

    #@2c
    invoke-virtual {v9, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@2f
    move-result-object v2

    #@30
    .line 343
    .local v2, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    #@32
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocationHandler:Landroid/os/Handler;

    #@34
    const-wide/16 v12, 0x3a98

    #@36
    invoke-virtual {v9, v2, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@39
    .line 357
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    move-object/from16 v0, p0

    #@3b
    iget-boolean v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mIsMyLocationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3d
    if-nez v9, :cond_2

    #@3f
    monitor-exit p0

    #@40
    .line 358
    return-void

    #@41
    .line 340
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    #@43
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mNetworkLocation:Landroid/location/Location;

    #@45
    move-object/from16 v0, p1

    #@47
    invoke-virtual {v9, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    goto :goto_0

    #@4b
    :catchall_0
    move-exception v9

    #@4c
    monitor-exit p0

    #@4d
    throw v9

    #@4e
    .line 360
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@51
    move-result-wide v4

    #@52
    .line 361
    .local v4, "now":J
    const-wide/16 v12, 0x2710

    #@54
    sub-long v10, v4, v12

    #@56
    .line 363
    .local v10, "then":J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    .line 364
    .local v3, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5c
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mEnabledProviders:Ljava/util/ArrayList;

    #@5e
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@61
    move-result-object v7

    #@62
    .local v7, "provider$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@65
    move-result v9

    #@66
    if-eqz v9, :cond_4

    #@68
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6b
    move-result-object v6

    #@6c
    check-cast v6, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;

    #@6e
    .line 365
    .local v6, "provider":Lcom/google/android/maps/MyLocationOverlay$NameAndDate;
    iget-object v9, v6, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->name:Ljava/lang/String;

    #@70
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v9

    #@74
    if-eqz v9, :cond_6

    #@76
    .line 366
    iput-wide v4, v6, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->date:J

    #@78
    .line 374
    .end local v6    # "provider":Lcom/google/android/maps/MyLocationOverlay$NameAndDate;
    :cond_4
    const/4 v9, 0x1

    #@79
    move-object/from16 v0, p0

    #@7b
    iput-boolean v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mLocationChangedSinceLastDraw:Z

    #@7d
    .line 375
    move-object/from16 v0, p0

    #@7f
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@81
    move-object/from16 v0, p0

    #@83
    iput-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mPreviousMyLocation:Lcom/google/android/maps/GeoPoint;

    #@85
    .line 376
    new-instance v9, Lcom/google/android/maps/GeoPoint;

    #@87
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    #@8a
    move-result-wide v12

    #@8b
    const-wide v14, 0x412e848000000000L    # 1000000.0

    #@90
    mul-double/2addr v12, v14

    #@91
    double-to-int v12, v12

    #@92
    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    #@95
    move-result-wide v14

    #@96
    const-wide v16, 0x412e848000000000L    # 1000000.0

    #@9b
    mul-double v14, v14, v16

    #@9d
    double-to-int v13, v14

    #@9e
    .line 376
    invoke-direct {v9, v12, v13}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    #@a1
    move-object/from16 v0, p0

    #@a3
    iput-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@a5
    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a8
    move-result-wide v12

    #@a9
    move-object/from16 v0, p0

    #@ab
    iput-wide v12, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocationTime:J

    #@ad
    .line 379
    move-object/from16 v0, p1

    #@af
    move-object/from16 v1, p0

    #@b1
    iput-object v0, v1, Lcom/google/android/maps/MyLocationOverlay;->mLastFix:Landroid/location/Location;

    #@b3
    .line 382
    move-object/from16 v0, p0

    #@b5
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget-object v12, v0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@bb
    move-object/from16 v0, p0

    #@bd
    invoke-direct {v0, v9, v12}, Lcom/google/android/maps/MyLocationOverlay;->isLocationOnScreen(Lcom/google/android/maps/MapView;Lcom/google/android/maps/GeoPoint;)Z

    #@c0
    move-result v9

    #@c1
    if-eqz v9, :cond_5

    #@c3
    .line 383
    move-object/from16 v0, p0

    #@c5
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    #@c7
    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@ca
    .line 387
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    #@cc
    iget-object v9, v0, Lcom/google/android/maps/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/Queue;

    #@ce
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@d1
    move-result-object v8

    #@d2
    check-cast v8, Ljava/lang/Runnable;

    #@d4
    .local v8, "runnable":Ljava/lang/Runnable;
    if-eqz v8, :cond_7

    #@d6
    .line 388
    const-string/jumbo v9, "Maps.MyLocationOverlay"

    #@d9
    new-instance v12, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v13, "Running deferred on first fix: "

    #@e1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v12

    #@e5
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v12

    #@e9
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v12

    #@ed
    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@f0
    .line 389
    new-instance v9, Ljava/lang/Thread;

    #@f2
    invoke-direct {v9, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@f5
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    #@f8
    goto :goto_1

    #@f9
    .line 368
    .end local v8    # "runnable":Ljava/lang/Runnable;
    .restart local v6    # "provider":Lcom/google/android/maps/MyLocationOverlay$NameAndDate;
    :cond_6
    iget-object v9, v6, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->name:Ljava/lang/String;

    #@fb
    const-string/jumbo v12, "gps"

    #@fe
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@101
    move-result v9

    #@102
    if-eqz v9, :cond_3

    #@104
    iget-wide v12, v6, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->date:J

    #@106
    cmp-long v9, v12, v10

    #@108
    if-lez v9, :cond_3

    #@10a
    .line 369
    const-string/jumbo v9, "Maps.MyLocationOverlay"

    #@10d
    const-string/jumbo v12, "Got fallback update soon after preferred udpate, ignoring"

    #@110
    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@113
    monitor-exit p0

    #@114
    .line 370
    return-void

    #@115
    .end local v6    # "provider":Lcom/google/android/maps/MyLocationOverlay$NameAndDate;
    .restart local v8    # "runnable":Ljava/lang/Runnable;
    :cond_7
    monitor-exit p0

    #@116
    .line 333
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 421
    const-string/jumbo v0, "network"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 422
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->clearNetworkLocationRebroadcasts()V

    #@c
    .line 420
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 413
    return-void
.end method

.method public declared-synchronized onSensorChanged(I[F)V
    .locals 6
    .param p1, "sensor"    # I
    .param p2, "values"    # [F

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 301
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mIsCompassEnabled:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 302
    const/4 v1, 0x0

    #@6
    aget v1, p2, v1

    #@8
    iput v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mOrientation:F

    #@a
    .line 303
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->getCompassBase()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@11
    move-result-object v0

    #@12
    .line 304
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mMapView:Lcom/google/android/maps/MapView;

    #@14
    .line 305
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@16
    add-int/lit8 v2, v2, 0x32

    #@18
    iget v3, v0, Landroid/graphics/Rect;->top:I

    #@1a
    add-int/lit8 v3, v3, 0x3a

    #@1c
    .line 306
    iget v4, v0, Landroid/graphics/Rect;->right:I

    #@1e
    add-int/lit8 v4, v4, 0x32

    #@20
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    #@22
    add-int/lit8 v5, v5, 0x3a

    #@24
    .line 304
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/maps/MapView;->postInvalidate(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    monitor-exit p0

    #@28
    .line 300
    return-void

    #@29
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit p0

    #@2b
    throw v1
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snapPoint"    # Landroid/graphics/Point;
    .param p4, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 427
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/MyLocationOverlay;->isCloseToPoint(IILcom/google/android/maps/MapView;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 428
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@8
    iget v0, v0, Landroid/graphics/Point;->x:I

    #@a
    iput v0, p3, Landroid/graphics/Point;->x:I

    #@c
    .line 429
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@e
    iget v0, v0, Landroid/graphics/Point;->y:I

    #@10
    iput v0, p3, Landroid/graphics/Point;->y:I

    #@12
    .line 430
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 432
    :cond_0
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 403
    const-string/jumbo v0, "network"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 404
    const/4 v0, 0x2

    #@a
    if-eq p2, v0, :cond_0

    #@c
    .line 405
    invoke-direct {p0}, Lcom/google/android/maps/MyLocationOverlay;->clearNetworkLocationRebroadcasts()V

    #@f
    .line 402
    :cond_0
    return-void
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 3
    .param p1, "p"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "map"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 444
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 445
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@b
    invoke-interface {v0, p1, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@e
    .line 446
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@10
    iget v0, v0, Landroid/graphics/Point;->x:I

    #@12
    iget-object v1, p0, Lcom/google/android/maps/MyLocationOverlay;->mTempPoint:Landroid/graphics/Point;

    #@14
    iget v1, v1, Landroid/graphics/Point;->y:I

    #@16
    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/maps/MyLocationOverlay;->isCloseToPoint(IILcom/google/android/maps/MapView;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 447
    invoke-virtual {p0}, Lcom/google/android/maps/MyLocationOverlay;->dispatchTap()Z

    #@1f
    .line 448
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 450
    :cond_0
    return v2

    #@22
    .line 453
    :cond_1
    return v2
.end method

.method public declared-synchronized runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mMyLocation:Lcom/google/android/maps/GeoPoint;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 728
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 729
    const/4 v0, 0x1

    #@9
    monitor-exit p0

    #@a
    return v0

    #@b
    .line 731
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/MyLocationOverlay;->mRunOnFirstFix:Ljava/util/Queue;

    #@d
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 732
    const/4 v0, 0x0

    #@11
    monitor-exit p0

    #@12
    return v0

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method
