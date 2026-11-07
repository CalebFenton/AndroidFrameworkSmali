.class public Landroid/hardware/Camera$Parameters;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist ANTIBANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final whitelist ANTIBANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final whitelist ANTIBANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist ANTIBANDING_OFF:Ljava/lang/String; = "off"

.field public static final whitelist EFFECT_AQUA:Ljava/lang/String; = "aqua"

.field public static final whitelist EFFECT_BLACKBOARD:Ljava/lang/String; = "blackboard"

.field public static final whitelist EFFECT_MONO:Ljava/lang/String; = "mono"

.field public static final whitelist EFFECT_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final whitelist EFFECT_NONE:Ljava/lang/String; = "none"

.field public static final whitelist EFFECT_POSTERIZE:Ljava/lang/String; = "posterize"

.field public static final whitelist EFFECT_SEPIA:Ljava/lang/String; = "sepia"

.field public static final whitelist EFFECT_SOLARIZE:Ljava/lang/String; = "solarize"

.field public static final whitelist EFFECT_WHITEBOARD:Ljava/lang/String; = "whiteboard"

.field private static final greylist-max-o FALSE:Ljava/lang/String; = "false"

.field public static final whitelist FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final whitelist FLASH_MODE_ON:Ljava/lang/String; = "on"

.field public static final whitelist FLASH_MODE_RED_EYE:Ljava/lang/String; = "red-eye"

.field public static final whitelist FLASH_MODE_TORCH:Ljava/lang/String; = "torch"

.field public static final whitelist FOCUS_DISTANCE_FAR_INDEX:I = 0x2

.field public static final whitelist FOCUS_DISTANCE_NEAR_INDEX:I = 0x0

.field public static final whitelist FOCUS_DISTANCE_OPTIMAL_INDEX:I = 0x1

.field public static final whitelist FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final whitelist FOCUS_MODE_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field public static final whitelist FOCUS_MODE_EDOF:Ljava/lang/String; = "edof"

.field public static final whitelist FOCUS_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final whitelist FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field public static final whitelist FOCUS_MODE_MACRO:Ljava/lang/String; = "macro"

.field private static final greylist-max-o KEY_ANTIBANDING:Ljava/lang/String; = "antibanding"

.field private static final greylist-max-o KEY_AUTO_EXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final greylist-max-o KEY_AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final greylist-max-o KEY_AUTO_WHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final greylist-max-o KEY_AUTO_WHITEBALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final greylist-max-o KEY_EFFECT:Ljava/lang/String; = "effect"

.field private static final greylist-max-o KEY_EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure-compensation"

.field private static final greylist-max-o KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field private static final greylist-max-o KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final greylist-max-o KEY_FOCAL_LENGTH:Ljava/lang/String; = "focal-length"

.field private static final greylist-max-o KEY_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final greylist-max-o KEY_FOCUS_DISTANCES:Ljava/lang/String; = "focus-distances"

.field private static final greylist-max-o KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field private static final greylist-max-o KEY_GPS_ALTITUDE:Ljava/lang/String; = "gps-altitude"

.field private static final greylist-max-o KEY_GPS_LATITUDE:Ljava/lang/String; = "gps-latitude"

.field private static final greylist-max-o KEY_GPS_LONGITUDE:Ljava/lang/String; = "gps-longitude"

.field private static final greylist-max-o KEY_GPS_PROCESSING_METHOD:Ljava/lang/String; = "gps-processing-method"

.field private static final greylist-max-o KEY_GPS_TIMESTAMP:Ljava/lang/String; = "gps-timestamp"

.field private static final greylist-max-o KEY_HORIZONTAL_VIEW_ANGLE:Ljava/lang/String; = "horizontal-view-angle"

.field private static final greylist-max-o KEY_JPEG_QUALITY:Ljava/lang/String; = "jpeg-quality"

.field private static final greylist-max-o KEY_JPEG_THUMBNAIL_HEIGHT:Ljava/lang/String; = "jpeg-thumbnail-height"

.field private static final greylist-max-o KEY_JPEG_THUMBNAIL_QUALITY:Ljava/lang/String; = "jpeg-thumbnail-quality"

.field private static final greylist-max-o KEY_JPEG_THUMBNAIL_SIZE:Ljava/lang/String; = "jpeg-thumbnail-size"

.field private static final greylist-max-o KEY_JPEG_THUMBNAIL_WIDTH:Ljava/lang/String; = "jpeg-thumbnail-width"

.field private static final greylist-max-o KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field private static final greylist-max-o KEY_MAX_NUM_DETECTED_FACES_HW:Ljava/lang/String; = "max-num-detected-faces-hw"

.field private static final greylist-max-o KEY_MAX_NUM_DETECTED_FACES_SW:Ljava/lang/String; = "max-num-detected-faces-sw"

.field private static final greylist-max-o KEY_MAX_NUM_FOCUS_AREAS:Ljava/lang/String; = "max-num-focus-areas"

.field private static final greylist-max-o KEY_MAX_NUM_METERING_AREAS:Ljava/lang/String; = "max-num-metering-areas"

.field private static final greylist-max-o KEY_MAX_ZOOM:Ljava/lang/String; = "max-zoom"

.field private static final greylist-max-o KEY_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final greylist-max-o KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

.field private static final greylist-max-o KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final greylist-max-o KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final greylist-max-o KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO:Ljava/lang/String; = "preferred-preview-size-for-video"

.field private static final greylist-max-o KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final greylist-max-o KEY_PREVIEW_FPS_RANGE:Ljava/lang/String; = "preview-fps-range"

.field private static final greylist-max-o KEY_PREVIEW_FRAME_RATE:Ljava/lang/String; = "preview-frame-rate"

.field private static final greylist-max-o KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final greylist-max-o KEY_RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final greylist-max-o KEY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final greylist-max-o KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field private static final greylist-max-o KEY_SMOOTH_ZOOM_SUPPORTED:Ljava/lang/String; = "smooth-zoom-supported"

.field private static final greylist-max-o KEY_VERTICAL_VIEW_ANGLE:Ljava/lang/String; = "vertical-view-angle"

.field private static final greylist-max-o KEY_VIDEO_SIZE:Ljava/lang/String; = "video-size"

.field private static final greylist-max-o KEY_VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field private static final greylist-max-o KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "video-stabilization"

.field private static final greylist-max-o KEY_VIDEO_STABILIZATION_SUPPORTED:Ljava/lang/String; = "video-stabilization-supported"

.field private static final greylist-max-o KEY_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field private static final greylist-max-o KEY_ZOOM:Ljava/lang/String; = "zoom"

.field private static final greylist-max-o KEY_ZOOM_RATIOS:Ljava/lang/String; = "zoom-ratios"

.field private static final greylist-max-o KEY_ZOOM_SUPPORTED:Ljava/lang/String; = "zoom-supported"

.field private static final greylist-max-o PIXEL_FORMAT_BAYER_RGGB:Ljava/lang/String; = "bayer-rggb"

.field private static final greylist-max-o PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final greylist-max-o PIXEL_FORMAT_RGB565:Ljava/lang/String; = "rgb565"

.field private static final greylist-max-o PIXEL_FORMAT_YUV420P:Ljava/lang/String; = "yuv420p"

.field private static final greylist-max-o PIXEL_FORMAT_YUV420SP:Ljava/lang/String; = "yuv420sp"

.field private static final greylist-max-o PIXEL_FORMAT_YUV422I:Ljava/lang/String; = "yuv422i-yuyv"

.field private static final greylist-max-o PIXEL_FORMAT_YUV422SP:Ljava/lang/String; = "yuv422sp"

.field public static final whitelist PREVIEW_FPS_MAX_INDEX:I = 0x1

.field public static final whitelist PREVIEW_FPS_MIN_INDEX:I = 0x0

.field public static final whitelist SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final whitelist SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final whitelist SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final whitelist SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final whitelist SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final whitelist SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final whitelist SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final whitelist SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final whitelist SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final whitelist SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final whitelist SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final whitelist SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final whitelist SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final whitelist SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final whitelist SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final whitelist SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field private static final greylist-max-o SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final greylist-max-o TRUE:Ljava/lang/String; = "true"

.field public static final whitelist WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final whitelist WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final whitelist WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final whitelist WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final whitelist WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final whitelist WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final whitelist WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final whitelist WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"


# instance fields
.field private final greylist-max-o mMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/hardware/Camera;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetOuter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/hardware/Camera;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2610
    iput-object p1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2611
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    .line 2612
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/Camera;Landroid/hardware/Camera-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    return-void
.end method

.method private greylist-max-o cameraFormatForPixelFormat(I)Ljava/lang/String;
    .registers 3
    .param p1, "pixel_format"    # I

    .line 3260
    sparse-switch p1, :sswitch_data_1e

    .line 3267
    const/4 v0, 0x0

    return-object v0

    .line 3264
    :sswitch_5
    const-string/jumbo v0, "yuv420p"

    return-object v0

    .line 3266
    :sswitch_9
    const-string/jumbo v0, "jpeg"

    return-object v0

    .line 3263
    :sswitch_d
    const-string/jumbo v0, "yuv422i-yuyv"

    return-object v0

    .line 3262
    :sswitch_11
    const-string/jumbo v0, "yuv420sp"

    return-object v0

    .line 3261
    :sswitch_15
    const-string/jumbo v0, "yuv422sp"

    return-object v0

    .line 3265
    :sswitch_19
    const-string/jumbo v0, "rgb565"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x4 -> :sswitch_19
        0x10 -> :sswitch_15
        0x11 -> :sswitch_11
        0x14 -> :sswitch_d
        0x100 -> :sswitch_9
        0x32315659 -> :sswitch_5
    .end sparse-switch
.end method

.method private greylist-max-o getFloat(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 4327
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 4328
    :catch_d
    move-exception v0

    .line 4329
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return p2
.end method

.method private greylist-max-o getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 4336
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 4337
    :catch_d
    move-exception v0

    .line 4338
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return p2
.end method

.method private greylist-max-o getOuter()Landroid/hardware/Camera;
    .registers 2

    .line 2631
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    return-object v0
.end method

.method private greylist-max-o pixelFormatForCameraFormat(Ljava/lang/String;)I
    .registers 4
    .param p1, "format"    # Ljava/lang/String;

    .line 3272
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3273
    return v0

    .line 3275
    :cond_4
    const-string/jumbo v1, "yuv422sp"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3276
    const/16 v0, 0x10

    return v0

    .line 3278
    :cond_10
    const-string/jumbo v1, "yuv420sp"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3279
    const/16 v0, 0x11

    return v0

    .line 3281
    :cond_1c
    const-string/jumbo v1, "yuv422i-yuyv"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3282
    const/16 v0, 0x14

    return v0

    .line 3284
    :cond_28
    const-string/jumbo v1, "yuv420p"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3285
    const v0, 0x32315659

    return v0

    .line 3287
    :cond_35
    const-string/jumbo v1, "rgb565"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 3288
    const/4 v0, 0x4

    return v0

    .line 3290
    :cond_40
    const-string/jumbo v1, "jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3291
    const/16 v0, 0x100

    return v0

    .line 3293
    :cond_4c
    return v0
.end method

.method private greylist-max-o put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2746
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2747
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2748
    return-void
.end method

.method private greylist-max-o same(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 4437
    const/4 v0, 0x1

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    .line 4438
    :cond_6
    if-eqz p1, :cond_f

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    .line 4439
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o set(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .line 2751
    .local p2, "areas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-nez p2, :cond_8

    .line 2752
    const-string v0, "(0,0,0,0,0)"

    invoke-virtual {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 2754
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2755
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 2756
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    .line 2757
    .local v2, "area":Landroid/hardware/Camera$Area;
    iget-object v3, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 2758
    .local v3, "rect":Landroid/graphics/Rect;
    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2759
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2760
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2761
    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2762
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2763
    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2764
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2765
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2766
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2767
    iget v5, v2, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2768
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2769
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_58

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2755
    .end local v2    # "area":Landroid/hardware/Camera$Area;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2771
    .end local v1    # "i":I
    :cond_5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :goto_62
    return-void
.end method

.method private greylist-max-o split(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4275
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 4277
    :cond_4
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4278
    .local v0, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4280
    .local v1, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4281
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4282
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_17

    .line 4283
    :cond_27
    return-object v1
.end method

.method private greylist-max-r splitArea(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 4404
    const/4 v0, 0x0

    if-eqz p1, :cond_88

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_88

    .line 4405
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x29

    if-eq v2, v4, :cond_1b

    goto :goto_88

    .line 4410
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4411
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v4, 0x1

    .line 4412
    .local v4, "fromIndex":I
    const/4 v5, 0x5

    new-array v5, v5, [I

    .line 4414
    .local v5, "array":[I
    :cond_24
    const-string v6, "),("

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 4415
    .local v6, "endIndex":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 4416
    :cond_33
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v5}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 4417
    new-instance v7, Landroid/graphics/Rect;

    aget v8, v5, v1

    aget v9, v5, v3

    const/4 v10, 0x2

    aget v10, v5, v10

    const/4 v11, 0x3

    aget v11, v5, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4418
    .local v7, "rect":Landroid/graphics/Rect;
    new-instance v8, Landroid/hardware/Camera$Area;

    const/4 v9, 0x4

    aget v9, v5, v9

    invoke-direct {v8, v7, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4419
    add-int/lit8 v4, v6, 0x3

    .line 4420
    .end local v7    # "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    if-ne v6, v7, :cond_24

    .line 4422
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_64

    return-object v0

    .line 4424
    :cond_64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v3, :cond_87

    .line 4425
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    .line 4426
    .local v1, "area":Landroid/hardware/Camera$Area;
    iget-object v3, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 4427
    .local v3, "rect":Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_87

    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_87

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-nez v7, :cond_87

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-nez v7, :cond_87

    iget v7, v1, Landroid/hardware/Camera$Area;->weight:I

    if-nez v7, :cond_87

    .line 4429
    return-object v0

    .line 4433
    .end local v1    # "area":Landroid/hardware/Camera$Area;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_87
    return-object v2

    .line 4406
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    .end local v4    # "fromIndex":I
    .end local v5    # "array":[I
    .end local v6    # "endIndex":I
    :cond_88
    :goto_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid area string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    return-object v0
.end method

.method private greylist-max-o splitFloat(Ljava/lang/String;[F)V
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "output"    # [F

    .line 4314
    if-nez p1, :cond_3

    return-void

    .line 4316
    :cond_3
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4317
    .local v0, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4318
    const/4 v1, 0x0

    .line 4319
    .local v1, "index":I
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4320
    .local v3, "s":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p2, v1

    .line 4321
    .end local v3    # "s":Ljava/lang/String;
    move v1, v4

    goto :goto_12

    .line 4322
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_28
    return-void
.end method

.method private greylist-max-o splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4289
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4291
    :cond_4
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4292
    .local v1, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v1, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4294
    .local v2, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4295
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4296
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_17

    .line 4297
    :cond_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_36

    return-object v0

    .line 4298
    :cond_36
    return-object v2
.end method

.method private greylist-max-o splitInt(Ljava/lang/String;[I)V
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "output"    # [I

    .line 4302
    if-nez p1, :cond_3

    return-void

    .line 4304
    :cond_3
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4305
    .local v0, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4306
    const/4 v1, 0x0

    .line 4307
    .local v1, "index":I
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4308
    .local v3, "s":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, p2, v1

    .line 4309
    .end local v3    # "s":Ljava/lang/String;
    move v1, v4

    goto :goto_12

    .line 4310
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_28
    return-void
.end method

.method private greylist-max-o splitRange(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation

    .line 4378
    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4f

    .line 4379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1b

    goto :goto_4f

    .line 4384
    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4385
    .local v1, "rangeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    const/4 v2, 0x1

    .line 4387
    .local v2, "fromIndex":I
    :cond_21
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 4388
    .local v3, "range":[I
    const-string v4, "),("

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 4389
    .local v4, "endIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 4390
    :cond_33
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 4391
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4392
    add-int/lit8 v2, v4, 0x3

    .line 4393
    .end local v3    # "range":[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v4, v3, :cond_21

    .line 4395
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4e

    return-object v0

    .line 4396
    :cond_4e
    return-object v1

    .line 4380
    .end local v1    # "rangeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    .end local v2    # "fromIndex":I
    .end local v4    # "endIndex":I
    :cond_4f
    :goto_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range list string="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    return-object v0
.end method

.method private greylist-max-o splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 4345
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4347
    :cond_4
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4348
    .local v1, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v1, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4350
    .local v2, "sizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4351
    .local v4, "s":Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 4352
    .local v5, "size":Landroid/hardware/Camera$Size;
    if-eqz v5, :cond_2c

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4353
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_2c
    goto :goto_17

    .line 4354
    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_34

    return-object v0

    .line 4355
    :cond_34
    return-object v2
.end method

.method private greylist-max-o strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;

    .line 4361
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4363
    :cond_4
    const/16 v1, 0x78

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 4364
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    .line 4365
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4366
    .local v0, "width":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4367
    .local v2, "height":Ljava/lang/String;
    new-instance v3, Landroid/hardware/Camera$Size;

    iget-object v4, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4368
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 4367
    return-object v3

    .line 4370
    .end local v0    # "width":Ljava/lang/String;
    .end local v2    # "height":Ljava/lang/String;
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size parameter string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4371
    return-object v0
.end method


# virtual methods
.method public greylist copyFrom(Landroid/hardware/Camera$Parameters;)V
    .registers 4
    .param p1, "other"    # Landroid/hardware/Camera$Parameters;

    .line 2623
    if-eqz p1, :cond_a

    .line 2627
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 2628
    return-void

    .line 2624
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "other must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist dump()V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2657
    .local v2, "k":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    .end local v2    # "k":Ljava/lang/String;
    goto :goto_28

    .line 2659
    :cond_5d
    return-void
.end method

.method public whitelist flatten()Ljava/lang/String;
    .registers 5

    .line 2670
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2671
    .local v0, "flattened":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2672
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2673
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2674
    iget-object v3, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2675
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2676
    .end local v2    # "k":Ljava/lang/String;
    goto :goto_11

    .line 2678
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2782
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAntibanding()Ljava/lang/String;
    .registers 2

    .line 3523
    const-string v0, "antibanding"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAutoExposureLock()Z
    .registers 3

    .line 3818
    const-string v0, "auto-exposure-lock"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3819
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getAutoWhiteBalanceLock()Z
    .registers 3

    .line 3890
    const-string v0, "auto-whitebalance-lock"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3891
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getColorEffect()Ljava/lang/String;
    .registers 2

    .line 3486
    const-string v0, "effect"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExposureCompensation()I
    .registers 3

    .line 3718
    const-string v0, "exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getExposureCompensationStep()F
    .registers 3

    .line 3766
    const-string v0, "exposure-compensation-step"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public whitelist getFlashMode()Ljava/lang/String;
    .registers 2

    .line 3614
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocalLength()F
    .registers 2

    .line 3686
    const-string v0, "focal-length"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getFocusAreas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 4075
    const-string v0, "focus-areas"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFocusDistances([F)V
    .registers 4
    .param p1, "output"    # [F

    .line 4013
    if-eqz p1, :cond_10

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 4017
    const-string v0, "focus-distances"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitFloat(Ljava/lang/String;[F)V

    .line 4018
    return-void

    .line 4014
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output must be a float array with three elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFocusMode()Ljava/lang/String;
    .registers 2

    .line 3654
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHorizontalViewAngle()F
    .registers 2

    .line 3696
    const-string/jumbo v0, "horizontal-view-angle"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2792
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getJpegQuality()I
    .registers 2

    .line 2980
    const-string/jumbo v0, "jpeg-quality"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getJpegThumbnailQuality()I
    .registers 2

    .line 2961
    const-string/jumbo v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getJpegThumbnailSize()Landroid/hardware/Camera$Size;
    .registers 5

    .line 2929
    new-instance v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    const-string/jumbo v2, "jpeg-thumbnail-width"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2930
    const-string/jumbo v3, "jpeg-thumbnail-height"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 2929
    return-object v0
.end method

.method public whitelist getMaxExposureCompensation()I
    .registers 3

    .line 3743
    const-string/jumbo v0, "max-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxNumDetectedFaces()I
    .registers 3

    .line 4165
    const-string/jumbo v0, "max-num-detected-faces-hw"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxNumFocusAreas()I
    .registers 3

    .line 4029
    const-string/jumbo v0, "max-num-focus-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxNumMeteringAreas()I
    .registers 3

    .line 4097
    const-string/jumbo v0, "max-num-metering-areas"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxZoom()I
    .registers 3

    .line 3955
    const-string/jumbo v0, "max-zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getMeteringAreas()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .line 4141
    const-string/jumbo v0, "metering-areas"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMinExposureCompensation()I
    .registers 3

    .line 3754
    const-string/jumbo v0, "min-exposure-compensation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getPictureFormat()I
    .registers 2

    .line 3238
    const-string/jumbo v0, "picture-format"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getPictureSize()Landroid/hardware/Camera$Size;
    .registers 3

    .line 3197
    const-string/jumbo v0, "picture-size"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3198
    .local v0, "pair":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;
    .registers 3

    .line 2901
    const-string/jumbo v0, "preferred-preview-size-for-video"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2902
    .local v0, "pair":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getPreviewFormat()I
    .registers 2

    .line 3140
    const-string/jumbo v0, "preview-format"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getPreviewFpsRange([I)V
    .registers 4
    .param p1, "range"    # [I

    .line 3047
    if-eqz p1, :cond_11

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 3051
    const-string/jumbo v0, "preview-fps-range"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    .line 3052
    return-void

    .line 3048
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "range must be an array with two elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPreviewFrameRate()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3005
    const-string/jumbo v0, "preview-frame-rate"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getPreviewSize()Landroid/hardware/Camera$Size;
    .registers 3

    .line 2840
    const-string/jumbo v0, "preview-size"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2841
    .local v0, "pair":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSceneMode()Ljava/lang/String;
    .registers 2

    .line 3571
    const-string/jumbo v0, "scene-mode"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedAntibanding()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3544
    const-string v0, "antibanding-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3545
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedColorEffects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3507
    const-string v0, "effect-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3508
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedFlashModes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3635
    const-string v0, "flash-mode-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3636
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedFocusModes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3675
    const-string v0, "focus-mode-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3676
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedJpegThumbnailSizes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 2941
    const-string/jumbo v0, "jpeg-thumbnail-size-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2942
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedPictureFormats()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3249
    const-string/jumbo v0, "picture-format-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3250
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3251
    .local v1, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3252
    .local v3, "s":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v4

    .line 3253
    .local v4, "f":I
    if-nez v4, :cond_27

    goto :goto_14

    .line 3254
    :cond_27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3255
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "f":I
    goto :goto_14

    .line 3256
    :cond_2f
    return-object v1
.end method

.method public whitelist getSupportedPictureSizes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 3208
    const-string/jumbo v0, "picture-size-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3209
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedPreviewFormats()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3154
    const-string/jumbo v0, "preview-format-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3155
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3156
    .local v1, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3157
    .local v3, "s":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    move-result v4

    .line 3158
    .local v4, "f":I
    if-nez v4, :cond_27

    goto :goto_14

    .line 3159
    :cond_27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3160
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "f":I
    goto :goto_14

    .line 3161
    :cond_2f
    return-object v1
.end method

.method public whitelist getSupportedPreviewFpsRange()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 3072
    const-string/jumbo v0, "preview-fps-range-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3073
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitRange(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedPreviewFrameRates()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3017
    const-string/jumbo v0, "preview-frame-rate-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3018
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedPreviewSizes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 2851
    const-string/jumbo v0, "preview-size-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2852
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedSceneModes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3598
    const-string/jumbo v0, "scene-mode-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3599
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedVideoSizes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 2881
    const-string/jumbo v0, "video-size-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2882
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSupportedWhiteBalance()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3466
    const-string/jumbo v0, "whitebalance-values"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3467
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getVerticalViewAngle()F
    .registers 2

    .line 3706
    const-string/jumbo v0, "vertical-view-angle"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getVideoStabilization()Z
    .registers 3

    .line 4255
    const-string/jumbo v0, "video-stabilization"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4256
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getWhiteBalance()Ljava/lang/String;
    .registers 2

    .line 3439
    const-string/jumbo v0, "whitebalance"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getZoom()I
    .registers 3

    .line 3917
    const-string/jumbo v0, "zoom"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getZoomRatios()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3969
    const-string/jumbo v0, "zoom-ratios"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isAutoExposureLockSupported()Z
    .registers 3

    .line 3832
    const-string v0, "auto-exposure-lock-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3833
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist isAutoWhiteBalanceLockSupported()Z
    .registers 3

    .line 3904
    const-string v0, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3905
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist isSmoothZoomSupported()Z
    .registers 3

    .line 3979
    const-string/jumbo v0, "smooth-zoom-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3980
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist isVideoSnapshotSupported()Z
    .registers 3

    .line 4218
    const-string/jumbo v0, "video-snapshot-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4219
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist isVideoStabilizationSupported()Z
    .registers 3

    .line 4268
    const-string/jumbo v0, "video-stabilization-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4269
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist isZoomSupported()Z
    .registers 3

    .line 3941
    const-string/jumbo v0, "zoom-supported"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3942
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2707
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    return-void
.end method

.method public whitelist removeGpsData()V
    .registers 2

    .line 3416
    const-string/jumbo v0, "gps-latitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3417
    const-string/jumbo v0, "gps-longitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3418
    const-string/jumbo v0, "gps-altitude"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3419
    const-string/jumbo v0, "gps-timestamp"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3420
    const-string/jumbo v0, "gps-processing-method"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 3421
    return-void
.end method

.method public greylist-max-o same(Landroid/hardware/Camera$Parameters;)Z
    .registers 5
    .param p1, "other"    # Landroid/hardware/Camera$Parameters;

    .line 2641
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2642
    return v0

    .line 2644
    :cond_4
    if-eqz p1, :cond_11

    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist set(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 2736
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    return-void
.end method

.method public whitelist set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2717
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "\" contains invalid character (= or ; or \\0)"

    const-string v3, "Camera"

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4f

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_4f

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v4, :cond_1d

    goto :goto_4f

    .line 2721
    :cond_1d
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v4, :cond_34

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v4, :cond_34

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_30

    goto :goto_34

    .line 2726
    :cond_30
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    return-void

    .line 2722
    :cond_34
    :goto_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    return-void

    .line 2718
    :cond_4f
    :goto_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    return-void
.end method

.method public whitelist setAntibanding(Ljava/lang/String;)V
    .registers 3
    .param p1, "antibanding"    # Ljava/lang/String;

    .line 3533
    const-string v0, "antibanding"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    return-void
.end method

.method public whitelist setAutoExposureLock(Z)V
    .registers 4
    .param p1, "toggle"    # Z

    .line 3803
    if-eqz p1, :cond_6

    const-string/jumbo v0, "true"

    goto :goto_8

    :cond_6
    const-string v0, "false"

    :goto_8
    const-string v1, "auto-exposure-lock"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3804
    return-void
.end method

.method public whitelist setAutoWhiteBalanceLock(Z)V
    .registers 4
    .param p1, "toggle"    # Z

    .line 3873
    if-eqz p1, :cond_6

    const-string/jumbo v0, "true"

    goto :goto_8

    :cond_6
    const-string v0, "false"

    :goto_8
    const-string v1, "auto-whitebalance-lock"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    return-void
.end method

.method public whitelist setColorEffect(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3496
    const-string v0, "effect"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    return-void
.end method

.method public whitelist setExposureCompensation(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3732
    const-string v0, "exposure-compensation"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3733
    return-void
.end method

.method public whitelist setFlashMode(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3624
    const-string v0, "flash-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3625
    return-void
.end method

.method public whitelist setFocusAreas(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .line 4085
    .local p1, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v0, "focus-areas"

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 4086
    return-void
.end method

.method public whitelist setFocusMode(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3664
    const-string v0, "focus-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    return-void
.end method

.method public whitelist setGpsAltitude(D)V
    .registers 5
    .param p1, "altitude"    # D

    .line 3388
    const-string/jumbo v0, "gps-altitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    return-void
.end method

.method public whitelist setGpsLatitude(D)V
    .registers 5
    .param p1, "latitude"    # D

    .line 3369
    const-string/jumbo v0, "gps-latitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3370
    return-void
.end method

.method public whitelist setGpsLongitude(D)V
    .registers 5
    .param p1, "longitude"    # D

    .line 3379
    const-string/jumbo v0, "gps-longitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    return-void
.end method

.method public whitelist setGpsProcessingMethod(Ljava/lang/String;)V
    .registers 3
    .param p1, "processing_method"    # Ljava/lang/String;

    .line 3408
    const-string/jumbo v0, "gps-processing-method"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    return-void
.end method

.method public whitelist setGpsTimestamp(J)V
    .registers 5
    .param p1, "timestamp"    # J

    .line 3398
    const-string/jumbo v0, "gps-timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    return-void
.end method

.method public whitelist setJpegQuality(I)V
    .registers 3
    .param p1, "quality"    # I

    .line 2971
    const-string/jumbo v0, "jpeg-quality"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2972
    return-void
.end method

.method public whitelist setJpegThumbnailQuality(I)V
    .registers 3
    .param p1, "quality"    # I

    .line 2952
    const-string/jumbo v0, "jpeg-thumbnail-quality"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2953
    return-void
.end method

.method public whitelist setJpegThumbnailSize(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2918
    const-string/jumbo v0, "jpeg-thumbnail-width"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2919
    const-string/jumbo v0, "jpeg-thumbnail-height"

    invoke-virtual {p0, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2920
    return-void
.end method

.method public whitelist setMeteringAreas(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .line 4152
    .local p1, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string/jumbo v0, "metering-areas"

    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 4153
    return-void
.end method

.method public whitelist setPictureFormat(I)V
    .registers 6
    .param p1, "pixel_format"    # I

    .line 3222
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 3223
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 3228
    const-string/jumbo v1, "picture-format"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    return-void

    .line 3224
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setPictureSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 3186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3187
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "picture-size"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    return-void
.end method

.method public whitelist setPreviewFormat(I)V
    .registers 6
    .param p1, "pixel_format"    # I

    .line 3122
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 3123
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 3128
    const-string/jumbo v1, "preview-format"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    return-void

    .line 3124
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pixel_format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setPreviewFpsRange(II)V
    .registers 5
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 3034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preview-fps-range"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    return-void
.end method

.method public whitelist setPreviewFrameRate(I)V
    .registers 3
    .param p1, "fps"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2992
    const-string/jumbo v0, "preview-frame-rate"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2993
    return-void
.end method

.method public whitelist setPreviewSize(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2830
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "preview-size"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    return-void
.end method

.method public whitelist setRecordingHint(Z)V
    .registers 4
    .param p1, "hint"    # Z

    .line 4187
    if-eqz p1, :cond_6

    const-string/jumbo v0, "true"

    goto :goto_8

    :cond_6
    const-string v0, "false"

    :goto_8
    const-string/jumbo v1, "recording-hint"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4188
    return-void
.end method

.method public whitelist setRotation(I)V
    .registers 5
    .param p1, "rotation"    # I

    .line 3353
    if-eqz p1, :cond_28

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_28

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 3357
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3355
    :cond_28
    :goto_28
    const-string/jumbo v0, "rotation"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    return-void
.end method

.method public whitelist setSceneMode(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3587
    const-string/jumbo v0, "scene-mode"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    return-void
.end method

.method public whitelist setVideoStabilization(Z)V
    .registers 4
    .param p1, "toggle"    # Z

    .line 4243
    if-eqz p1, :cond_6

    const-string/jumbo v0, "true"

    goto :goto_8

    :cond_6
    const-string v0, "false"

    :goto_8
    const-string/jumbo v1, "video-stabilization"

    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4244
    return-void
.end method

.method public whitelist setWhiteBalance(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 3452
    const-string/jumbo v0, "whitebalance"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3453
    .local v1, "oldValue":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Landroid/hardware/Camera$Parameters;->same(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    return-void

    .line 3454
    :cond_e
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3455
    const-string v0, "auto-whitebalance-lock"

    const-string v2, "false"

    invoke-virtual {p0, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3456
    return-void
.end method

.method public whitelist setZoom(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3931
    const-string/jumbo v0, "zoom"

    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3932
    return-void
.end method

.method public whitelist unflatten(Ljava/lang/String;)V
    .registers 9
    .param p1, "flattened"    # Ljava/lang/String;

    .line 2691
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2693
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2694
    .local v0, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2695
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2696
    .local v2, "kv":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2697
    .local v3, "pos":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    .line 2698
    goto :goto_13

    .line 2700
    :cond_29
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2701
    .local v4, "k":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2702
    .local v5, "v":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2703
    .end local v2    # "kv":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "k":Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/String;
    goto :goto_13

    .line 2704
    :cond_3a
    return-void
.end method
