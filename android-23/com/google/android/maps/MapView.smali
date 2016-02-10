.class public Lcom/google/android/maps/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MapView$ReticleDrawMode;,
        Lcom/google/android/maps/MapView$Repainter;,
        Lcom/google/android/maps/MapView$LayoutParams;
    }
.end annotation


# static fields
.field private static final KEY_CENTER_LATITUDE:Ljava/lang/String;

.field private static final KEY_CENTER_LONGITUDE:Ljava/lang/String;

.field private static final KEY_ZOOM_DISPLAYED:Ljava/lang/String;

.field private static final KEY_ZOOM_LEVEL:Ljava/lang/String;

.field private static final ZOOM_CONTROLS_TIMEOUT:J


# instance fields
.field private mBuiltInZoomControlsEnabled:Z

.field private mController:Lcom/google/android/maps/MapController;

.field private mConverter:Lcom/google/android/maps/PixelConverter;

.field private final mDrawer:Landroid/com/google/common/graphics/android/AndroidGraphics;

.field private mFakeStreetViewEnabled:Z

.field private mGestureDetector:Lcom/google/android/maps/GestureDetector;

.field private final mGoogleLogo:Landroid/graphics/drawable/Drawable;

.field private final mGoogleLogoHeight:I

.field private final mGoogleLogoWidth:I

.field private mHandler:Landroid/os/Handler;

.field final mKey:Ljava/lang/String;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mMap:Landroid/com/google/googlenav/map/Map;

.field private mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

.field private mOverlayRenderer:Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

.field final mRepainter:Lcom/google/android/maps/MapView$Repainter;

.field private mReticle:Landroid/graphics/drawable/Drawable;

.field private mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScroller:Landroid/widget/Scroller;

.field private mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/widget/ZoomControls;

.field private mZoomHelper:Lcom/google/android/maps/ZoomHelper;


# direct methods
.method static synthetic -get0()J
    .locals 2

    #@0
    sget-wide v0, Lcom/google/android/maps/MapView;->ZOOM_CONTROLS_TIMEOUT:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/MapController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/PixelConverter;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/google/android/maps/MapView;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/google/android/maps/MapView;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    #@2
    return v0
.end method

.method static synthetic -get5(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/OverlayBundle;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/google/android/maps/MapView;)Landroid/widget/Scroller;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/google/android/maps/MapView;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/google/android/maps/MapView;)Landroid/widget/ZoomControls;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/google/android/maps/MapView;)Lcom/google/android/maps/ZoomHelper;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/google/android/maps/MapView;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/google/android/maps/MapView;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/google/android/maps/MapView;->mLastFlingY:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/google/android/maps/MapView;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-class v1, Lcom/google/android/maps/MapView;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ".zoomDisplayed"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    #@1c
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-class v1, Lcom/google/android/maps/MapView;

    #@23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string/jumbo v1, ".centerLatitude"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    sput-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LATITUDE:Ljava/lang/String;

    #@38
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-class v1, Lcom/google/android/maps/MapView;

    #@3f
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    const-string/jumbo v1, ".centerLongitude"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    sput-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LONGITUDE:Ljava/lang/String;

    #@54
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-class v1, Lcom/google/android/maps/MapView;

    #@5b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    const-string/jumbo v1, ".zoomLevel"

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    sput-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_LEVEL:Ljava/lang/String;

    #@70
    .line 143
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    #@73
    move-result-wide v0

    #@74
    sput-wide v0, Lcom/google/android/maps/MapView;->ZOOM_CONTROLS_TIMEOUT:J

    #@76
    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 247
    sget v0, Lcom/google/android/maps/InternalR$attr;->mapViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    #@0
    .prologue
    .line 264
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    #@4
    .line 263
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "apiKey"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 271
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 154
    new-instance v1, Landroid/com/google/common/graphics/android/AndroidGraphics;

    #@6
    invoke-direct {v1, v2}, Landroid/com/google/common/graphics/android/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    #@9
    iput-object v1, p0, Lcom/google/android/maps/MapView;->mDrawer:Landroid/com/google/common/graphics/android/AndroidGraphics;

    #@b
    .line 163
    iput-object v2, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@d
    .line 181
    iput-object v2, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@f
    .line 221
    new-instance v1, Lcom/google/android/maps/MapView$Repainter;

    #@11
    invoke-direct {v1, p0}, Lcom/google/android/maps/MapView$Repainter;-><init>(Lcom/google/android/maps/MapView;)V

    #@14
    iput-object v1, p0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    #@16
    .line 273
    if-nez p4, :cond_0

    #@18
    .line 275
    sget-object v1, Lcom/google/android/maps/InternalR$styleable;->MapView:[I

    #@1a
    .line 274
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1d
    move-result-object v0

    #@1e
    .line 276
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/maps/InternalR$styleable;->MapView_apiKey:I

    #@20
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    #@26
    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    .line 282
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    #@2b
    if-nez v1, :cond_1

    #@2d
    .line 283
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string/jumbo v2, "You need to specify an API Key for each MapView.  See the MapView documentation for details."

    #@32
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 279
    :cond_0
    iput-object p4, p0, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    #@38
    goto :goto_0

    #@39
    .line 287
    :cond_1
    const/4 v1, 0x0

    #@3a
    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapView;->setWillNotDraw(Z)V

    #@3d
    .line 288
    instance-of v1, p1, Lcom/google/android/maps/MapActivity;

    #@3f
    if-eqz v1, :cond_2

    #@41
    move-object v1, p1

    #@42
    .line 289
    check-cast v1, Lcom/google/android/maps/MapActivity;

    #@44
    invoke-virtual {v1, p0}, Lcom/google/android/maps/MapActivity;->setupMapView(Lcom/google/android/maps/MapView;)V

    #@47
    .line 294
    new-instance v1, Landroid/widget/Scroller;

    #@49
    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    #@4c
    iput-object v1, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    #@4e
    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@51
    move-result-object v1

    #@52
    .line 296
    sget v2, Lcom/google/android/maps/InternalR$drawable;->maps_google_logo:I

    #@54
    .line 295
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@57
    move-result-object v1

    #@58
    iput-object v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    #@5a
    .line 297
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    #@5c
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5f
    move-result v1

    #@60
    iput v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogoWidth:I

    #@62
    .line 298
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    #@64
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@67
    move-result v1

    #@68
    iput v1, p0, Lcom/google/android/maps/MapView;->mGoogleLogoHeight:I

    #@6a
    .line 270
    return-void

    #@6b
    .line 291
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6d
    const-string/jumbo v2, "MapViews can only be created inside instances of MapActivity."

    #@70
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@73
    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 235
    sget v0, Lcom/google/android/maps/InternalR$attr;->mapViewStyle:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    #@6
    .line 234
    return-void
.end method

.method private canZoomIn()Z
    .locals 2

    #@0
    .prologue
    .line 1555
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/Map;->getZoom()Landroid/com/google/map/Zoom;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/com/google/map/Zoom;->getZoomLevel()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    #@d
    move-result v1

    #@e
    if-ge v0, v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method private canZoomOut()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1551
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@3
    invoke-virtual {v1}, Landroid/com/google/googlenav/map/Map;->getZoom()Landroid/com/google/map/Zoom;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/com/google/map/Zoom;->getZoomLevel()I

    #@a
    move-result v1

    #@b
    if-le v1, v0, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private createZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .locals 4

    #@0
    .prologue
    .line 1446
    new-instance v0, Landroid/widget/ZoomButtonsController;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    #@5
    .line 1447
    .local v0, "controller":Landroid/widget/ZoomButtonsController;
    const-wide/16 v2, 0x7d0

    #@7
    invoke-virtual {v0, v2, v3}, Landroid/widget/ZoomButtonsController;->setZoomSpeed(J)V

    #@a
    .line 1448
    new-instance v1, Lcom/google/android/maps/MapView$6;

    #@c
    invoke-direct {v1, p0, v0}, Lcom/google/android/maps/MapView$6;-><init>(Lcom/google/android/maps/MapView;Landroid/widget/ZoomButtonsController;)V

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    #@12
    .line 1487
    return-object v0
.end method

.method private createZoomControls()Landroid/widget/ZoomControls;
    .locals 4

    #@0
    .prologue
    .line 1418
    new-instance v0, Landroid/widget/ZoomControls;

    #@2
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    #@7
    .line 1419
    .local v0, "zoomControls":Landroid/widget/ZoomControls;
    const-wide/16 v2, 0x7d0

    #@9
    invoke-virtual {v0, v2, v3}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    #@c
    .line 1420
    new-instance v1, Lcom/google/android/maps/MapView$4;

    #@e
    invoke-direct {v1, p0}, Lcom/google/android/maps/MapView$4;-><init>(Lcom/google/android/maps/MapView;)V

    #@11
    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    #@14
    .line 1425
    new-instance v1, Lcom/google/android/maps/MapView$5;

    #@16
    invoke-direct {v1, p0}, Lcom/google/android/maps/MapView$5;-><init>(Lcom/google/android/maps/MapView;)V

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    #@1c
    .line 1430
    return-object v0
.end method

.method private isLocationDisplayed()Z
    .locals 1

    #@0
    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    #@2
    instance-of v0, v0, Lcom/google/android/maps/MapActivity;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1073
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    #@8
    check-cast v0, Lcom/google/android/maps/MapActivity;

    #@a
    invoke-virtual {v0}, Lcom/google/android/maps/MapActivity;->isLocationDisplayed()Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 1076
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method private isRouteDisplayed()Z
    .locals 1

    #@0
    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    #@2
    instance-of v0, v0, Lcom/google/android/maps/MapActivity;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1081
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    #@8
    check-cast v0, Lcom/google/android/maps/MapActivity;

    #@a
    invoke-virtual {v0}, Lcom/google/android/maps/MapActivity;->isRouteDisplayed()Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 1084
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method private updateZoomControls()V
    .locals 2

    #@0
    .prologue
    .line 1540
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1541
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@6
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomIn()Z

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    #@d
    .line 1542
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@f
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomOut()Z

    #@12
    move-result v1

    #@13
    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    #@16
    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1545
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@1c
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomIn()Z

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    #@23
    .line 1546
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@25
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomOut()Z

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    #@2c
    .line 1539
    :cond_1
    return-void
.end method


# virtual methods
.method public canCoverCenter()Z
    .locals 3

    #@0
    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@4
    invoke-virtual {v1}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/com/google/googlenav/map/Map;->canCover(Landroid/com/google/map/MapPoint;Z)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 784
    instance-of v0, p1, Lcom/google/android/maps/MapView$LayoutParams;

    #@2
    return v0
.end method

.method cleanupMapReferences(Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    #@2
    invoke-virtual {p1, v0}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->removeDataRequestListener(Landroid/com/google/googlenav/datarequest/DataRequestListener;)V

    #@5
    .line 410
    return-void
.end method

.method public computeScroll()V
    .locals 4

    #@0
    .prologue
    .line 485
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    #@2
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 486
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    #@a
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    #@d
    move-result v2

    #@e
    iget v3, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    #@10
    sub-int v0, v2, v3

    #@12
    .line 487
    .local v0, "x":I
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    #@14
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    #@17
    move-result v2

    #@18
    iget v3, p0, Lcom/google/android/maps/MapView;->mLastFlingY:I

    #@1a
    sub-int v1, v2, v3

    #@1c
    .line 488
    .local v1, "y":I
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    #@1e
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    #@21
    move-result v2

    #@22
    iput v2, p0, Lcom/google/android/maps/MapView;->mLastFlingX:I

    #@24
    .line 489
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mScroller:Landroid/widget/Scroller;

    #@26
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    #@29
    move-result v2

    #@2a
    iput v2, p0, Lcom/google/android/maps/MapView;->mLastFlingY:I

    #@2c
    .line 490
    iget-object v2, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@2e
    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    #@31
    .line 491
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@34
    .line 484
    .end local v0    # "x":I
    .end local v1    # "y":I
    :goto_0
    return-void

    #@35
    .line 493
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    #@38
    goto :goto_0
.end method

.method public displayZoomControls(Z)V
    .locals 4
    .param p1, "takeFocus"    # Z

    #@0
    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/google/android/maps/MapView;->mBuiltInZoomControlsEnabled:Z

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 1053
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@a
    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1051
    :cond_0
    :goto_0
    return-void

    #@11
    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@13
    invoke-virtual {v0, p1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    #@16
    .line 1055
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@18
    const/4 v1, 0x1

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    #@1c
    goto :goto_0

    #@1d
    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 1059
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@23
    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    #@26
    move-result v0

    #@27
    const/16 v1, 0x8

    #@29
    if-ne v0, v1, :cond_3

    #@2b
    .line 1060
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@2d
    invoke-virtual {v0}, Landroid/widget/ZoomControls;->show()V

    #@30
    .line 1062
    :cond_3
    if-eqz p1, :cond_4

    #@32
    .line 1063
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@34
    invoke-virtual {v0}, Landroid/widget/ZoomControls;->requestFocus()Z

    #@37
    .line 1065
    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    #@39
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    #@3b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@3e
    .line 1066
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    #@40
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    #@42
    sget-wide v2, Lcom/google/android/maps/MapView;->ZOOM_CONTROLS_TIMEOUT:J

    #@44
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@47
    goto :goto_0
.end method

.method doZoom(Z)Z
    .locals 2
    .param p1, "zoomIn"    # Z

    #@0
    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    #@9
    move-result v1

    #@a
    div-int/lit8 v1, v1, 0x2

    #@c
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/MapView;->doZoom(ZII)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method doZoom(ZII)Z
    .locals 3
    .param p1, "zoomIn"    # Z
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    #@0
    .prologue
    .line 1517
    const/4 v0, 0x0

    #@1
    .line 1518
    .local v0, "success":Z
    if-eqz p1, :cond_1

    #@3
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomIn()Z

    #@6
    move-result v1

    #@7
    :goto_0
    if-eqz v1, :cond_0

    #@9
    .line 1519
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    #@b
    const/4 v2, 0x1

    #@c
    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/google/android/maps/ZoomHelper;->doZoom(ZZII)Z

    #@f
    .line 1520
    const/4 v0, 0x1

    #@10
    .line 1522
    :cond_0
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    #@13
    .line 1523
    const/4 v1, 0x0

    #@14
    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    #@17
    .line 1524
    return v0

    #@18
    .line 1518
    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->canZoomOut()Z

    #@1b
    move-result v1

    #@1c
    goto :goto_0
.end method

.method drawMap(Landroid/graphics/Canvas;Z)Z
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "fetchTiles"    # Z

    #@0
    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mDrawer:Landroid/com/google/common/graphics/android/AndroidGraphics;

    #@2
    invoke-virtual {v0, p1}, Landroid/com/google/common/graphics/android/AndroidGraphics;->setCanvas(Landroid/graphics/Canvas;)V

    #@5
    .line 1092
    const/4 v7, 0x1

    #@6
    .line 1093
    .local v7, "drawIncompleteTiles":Z
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@8
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mDrawer:Landroid/com/google/common/graphics/android/AndroidGraphics;

    #@a
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->isLocationDisplayed()Z

    #@d
    move-result v3

    #@e
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->isRouteDisplayed()Z

    #@11
    move-result v4

    #@12
    .line 1094
    const/4 v5, 0x1

    #@13
    const/4 v6, 0x0

    #@14
    move v2, p2

    #@15
    .line 1093
    invoke-virtual/range {v0 .. v6}, Landroid/com/google/googlenav/map/Map;->drawMap(Landroid/com/google/common/graphics/GoogleGraphics;ZZZZZ)Z

    #@18
    move-result v0

    #@19
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    #@0
    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->generateDefaultLayoutParams()Lcom/google/android/maps/MapView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/maps/MapView$LayoutParams;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, -0x2

    #@2
    .line 708
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    #@4
    .line 710
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    #@6
    invoke-direct {v1, v2, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    #@9
    const/16 v2, 0x11

    #@b
    .line 708
    invoke-direct {v0, v3, v3, v1, v2}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;I)V

    #@e
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 773
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    #@2
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 788
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public getController()Lcom/google/android/maps/MapController;
    .locals 1

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@2
    return-object v0
.end method

.method public getLatitudeSpan()I
    .locals 1

    #@0
    .prologue
    .line 1264
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/Map;->getLatitudeSpan()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLongitudeSpan()I
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1275
    iget-object v8, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@3
    invoke-virtual {v8}, Landroid/com/google/googlenav/map/Map;->getMapState()Landroid/com/google/map/MapState;

    #@6
    move-result-object v3

    #@7
    .line 1276
    .local v3, "mapState":Landroid/com/google/map/MapState;
    invoke-virtual {v3}, Landroid/com/google/map/MapState;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@a
    move-result-object v4

    #@b
    .line 1277
    .local v4, "point":Landroid/com/google/map/MapPoint;
    invoke-virtual {v3}, Landroid/com/google/map/MapState;->getZoom()Landroid/com/google/map/Zoom;

    #@e
    move-result-object v7

    #@f
    .line 1278
    .local v7, "zoom":Landroid/com/google/map/Zoom;
    iget-object v8, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@11
    invoke-virtual {v8}, Landroid/com/google/googlenav/map/Map;->getWidth()I

    #@14
    move-result v8

    #@15
    div-int/lit8 v1, v8, 0x2

    #@17
    .line 1282
    .local v1, "halfWidth":I
    const/4 v6, 0x0

    #@18
    .line 1283
    .local v6, "shift":I
    invoke-virtual {v7}, Landroid/com/google/map/Zoom;->getZoomLevel()I

    #@1b
    move-result v8

    #@1c
    const/4 v9, 0x1

    #@1d
    if-ne v8, v9, :cond_0

    #@1f
    .line 1284
    const/4 v6, 0x2

    #@20
    .line 1285
    shr-int/lit8 v1, v1, 0x2

    #@22
    .line 1287
    :cond_0
    neg-int v8, v1

    #@23
    invoke-virtual {v4, v8, v10, v7}, Landroid/com/google/map/MapPoint;->pixelOffset(IILandroid/com/google/map/Zoom;)Landroid/com/google/map/MapPoint;

    #@26
    move-result-object v2

    #@27
    .line 1288
    .local v2, "left":Landroid/com/google/map/MapPoint;
    invoke-virtual {v4, v1, v10, v7}, Landroid/com/google/map/MapPoint;->pixelOffset(IILandroid/com/google/map/Zoom;)Landroid/com/google/map/MapPoint;

    #@2a
    move-result-object v5

    #@2b
    .line 1289
    .local v5, "right":Landroid/com/google/map/MapPoint;
    invoke-virtual {v5}, Landroid/com/google/map/MapPoint;->getLongitude()I

    #@2e
    move-result v8

    #@2f
    invoke-virtual {v2}, Landroid/com/google/map/MapPoint;->getLongitude()I

    #@32
    move-result v9

    #@33
    sub-int v0, v8, v9

    #@35
    .line 1290
    .local v0, "diff":I
    if-gtz v0, :cond_1

    #@37
    .line 1291
    const v8, 0x15752a00

    #@3a
    add-int/2addr v0, v8

    #@3b
    .line 1293
    :cond_1
    shl-int v8, v0, v6

    #@3d
    return v8
.end method

.method public getMapCenter()Lcom/google/android/maps/GeoPoint;
    .locals 2

    #@0
    .prologue
    .line 1227
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    #@2
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@4
    invoke-virtual {v1}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/maps/GeoPoint;-><init>(Landroid/com/google/map/MapPoint;)V

    #@b
    return-object v0
.end method

.method public getMaxZoomLevel()I
    .locals 2

    #@0
    .prologue
    .line 1324
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@4
    invoke-virtual {v1}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/com/google/googlenav/map/Map;->getMaxMapZoomForPoint(Landroid/com/google/map/MapPoint;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public final getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1254
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@2
    invoke-virtual {v0}, Lcom/google/android/maps/OverlayBundle;->getOverlays()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getProjection()Lcom/google/android/maps/Projection;
    .locals 1

    #@0
    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    #@2
    return-object v0
.end method

.method getZoom()Landroid/com/google/map/Zoom;
    .locals 1

    #@0
    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/Map;->getZoom()Landroid/com/google/map/Zoom;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .locals 1

    #@0
    .prologue
    .line 1442
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@2
    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1395
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1396
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->createZoomControls()Landroid/widget/ZoomControls;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@a
    .line 1397
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@c
    const/16 v1, 0x8

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    #@11
    .line 1398
    new-instance v0, Lcom/google/android/maps/MapView$3;

    #@13
    invoke-direct {v0, p0}, Lcom/google/android/maps/MapView$3;-><init>(Lcom/google/android/maps/MapView;)V

    #@16
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControlRunnable:Ljava/lang/Runnable;

    #@18
    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@1a
    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    #@0
    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/Map;->getZoom()Landroid/com/google/map/Zoom;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/com/google/map/Zoom;->getZoomLevel()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    #@0
    .prologue
    .line 499
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isSatellite()Z
    .locals 1

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    invoke-virtual {v0}, Landroid/com/google/googlenav/map/Map;->isSatellite()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isStreetView()Z
    .locals 1

    #@0
    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/google/android/maps/MapView;->mFakeStreetViewEnabled:Z

    #@2
    return v0
.end method

.method public isTraffic()Z
    .locals 1

    #@0
    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    #@2
    invoke-virtual {v0}, Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->isShowTraffic()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 475
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    .line 476
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 477
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    #@d
    .line 474
    :cond_0
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 509
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@4
    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->isDirty()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move-object v0, p0

    #@b
    move v3, v2

    #@c
    move v4, v2

    #@d
    move v5, v2

    #@e
    .line 511
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/MapView;->onLayout(ZIIII)V

    #@11
    .line 514
    :cond_0
    const/4 v7, 0x1

    #@12
    .line 515
    .local v7, "fetchTiles":Z
    const/4 v6, 0x0

    #@13
    .line 517
    .local v6, "drawAgain":Z
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getDrawingTime()J

    #@16
    move-result-wide v8

    #@17
    .line 521
    .local v8, "drawTime":J
    if-eqz v6, :cond_5

    #@19
    const/4 v7, 0x0

    #@1a
    .line 523
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    #@1c
    invoke-virtual {v0, v8, v9}, Lcom/google/android/maps/ZoomHelper;->shouldDrawMap(J)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_1

    #@22
    .line 524
    invoke-virtual {p0, p1, v7}, Lcom/google/android/maps/MapView;->drawMap(Landroid/graphics/Canvas;Z)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_6

    #@28
    move v6, v2

    #@29
    .line 527
    .end local v6    # "drawAgain":Z
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@2b
    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@2d
    if-ne v0, v1, :cond_2

    #@2f
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isInTouchMode()Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_7

    #@35
    .line 531
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    #@37
    invoke-virtual {v0, p1, p0, v8, v9}, Lcom/google/android/maps/ZoomHelper;->onDraw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z

    #@3a
    move-result v0

    #@3b
    or-int/2addr v6, v0

    #@3c
    .line 532
    .local v6, "drawAgain":Z
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@3e
    invoke-virtual {v0, p1, p0, v8, v9}, Lcom/google/android/maps/OverlayBundle;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z

    #@41
    move-result v0

    #@42
    or-int/2addr v6, v0

    #@43
    .line 534
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@45
    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@47
    if-ne v0, v1, :cond_3

    #@49
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isInTouchMode()Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_8

    #@4f
    .line 539
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    #@51
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@54
    .line 541
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@56
    invoke-virtual {v0, v8, v9}, Lcom/google/android/maps/MapController;->stepAnimation(J)Z

    #@59
    move-result v0

    #@5a
    or-int/2addr v6, v0

    #@5b
    .line 543
    if-eqz v6, :cond_4

    #@5d
    .line 544
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->requestLayout()V

    #@60
    .line 545
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->invalidate()V

    #@63
    .line 508
    :cond_4
    return-void

    #@64
    .line 521
    .local v6, "drawAgain":Z
    :cond_5
    const/4 v7, 0x1

    #@65
    goto :goto_0

    #@66
    :cond_6
    move v6, v1

    #@67
    .line 524
    goto :goto_1

    #@68
    .line 528
    .end local v6    # "drawAgain":Z
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@6a
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@6d
    goto :goto_2

    #@6e
    .line 535
    .local v6, "drawAgain":Z
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@70
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@73
    goto :goto_3
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "unused"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 614
    if-nez p1, :cond_0

    #@2
    .line 615
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@4
    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->stopPanning()V

    #@7
    .line 617
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    #@a
    .line 613
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 625
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@3
    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/maps/OverlayBundle;->onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    return v1

    #@a
    .line 626
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@c
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/maps/MapController;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    return v1

    #@13
    .line 627
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 635
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@3
    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/maps/OverlayBundle;->onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    return v1

    #@a
    .line 636
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@c
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/maps/MapController;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    return v1

    #@13
    .line 637
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 715
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    #@3
    .line 717
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getChildCount()I

    #@6
    move-result v4

    #@7
    .line 718
    .local v4, "count":I
    new-instance v8, Landroid/graphics/Point;

    #@9
    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    #@c
    .line 720
    .local v8, "point":Landroid/graphics/Point;
    const/4 v6, 0x0

    #@d
    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_2

    #@f
    .line 721
    invoke-virtual {p0, v6}, Lcom/google/android/maps/MapView;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v1

    #@13
    .line 722
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v12

    #@17
    const/16 v13, 0x8

    #@19
    if-eq v12, v13, :cond_0

    #@1b
    .line 724
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v7

    #@1f
    check-cast v7, Lcom/google/android/maps/MapView$LayoutParams;

    #@21
    .line 726
    .local v7, "lp":Lcom/google/android/maps/MapView$LayoutParams;
    iget v12, v7, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    #@23
    if-nez v12, :cond_1

    #@25
    .line 727
    iget-object v12, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    #@27
    iget-object v13, v7, Lcom/google/android/maps/MapView$LayoutParams;->point:Lcom/google/android/maps/GeoPoint;

    #@29
    invoke-virtual {v12, v13, v8}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    #@2c
    .line 728
    iget v12, v8, Landroid/graphics/Point;->x:I

    #@2e
    iget v13, v7, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    #@30
    add-int/2addr v12, v13

    #@31
    iput v12, v8, Landroid/graphics/Point;->x:I

    #@33
    .line 729
    iget v12, v8, Landroid/graphics/Point;->y:I

    #@35
    iget v13, v7, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    #@37
    add-int/2addr v12, v13

    #@38
    iput v12, v8, Landroid/graphics/Point;->y:I

    #@3a
    .line 735
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    #@3d
    move-result v9

    #@3e
    .line 736
    .local v9, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    #@41
    move-result v5

    #@42
    .line 737
    .local v5, "height":I
    iget v10, v8, Landroid/graphics/Point;->x:I

    #@44
    .line 738
    .local v10, "x":I
    iget v11, v8, Landroid/graphics/Point;->y:I

    #@46
    .line 739
    .local v11, "y":I
    iget v0, v7, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    #@48
    .line 740
    .local v0, "alignment":I
    and-int/lit8 v12, v0, 0x7

    #@4a
    packed-switch v12, :pswitch_data_0

    #@4d
    .line 752
    :goto_2
    :pswitch_0
    and-int/lit8 v12, v0, 0x70

    #@4f
    sparse-switch v12, :sswitch_data_0

    #@52
    .line 764
    :goto_3
    :sswitch_0
    iget v12, p0, Lcom/google/android/maps/MapView;->mPaddingLeft:I

    #@54
    add-int v2, v12, v10

    #@56
    .line 765
    .local v2, "childLeft":I
    iget v12, p0, Lcom/google/android/maps/MapView;->mPaddingTop:I

    #@58
    add-int v3, v12, v11

    #@5a
    .line 766
    .local v3, "childTop":I
    add-int v12, v2, v9

    #@5c
    add-int v13, v3, v5

    #@5e
    invoke-virtual {v1, v2, v3, v12, v13}, Landroid/view/View;->layout(IIII)V

    #@61
    .line 720
    .end local v0    # "alignment":I
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v5    # "height":I
    .end local v7    # "lp":Lcom/google/android/maps/MapView$LayoutParams;
    .end local v9    # "width":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@63
    goto :goto_0

    #@64
    .line 731
    .restart local v7    # "lp":Lcom/google/android/maps/MapView$LayoutParams;
    :cond_1
    iget v12, v7, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    #@66
    iput v12, v8, Landroid/graphics/Point;->x:I

    #@68
    .line 732
    iget v12, v7, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    #@6a
    iput v12, v8, Landroid/graphics/Point;->y:I

    #@6c
    goto :goto_1

    #@6d
    .line 744
    .restart local v0    # "alignment":I
    .restart local v5    # "height":I
    .restart local v9    # "width":I
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    :pswitch_1
    div-int/lit8 v12, v9, 0x2

    #@6f
    sub-int/2addr v10, v12

    #@70
    .line 745
    goto :goto_2

    #@71
    .line 749
    :pswitch_2
    add-int/lit8 v12, v9, -0x1

    #@73
    sub-int/2addr v10, v12

    #@74
    .line 750
    goto :goto_2

    #@75
    .line 756
    :sswitch_1
    div-int/lit8 v12, v5, 0x2

    #@77
    sub-int/2addr v11, v12

    #@78
    .line 757
    goto :goto_3

    #@79
    .line 761
    :sswitch_2
    add-int/lit8 v12, v5, -0x1

    #@7b
    sub-int/2addr v11, v12

    #@7c
    .line 762
    goto :goto_3

    #@7d
    .line 769
    .end local v0    # "alignment":I
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "height":I
    .end local v7    # "lp":Lcom/google/android/maps/MapView$LayoutParams;
    .end local v9    # "width":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_2
    iget-object v12, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@7f
    invoke-virtual {v12}, Lcom/google/android/maps/MapController;->clean()V

    #@82
    .line 714
    return-void

    #@83
    .line 740
    nop

    #@84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    #@92
    .line 752
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 550
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    #@3
    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/MapView;->measureChildren(II)V

    #@6
    .line 561
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredWidth()I

    #@9
    move-result v2

    #@a
    .line 562
    .local v2, "maxWidth":I
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    #@d
    move-result v1

    #@e
    .line 563
    .local v1, "maxHeight":I
    if-eqz v2, :cond_0

    #@10
    if-nez v1, :cond_2

    #@12
    .line 564
    :cond_0
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    #@14
    const-string/jumbo v5, "window"

    #@17
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/view/WindowManager;

    #@1d
    .line 565
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@20
    move-result-object v0

    #@21
    .line 566
    .local v0, "display":Landroid/view/Display;
    if-nez v2, :cond_1

    #@23
    .line 567
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    #@26
    move-result v2

    #@27
    .line 569
    :cond_1
    if-nez v1, :cond_2

    #@29
    .line 570
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    #@2c
    move-result v1

    #@2d
    .line 574
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_2
    invoke-static {v2, p1}, Lcom/google/android/maps/MapView;->resolveSize(II)I

    #@30
    move-result v4

    #@31
    .line 575
    invoke-static {v1, p2}, Lcom/google/android/maps/MapView;->resolveSize(II)I

    #@34
    move-result v5

    #@35
    .line 574
    invoke-virtual {p0, v4, v5}, Lcom/google/android/maps/MapView;->setMeasuredDimension(II)V

    #@38
    .line 582
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    #@3a
    .line 584
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    #@3d
    move-result v5

    #@3e
    iget v6, p0, Lcom/google/android/maps/MapView;->mGoogleLogoHeight:I

    #@40
    sub-int/2addr v5, v6

    #@41
    add-int/lit8 v5, v5, -0xa

    #@43
    .line 585
    iget v6, p0, Lcom/google/android/maps/MapView;->mGoogleLogoWidth:I

    #@45
    add-int/lit8 v6, v6, 0xa

    #@47
    .line 586
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    #@4a
    move-result v7

    #@4b
    add-int/lit8 v7, v7, -0xa

    #@4d
    .line 583
    const/16 v8, 0xa

    #@4f
    .line 582
    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@52
    .line 592
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@54
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredWidth()I

    #@57
    move-result v5

    #@58
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getMeasuredHeight()I

    #@5b
    move-result v6

    #@5c
    invoke-virtual {v4, v5, v6}, Landroid/com/google/googlenav/map/Map;->resize(II)V

    #@5f
    .line 593
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@61
    invoke-virtual {v4}, Lcom/google/android/maps/MapController;->onMeasure()V

    #@64
    .line 549
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    const v8, 0x7fffffff

    #@3
    const/4 v7, 0x0

    #@4
    .line 1353
    if-nez p1, :cond_0

    #@6
    .line 1354
    return-void

    #@7
    .line 1356
    :cond_0
    iget-object v5, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@9
    if-eqz v5, :cond_2

    #@b
    .line 1357
    const v0, 0x7fffffff

    #@e
    .line 1358
    .local v0, "invalid":I
    sget-object v5, Lcom/google/android/maps/MapView;->KEY_CENTER_LATITUDE:Ljava/lang/String;

    #@10
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@13
    move-result v1

    #@14
    .line 1359
    .local v1, "latitude":I
    sget-object v5, Lcom/google/android/maps/MapView;->KEY_CENTER_LONGITUDE:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@19
    move-result v2

    #@1a
    .line 1360
    .local v2, "longitude":I
    if-eq v1, v8, :cond_1

    #@1c
    if-eq v2, v8, :cond_1

    #@1e
    .line 1361
    iget-object v5, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@20
    new-instance v6, Lcom/google/android/maps/GeoPoint;

    #@22
    invoke-direct {v6, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    #@25
    invoke-virtual {v5, v6}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    #@28
    .line 1363
    :cond_1
    sget-object v5, Lcom/google/android/maps/MapView;->KEY_ZOOM_LEVEL:Ljava/lang/String;

    #@2a
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@2d
    move-result v4

    #@2e
    .line 1364
    .local v4, "zoomLevel":I
    if-eq v4, v8, :cond_2

    #@30
    .line 1365
    iget-object v5, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@32
    invoke-virtual {v5, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    #@35
    .line 1368
    .end local v0    # "invalid":I
    .end local v1    # "latitude":I
    .end local v2    # "longitude":I
    .end local v4    # "zoomLevel":I
    :cond_2
    sget-object v5, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    #@37
    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_4

    #@3d
    const/4 v3, 0x1

    #@3e
    .line 1369
    .local v3, "zoomDisplayed":Z
    :goto_0
    if-eqz v3, :cond_3

    #@40
    .line 1370
    invoke-virtual {p0, v7}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    #@43
    .line 1352
    :cond_3
    return-void

    #@44
    .line 1368
    .end local v3    # "zoomDisplayed":Z
    :cond_4
    const/4 v3, 0x0

    #@45
    .restart local v3    # "zoomDisplayed":Z
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1334
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LATITUDE:Ljava/lang/String;

    #@3
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@5
    invoke-virtual {v1}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/com/google/map/MapPoint;->getLatitude()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 1335
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_CENTER_LONGITUDE:Ljava/lang/String;

    #@12
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@14
    invoke-virtual {v1}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/com/google/map/MapPoint;->getLongitude()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1f
    .line 1336
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_LEVEL:Ljava/lang/String;

    #@21
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    #@24
    move-result v1

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@28
    .line 1338
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@2a
    if-eqz v0, :cond_0

    #@2c
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@2e
    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_1

    #@34
    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@36
    if-eqz v0, :cond_2

    #@38
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomControls:Landroid/widget/ZoomControls;

    #@3a
    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_2

    #@40
    .line 1340
    :cond_1
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    #@42
    const/4 v1, 0x1

    #@43
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@46
    .line 1333
    :goto_0
    return-void

    #@47
    .line 1342
    :cond_2
    sget-object v0, Lcom/google/android/maps/MapView;->KEY_ZOOM_DISPLAYED:Ljava/lang/String;

    #@49
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@4c
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 463
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    invoke-virtual {v4, p1, p2}, Landroid/com/google/googlenav/map/Map;->resize(II)V

    #@5
    .line 464
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 465
    div-int/lit8 v4, p1, 0x2

    #@b
    iget-object v5, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@10
    move-result v5

    #@11
    div-int/lit8 v5, v5, 0x2

    #@13
    sub-int v1, v4, v5

    #@15
    .line 466
    .local v1, "left":I
    div-int/lit8 v4, p2, 0x2

    #@17
    iget-object v5, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1c
    move-result v5

    #@1d
    div-int/lit8 v5, v5, 0x2

    #@1f
    sub-int v3, v4, v5

    #@21
    .line 467
    .local v3, "top":I
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@23
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@26
    move-result v4

    #@27
    add-int v2, v1, v4

    #@29
    .line 468
    .local v2, "right":I
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@2b
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@2e
    move-result v4

    #@2f
    add-int v0, v3, v4

    #@31
    .line 469
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@33
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@36
    .line 462
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 675
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isEnabled()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isClickable()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 680
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@10
    .line 681
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@12
    invoke-virtual {v0, p1, p0}, Lcom/google/android/maps/OverlayBundle;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 682
    return v1

    #@19
    .line 676
    :cond_0
    const/4 v0, 0x0

    #@1a
    return v0

    #@1b
    .line 684
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@1d
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@20
    .line 685
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGestureDetector:Lcom/google/android/maps/GestureDetector;

    #@22
    invoke-virtual {v0, p1}, Lcom/google/android/maps/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@25
    .line 686
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    #@2
    .line 647
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@5
    .line 648
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@7
    invoke-virtual {v1, p1, p0}, Lcom/google/android/maps/OverlayBundle;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 649
    const/4 v1, 0x1

    #@e
    return v1

    #@f
    .line 651
    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    #@11
    invoke-virtual {v1, p1}, Lcom/google/android/maps/TrackballGestureDetector;->analyze(Landroid/view/MotionEvent;)V

    #@14
    .line 653
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    #@16
    invoke-virtual {v1}, Lcom/google/android/maps/TrackballGestureDetector;->isScroll()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 654
    const/high16 v0, 0x41200000    # 10.0f

    #@1e
    .line 656
    .local v0, "TRACKBALL_SCALE":F
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@23
    move-result v2

    #@24
    mul-float/2addr v2, v4

    #@25
    float-to-int v2, v2

    #@26
    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@29
    move-result v3

    #@2a
    mul-float/2addr v3, v4

    #@2b
    float-to-int v3, v3

    #@2c
    .line 656
    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/MapController;->scrollByTrackball(II)V

    #@2f
    .line 665
    .end local v0    # "TRACKBALL_SCALE":F
    :cond_1
    :goto_0
    const/4 v1, 0x0

    #@30
    return v1

    #@31
    .line 658
    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    #@33
    invoke-virtual {v1}, Lcom/google/android/maps/TrackballGestureDetector;->isTap()Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_1

    #@39
    .line 659
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@3b
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    #@3d
    iget-object v3, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@3f
    invoke-virtual {v3}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@42
    move-result-object v3

    #@43
    invoke-direct {v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(Landroid/com/google/map/MapPoint;)V

    #@46
    invoke-virtual {v1, v2, p0}, Lcom/google/android/maps/OverlayBundle;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    #@49
    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 691
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    #@4
    .line 692
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@6
    if-eqz v0, :cond_0

    #@8
    if-eqz p2, :cond_0

    #@a
    .line 693
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    #@f
    .line 690
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 602
    if-nez p1, :cond_0

    #@2
    .line 603
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@4
    invoke-virtual {v0}, Lcom/google/android/maps/MapController;->stopPanning()V

    #@7
    .line 605
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    #@a
    .line 601
    return-void
.end method

.method public preLoad()V
    .locals 2

    #@0
    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@4
    invoke-virtual {v1}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/com/google/googlenav/map/Map;->preLoad(Landroid/com/google/map/MapPoint;)V

    #@b
    .line 1111
    return-void
.end method

.method restoreMapReferences(Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 2
    .param p1, "dispatcher"    # Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mRepainter:Lcom/google/android/maps/MapView$Repainter;

    #@2
    invoke-virtual {p1, v0}, Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequestListener(Landroid/com/google/googlenav/datarequest/DataRequestListener;)V

    #@5
    .line 404
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@7
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    #@9
    invoke-virtual {v0, v1}, Landroid/com/google/googlenav/map/Map;->setTileOverlayRenderer(Landroid/com/google/googlenav/map/TileOverlayRenderer;)V

    #@c
    .line 402
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1498
    iput-boolean p1, p0, Lcom/google/android/maps/MapView;->mBuiltInZoomControlsEnabled:Z

    #@2
    .line 1499
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1500
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->createZoomButtonsController()Landroid/widget/ZoomButtonsController;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    #@c
    .line 1497
    :cond_0
    return-void
.end method

.method public setReticleDrawMode(Lcom/google/android/maps/MapView$ReticleDrawMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@0
    .prologue
    .line 1310
    if-nez p1, :cond_0

    #@2
    .line 1311
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "The ReticleDrawMode cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1313
    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@d
    .line 1309
    return-void
.end method

.method public setSatellite(Z)V
    .locals 2
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->isSatellite()Z

    #@3
    move-result v0

    #@4
    if-ne v0, p1, :cond_0

    #@6
    .line 1143
    return-void

    #@7
    .line 1145
    :cond_0
    if-eqz p1, :cond_1

    #@9
    .line 1146
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Landroid/com/google/googlenav/map/Map;->setMapMode(I)V

    #@f
    .line 1150
    :goto_0
    invoke-direct {p0}, Lcom/google/android/maps/MapView;->updateZoomControls()V

    #@12
    .line 1151
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@15
    .line 1141
    return-void

    #@16
    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, v1}, Landroid/com/google/googlenav/map/Map;->setMapMode(I)V

    #@1c
    goto :goto_0
.end method

.method public setStreetView(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1204
    if-eqz p1, :cond_0

    #@2
    .line 1205
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapView;->setTraffic(Z)V

    #@6
    .line 1207
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/maps/MapView;->mFakeStreetViewEnabled:Z

    #@8
    .line 1203
    return-void
.end method

.method public setTraffic(Z)V
    .locals 1
    .param p1, "on"    # Z

    #@0
    .prologue
    .line 1174
    if-eqz p1, :cond_0

    #@2
    .line 1175
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapView;->setStreetView(Z)V

    #@6
    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    #@8
    invoke-virtual {v0, p1}, Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->setShowTraffic(Z)V

    #@b
    .line 1178
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@e
    .line 1173
    return-void
.end method

.method setup(Landroid/com/google/googlenav/map/Map;Landroid/com/google/googlenav/map/TrafficService;Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 3
    .param p1, "map"    # Landroid/com/google/googlenav/map/Map;
    .param p2, "traffic"    # Landroid/com/google/googlenav/map/TrafficService;
    .param p3, "dispatcher"    # Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@0
    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    .line 311
    new-instance v0, Lcom/google/android/maps/PixelConverter;

    #@4
    invoke-direct {v0, p1}, Lcom/google/android/maps/PixelConverter;-><init>(Landroid/com/google/googlenav/map/Map;)V

    #@7
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mConverter:Lcom/google/android/maps/PixelConverter;

    #@9
    .line 313
    new-instance v0, Lcom/google/android/maps/OverlayBundle;

    #@b
    invoke-direct {v0}, Lcom/google/android/maps/OverlayBundle;-><init>()V

    #@e
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayBundle:Lcom/google/android/maps/OverlayBundle;

    #@10
    .line 314
    new-instance v0, Lcom/google/android/maps/MapController;

    #@12
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mMap:Landroid/com/google/googlenav/map/Map;

    #@14
    invoke-direct {v0, v1, p0}, Lcom/google/android/maps/MapController;-><init>(Landroid/com/google/googlenav/map/Map;Lcom/google/android/maps/MapView;)V

    #@17
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@19
    .line 317
    new-instance v0, Lcom/google/android/maps/ZoomHelper;

    #@1b
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mController:Lcom/google/android/maps/MapController;

    #@1d
    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/ZoomHelper;-><init>(Lcom/google/android/maps/MapView;Lcom/google/android/maps/MapController;)V

    #@20
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mZoomHelper:Lcom/google/android/maps/ZoomHelper;

    #@22
    .line 319
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object v0

    #@28
    .line 320
    sget v1, Lcom/google/android/maps/InternalR$drawable;->reticle:I

    #@2a
    .line 319
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mReticle:Landroid/graphics/drawable/Drawable;

    #@30
    .line 322
    sget-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@32
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mReticleDrawMode:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@34
    .line 324
    new-instance v0, Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    #@36
    invoke-direct {v0}, Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;-><init>()V

    #@39
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    #@3b
    .line 325
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mOverlayRenderer:Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;

    #@3d
    invoke-virtual {v0, p2}, Landroid/com/google/googlenav/ui/android/AndroidTileOverlayRenderer;->setTrafficService(Landroid/com/google/googlenav/map/TrafficService;)V

    #@40
    .line 327
    invoke-virtual {p0, p3}, Lcom/google/android/maps/MapView;->restoreMapReferences(Landroid/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    #@43
    .line 329
    new-instance v0, Landroid/os/Handler;

    #@45
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@48
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    #@4a
    .line 330
    new-instance v0, Lcom/google/android/maps/GestureDetector;

    #@4c
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    #@4f
    move-result-object v1

    #@50
    new-instance v2, Lcom/google/android/maps/MapView$1;

    #@52
    invoke-direct {v2, p0}, Lcom/google/android/maps/MapView$1;-><init>(Lcom/google/android/maps/MapView;)V

    #@55
    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GestureDetector;-><init>(Landroid/content/Context;Lcom/google/android/maps/GestureDetector$OnGestureListener;)V

    #@58
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mGestureDetector:Lcom/google/android/maps/GestureDetector;

    #@5a
    .line 378
    iget-object v0, p0, Lcom/google/android/maps/MapView;->mGestureDetector:Lcom/google/android/maps/GestureDetector;

    #@5c
    const/4 v1, 0x0

    #@5d
    invoke-virtual {v0, v1}, Lcom/google/android/maps/GestureDetector;->setIsLongpressEnabled(Z)V

    #@60
    .line 379
    new-instance v0, Landroid/view/ScaleGestureDetector;

    #@62
    invoke-virtual {p0}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    #@65
    move-result-object v1

    #@66
    .line 380
    new-instance v2, Lcom/google/android/maps/MapView$2;

    #@68
    invoke-direct {v2, p0}, Lcom/google/android/maps/MapView$2;-><init>(Lcom/google/android/maps/MapView;)V

    #@6b
    .line 379
    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    #@6e
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    #@70
    .line 396
    new-instance v0, Lcom/google/android/maps/TrackballGestureDetector;

    #@72
    iget-object v1, p0, Lcom/google/android/maps/MapView;->mHandler:Landroid/os/Handler;

    #@74
    invoke-direct {v0, v1}, Lcom/google/android/maps/TrackballGestureDetector;-><init>(Landroid/os/Handler;)V

    #@77
    iput-object v0, p0, Lcom/google/android/maps/MapView;->mTrackballGestureDetector:Lcom/google/android/maps/TrackballGestureDetector;

    #@79
    .line 309
    return-void
.end method
