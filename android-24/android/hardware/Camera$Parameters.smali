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
.field public static final ANTIBANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final ANTIBANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final ANTIBANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final ANTIBANDING_OFF:Ljava/lang/String; = "off"

.field public static final EFFECT_AQUA:Ljava/lang/String; = "aqua"

.field public static final EFFECT_BLACKBOARD:Ljava/lang/String; = "blackboard"

.field public static final EFFECT_MONO:Ljava/lang/String; = "mono"

.field public static final EFFECT_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final EFFECT_NONE:Ljava/lang/String; = "none"

.field public static final EFFECT_POSTERIZE:Ljava/lang/String; = "posterize"

.field public static final EFFECT_SEPIA:Ljava/lang/String; = "sepia"

.field public static final EFFECT_SOLARIZE:Ljava/lang/String; = "solarize"

.field public static final EFFECT_WHITEBOARD:Ljava/lang/String; = "whiteboard"

.field private static final FALSE:Ljava/lang/String; = "false"

.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_MODE_ON:Ljava/lang/String; = "on"

.field public static final FLASH_MODE_RED_EYE:Ljava/lang/String; = "red-eye"

.field public static final FLASH_MODE_TORCH:Ljava/lang/String; = "torch"

.field public static final FOCUS_DISTANCE_FAR_INDEX:I = 0x2

.field public static final FOCUS_DISTANCE_NEAR_INDEX:I = 0x0

.field public static final FOCUS_DISTANCE_OPTIMAL_INDEX:I = 0x1

.field public static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field public static final FOCUS_MODE_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field public static final FOCUS_MODE_EDOF:Ljava/lang/String; = "edof"

.field public static final FOCUS_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field public static final FOCUS_MODE_MACRO:Ljava/lang/String; = "macro"

.field private static final KEY_ANTIBANDING:Ljava/lang/String; = "antibanding"

.field private static final KEY_AUTO_EXPOSURE_LOCK:Ljava/lang/String; = "auto-exposure-lock"

.field private static final KEY_AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-exposure-lock-supported"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK:Ljava/lang/String; = "auto-whitebalance-lock"

.field private static final KEY_AUTO_WHITEBALANCE_LOCK_SUPPORTED:Ljava/lang/String; = "auto-whitebalance-lock-supported"

.field private static final KEY_EFFECT:Ljava/lang/String; = "effect"

.field private static final KEY_EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure-compensation"

.field private static final KEY_EXPOSURE_COMPENSATION_STEP:Ljava/lang/String; = "exposure-compensation-step"

.field private static final KEY_FLASH_MODE:Ljava/lang/String; = "flash-mode"

.field private static final KEY_FOCAL_LENGTH:Ljava/lang/String; = "focal-length"

.field private static final KEY_FOCUS_AREAS:Ljava/lang/String; = "focus-areas"

.field private static final KEY_FOCUS_DISTANCES:Ljava/lang/String; = "focus-distances"

.field private static final KEY_FOCUS_MODE:Ljava/lang/String; = "focus-mode"

.field private static final KEY_GPS_ALTITUDE:Ljava/lang/String; = "gps-altitude"

.field private static final KEY_GPS_LATITUDE:Ljava/lang/String; = "gps-latitude"

.field private static final KEY_GPS_LONGITUDE:Ljava/lang/String; = "gps-longitude"

.field private static final KEY_GPS_PROCESSING_METHOD:Ljava/lang/String; = "gps-processing-method"

.field private static final KEY_GPS_TIMESTAMP:Ljava/lang/String; = "gps-timestamp"

.field private static final KEY_HORIZONTAL_VIEW_ANGLE:Ljava/lang/String; = "horizontal-view-angle"

.field private static final KEY_JPEG_QUALITY:Ljava/lang/String; = "jpeg-quality"

.field private static final KEY_JPEG_THUMBNAIL_HEIGHT:Ljava/lang/String; = "jpeg-thumbnail-height"

.field private static final KEY_JPEG_THUMBNAIL_QUALITY:Ljava/lang/String; = "jpeg-thumbnail-quality"

.field private static final KEY_JPEG_THUMBNAIL_SIZE:Ljava/lang/String; = "jpeg-thumbnail-size"

.field private static final KEY_JPEG_THUMBNAIL_WIDTH:Ljava/lang/String; = "jpeg-thumbnail-width"

.field private static final KEY_MAX_EXPOSURE_COMPENSATION:Ljava/lang/String; = "max-exposure-compensation"

.field private static final KEY_MAX_NUM_DETECTED_FACES_HW:Ljava/lang/String; = "max-num-detected-faces-hw"

.field private static final KEY_MAX_NUM_DETECTED_FACES_SW:Ljava/lang/String; = "max-num-detected-faces-sw"

.field private static final KEY_MAX_NUM_FOCUS_AREAS:Ljava/lang/String; = "max-num-focus-areas"

.field private static final KEY_MAX_NUM_METERING_AREAS:Ljava/lang/String; = "max-num-metering-areas"

.field private static final KEY_MAX_ZOOM:Ljava/lang/String; = "max-zoom"

.field private static final KEY_METERING_AREAS:Ljava/lang/String; = "metering-areas"

.field private static final KEY_MIN_EXPOSURE_COMPENSATION:Ljava/lang/String; = "min-exposure-compensation"

.field private static final KEY_PICTURE_FORMAT:Ljava/lang/String; = "picture-format"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO:Ljava/lang/String; = "preferred-preview-size-for-video"

.field private static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field private static final KEY_PREVIEW_FPS_RANGE:Ljava/lang/String; = "preview-fps-range"

.field private static final KEY_PREVIEW_FRAME_RATE:Ljava/lang/String; = "preview-frame-rate"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final KEY_RECORDING_HINT:Ljava/lang/String; = "recording-hint"

.field private static final KEY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "scene-mode"

.field private static final KEY_SMOOTH_ZOOM_SUPPORTED:Ljava/lang/String; = "smooth-zoom-supported"

.field private static final KEY_VERTICAL_VIEW_ANGLE:Ljava/lang/String; = "vertical-view-angle"

.field private static final KEY_VIDEO_SIZE:Ljava/lang/String; = "video-size"

.field private static final KEY_VIDEO_SNAPSHOT_SUPPORTED:Ljava/lang/String; = "video-snapshot-supported"

.field private static final KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "video-stabilization"

.field private static final KEY_VIDEO_STABILIZATION_SUPPORTED:Ljava/lang/String; = "video-stabilization-supported"

.field private static final KEY_WHITE_BALANCE:Ljava/lang/String; = "whitebalance"

.field private static final KEY_ZOOM:Ljava/lang/String; = "zoom"

.field private static final KEY_ZOOM_RATIOS:Ljava/lang/String; = "zoom-ratios"

.field private static final KEY_ZOOM_SUPPORTED:Ljava/lang/String; = "zoom-supported"

.field private static final PIXEL_FORMAT_BAYER_RGGB:Ljava/lang/String; = "bayer-rggb"

.field private static final PIXEL_FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final PIXEL_FORMAT_RGB565:Ljava/lang/String; = "rgb565"

.field private static final PIXEL_FORMAT_YUV420P:Ljava/lang/String; = "yuv420p"

.field private static final PIXEL_FORMAT_YUV420SP:Ljava/lang/String; = "yuv420sp"

.field private static final PIXEL_FORMAT_YUV422I:Ljava/lang/String; = "yuv422i-yuyv"

.field private static final PIXEL_FORMAT_YUV422SP:Ljava/lang/String; = "yuv422sp"

.field public static final PREVIEW_FPS_MAX_INDEX:I = 0x1

.field public static final PREVIEW_FPS_MIN_INDEX:I = 0x0

.field public static final SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TRUE:Ljava/lang/String; = "true"

.field public static final WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"


# instance fields
.field private final mMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method static synthetic -wrap0(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "this$0"    # Landroid/hardware/Camera;

    #@0
    .prologue
    .line 2431
    iput-object p1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2432
    new-instance v0, Ljava/util/LinkedHashMap;

    #@7
    const/16 v1, 0x40

    #@9
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@c
    iput-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@e
    .line 2431
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/Camera;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    #@3
    return-void
.end method

.method private cameraFormatForPixelFormat(I)Ljava/lang/String;
    .locals 1
    .param p1, "pixel_format"    # I

    #@0
    .prologue
    .line 3049
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 3056
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 3050
    :sswitch_0
    const-string/jumbo v0, "yuv422sp"

    #@8
    return-object v0

    #@9
    .line 3051
    :sswitch_1
    const-string/jumbo v0, "yuv420sp"

    #@c
    return-object v0

    #@d
    .line 3052
    :sswitch_2
    const-string/jumbo v0, "yuv422i-yuyv"

    #@10
    return-object v0

    #@11
    .line 3053
    :sswitch_3
    const-string/jumbo v0, "yuv420p"

    #@14
    return-object v0

    #@15
    .line 3054
    :sswitch_4
    const-string/jumbo v0, "rgb565"

    #@18
    return-object v0

    #@19
    .line 3055
    :sswitch_5
    const-string/jumbo v0, "jpeg"

    #@1c
    return-object v0

    #@1d
    .line 3049
    nop

    #@1e
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_2
        0x100 -> :sswitch_5
        0x32315659 -> :sswitch_3
    .end sparse-switch
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    #@0
    .prologue
    .line 4116
    :try_start_0
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/String;

    #@8
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 4117
    :catch_0
    move-exception v0

    #@e
    .line 4118
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return p2
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 4125
    :try_start_0
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/String;

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 4126
    :catch_0
    move-exception v0

    #@e
    .line 4127
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return p2
.end method

.method private getOuter()Landroid/hardware/Camera;
    .locals 1

    #@0
    .prologue
    .line 2451
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    #@2
    return-object v0
.end method

.method private pixelFormatForCameraFormat(Ljava/lang/String;)I
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3061
    if-nez p1, :cond_0

    #@3
    .line 3062
    return v1

    #@4
    .line 3064
    :cond_0
    const-string/jumbo v0, "yuv422sp"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 3065
    const/16 v0, 0x10

    #@f
    return v0

    #@10
    .line 3067
    :cond_1
    const-string/jumbo v0, "yuv420sp"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 3068
    const/16 v0, 0x11

    #@1b
    return v0

    #@1c
    .line 3070
    :cond_2
    const-string/jumbo v0, "yuv422i-yuyv"

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_3

    #@25
    .line 3071
    const/16 v0, 0x14

    #@27
    return v0

    #@28
    .line 3073
    :cond_3
    const-string/jumbo v0, "yuv420p"

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_4

    #@31
    .line 3074
    const v0, 0x32315659

    #@34
    return v0

    #@35
    .line 3076
    :cond_4
    const-string/jumbo v0, "rgb565"

    #@38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_5

    #@3e
    .line 3077
    const/4 v0, 0x4

    #@3f
    return v0

    #@40
    .line 3079
    :cond_5
    const-string/jumbo v0, "jpeg"

    #@43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_6

    #@49
    .line 3080
    const/16 v0, 0x100

    #@4b
    return v0

    #@4c
    .line 3082
    :cond_6
    return v1
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2565
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 2566
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@7
    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 2558
    return-void
.end method

.method private same(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 4225
    if-nez p1, :cond_0

    #@3
    if-nez p2, :cond_0

    #@5
    return v1

    #@6
    .line 4226
    :cond_0
    if-eqz p1, :cond_1

    #@8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    return v1

    #@f
    .line 4227
    :cond_1
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method private set(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "areas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/16 v5, 0x2c

    #@2
    .line 2570
    if-nez p2, :cond_0

    #@4
    .line 2571
    const-string/jumbo v4, "(0,0,0,0,0)"

    #@7
    invoke-virtual {p0, p1, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 2569
    :goto_0
    return-void

    #@b
    .line 2573
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 2574
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@14
    move-result v4

    #@15
    if-ge v2, v4, :cond_2

    #@17
    .line 2575
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/hardware/Camera$Area;

    #@1d
    .line 2576
    .local v0, "area":Landroid/hardware/Camera$Area;
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #@1f
    .line 2577
    .local v3, "rect":Landroid/graphics/Rect;
    const/16 v4, 0x28

    #@21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 2578
    iget v4, v3, Landroid/graphics/Rect;->left:I

    #@26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    .line 2579
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 2580
    iget v4, v3, Landroid/graphics/Rect;->top:I

    #@2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    .line 2581
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 2582
    iget v4, v3, Landroid/graphics/Rect;->right:I

    #@36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    .line 2583
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 2584
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    #@3e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    .line 2585
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    .line 2586
    iget v4, v0, Landroid/hardware/Camera$Area;->weight:I

    #@46
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    .line 2587
    const/16 v4, 0x29

    #@4b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    .line 2588
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@51
    move-result v4

    #@52
    add-int/lit8 v4, v4, -0x1

    #@54
    if-eq v2, v4, :cond_1

    #@56
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@59
    .line 2574
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 2590
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {p0, p1, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@63
    goto :goto_0
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4064
    if-nez p1, :cond_0

    #@3
    return-object v4

    #@4
    .line 4066
    :cond_0
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    #@6
    const/16 v4, 0x2c

    #@8
    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@b
    .line 4067
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    #@e
    .line 4068
    new-instance v3, Ljava/util/ArrayList;

    #@10
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 4069
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    .line 4070
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 4072
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private splitArea(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .line 4192
    if-eqz p1, :cond_0

    #@5
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v6

    #@9
    const/16 v7, 0x28

    #@b
    if-eq v6, v7, :cond_1

    #@d
    .line 4194
    :cond_0
    const-string/jumbo v6, "Camera"

    #@10
    new-instance v7, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v8, "Invalid area string="

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 4195
    return-object v11

    #@28
    .line 4193
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2b
    move-result v6

    #@2c
    add-int/lit8 v6, v6, -0x1

    #@2e
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v6

    #@32
    const/16 v7, 0x29

    #@34
    if-ne v6, v7, :cond_0

    #@36
    .line 4198
    new-instance v5, Ljava/util/ArrayList;

    #@38
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@3b
    .line 4199
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    const/4 v3, 0x1

    #@3c
    .line 4200
    .local v3, "fromIndex":I
    const/4 v6, 0x5

    #@3d
    new-array v1, v6, [I

    #@3f
    .line 4202
    .local v1, "array":[I
    :cond_2
    const-string/jumbo v6, "),("

    #@42
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@45
    move-result v2

    #@46
    .line 4203
    .local v2, "endIndex":I
    const/4 v6, -0x1

    #@47
    if-ne v2, v6, :cond_3

    #@49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4c
    move-result v6

    #@4d
    add-int/lit8 v2, v6, -0x1

    #@4f
    .line 4204
    :cond_3
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-direct {p0, v6, v1}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    #@56
    .line 4205
    new-instance v4, Landroid/graphics/Rect;

    #@58
    aget v6, v1, v10

    #@5a
    aget v7, v1, v12

    #@5c
    const/4 v8, 0x2

    #@5d
    aget v8, v1, v8

    #@5f
    const/4 v9, 0x3

    #@60
    aget v9, v1, v9

    #@62
    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    #@65
    .line 4206
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v6, Landroid/hardware/Camera$Area;

    #@67
    const/4 v7, 0x4

    #@68
    aget v7, v1, v7

    #@6a
    invoke-direct {v6, v4, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    #@6d
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 4207
    add-int/lit8 v3, v2, 0x3

    #@72
    .line 4208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@75
    move-result v6

    #@76
    add-int/lit8 v6, v6, -0x1

    #@78
    if-ne v2, v6, :cond_2

    #@7a
    .line 4210
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@7d
    move-result v6

    #@7e
    if-nez v6, :cond_4

    #@80
    return-object v11

    #@81
    .line 4212
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@84
    move-result v6

    #@85
    if-ne v6, v12, :cond_5

    #@87
    .line 4213
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8a
    move-result-object v0

    #@8b
    check-cast v0, Landroid/hardware/Camera$Area;

    #@8d
    .line 4214
    .local v0, "area":Landroid/hardware/Camera$Area;
    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    #@8f
    .line 4215
    iget v6, v4, Landroid/graphics/Rect;->left:I

    #@91
    if-nez v6, :cond_5

    #@93
    iget v6, v4, Landroid/graphics/Rect;->top:I

    #@95
    if-nez v6, :cond_5

    #@97
    iget v6, v4, Landroid/graphics/Rect;->right:I

    #@99
    if-nez v6, :cond_5

    #@9b
    .line 4216
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    #@9d
    if-nez v6, :cond_5

    #@9f
    iget v6, v0, Landroid/hardware/Camera$Area;->weight:I

    #@a1
    if-nez v6, :cond_5

    #@a3
    .line 4217
    return-object v11

    #@a4
    .line 4221
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_5
    return-object v5
.end method

.method private splitFloat(Ljava/lang/String;[F)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "output"    # [F

    #@0
    .prologue
    .line 4103
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 4105
    :cond_0
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    #@5
    const/16 v5, 0x2c

    #@7
    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@a
    .line 4106
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    #@d
    .line 4107
    const/4 v0, 0x0

    #@e
    .line 4108
    .local v0, "index":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v3

    #@12
    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_1

    #@18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/String;

    #@1e
    .line 4109
    .local v2, "s":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    #@20
    .end local v0    # "index":I
    .local v1, "index":I
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@23
    move-result v5

    #@24
    aput v5, p2, v0

    #@26
    move v0, v1

    #@27
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    #@28
    .line 4102
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4078
    if-nez p1, :cond_0

    #@3
    return-object v5

    #@4
    .line 4080
    :cond_0
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    #@6
    const/16 v4, 0x2c

    #@8
    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@b
    .line 4081
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    #@e
    .line 4082
    new-instance v3, Ljava/util/ArrayList;

    #@10
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 4083
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    .line 4084
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@26
    move-result v4

    #@27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    goto :goto_0

    #@2f
    .line 4086
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_2

    #@35
    return-object v5

    #@36
    .line 4087
    :cond_2
    return-object v3
.end method

.method private splitInt(Ljava/lang/String;[I)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "output"    # [I

    #@0
    .prologue
    .line 4091
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 4093
    :cond_0
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    #@5
    const/16 v5, 0x2c

    #@7
    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@a
    .line 4094
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    #@d
    .line 4095
    const/4 v0, 0x0

    #@e
    .line 4096
    .local v0, "index":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v3

    #@12
    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_1

    #@18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/String;

    #@1e
    .line 4097
    .local v2, "s":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    #@20
    .end local v0    # "index":I
    .local v1, "index":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v5

    #@24
    aput v5, p2, v0

    #@26
    move v0, v1

    #@27
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    #@28
    .line 4090
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private splitRange(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 4167
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v4

    #@8
    const/16 v5, 0x28

    #@a
    if-eq v4, v5, :cond_1

    #@c
    .line 4169
    :cond_0
    const-string/jumbo v4, "Camera"

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "Invalid range list string="

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v5

    #@23
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 4170
    return-object v7

    #@27
    .line 4168
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2a
    move-result v4

    #@2b
    add-int/lit8 v4, v4, -0x1

    #@2d
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v4

    #@31
    const/16 v5, 0x29

    #@33
    if-ne v4, v5, :cond_0

    #@35
    .line 4173
    new-instance v3, Ljava/util/ArrayList;

    #@37
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@3a
    .line 4174
    .local v3, "rangeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[I>;"
    const/4 v1, 0x1

    #@3b
    .line 4176
    .local v1, "fromIndex":I
    :cond_2
    const/4 v4, 0x2

    #@3c
    new-array v2, v4, [I

    #@3e
    .line 4177
    .local v2, "range":[I
    const-string/jumbo v4, "),("

    #@41
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@44
    move-result v0

    #@45
    .line 4178
    .local v0, "endIndex":I
    const/4 v4, -0x1

    #@46
    if-ne v0, v4, :cond_3

    #@48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4b
    move-result v4

    #@4c
    add-int/lit8 v0, v4, -0x1

    #@4e
    .line 4179
    :cond_3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-direct {p0, v4, v2}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    #@55
    .line 4180
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@58
    .line 4181
    add-int/lit8 v1, v0, 0x3

    #@5a
    .line 4182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5d
    move-result v4

    #@5e
    add-int/lit8 v4, v4, -0x1

    #@60
    if-ne v0, v4, :cond_2

    #@62
    .line 4184
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v4

    #@66
    if-nez v4, :cond_4

    #@68
    return-object v7

    #@69
    .line 4185
    :cond_4
    return-object v3
.end method

.method private splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4134
    if-nez p1, :cond_0

    #@3
    return-object v6

    #@4
    .line 4136
    :cond_0
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    #@6
    const/16 v5, 0x2c

    #@8
    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@b
    .line 4137
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    #@e
    .line 4138
    new-instance v3, Ljava/util/ArrayList;

    #@10
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 4139
    .local v3, "sizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_2

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    .line 4140
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    #@26
    move-result-object v2

    #@27
    .line 4141
    .local v2, "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_1

    #@29
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_0

    #@2d
    .line 4143
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_3

    #@33
    return-object v6

    #@34
    .line 4144
    :cond_3
    return-object v3
.end method

.method private strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4150
    if-nez p1, :cond_0

    #@3
    return-object v6

    #@4
    .line 4152
    :cond_0
    const/16 v3, 0x78

    #@6
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v1

    #@a
    .line 4153
    .local v1, "pos":I
    const/4 v3, -0x1

    #@b
    if-eq v1, v3, :cond_1

    #@d
    .line 4154
    const/4 v3, 0x0

    #@e
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 4155
    .local v2, "width":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    #@14
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 4156
    .local v0, "height":Ljava/lang/String;
    new-instance v3, Landroid/hardware/Camera$Size;

    #@1a
    iget-object v4, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    #@1c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v5

    #@20
    .line 4157
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v6

    #@24
    .line 4156
    invoke-direct {v3, v4, v5, v6}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    #@27
    return-object v3

    #@28
    .line 4159
    .end local v0    # "height":Ljava/lang/String;
    .end local v2    # "width":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "Camera"

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Invalid size parameter string="

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 4160
    return-object v6
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "other"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 2443
    if-nez p1, :cond_0

    #@2
    .line 2444
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "other must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 2447
    :cond_0
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@d
    iget-object v1, p1, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    #@12
    .line 2442
    return-void
.end method

.method public dump()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2474
    const-string/jumbo v2, "Camera"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "dump: size="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    iget-object v4, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@11
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    #@14
    move-result v4

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 2475
    iget-object v2, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@22
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    #@25
    move-result-object v2

    #@26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v1

    #@2a
    .local v1, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/lang/String;

    #@36
    .line 2476
    .local v0, "k":Ljava/lang/String;
    const-string/jumbo v3, "Camera"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v4, "dump: "

    #@41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v4, "="

    #@4c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    iget-object v2, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@52
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    check-cast v2, Ljava/lang/String;

    #@58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    goto :goto_0

    #@64
    .line 2473
    .end local v0    # "k":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public flatten()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 2489
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v3, 0x80

    #@4
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 2490
    .local v0, "flattened":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@9
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljava/lang/String;

    #@1d
    .line 2491
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 2492
    const-string/jumbo v3, "="

    #@23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 2493
    iget-object v3, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@28
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 2494
    const-string/jumbo v3, ";"

    #@34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    goto :goto_0

    #@38
    .line 2497
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@3b
    move-result v3

    #@3c
    add-int/lit8 v3, v3, -0x1

    #@3e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@41
    .line 2498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2601
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getAntibanding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3312
    const-string/jumbo v0, "antibanding"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getAutoExposureLock()Z
    .locals 2

    #@0
    .prologue
    .line 3607
    const-string/jumbo v1, "auto-exposure-lock"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3608
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public getAutoWhiteBalanceLock()Z
    .locals 2

    #@0
    .prologue
    .line 3679
    const-string/jumbo v1, "auto-whitebalance-lock"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3680
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3275
    const-string/jumbo v0, "effect"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getExposureCompensation()I
    .locals 2

    #@0
    .prologue
    .line 3507
    const-string/jumbo v0, "exposure-compensation"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getExposureCompensationStep()F
    .locals 2

    #@0
    .prologue
    .line 3555
    const-string/jumbo v0, "exposure-compensation-step"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getFloat(Ljava/lang/String;F)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3403
    const-string/jumbo v0, "flash-mode"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getFocalLength()F
    .locals 1

    #@0
    .prologue
    .line 3475
    const-string/jumbo v0, "focal-length"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3864
    const-string/jumbo v0, "focus-areas"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getFocusDistances([F)V
    .locals 2
    .param p1, "output"    # [F

    #@0
    .prologue
    .line 3802
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    const/4 v1, 0x3

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 3803
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 3804
    const-string/jumbo v1, "output must be a float array with three elements."

    #@b
    .line 3803
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 3806
    :cond_1
    const-string/jumbo v0, "focus-distances"

    #@12
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitFloat(Ljava/lang/String;[F)V

    #@19
    .line 3801
    return-void
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3443
    const-string/jumbo v0, "focus-mode"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    #@0
    .prologue
    .line 3485
    const-string/jumbo v0, "horizontal-view-angle"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2611
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getJpegQuality()I
    .locals 1

    #@0
    .prologue
    .line 2779
    const-string/jumbo v0, "jpeg-quality"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getJpegThumbnailQuality()I
    .locals 1

    #@0
    .prologue
    .line 2760
    const-string/jumbo v0, "jpeg-thumbnail-quality"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getJpegThumbnailSize()Landroid/hardware/Camera$Size;
    .locals 4

    #@0
    .prologue
    .line 2728
    new-instance v0, Landroid/hardware/Camera$Size;

    #@2
    iget-object v1, p0, Landroid/hardware/Camera$Parameters;->this$0:Landroid/hardware/Camera;

    #@4
    const-string/jumbo v2, "jpeg-thumbnail-width"

    #@7
    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    #@a
    move-result v2

    #@b
    .line 2729
    const-string/jumbo v3, "jpeg-thumbnail-height"

    #@e
    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    #@11
    move-result v3

    #@12
    .line 2728
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    #@15
    return-object v0
.end method

.method public getMaxExposureCompensation()I
    .locals 2

    #@0
    .prologue
    .line 3532
    const-string/jumbo v0, "max-exposure-compensation"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMaxNumDetectedFaces()I
    .locals 2

    #@0
    .prologue
    .line 3954
    const-string/jumbo v0, "max-num-detected-faces-hw"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMaxNumFocusAreas()I
    .locals 2

    #@0
    .prologue
    .line 3818
    const-string/jumbo v0, "max-num-focus-areas"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMaxNumMeteringAreas()I
    .locals 2

    #@0
    .prologue
    .line 3886
    const-string/jumbo v0, "max-num-metering-areas"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMaxZoom()I
    .locals 2

    #@0
    .prologue
    .line 3744
    const-string/jumbo v0, "max-zoom"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3930
    const-string/jumbo v0, "metering-areas"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitArea(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getMinExposureCompensation()I
    .locals 2

    #@0
    .prologue
    .line 3543
    const-string/jumbo v0, "min-exposure-compensation"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getPictureFormat()I
    .locals 1

    #@0
    .prologue
    .line 3027
    const-string/jumbo v0, "picture-format"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getPictureSize()Landroid/hardware/Camera$Size;
    .locals 2

    #@0
    .prologue
    .line 2986
    const-string/jumbo v1, "picture-size"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2987
    .local v0, "pair":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;
    .locals 2

    #@0
    .prologue
    .line 2700
    const-string/jumbo v1, "preferred-preview-size-for-video"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2701
    .local v0, "pair":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getPreviewFormat()I
    .locals 1

    #@0
    .prologue
    .line 2939
    const-string/jumbo v0, "preview-format"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getPreviewFpsRange([I)V
    .locals 2
    .param p1, "range"    # [I

    #@0
    .prologue
    .line 2846
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    const/4 v1, 0x2

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 2847
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 2848
    const-string/jumbo v1, "range must be an array with two elements."

    #@b
    .line 2847
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2850
    :cond_1
    const-string/jumbo v0, "preview-fps-range"

    #@12
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;[I)V

    #@19
    .line 2845
    return-void
.end method

.method public getPreviewFrameRate()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2804
    const-string/jumbo v0, "preview-frame-rate"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 2

    #@0
    .prologue
    .line 2649
    const-string/jumbo v1, "preview-size"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2650
    .local v0, "pair":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->strToSize(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3360
    const-string/jumbo v0, "scene-mode"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getSupportedAntibanding()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3333
    const-string/jumbo v1, "antibanding-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3334
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3296
    const-string/jumbo v1, "effect-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3297
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3424
    const-string/jumbo v1, "flash-mode-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3425
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3464
    const-string/jumbo v1, "focus-mode-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3465
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedJpegThumbnailSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2740
    const-string/jumbo v1, "jpeg-thumbnail-size-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2741
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedPictureFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3038
    const-string/jumbo v5, "picture-format-values"

    #@3
    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 3039
    .local v4, "str":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 3040
    .local v1, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    #@f
    move-result-object v5

    #@10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    .line 3041
    .local v2, "s":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    .line 3042
    .local v0, "f":I
    if-eqz v0, :cond_0

    #@26
    .line 3043
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 3045
    .end local v0    # "f":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2997
    const-string/jumbo v1, "picture-size-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2998
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedPreviewFormats()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2953
    const-string/jumbo v5, "preview-format-values"

    #@3
    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 2954
    .local v4, "str":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@c
    .line 2955
    .local v1, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    #@f
    move-result-object v5

    #@10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_1

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/String;

    #@20
    .line 2956
    .local v2, "s":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/hardware/Camera$Parameters;->pixelFormatForCameraFormat(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    .line 2957
    .local v0, "f":I
    if-eqz v0, :cond_0

    #@26
    .line 2958
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 2960
    .end local v0    # "f":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2871
    const-string/jumbo v1, "preview-fps-range-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2872
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitRange(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedPreviewFrameRates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2816
    const-string/jumbo v1, "preview-frame-rate-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2817
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2660
    const-string/jumbo v1, "preview-size-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2661
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3387
    const-string/jumbo v1, "scene-mode-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3388
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2680
    const-string/jumbo v1, "video-size-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 2681
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitSize(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3255
    const-string/jumbo v1, "whitebalance-values"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3256
    .local v0, "str":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getVerticalViewAngle()F
    .locals 1

    #@0
    .prologue
    .line 3495
    const-string/jumbo v0, "vertical-view-angle"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getVideoStabilization()Z
    .locals 2

    #@0
    .prologue
    .line 4044
    const-string/jumbo v1, "video-stabilization"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 4045
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 3228
    const-string/jumbo v0, "whitebalance"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getZoom()I
    .locals 2

    #@0
    .prologue
    .line 3706
    const-string/jumbo v0, "zoom"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 3758
    const-string/jumbo v0, "zoom-ratios"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/hardware/Camera$Parameters;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public isAutoExposureLockSupported()Z
    .locals 2

    #@0
    .prologue
    .line 3621
    const-string/jumbo v1, "auto-exposure-lock-supported"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3622
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public isAutoWhiteBalanceLockSupported()Z
    .locals 2

    #@0
    .prologue
    .line 3693
    const-string/jumbo v1, "auto-whitebalance-lock-supported"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3694
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public isSmoothZoomSupported()Z
    .locals 2

    #@0
    .prologue
    .line 3768
    const-string/jumbo v1, "smooth-zoom-supported"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3769
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public isVideoSnapshotSupported()Z
    .locals 2

    #@0
    .prologue
    .line 4007
    const-string/jumbo v1, "video-snapshot-supported"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 4008
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public isVideoStabilizationSupported()Z
    .locals 2

    #@0
    .prologue
    .line 4057
    const-string/jumbo v1, "video-stabilization-supported"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 4058
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public isZoomSupported()Z
    .locals 2

    #@0
    .prologue
    .line 3730
    const-string/jumbo v1, "zoom-supported"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3731
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    return v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2526
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 2525
    return-void
.end method

.method public removeGpsData()V
    .locals 1

    #@0
    .prologue
    .line 3205
    const-string/jumbo v0, "gps-latitude"

    #@3
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    #@6
    .line 3206
    const-string/jumbo v0, "gps-longitude"

    #@9
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    #@c
    .line 3207
    const-string/jumbo v0, "gps-altitude"

    #@f
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    #@12
    .line 3208
    const-string/jumbo v0, "gps-timestamp"

    #@15
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    #@18
    .line 3209
    const-string/jumbo v0, "gps-processing-method"

    #@1b
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    #@1e
    .line 3204
    return-void
.end method

.method public same(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/Camera$Parameters;

    #@0
    .prologue
    .line 2461
    if-ne p0, p1, :cond_0

    #@2
    .line 2462
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 2464
    :cond_0
    if-eqz p1, :cond_1

    #@6
    iget-object v0, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@8
    iget-object v1, p1, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_1
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 2555
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 2554
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x3d

    #@2
    const/16 v3, 0x3b

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v1, -0x1

    #@6
    .line 2536
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v0

    #@a
    if-ne v0, v1, :cond_0

    #@c
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v0

    #@10
    if-eq v0, v1, :cond_1

    #@12
    .line 2537
    :cond_0
    const-string/jumbo v0, "Camera"

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Key \""

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "\" contains invalid character (= or ; or \\0)"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 2538
    return-void

    #@34
    .line 2536
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@37
    move-result v0

    #@38
    if-ne v0, v1, :cond_0

    #@3a
    .line 2540
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    #@3d
    move-result v0

    #@3e
    if-ne v0, v1, :cond_2

    #@40
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    #@43
    move-result v0

    #@44
    if-eq v0, v1, :cond_3

    #@46
    .line 2541
    :cond_2
    const-string/jumbo v0, "Camera"

    #@49
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "Value \""

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    const-string/jumbo v2, "\" contains invalid character (= or ; or \\0)"

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 2542
    return-void

    #@68
    .line 2540
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    #@6b
    move-result v0

    #@6c
    if-ne v0, v1, :cond_2

    #@6e
    .line 2545
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera$Parameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 2535
    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 1
    .param p1, "antibanding"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3322
    const-string/jumbo v0, "antibanding"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 3321
    return-void
.end method

.method public setAutoExposureLock(Z)V
    .locals 2
    .param p1, "toggle"    # Z

    #@0
    .prologue
    .line 3592
    const-string/jumbo v1, "auto-exposure-lock"

    #@3
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v0, "true"

    #@8
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 3591
    return-void

    #@c
    .line 3592
    :cond_0
    const-string/jumbo v0, "false"

    #@f
    goto :goto_0
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .locals 2
    .param p1, "toggle"    # Z

    #@0
    .prologue
    .line 3662
    const-string/jumbo v1, "auto-whitebalance-lock"

    #@3
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v0, "true"

    #@8
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 3661
    return-void

    #@c
    .line 3662
    :cond_0
    const-string/jumbo v0, "false"

    #@f
    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3285
    const-string/jumbo v0, "effect"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 3284
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3521
    const-string/jumbo v0, "exposure-compensation"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    #@6
    .line 3520
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3413
    const-string/jumbo v0, "flash-mode"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 3412
    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3874
    .local p1, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string/jumbo v0, "focus-areas"

    #@3
    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    #@6
    .line 3873
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3453
    const-string/jumbo v0, "focus-mode"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 3452
    return-void
.end method

.method public setGpsAltitude(D)V
    .locals 3
    .param p1, "altitude"    # D

    #@0
    .prologue
    .line 3177
    const-string/jumbo v0, "gps-altitude"

    #@3
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 3176
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 3
    .param p1, "latitude"    # D

    #@0
    .prologue
    .line 3158
    const-string/jumbo v0, "gps-latitude"

    #@3
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 3157
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 3
    .param p1, "longitude"    # D

    #@0
    .prologue
    .line 3168
    const-string/jumbo v0, "gps-longitude"

    #@3
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 3167
    return-void
.end method

.method public setGpsProcessingMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "processing_method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3197
    const-string/jumbo v0, "gps-processing-method"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 3196
    return-void
.end method

.method public setGpsTimestamp(J)V
    .locals 3
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 3187
    const-string/jumbo v0, "gps-timestamp"

    #@3
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 3186
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    #@0
    .prologue
    .line 2770
    const-string/jumbo v0, "jpeg-quality"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    #@6
    .line 2769
    return-void
.end method

.method public setJpegThumbnailQuality(I)V
    .locals 1
    .param p1, "quality"    # I

    #@0
    .prologue
    .line 2751
    const-string/jumbo v0, "jpeg-thumbnail-quality"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    #@6
    .line 2750
    return-void
.end method

.method public setJpegThumbnailSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 2717
    const-string/jumbo v0, "jpeg-thumbnail-width"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    #@6
    .line 2718
    const-string/jumbo v0, "jpeg-thumbnail-height"

    #@9
    invoke-virtual {p0, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    #@c
    .line 2716
    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3941
    .local p1, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string/jumbo v0, "metering-areas"

    #@3
    invoke-direct {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/util/List;)V

    #@6
    .line 3940
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 4
    .param p1, "pixel_format"    # I

    #@0
    .prologue
    .line 3011
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3012
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 3013
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 3014
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid pixel_format="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 3013
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 3017
    :cond_0
    const-string/jumbo v1, "picture-format"

    #@23
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 3010
    return-void
.end method

.method public setPictureSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 2975
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, "x"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 2976
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "picture-size"

    #@23
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 2974
    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 4
    .param p1, "pixel_format"    # I

    #@0
    .prologue
    .line 2921
    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;->cameraFormatForPixelFormat(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2922
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 2923
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    .line 2924
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Invalid pixel_format="

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 2923
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 2927
    :cond_0
    const-string/jumbo v1, "preview-format"

    #@23
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 2920
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 2833
    const-string/jumbo v0, "preview-fps-range"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, ""

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string/jumbo v2, ","

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    .line 2832
    return-void
.end method

.method public setPreviewFrameRate(I)V
    .locals 1
    .param p1, "fps"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2791
    const-string/jumbo v0, "preview-frame-rate"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    #@6
    .line 2790
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 2638
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, "x"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 2639
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "preview-size"

    #@23
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 2637
    return-void
.end method

.method public setRecordingHint(Z)V
    .locals 2
    .param p1, "hint"    # Z

    #@0
    .prologue
    .line 3976
    const-string/jumbo v1, "recording-hint"

    #@3
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v0, "true"

    #@8
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 3975
    return-void

    #@c
    .line 3976
    :cond_0
    const-string/jumbo v0, "false"

    #@f
    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 3142
    if-eqz p1, :cond_0

    #@2
    const/16 v0, 0x5a

    #@4
    if-ne p1, v0, :cond_1

    #@6
    .line 3144
    :cond_0
    const-string/jumbo v0, "rotation"

    #@9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 3141
    return-void

    #@11
    .line 3142
    :cond_1
    const/16 v0, 0xb4

    #@13
    if-eq p1, v0, :cond_0

    #@15
    .line 3143
    const/16 v0, 0x10e

    #@17
    if-eq p1, v0, :cond_0

    #@19
    .line 3146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    .line 3147
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "Invalid rotation="

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 3146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3376
    const-string/jumbo v0, "scene-mode"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 3375
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 2
    .param p1, "toggle"    # Z

    #@0
    .prologue
    .line 4032
    const-string/jumbo v1, "video-stabilization"

    #@3
    if-eqz p1, :cond_0

    #@5
    const-string/jumbo v0, "true"

    #@8
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 4031
    return-void

    #@c
    .line 4032
    :cond_0
    const-string/jumbo v0, "false"

    #@f
    goto :goto_0
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3241
    const-string/jumbo v1, "whitebalance"

    #@3
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 3242
    .local v0, "oldValue":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera$Parameters;->same(Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    return-void

    #@e
    .line 3243
    :cond_0
    const-string/jumbo v1, "whitebalance"

    #@11
    invoke-virtual {p0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 3244
    const-string/jumbo v1, "auto-whitebalance-lock"

    #@17
    const-string/jumbo v2, "false"

    #@1a
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    .line 3240
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 3720
    const-string/jumbo v0, "zoom"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    #@6
    .line 3719
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 7
    .param p1, "flattened"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2510
    iget-object v6, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    #@5
    .line 2512
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    #@7
    const/16 v6, 0x3b

    #@9
    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@c
    .line 2513
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    #@f
    .line 2514
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "kv$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_1

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/String;

    #@1f
    .line 2515
    .local v1, "kv":Ljava/lang/String;
    const/16 v6, 0x3d

    #@21
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v3

    #@25
    .line 2516
    .local v3, "pos":I
    const/4 v6, -0x1

    #@26
    if-eq v3, v6, :cond_0

    #@28
    .line 2519
    const/4 v6, 0x0

    #@29
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 2520
    .local v0, "k":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    #@2f
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 2521
    .local v5, "v":Ljava/lang/String;
    iget-object v6, p0, Landroid/hardware/Camera$Parameters;->mMap:Ljava/util/LinkedHashMap;

    #@35
    invoke-virtual {v6, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    goto :goto_0

    #@39
    .line 2509
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "kv":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v5    # "v":Ljava/lang/String;
    :cond_1
    return-void
.end method
