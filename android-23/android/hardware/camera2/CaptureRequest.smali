.class public final Landroid/hardware/camera2/CaptureRequest;
.super Landroid/hardware/camera2/CameraMetadata;
.source "CaptureRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CaptureRequest$Key;,
        Landroid/hardware/camera2/CaptureRequest$Builder;,
        Landroid/hardware/camera2/CaptureRequest$1;,
        Landroid/hardware/camera2/CaptureRequest$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/CameraMetadata",
        "<",
        "Landroid/hardware/camera2/CaptureRequest$Key",
        "<*>;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/hardware/camera2/params/RggbChannelVector;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/hardware/camera2/params/ColorSpaceTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[D>;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final LED_TRANSMIT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_ID:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[I>;"
        }
    .end annotation
.end field

.field public static final SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/SyntheticKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[F>;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[F>;"
        }
    .end annotation
.end field

.field public static final TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<[F>;"
        }
    .end annotation
.end field

.field public static final TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsPartOfCHSRequestList:Z

.field private mIsReprocess:Z

.field private mReprocessableSessionId:I

.field private final mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private final mSurfaceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mUserTag:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/HashSet;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/CaptureRequest;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/CaptureRequest;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->readFromParcel(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 419
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/CaptureRequest$1;-><init>()V

    #@5
    .line 418
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 703
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@9
    const-string/jumbo v1, "android.colorCorrection.mode"

    #@c
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@e
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@11
    .line 702
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@13
    .line 730
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@15
    const-string/jumbo v1, "android.colorCorrection.transform"

    #@18
    const-class v2, Landroid/hardware/camera2/params/ColorSpaceTransform;

    #@1a
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1d
    .line 729
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1f
    .line 757
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@21
    const-string/jumbo v1, "android.colorCorrection.gains"

    #@24
    const-class v2, Landroid/hardware/camera2/params/RggbChannelVector;

    #@26
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@29
    .line 756
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2b
    .line 789
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@2d
    const-string/jumbo v1, "android.colorCorrection.aberrationMode"

    #@30
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@32
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@35
    .line 788
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@37
    .line 845
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@39
    const-string/jumbo v1, "android.control.aeAntibandingMode"

    #@3c
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3e
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@41
    .line 844
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@43
    .line 878
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@45
    const-string/jumbo v1, "android.control.aeExposureCompensation"

    #@48
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@4a
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@4d
    .line 877
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@4f
    .line 928
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@51
    const-string/jumbo v1, "android.control.aeLock"

    #@54
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@56
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@59
    .line 927
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@5b
    .line 978
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@5d
    const-string/jumbo v1, "android.control.aeMode"

    #@60
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@62
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@65
    .line 977
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@67
    .line 1018
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@69
    const-string/jumbo v1, "android.control.aeRegions"

    #@6c
    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@6e
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@71
    .line 1017
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@73
    .line 1038
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@75
    const-string/jumbo v1, "android.control.aeTargetFpsRange"

    #@78
    new-instance v2, Landroid/hardware/camera2/CaptureRequest$2;

    #@7a
    invoke-direct {v2}, Landroid/hardware/camera2/CaptureRequest$2;-><init>()V

    #@7d
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Landroid/hardware/camera2/utils/TypeReference;)V

    #@80
    .line 1037
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@82
    .line 1111
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@84
    const-string/jumbo v1, "android.control.aePrecaptureTrigger"

    #@87
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@89
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@8c
    .line 1110
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    #@8e
    .line 1152
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@90
    const-string/jumbo v1, "android.control.afMode"

    #@93
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@95
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@98
    .line 1151
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@9a
    .line 1192
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@9c
    const-string/jumbo v1, "android.control.afRegions"

    #@9f
    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@a1
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@a4
    .line 1191
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@a6
    .line 1229
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@a8
    const-string/jumbo v1, "android.control.afTrigger"

    #@ab
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@ad
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@b0
    .line 1228
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    #@b2
    .line 1259
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@b4
    const-string/jumbo v1, "android.control.awbLock"

    #@b7
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@b9
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@bc
    .line 1258
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@be
    .line 1319
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@c0
    const-string/jumbo v1, "android.control.awbMode"

    #@c3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@c5
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@c8
    .line 1318
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@ca
    .line 1360
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@cc
    const-string/jumbo v1, "android.control.awbRegions"

    #@cf
    const-class v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    #@d1
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d4
    .line 1359
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    #@d6
    .line 1397
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@d8
    const-string/jumbo v1, "android.control.captureIntent"

    #@db
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@dd
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e0
    .line 1396
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@e2
    .line 1436
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@e4
    const-string/jumbo v1, "android.control.effectMode"

    #@e7
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@e9
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@ec
    .line 1435
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@ee
    .line 1476
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@f0
    const-string/jumbo v1, "android.control.mode"

    #@f3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@f5
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@f8
    .line 1475
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@fa
    .line 1543
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@fc
    const-string/jumbo v1, "android.control.sceneMode"

    #@ff
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@101
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@104
    .line 1542
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@106
    .line 1576
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@108
    const-string/jumbo v1, "android.control.videoStabilizationMode"

    #@10b
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@10d
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@110
    .line 1575
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@112
    .line 1624
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@114
    const-string/jumbo v1, "android.edge.mode"

    #@117
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@119
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@11c
    .line 1623
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@11e
    .line 1659
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@120
    const-string/jumbo v1, "android.flash.mode"

    #@123
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@125
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@128
    .line 1658
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@12a
    .line 1683
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@12c
    const-string/jumbo v1, "android.hotPixel.mode"

    #@12f
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@131
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@134
    .line 1682
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@136
    .line 1695
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@138
    const-string/jumbo v1, "android.jpeg.gpsLocation"

    #@13b
    const-class v2, Landroid/location/Location;

    #@13d
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@140
    .line 1694
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@142
    .line 1706
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@144
    const-string/jumbo v1, "android.jpeg.gpsCoordinates"

    #@147
    const-class v2, [D

    #@149
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@14c
    .line 1705
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    #@14e
    .line 1716
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@150
    const-string/jumbo v1, "android.jpeg.gpsProcessingMethod"

    #@153
    const-class v2, Ljava/lang/String;

    #@155
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@158
    .line 1715
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    #@15a
    .line 1726
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@15c
    const-string/jumbo v1, "android.jpeg.gpsTimestamp"

    #@15f
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@161
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@164
    .line 1725
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    #@166
    .line 1767
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@168
    const-string/jumbo v1, "android.jpeg.orientation"

    #@16b
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@16d
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@170
    .line 1766
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@172
    .line 1779
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@174
    const-string/jumbo v1, "android.jpeg.quality"

    #@177
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@179
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@17c
    .line 1778
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@17e
    .line 1790
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@180
    const-string/jumbo v1, "android.jpeg.thumbnailQuality"

    #@183
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@185
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@188
    .line 1789
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@18a
    .line 1825
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@18c
    const-string/jumbo v1, "android.jpeg.thumbnailSize"

    #@18f
    const-class v2, Landroid/util/Size;

    #@191
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@194
    .line 1824
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@196
    .line 1862
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@198
    const-string/jumbo v1, "android.lens.aperture"

    #@19b
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@19d
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1a0
    .line 1861
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1a2
    .line 1892
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@1a4
    const-string/jumbo v1, "android.lens.filterDensity"

    #@1a7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@1a9
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1ac
    .line 1891
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1ae
    .line 1917
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@1b0
    const-string/jumbo v1, "android.lens.focalLength"

    #@1b3
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@1b5
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1b8
    .line 1916
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1ba
    .line 1949
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@1bc
    const-string/jumbo v1, "android.lens.focusDistance"

    #@1bf
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@1c1
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1c4
    .line 1948
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1c6
    .line 1991
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@1c8
    const-string/jumbo v1, "android.lens.opticalStabilizationMode"

    #@1cb
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1cd
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1d0
    .line 1990
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1d2
    .line 2046
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@1d4
    const-string/jumbo v1, "android.noiseReduction.mode"

    #@1d7
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1d9
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1dc
    .line 2045
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1de
    .line 2059
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@1e0
    const-string/jumbo v1, "android.request.id"

    #@1e3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1e5
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1e8
    .line 2058
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->REQUEST_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1ea
    .line 2102
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@1ec
    const-string/jumbo v1, "android.scaler.cropRegion"

    #@1ef
    const-class v2, Landroid/graphics/Rect;

    #@1f1
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1f4
    .line 2101
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@1f6
    .line 2127
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@1f8
    const-string/jumbo v1, "android.sensor.exposureTime"

    #@1fb
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@1fd
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@200
    .line 2126
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    #@202
    .line 2219
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@204
    const-string/jumbo v1, "android.sensor.frameDuration"

    #@207
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@209
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@20c
    .line 2218
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    #@20e
    .line 2247
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@210
    const-string/jumbo v1, "android.sensor.sensitivity"

    #@213
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@215
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@218
    .line 2246
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    #@21a
    .line 2264
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@21c
    const-string/jumbo v1, "android.sensor.testPatternData"

    #@21f
    const-class v2, [I

    #@221
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@224
    .line 2263
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;

    #@226
    .line 2299
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@228
    const-string/jumbo v1, "android.sensor.testPatternMode"

    #@22b
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@22d
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@230
    .line 2298
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@232
    .line 2352
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@234
    const-string/jumbo v1, "android.shading.mode"

    #@237
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@239
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@23c
    .line 2351
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@23e
    .line 2377
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@240
    const-string/jumbo v1, "android.statistics.faceDetectMode"

    #@243
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@245
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@248
    .line 2376
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@24a
    .line 2392
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@24c
    const-string/jumbo v1, "android.statistics.hotPixelMapMode"

    #@24f
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@251
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@254
    .line 2391
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@256
    .line 2420
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@258
    const-string/jumbo v1, "android.statistics.lensShadingMapMode"

    #@25b
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@25d
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@260
    .line 2419
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@262
    .line 2437
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@264
    const-string/jumbo v1, "android.tonemap.curveBlue"

    #@267
    const-class v2, [F

    #@269
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@26c
    .line 2436
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@26e
    .line 2454
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@270
    const-string/jumbo v1, "android.tonemap.curveGreen"

    #@273
    const-class v2, [F

    #@275
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@278
    .line 2453
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    #@27a
    .line 2514
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@27c
    const-string/jumbo v1, "android.tonemap.curveRed"

    #@27f
    const-class v2, [F

    #@281
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@284
    .line 2513
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    #@286
    .line 2574
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@288
    const-string/jumbo v1, "android.tonemap.curve"

    #@28b
    const-class v2, Landroid/hardware/camera2/params/TonemapCurve;

    #@28d
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@290
    .line 2573
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@292
    .line 2623
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@294
    const-string/jumbo v1, "android.tonemap.mode"

    #@297
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@299
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@29c
    .line 2622
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@29e
    .line 2644
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@2a0
    const-string/jumbo v1, "android.tonemap.gamma"

    #@2a3
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2a5
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2a8
    .line 2643
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2aa
    .line 2669
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@2ac
    const-string/jumbo v1, "android.tonemap.presetCurve"

    #@2af
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2b1
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2b4
    .line 2668
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2b6
    .line 2686
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@2b8
    const-string/jumbo v1, "android.led.transmit"

    #@2bb
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@2bd
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2c0
    .line 2685
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->LED_TRANSMIT:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2c2
    .line 2735
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@2c4
    const-string/jumbo v1, "android.blackLevel.lock"

    #@2c7
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@2c9
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2cc
    .line 2734
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2ce
    .line 2785
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@2d0
    const-string/jumbo v1, "android.reprocess.effectiveExposureFactor"

    #@2d3
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2d5
    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@2d8
    .line 2784
    sput-object v0, Landroid/hardware/camera2/CaptureRequest;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2da
    .line 75
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 200
    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    #@4
    .line 188
    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    #@6
    .line 201
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@8
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@d
    .line 202
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@12
    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@14
    .line 203
    iput-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@16
    .line 204
    const/4 v0, -0x1

    #@17
    iput v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@19
    .line 200
    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 2
    .param p1, "source"    # Landroid/hardware/camera2/CaptureRequest;

    #@0
    .prologue
    .line 213
    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    #@3
    .line 188
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    #@6
    .line 214
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@8
    iget-object v1, p1, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@a
    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@d
    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@f
    .line 215
    iget-object v0, p1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@11
    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/HashSet;

    #@17
    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@19
    .line 216
    iget-boolean v0, p1, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@1b
    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@1d
    .line 217
    iget-boolean v0, p1, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    #@1f
    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    #@21
    .line 218
    iget v0, p1, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@23
    iput v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@25
    .line 219
    iget-object v0, p1, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    #@27
    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    #@29
    .line 213
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/CaptureRequest;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .param p1, "source"    # Landroid/hardware/camera2/CaptureRequest;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    .locals 3
    .param p1, "settings"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "isReprocess"    # Z
    .param p3, "reprocessableSessionId"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 242
    invoke-direct {p0}, Landroid/hardware/camera2/CameraMetadata;-><init>()V

    #@4
    .line 188
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    #@7
    .line 244
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@d
    .line 245
    new-instance v0, Ljava/util/HashSet;

    #@f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@12
    iput-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@14
    .line 246
    iput-boolean p2, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@16
    .line 247
    if-eqz p2, :cond_1

    #@18
    .line 248
    if-ne p3, v1, :cond_0

    #@1a
    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Create a reprocess capture request with an invalid session ID: "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 252
    :cond_0
    iput p3, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@36
    .line 243
    :goto_0
    return-void

    #@37
    .line 254
    :cond_1
    iput v1, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@39
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILandroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .param p1, "settings"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "isReprocess"    # Z
    .param p3, "reprocessableSessionId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V

    #@3
    return-void
.end method

.method private equals(Landroid/hardware/camera2/CaptureRequest;)Z
    .locals 3
    .param p1, "other"    # Landroid/hardware/camera2/CaptureRequest;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 405
    if-eqz p1, :cond_0

    #@3
    .line 406
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    #@5
    iget-object v2, p1, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    #@7
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    .line 405
    if-eqz v1, :cond_0

    #@d
    .line 407
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@f
    iget-object v2, p1, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@11
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    .line 405
    if-eqz v1, :cond_0

    #@17
    .line 408
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@19
    iget-object v2, p1, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@1b
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    .line 405
    if-eqz v1, :cond_0

    #@21
    .line 409
    iget-boolean v1, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@23
    iget-boolean v2, p1, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@25
    if-ne v1, v2, :cond_0

    #@27
    .line 410
    iget v1, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@29
    iget v2, p1, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@2b
    if-ne v1, v2, :cond_0

    #@2d
    const/4 v0, 0x1

    #@2e
    .line 405
    :cond_0
    return v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 443
    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@3
    invoke-virtual {v4, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 445
    iget-object v4, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@8
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    #@b
    .line 447
    const-class v4, Landroid/view/Surface;

    #@d
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    .line 449
    .local v1, "parcelableArray":[Landroid/os/Parcelable;
    if-nez v1, :cond_0

    #@17
    .line 450
    return-void

    #@18
    .line 453
    :cond_0
    array-length v5, v1

    #@19
    move v4, v3

    #@1a
    :goto_0
    if-ge v4, v5, :cond_1

    #@1c
    aget-object v0, v1, v4

    #@1e
    .local v0, "p":Landroid/os/Parcelable;
    move-object v2, v0

    #@1f
    .line 454
    check-cast v2, Landroid/view/Surface;

    #@21
    .line 455
    .local v2, "s":Landroid/view/Surface;
    iget-object v6, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@23
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@26
    .line 453
    add-int/lit8 v4, v4, 0x1

    #@28
    goto :goto_0

    #@29
    .line 458
    .end local v0    # "p":Landroid/os/Parcelable;
    .end local v2    # "s":Landroid/view/Surface;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v4

    #@2d
    if-nez v4, :cond_2

    #@2f
    :goto_1
    iput-boolean v3, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@31
    .line 459
    const/4 v3, -0x1

    #@32
    iput v3, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@34
    .line 442
    return-void

    #@35
    .line 458
    :cond_2
    const/4 v3, 0x1

    #@36
    goto :goto_1
.end method


# virtual methods
.method public containsTarget(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 478
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 464
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 400
    instance-of v0, p1, Landroid/hardware/camera2/CaptureRequest;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 401
    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    #@6
    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->equals(Landroid/hardware/camera2/CaptureRequest;)Z

    #@9
    move-result v0

    #@a
    .line 400
    :goto_0
    return v0

    #@b
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 273
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 293
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    #@2
    .line 294
    .local v0, "thisClass":Ljava/lang/Object;
    check-cast v0, Ljava/lang/Class;

    #@4
    .end local v0    # "thisClass":Ljava/lang/Object;
    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 304
    invoke-super {p0}, Landroid/hardware/camera2/CameraMetadata;->getKeys()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 2

    #@0
    .prologue
    .line 367
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@2
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@4
    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@7
    return-object v0
.end method

.method protected getProtected(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<*>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 283
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@2
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected bridge synthetic getProtected(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 282
    check-cast p1, Landroid/hardware/camera2/CaptureRequest$Key;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->getProtected(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getReprocessableSessionId()I
    .locals 2

    #@0
    .prologue
    .line 379
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 380
    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_1

    #@9
    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v1, "Getting the reprocessable session ID for a non-reprocess capture request is illegal."

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 384
    :cond_1
    iget v0, p0, Landroid/hardware/camera2/CaptureRequest;->mReprocessableSessionId:I

    #@14
    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getTargets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 415
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mUserTag:Ljava/lang/Object;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public isPartOfCRequestList()Z
    .locals 1

    #@0
    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsPartOfCHSRequestList:Z

    #@2
    return v0
.end method

.method public isReprocess()Z
    .locals 1

    #@0
    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSettings:Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 470
    iget-object v0, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@7
    iget-object v1, p0, Landroid/hardware/camera2/CaptureRequest;->mSurfaceSet:Ljava/util/HashSet;

    #@9
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    #@c
    move-result v1

    #@d
    new-array v1, v1, [Landroid/view/Surface;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, [Landroid/view/Surface;

    #@15
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@18
    .line 471
    iget-boolean v0, p0, Landroid/hardware/camera2/CaptureRequest;->mIsReprocess:Z

    #@1a
    if-eqz v0, :cond_0

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 468
    return-void

    #@21
    .line 471
    :cond_0
    const/4 v0, 0x0

    #@22
    goto :goto_0
.end method
