.class public final Lcom/google/android/maps/MapController;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/MapController$HorizPanState;,
        Lcom/google/android/maps/MapController$VertPanState;
    }
.end annotation


# static fields
.field private static synthetic -com_google_android_maps_MapController$HorizPanStateSwitchesValues:[I

.field private static synthetic -com_google_android_maps_MapController$VertPanStateSwitchesValues:[I

.field private static final EMPTY_TRANSFORM:Landroid/view/animation/Transformation;


# instance fields
.field private mAnimationCompletedMessage:Landroid/os/Message;

.field private mAnimationCompletedRunnable:Ljava/lang/Runnable;

.field private mDeferredLatSpanE6:I

.field private mDeferredLonSpanE6:I

.field private final mDeltas:[I

.field private volatile mDirty:Z

.field private mHasBeenMeasured:Z

.field private mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

.field private final mMap:Landroid/com/google/googlenav/map/Map;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private final mOrigin:[F

.field private mPanAnimation:Landroid/view/animation/Animation;

.field private mPanPoint:Landroid/com/google/map/MapPoint;

.field private mVertPan:Lcom/google/android/maps/MapController$VertPanState;

.field private mXPanSpeed:F

.field private mYPanSpeed:F


# direct methods
.method private static synthetic -getcom_google_android_maps_MapController$HorizPanStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/google/android/maps/MapController;->-com_google_android_maps_MapController$HorizPanStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/google/android/maps/MapController;->-com_google_android_maps_MapController$HorizPanStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/google/android/maps/MapController$HorizPanState;->values()[Lcom/google/android/maps/MapController$HorizPanState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    #@10
    invoke-virtual {v1}, Lcom/google/android/maps/MapController$HorizPanState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    #@19
    invoke-virtual {v1}, Lcom/google/android/maps/MapController$HorizPanState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    #@22
    invoke-virtual {v1}, Lcom/google/android/maps/MapController$HorizPanState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/google/android/maps/MapController;->-com_google_android_maps_MapController$HorizPanStateSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method private static synthetic -getcom_google_android_maps_MapController$VertPanStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/google/android/maps/MapController;->-com_google_android_maps_MapController$VertPanStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/google/android/maps/MapController;->-com_google_android_maps_MapController$VertPanStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/google/android/maps/MapController$VertPanState;->values()[Lcom/google/android/maps/MapController$VertPanState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->DOWN:Lcom/google/android/maps/MapController$VertPanState;

    #@10
    invoke-virtual {v1}, Lcom/google/android/maps/MapController$VertPanState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    #@19
    invoke-virtual {v1}, Lcom/google/android/maps/MapController$VertPanState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->UP:Lcom/google/android/maps/MapController$VertPanState;

    #@22
    invoke-virtual {v1}, Lcom/google/android/maps/MapController$VertPanState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/google/android/maps/MapController;->-com_google_android_maps_MapController$VertPanStateSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    new-instance v0, Landroid/view/animation/Transformation;

    #@2
    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/maps/MapController;->EMPTY_TRANSFORM:Landroid/view/animation/Transformation;

    #@7
    .line 37
    return-void
.end method

.method constructor <init>(Landroid/com/google/googlenav/map/Map;Lcom/google/android/maps/MapView;)V
    .locals 5
    .param p1, "map"    # Landroid/com/google/googlenav/map/Map;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v1, 0x0

    #@4
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 45
    const/4 v0, 0x2

    #@8
    new-array v0, v0, [F

    #@a
    fill-array-data v0, :array_0

    #@d
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    #@f
    .line 46
    filled-new-array {v2, v2}, [I

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    #@15
    .line 47
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    #@17
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    #@19
    .line 48
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    #@1b
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    #@1d
    .line 49
    iput v3, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    #@1f
    .line 50
    iput v3, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    #@21
    .line 51
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@23
    .line 52
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid/com/google/map/MapPoint;

    #@25
    .line 54
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    #@27
    .line 55
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    #@29
    .line 56
    iput-object v1, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    #@2b
    .line 62
    iput-boolean v2, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    #@2d
    .line 63
    iput v4, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    #@2f
    .line 64
    iput v4, p0, Lcom/google/android/maps/MapController;->mDeferredLonSpanE6:I

    #@31
    .line 76
    iput-object p1, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@33
    .line 77
    iput-object p2, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    #@35
    .line 75
    return-void

    #@36
    .line 45
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V
    .locals 12
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const v11, 0x49742400    # 1000000.0f

    #@3
    const/4 v10, 0x0

    #@4
    .line 230
    iput-object p2, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    #@6
    .line 231
    iput-object p3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    #@8
    .line 232
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid/com/google/map/MapPoint;

    #@b
    move-result-object v4

    #@c
    .line 233
    .local v4, "mapPoint":Landroid/com/google/map/MapPoint;
    invoke-virtual {p0, v10}, Lcom/google/android/maps/MapController;->stopAnimation(Z)V

    #@f
    .line 234
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@11
    invoke-virtual {v5, v4}, Landroid/com/google/googlenav/map/Map;->preLoad(Landroid/com/google/map/MapPoint;)V

    #@14
    .line 235
    iput-object v4, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid/com/google/map/MapPoint;

    #@16
    .line 236
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@18
    invoke-virtual {v5}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@1b
    move-result-object v1

    #@1c
    .line 238
    .local v1, "center":Landroid/com/google/map/MapPoint;
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@1e
    invoke-virtual {v5}, Landroid/com/google/googlenav/map/Map;->getZoom()Landroid/com/google/map/Zoom;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v4, v1, v5}, Landroid/com/google/map/MapPoint;->pixelDistanceSquared(Landroid/com/google/map/MapPoint;Landroid/com/google/map/Zoom;)J

    #@25
    move-result-wide v6

    #@26
    long-to-int v5, v6

    #@27
    int-to-double v6, v5

    #@28
    .line 237
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@2b
    move-result-wide v2

    #@2c
    .line 239
    .local v2, "distance":D
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    #@2e
    mul-double/2addr v6, v2

    #@2f
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    #@31
    add-double/2addr v6, v8

    #@32
    const-wide/high16 v8, 0x4089000000000000L    # 800.0

    #@34
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    #@37
    move-result-wide v6

    #@38
    double-to-int v0, v6

    #@39
    .line 240
    .local v0, "animateMillis":I
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    #@3b
    .line 241
    invoke-virtual {v1}, Landroid/com/google/map/MapPoint;->getLatitude()I

    #@3e
    move-result v6

    #@3f
    int-to-float v6, v6

    #@40
    div-float/2addr v6, v11

    #@41
    invoke-virtual {v4}, Landroid/com/google/map/MapPoint;->getLatitude()I

    #@44
    move-result v7

    #@45
    int-to-float v7, v7

    #@46
    div-float/2addr v7, v11

    #@47
    .line 242
    invoke-virtual {v1}, Landroid/com/google/map/MapPoint;->getLongitude()I

    #@4a
    move-result v8

    #@4b
    int-to-float v8, v8

    #@4c
    div-float/2addr v8, v11

    #@4d
    invoke-virtual {v4}, Landroid/com/google/map/MapPoint;->getLongitude()I

    #@50
    move-result v9

    #@51
    int-to-float v9, v9

    #@52
    div-float/2addr v9, v11

    #@53
    .line 240
    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@56
    iput-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@58
    .line 243
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@5a
    int-to-long v6, v0

    #@5b
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    #@5e
    .line 244
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@60
    invoke-virtual {v5}, Landroid/view/animation/Animation;->startNow()V

    #@63
    .line 245
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@65
    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@67
    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@6a
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@6d
    .line 246
    iget-object v5, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@6f
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@72
    .line 247
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    #@75
    .line 229
    return-void
.end method

.method private centerMapToInternal(Landroid/com/google/map/MapPoint;)V
    .locals 1
    .param p1, "mapPoint"    # Landroid/com/google/map/MapPoint;

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    invoke-virtual {v0, p1}, Landroid/com/google/googlenav/map/Map;->setCenterPoint(Landroid/com/google/map/MapPoint;)V

    #@5
    .line 353
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    #@8
    .line 351
    return-void
.end method

.method private curve(FF)F
    .locals 2
    .param p1, "last"    # F
    .param p2, "max"    # F

    #@0
    .prologue
    .line 196
    sub-float v0, p2, p1

    #@2
    const/high16 v1, 0x41000000    # 8.0f

    #@4
    div-float/2addr v0, v1

    #@5
    add-float/2addr v0, p1

    #@6
    return v0
.end method

.method private onKeyDown(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 175
    packed-switch p1, :pswitch_data_0

    #@4
    .line 189
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 177
    :pswitch_0
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->UP:Lcom/google/android/maps/MapController$VertPanState;

    #@8
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    #@a
    .line 178
    return v1

    #@b
    .line 180
    :pswitch_1
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->DOWN:Lcom/google/android/maps/MapController$VertPanState;

    #@d
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    #@f
    .line 181
    return v1

    #@10
    .line 183
    :pswitch_2
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    #@12
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    #@14
    .line 184
    return v1

    #@15
    .line 186
    :pswitch_3
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    #@17
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    #@19
    .line 187
    return v1

    #@1a
    .line 175
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onKeyUp(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 145
    packed-switch p1, :pswitch_data_0

    #@5
    .line 171
    return v2

    #@6
    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    #@8
    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->UP:Lcom/google/android/maps/MapController$VertPanState;

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 148
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    #@e
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    #@10
    .line 149
    return v3

    #@11
    .line 151
    :cond_0
    return v2

    #@12
    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    #@14
    sget-object v1, Lcom/google/android/maps/MapController$VertPanState;->DOWN:Lcom/google/android/maps/MapController$VertPanState;

    #@16
    if-ne v0, v1, :cond_1

    #@18
    .line 154
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    #@1a
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    #@1c
    .line 155
    return v3

    #@1d
    .line 157
    :cond_1
    return v2

    #@1e
    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    #@20
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    #@22
    if-ne v0, v1, :cond_2

    #@24
    .line 160
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    #@26
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    #@28
    .line 161
    return v3

    #@29
    .line 163
    :cond_2
    return v2

    #@2a
    .line 165
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    #@2c
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    #@2e
    if-ne v0, v1, :cond_3

    #@30
    .line 166
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    #@32
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    #@34
    .line 167
    return v3

    #@35
    .line 169
    :cond_3
    return v2

    #@36
    .line 145
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public animateTo(Lcom/google/android/maps/GeoPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 203
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V

    #@4
    .line 202
    return-void
.end method

.method public animateTo(Lcom/google/android/maps/GeoPoint;Landroid/os/Message;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 213
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V

    #@4
    .line 212
    return-void
.end method

.method public animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 225
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;Ljava/lang/Runnable;Landroid/os/Message;)V

    #@4
    .line 224
    return-void
.end method

.method clean()V
    .locals 1

    #@0
    .prologue
    .line 498
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mDirty:Z

    #@3
    .line 497
    return-void
.end method

.method getDeltas()[I
    .locals 5

    #@0
    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    #@2
    const/4 v3, 0x0

    #@3
    const/high16 v2, -0x3f000000    # -8.0f

    #@5
    .line 96
    invoke-static {}, Lcom/google/android/maps/MapController;->-getcom_google_android_maps_MapController$HorizPanStateSwitchesValues()[I

    #@8
    move-result-object v0

    #@9
    iget-object v1, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    #@b
    invoke-virtual {v1}, Lcom/google/android/maps/MapController$HorizPanState;->ordinal()I

    #@e
    move-result v1

    #@f
    aget v0, v0, v1

    #@11
    packed-switch v0, :pswitch_data_0

    #@14
    .line 106
    :goto_0
    invoke-static {}, Lcom/google/android/maps/MapController;->-getcom_google_android_maps_MapController$VertPanStateSwitchesValues()[I

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    #@1a
    invoke-virtual {v1}, Lcom/google/android/maps/MapController$VertPanState;->ordinal()I

    #@1d
    move-result v1

    #@1e
    aget v0, v0, v1

    #@20
    packed-switch v0, :pswitch_data_1

    #@23
    .line 116
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    #@25
    iget v1, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    #@27
    float-to-int v1, v1

    #@28
    const/4 v2, 0x0

    #@29
    aput v1, v0, v2

    #@2b
    .line 117
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    #@2d
    iget v1, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    #@2f
    float-to-int v1, v1

    #@30
    const/4 v2, 0x1

    #@31
    aput v1, v0, v2

    #@33
    .line 118
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mDeltas:[I

    #@35
    return-object v0

    #@36
    .line 98
    :pswitch_0
    iget v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    #@38
    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/MapController;->curve(FF)F

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    #@3e
    goto :goto_0

    #@3f
    .line 101
    :pswitch_1
    iget v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    #@41
    invoke-direct {p0, v0, v4}, Lcom/google/android/maps/MapController;->curve(FF)F

    #@44
    move-result v0

    #@45
    iput v0, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    #@47
    goto :goto_0

    #@48
    .line 104
    :pswitch_2
    iput v3, p0, Lcom/google/android/maps/MapController;->mXPanSpeed:F

    #@4a
    goto :goto_0

    #@4b
    .line 108
    :pswitch_3
    iget v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    #@4d
    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/MapController;->curve(FF)F

    #@50
    move-result v0

    #@51
    iput v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    #@53
    goto :goto_1

    #@54
    .line 111
    :pswitch_4
    iget v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    #@56
    invoke-direct {p0, v0, v4}, Lcom/google/android/maps/MapController;->curve(FF)F

    #@59
    move-result v0

    #@5a
    iput v0, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    #@5c
    goto :goto_1

    #@5d
    .line 114
    :pswitch_5
    iput v3, p0, Lcom/google/android/maps/MapController;->mYPanSpeed:F

    #@5f
    goto :goto_1

    #@60
    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    #@6a
    .line 106
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method isDirty()Z
    .locals 1

    #@0
    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/google/android/maps/MapController;->mDirty:Z

    #@2
    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 126
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Unknown key action: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 128
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/android/maps/MapController;->onKeyDown(I)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 129
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    #@30
    .line 130
    return v2

    #@31
    .line 132
    :cond_0
    return v1

    #@32
    .line 134
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/maps/MapController;->onKeyUp(I)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_1

    #@38
    .line 135
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    #@3b
    .line 136
    return v2

    #@3c
    .line 138
    :cond_1
    return v1

    #@3d
    .line 126
    nop

    #@3e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onMeasure()V
    .locals 2

    #@0
    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 486
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    #@7
    .line 487
    iget v0, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    #@9
    if-ltz v0, :cond_0

    #@b
    .line 488
    iget v0, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    #@d
    iget v1, p0, Lcom/google/android/maps/MapController;->mDeferredLonSpanE6:I

    #@f
    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    #@12
    .line 484
    :cond_0
    return-void
.end method

.method repaint()V
    .locals 1

    #@0
    .prologue
    .line 337
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/google/android/maps/MapController;->mDirty:Z

    #@3
    .line 338
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    #@5
    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    #@8
    .line 336
    return-void
.end method

.method public scrollBy(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 303
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, v1}, Lcom/google/android/maps/MapController;->stopAnimation(Z)V

    #@4
    .line 304
    iget-object v1, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@6
    invoke-virtual {v1}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@9
    move-result-object v1

    #@a
    .line 305
    iget-object v2, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@c
    invoke-virtual {v2}, Landroid/com/google/googlenav/map/Map;->getZoom()Landroid/com/google/map/Zoom;

    #@f
    move-result-object v2

    #@10
    .line 304
    invoke-virtual {v1, p1, p2, v2}, Landroid/com/google/map/MapPoint;->pixelOffset(IILandroid/com/google/map/Zoom;)Landroid/com/google/map/MapPoint;

    #@13
    move-result-object v0

    #@14
    .line 306
    .local v0, "newCenter":Landroid/com/google/map/MapPoint;
    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid/com/google/map/MapPoint;)V

    #@17
    .line 301
    return-void
.end method

.method scrollByTrackball(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 322
    iget-object v2, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 323
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    .line 324
    iget-object v4, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@a
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getStartTime()J

    #@d
    move-result-wide v4

    #@e
    .line 323
    sub-long v0, v2, v4

    #@10
    .line 325
    .local v0, "delta":J
    const-wide/16 v2, 0xfa

    #@12
    cmp-long v2, v0, v2

    #@14
    if-gez v2, :cond_0

    #@16
    .line 326
    return-void

    #@17
    .line 329
    .end local v0    # "delta":J
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    #@1a
    .line 315
    return-void
.end method

.method public setCenter(Lcom/google/android/maps/GeoPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;

    #@0
    .prologue
    .line 345
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid/com/google/map/MapPoint;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid/com/google/map/MapPoint;)V

    #@7
    .line 344
    return-void
.end method

.method public setZoom(I)I
    .locals 2
    .param p1, "zoomLevel"    # I

    #@0
    .prologue
    .line 394
    const/4 v0, 0x1

    #@1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@4
    move-result v0

    #@5
    const/16 v1, 0x16

    #@7
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    #@a
    move-result p1

    #@b
    .line 395
    invoke-static {p1}, Landroid/com/google/map/Zoom;->getZoom(I)Landroid/com/google/map/Zoom;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0}, Lcom/google/android/maps/MapController;->zoomTo(Landroid/com/google/map/Zoom;)V

    #@12
    .line 396
    return p1
.end method

.method stepAnimation(J)Z
    .locals 11
    .param p1, "drawTime"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const-wide v8, 0x412e848000000000L    # 1000000.0

    #@6
    const/4 v7, 0x1

    #@7
    const/4 v6, 0x0

    #@8
    const/4 v5, 0x0

    #@9
    .line 262
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->getDeltas()[I

    #@c
    move-result-object v1

    #@d
    .line 263
    .local v1, "panDeltas":[I
    aget v3, v1, v5

    #@f
    if-nez v3, :cond_0

    #@11
    aget v3, v1, v7

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 264
    :cond_0
    aget v3, v1, v5

    #@17
    aget v4, v1, v7

    #@19
    invoke-virtual {p0, v3, v4}, Lcom/google/android/maps/MapController;->scrollBy(II)V

    #@1c
    .line 265
    return v7

    #@1d
    .line 268
    :cond_1
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@1f
    if-eqz v3, :cond_5

    #@21
    .line 269
    sget-object v2, Lcom/google/android/maps/MapController;->EMPTY_TRANSFORM:Landroid/view/animation/Transformation;

    #@23
    .line 270
    .local v2, "xform":Landroid/view/animation/Transformation;
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    #@26
    .line 271
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@28
    invoke-virtual {v3, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_2

    #@2e
    .line 272
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    #@30
    aput v4, v3, v5

    #@32
    .line 273
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    #@34
    aput v4, v3, v7

    #@36
    .line 274
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@39
    move-result-object v3

    #@3a
    iget-object v4, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    #@3c
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@3f
    .line 275
    new-instance v0, Landroid/com/google/map/MapPoint;

    #@41
    .line 276
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    #@43
    aget v3, v3, v5

    #@45
    float-to-double v4, v3

    #@46
    mul-double/2addr v4, v8

    #@47
    double-to-int v3, v4

    #@48
    iget-object v4, p0, Lcom/google/android/maps/MapController;->mOrigin:[F

    #@4a
    aget v4, v4, v7

    #@4c
    float-to-double v4, v4

    #@4d
    mul-double/2addr v4, v8

    #@4e
    double-to-int v4, v4

    #@4f
    .line 275
    invoke-direct {v0, v3, v4}, Landroid/com/google/map/MapPoint;-><init>(II)V

    #@52
    .line 277
    .local v0, "newCenter":Landroid/com/google/map/MapPoint;
    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid/com/google/map/MapPoint;)V

    #@55
    .line 278
    return v7

    #@56
    .line 280
    .end local v0    # "newCenter":Landroid/com/google/map/MapPoint;
    :cond_2
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid/com/google/map/MapPoint;

    #@58
    invoke-direct {p0, v3}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid/com/google/map/MapPoint;)V

    #@5b
    .line 281
    iput-object v6, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid/com/google/map/MapPoint;

    #@5d
    .line 282
    iput-object v6, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@5f
    .line 283
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    #@61
    if-eqz v3, :cond_3

    #@63
    .line 284
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    #@65
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    #@68
    .line 285
    iput-object v6, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    #@6a
    .line 287
    :cond_3
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    #@6c
    if-eqz v3, :cond_4

    #@6e
    .line 288
    iget-object v3, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    #@70
    iget-object v4, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    #@72
    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapView;->post(Ljava/lang/Runnable;)Z

    #@75
    .line 289
    iput-object v6, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedRunnable:Ljava/lang/Runnable;

    #@77
    .line 291
    :cond_4
    return v5

    #@78
    .line 293
    .end local v2    # "xform":Landroid/view/animation/Transformation;
    :cond_5
    return v5
.end method

.method public stopAnimation(Z)V
    .locals 3
    .param p1, "jumpToFinish"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 365
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 366
    if-eqz p1, :cond_0

    #@7
    .line 367
    iget-object v1, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@9
    monitor-enter v1

    #@a
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid/com/google/map/MapPoint;

    #@c
    invoke-direct {p0, v0}, Lcom/google/android/maps/MapController;->centerMapToInternal(Landroid/com/google/map/MapPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 371
    :cond_0
    iput-object v2, p0, Lcom/google/android/maps/MapController;->mPanAnimation:Landroid/view/animation/Animation;

    #@12
    .line 372
    iput-object v2, p0, Lcom/google/android/maps/MapController;->mPanPoint:Landroid/com/google/map/MapPoint;

    #@14
    .line 374
    :cond_1
    iput-object v2, p0, Lcom/google/android/maps/MapController;->mAnimationCompletedMessage:Landroid/os/Message;

    #@16
    .line 364
    return-void

    #@17
    .line 367
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public stopPanning()V
    .locals 1

    #@0
    .prologue
    .line 86
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    #@2
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mHorizPan:Lcom/google/android/maps/MapController$HorizPanState;

    #@4
    .line 87
    sget-object v0, Lcom/google/android/maps/MapController$VertPanState;->NONE:Lcom/google/android/maps/MapController$VertPanState;

    #@6
    iput-object v0, p0, Lcom/google/android/maps/MapController;->mVertPan:Lcom/google/android/maps/MapController$VertPanState;

    #@8
    .line 85
    return-void
.end method

.method public zoomIn()Z
    .locals 2

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public zoomInFixing(II)Z
    .locals 2
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I

    #@0
    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/maps/MapView;->doZoom(ZII)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public zoomOut()Z
    .locals 2

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->doZoom(Z)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public zoomOutFixing(II)Z
    .locals 2
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I

    #@0
    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMapView:Lcom/google/android/maps/MapView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/maps/MapView;->doZoom(ZII)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method zoomTo(Landroid/com/google/map/Zoom;)V
    .locals 1
    .param p1, "zoom"    # Landroid/com/google/map/Zoom;

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2
    invoke-virtual {v0, p1}, Landroid/com/google/googlenav/map/Map;->setZoom(Landroid/com/google/map/Zoom;)V

    #@5
    .line 379
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    #@8
    .line 377
    return-void
.end method

.method public zoomToSpan(II)V
    .locals 1
    .param p1, "latSpanE6"    # I
    .param p2, "lonSpanE6"    # I

    #@0
    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/google/android/maps/MapController;->mHasBeenMeasured:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 410
    iget-object v0, p0, Lcom/google/android/maps/MapController;->mMap:Landroid/com/google/googlenav/map/Map;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/com/google/googlenav/map/Map;->zoomToSpan(II)V

    #@9
    .line 411
    invoke-virtual {p0}, Lcom/google/android/maps/MapController;->repaint()V

    #@c
    .line 408
    :goto_0
    return-void

    #@d
    .line 413
    :cond_0
    iput p1, p0, Lcom/google/android/maps/MapController;->mDeferredLatSpanE6:I

    #@f
    .line 414
    iput p2, p0, Lcom/google/android/maps/MapController;->mDeferredLonSpanE6:I

    #@11
    goto :goto_0
.end method
