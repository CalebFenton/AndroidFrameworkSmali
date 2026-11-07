.class public Landroid/hardware/camera2/impl/CameraMetadataNative;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraMetadataNative$Key;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    }
.end annotation


# static fields
.field private static final greylist-max-o CELLID_PROCESS:Ljava/lang/String; = "CELLID"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o FACE_LANDMARK_SIZE:I = 0x6

.field private static final greylist-max-o GPS_PROCESS:Ljava/lang/String; = "GPS"

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_10BIT:I = 0x3

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_CONCURRENT:I = 0x2

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_DEFAULT:I = 0x0

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_MAX_RESOLUTION:I = 0x1

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_PREVIEW_STABILIZATION:I = 0x5

.field private static final blacklist MANDATORY_STREAM_CONFIGURATIONS_USE_CASE:I = 0x4

.field public static final greylist-max-o NATIVE_JPEG_FORMAT:I = 0x21

.field public static final greylist-max-o NUM_TYPES:I = 0x6

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CameraMetadataJV"

.field public static final greylist-max-o TYPE_BYTE:I = 0x0

.field public static final greylist-max-o TYPE_DOUBLE:I = 0x4

.field public static final greylist-max-o TYPE_FLOAT:I = 0x2

.field public static final greylist-max-o TYPE_INT32:I = 0x1

.field public static final greylist-max-o TYPE_INT64:I = 0x3

.field public static final greylist-max-o TYPE_RATIONAL:I = 0x5

.field private static final greylist-max-o sGetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;",
            "Landroid/hardware/camera2/impl/GetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sSetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;",
            "Landroid/hardware/camera2/impl/SetCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBufferSize:J

.field private blacklist mCameraId:I

.field private blacklist mDisplaySize:Landroid/util/Size;

.field private blacklist mHasMandatoryConcurrentStreams:Z

.field private greylist-max-r mMetadataPtr:J

.field private blacklist mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAvailableFormats(Landroid/hardware/camera2/impl/CameraMetadataNative;)[I
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAvailableFormats()[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetColorSpaceProfiles(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/ColorSpaceProfiles;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getColorSpaceProfiles()Landroid/hardware/camera2/params/ColorSpaceProfiles;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDeviceStateOrientationMap(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getDeviceStateOrientationMap()Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDynamicRangeProfiles(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/DynamicRangeProfiles;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getDynamicRangeProfiles()Landroid/hardware/camera2/params/DynamicRangeProfiles;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExtendedSceneModeCapabilities(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/Capability;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getExtendedSceneModeCapabilities()[Landroid/hardware/camera2/params/Capability;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFaceRectangles(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/graphics/Rect;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaceRectangles()[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/Face;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetGpsLocation(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/location/Location;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getGpsLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLensIntrinsicSamples(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/LensIntrinsicsSample;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getLensIntrinsicSamples()[Landroid/hardware/camera2/params/LensIntrinsicsSample;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLensShadingMap(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/LensShadingMap;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatory10BitStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatory10BitStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryConcurrentStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryMaximumResolutionStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryMaximumResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryPreviewStabilizationStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryPreviewStabilizationStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMandatoryUseCaseStreamCombinations(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryUseCaseStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetOisSamples(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/OisSample;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getOisSamples()[Landroid/hardware/camera2/params/OisSample;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSharedSessionConfiguration(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/SharedSessionConfiguration;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getSharedSessionConfiguration()Landroid/hardware/camera2/params/SharedSessionConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStreamConfigurationMap(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStreamConfigurationMapMaximumResolution(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMapMaximumResolution()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTonemapCurve(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/TonemapCurve;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAERegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAERegions(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAFRegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAFRegions(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAWBRegions(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAWBRegions(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetAvailableFormats(Landroid/hardware/camera2/impl/CameraMetadataNative;[I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAvailableFormats([I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetFaceRectangles(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/graphics/Rect;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaceRectangles([Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetFaces(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/hardware/camera2/params/Face;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaces([Landroid/hardware/camera2/params/Face;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetGpsLocation(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/location/Location;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setGpsLocation(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetLensIntrinsicsSamples(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/hardware/camera2/params/LensIntrinsicsSample;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setLensIntrinsicsSamples([Landroid/hardware/camera2/params/LensIntrinsicsSample;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetLensShadingMap(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/params/LensShadingMap;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setLensShadingMap(Landroid/hardware/camera2/params/LensShadingMap;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetScalerCropRegion(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/graphics/Rect;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setScalerCropRegion(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetTonemapCurve(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/params/TonemapCurve;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 432
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$1;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 645
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 646
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$2;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$2;-><init>()V

    .line 645
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 654
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$3;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$3;-><init>()V

    .line 653
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 662
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$4;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$4;-><init>()V

    .line 661
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 670
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$5;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$5;-><init>()V

    .line 669
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 679
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$6;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$6;-><init>()V

    .line 678
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 688
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$7;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$7;-><init>()V

    .line 687
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_CONCURRENT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 697
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$8;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$8;-><init>()V

    .line 696
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_TEN_BIT_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 707
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$9;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$9;-><init>()V

    .line 706
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_MAXIMUM_RESOLUTION_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 717
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$10;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$10;-><init>()V

    .line 716
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_USE_CASE_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 727
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$11;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$11;-><init>()V

    .line 726
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MANDATORY_PREVIEW_STABILIZATION_OUTPUT_STREAM_COMBINATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 736
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$12;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$12;-><init>()V

    .line 735
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 746
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$13;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$13;-><init>()V

    .line 745
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 754
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$14;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$14;-><init>()V

    .line 753
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 762
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$15;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$15;-><init>()V

    .line 761
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 770
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$16;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$16;-><init>()V

    .line 769
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 778
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$17;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$17;-><init>()V

    .line 777
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 786
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$18;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$18;-><init>()V

    .line 785
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 795
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$19;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$19;-><init>()V

    .line 794
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 803
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$20;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$20;-><init>()V

    .line 802
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 811
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$21;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$21;-><init>()V

    .line 810
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 820
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$22;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$22;-><init>()V

    .line 819
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 829
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$23;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$23;-><init>()V

    .line 828
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_COLOR_SPACE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 838
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$24;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$24;-><init>()V

    .line 837
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 847
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$25;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$25;-><init>()V

    .line 846
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 856
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$26;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$26;-><init>()V

    .line 855
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 865
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$27;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$27;-><init>()V

    .line 864
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSICS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 874
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$28;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$28;-><init>()V

    .line 873
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_CONFIGURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 883
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$29;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$29;-><init>()V

    .line 882
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    .line 2027
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$30;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$30;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$31;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$31;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$32;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$32;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$33;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$33;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$34;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$34;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$35;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$35;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$36;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$36;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$37;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$37;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$38;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$38;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$39;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$39;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSICS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2096
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$40;

    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$40;-><init>()V

    .line 2095
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2613
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerAllMarshalers()V

    .line 2614
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 5

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2230
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2232
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 374
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocate()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 375
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_27

    .line 378
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 379
    return-void

    .line 376
    :cond_27
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(J)V
    .registers 7
    .param p1, "metadataPtr"    # J

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2230
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2232
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 398
    iput-wide p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 399
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_23

    .line 402
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 403
    return-void

    .line 400
    :cond_23
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 6
    .param p1, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2230
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2232
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 386
    iget-wide v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocateCopy(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 387
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_29

    .line 390
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 391
    return-void

    .line 388
    :cond_29
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs blacklist areValuesAllNull([Ljava/lang/Object;)Z
    .registers 5
    .param p0, "objs"    # [Ljava/lang/Object;

    .line 2573
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_d

    aget-object v3, p0, v2

    .line 2574
    .local v3, "o":Ljava/lang/Object;
    if-eqz v3, :cond_a

    return v1

    .line 2573
    .end local v3    # "o":Ljava/lang/Object;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2576
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o close()V
    .registers 6

    .line 586
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClose(J)V

    .line 587
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 589
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_18

    .line 590
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    .line 592
    :cond_18
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 593
    return-void
.end method

.method private greylist-max-o getAvailableFormats()[I
    .registers 5

    .line 894
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 895
    .local v0, "availableFormats":[I
    if-eqz v0, :cond_1b

    .line 896
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 898
    aget v2, v0, v1

    const/16 v3, 0x21

    if-ne v2, v3, :cond_18

    .line 899
    const/16 v2, 0x100

    aput v2, v0, v1

    .line 896
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 904
    .end local v1    # "i":I
    :cond_1b
    return-object v0
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 596
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 604
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 600
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 609
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v0, 0x0

    .line 610
    .local v0, "values":[B
    monitor-enter p0

    .line 611
    :try_start_2
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hasTag()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 612
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v1

    .local v1, "tag":I
    goto :goto_1a

    .line 614
    .end local v1    # "tag":I
    :cond_d
    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result v1

    .line 615
    .restart local v1    # "tag":I
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->cacheTag(I)V

    .line 617
    :goto_1a
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v2

    move-object v0, v2

    .line 618
    if-nez v0, :cond_3e

    .line 621
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->-$$Nest$fgetmFallbackName(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2a

    .line 622
    monitor-exit p0

    return-object v3

    .line 624
    :cond_2a
    iget-wide v4, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->-$$Nest$fgetmFallbackName(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result v2

    move v1, v2

    .line 625
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v2

    move-object v0, v2

    .line 626
    if-nez v0, :cond_3e

    .line 627
    monitor-exit p0

    return-object v3

    .line 631
    :cond_3e
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v2, v3, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(JI)I

    move-result v2

    .line 632
    .local v2, "nativeType":I
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_5a

    .line 635
    invoke-static {p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v3

    .line 636
    .local v3, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 637
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 632
    .end local v1    # "tag":I
    .end local v2    # "nativeType":I
    .end local v3    # "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private blacklist getColorSpaceProfiles()Landroid/hardware/camera2/params/ColorSpaceProfiles;
    .registers 3

    .line 1134
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_COLOR_SPACE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1137
    .local v0, "profileArray":[J
    if-nez v0, :cond_c

    .line 1138
    const/4 v1, 0x0

    return-object v1

    .line 1141
    :cond_c
    new-instance v1, Landroid/hardware/camera2/params/ColorSpaceProfiles;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/ColorSpaceProfiles;-><init>([J)V

    return-object v1
.end method

.method private blacklist getDeviceStateOrientationMap()Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    .registers 3

    .line 1111
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_ORIENTATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1114
    .local v0, "mapArray":[J
    if-nez v0, :cond_c

    .line 1115
    const/4 v1, 0x0

    return-object v1

    .line 1118
    :cond_c
    new-instance v1, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;-><init>([J)V

    .line 1119
    .local v1, "map":Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    return-object v1
.end method

.method private blacklist getDynamicRangeProfiles()Landroid/hardware/camera2/params/DynamicRangeProfiles;
    .registers 3

    .line 1123
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1126
    .local v0, "profileArray":[J
    if-nez v0, :cond_c

    .line 1127
    const/4 v1, 0x0

    return-object v1

    .line 1130
    :cond_c
    new-instance v1, Landroid/hardware/camera2/params/DynamicRangeProfiles;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/DynamicRangeProfiles;-><init>([J)V

    return-object v1
.end method

.method private blacklist getExtendedSceneModeCapabilities()[Landroid/hardware/camera2/params/Capability;
    .registers 22

    .line 1925
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_MAX_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1926
    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1927
    .local v1, "maxSizes":[I
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EXTENDED_SCENE_MODE_ZOOM_RATIO_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 1929
    .local v2, "zoomRanges":[F
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 1930
    .local v3, "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1932
    .local v4, "maxDigitalZoom":F
    if-nez v1, :cond_2a

    .line 1933
    const/4 v5, 0x0

    return-object v5

    .line 1935
    :cond_2a
    array-length v5, v1

    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_e2

    .line 1939
    array-length v5, v1

    div-int/lit8 v5, v5, 0x3

    .line 1940
    .local v5, "numExtendedSceneModes":I
    const/4 v6, 0x0

    .line 1941
    .local v6, "numExtendedSceneModeZoomRanges":I
    const/4 v7, 0x1

    if-eqz v2, :cond_53

    .line 1942
    array-length v8, v2

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_4b

    .line 1946
    array-length v8, v2

    div-int/lit8 v6, v8, 0x2

    .line 1947
    sub-int v8, v5, v6

    if-ne v8, v7, :cond_43

    goto :goto_53

    .line 1948
    :cond_43
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Number of extended scene mode zoom ranges must be 1 less than number of supported modes"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 1943
    :cond_4b
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "availableExtendedSceneModeZoomRanges must be tuples of [minZoom, maxZoom]"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 1953
    :cond_53
    :goto_53
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1954
    .local v8, "modeOffMinZoomRatio":F
    move v9, v4

    .line 1955
    .local v9, "modeOffMaxZoomRatio":F
    if-eqz v3, :cond_6c

    .line 1956
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 1957
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 1960
    :cond_6c
    new-array v10, v5, [Landroid/hardware/camera2/params/Capability;

    .line 1961
    .local v10, "capabilities":[Landroid/hardware/camera2/params/Capability;
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_70
    if-ge v11, v5, :cond_e1

    .line 1962
    mul-int/lit8 v13, v11, 0x3

    aget v13, v1, v13

    .line 1963
    .local v13, "mode":I
    mul-int/lit8 v14, v11, 0x3

    add-int/2addr v14, v7

    aget v14, v1, v14

    .line 1964
    .local v14, "width":I
    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x2

    aget v15, v1, v15

    .line 1965
    .local v15, "height":I
    if-eqz v13, :cond_b3

    if-ge v12, v6, :cond_b3

    .line 1967
    move/from16 v16, v7

    new-instance v7, Landroid/hardware/camera2/params/Capability;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v14, v15}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v17, v1

    .end local v1    # "maxSizes":[I
    .local v17, "maxSizes":[I
    new-instance v1, Landroid/util/Range;

    mul-int/lit8 v18, v12, 0x2

    aget v18, v2, v18

    .line 1968
    move-object/from16 v19, v2

    .end local v2    # "zoomRanges":[F
    .local v19, "zoomRanges":[F
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    mul-int/lit8 v18, v12, 0x2

    add-int/lit8 v18, v18, 0x1

    aget v18, v19, v18

    move-object/from16 v20, v3

    .end local v3    # "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .local v20, "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v7, v13, v0, v1}, Landroid/hardware/camera2/params/Capability;-><init>(ILandroid/util/Size;Landroid/util/Range;)V

    aput-object v7, v10, v11

    .line 1969
    add-int/lit8 v12, v12, 0x1

    goto :goto_d4

    .line 1965
    .end local v17    # "maxSizes":[I
    .end local v19    # "zoomRanges":[F
    .end local v20    # "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .restart local v1    # "maxSizes":[I
    .restart local v2    # "zoomRanges":[F
    .restart local v3    # "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_b3
    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v16, v7

    .line 1971
    .end local v1    # "maxSizes":[I
    .end local v2    # "zoomRanges":[F
    .end local v3    # "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .restart local v17    # "maxSizes":[I
    .restart local v19    # "zoomRanges":[F
    .restart local v20    # "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    new-instance v0, Landroid/hardware/camera2/params/Capability;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v14, v15}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Range;

    .line 1972
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v0, v13, v1, v2}, Landroid/hardware/camera2/params/Capability;-><init>(ILandroid/util/Size;Landroid/util/Range;)V

    aput-object v0, v10, v11

    .line 1961
    .end local v13    # "mode":I
    .end local v14    # "width":I
    .end local v15    # "height":I
    :goto_d4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_70

    .line 1976
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v17    # "maxSizes":[I
    .end local v19    # "zoomRanges":[F
    .end local v20    # "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .restart local v1    # "maxSizes":[I
    .restart local v2    # "zoomRanges":[F
    .restart local v3    # "zoomRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_e1
    return-object v10

    .line 1936
    .end local v5    # "numExtendedSceneModes":I
    .end local v6    # "numExtendedSceneModeZoomRanges":I
    .end local v8    # "modeOffMinZoomRatio":F
    .end local v9    # "modeOffMaxZoomRatio":F
    .end local v10    # "capabilities":[Landroid/hardware/camera2/params/Capability;
    :cond_e2
    move-object/from16 v17, v1

    .end local v1    # "maxSizes":[I
    .restart local v17    # "maxSizes":[I
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "availableExtendedSceneModeMaxSizes must be tuples of [mode, width, height]"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private greylist-max-o getFaceRectangles()[Landroid/graphics/Rect;
    .registers 10

    .line 1065
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    .line 1066
    .local v0, "faceRectangles":[Landroid/graphics/Rect;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    .line 1068
    :cond_c
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Rect;

    .line 1069
    .local v1, "fixedFaceRectangles":[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_37

    .line 1070
    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Rect;->left:I

    aget-object v5, v0, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, v0, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    aget-object v7, v0, v2

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    aget-object v8, v0, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    .line 1069
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1076
    .end local v2    # "i":I
    :cond_37
    return-object v1
.end method

.method private greylist-max-o getFaces()[Landroid/hardware/camera2/params/Face;
    .registers 23

    .line 972
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 973
    .local v1, "faceDetectMode":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 974
    .local v2, "faceScores":[B
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    .line 975
    .local v3, "faceRectangles":[Landroid/graphics/Rect;
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 976
    .local v4, "faceIds":[I
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 978
    .local v5, "faceLandmarks":[I
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 979
    const/4 v6, 0x0

    return-object v6

    .line 982
    :cond_36
    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "CameraMetadataJV"

    const/4 v9, 0x1

    if-nez v1, :cond_47

    .line 983
    const-string v10, "Face detect mode metadata is null, assuming the mode is SIMPLE"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_80

    .line 985
    :cond_47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v7, :cond_52

    .line 987
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_80

    .line 989
    :cond_52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_5b

    .line 990
    new-array v6, v6, [Landroid/hardware/camera2/params/Face;

    return-object v6

    .line 992
    :cond_5b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v9, :cond_80

    .line 993
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v7, :cond_80

    .line 994
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown face detect mode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-array v6, v6, [Landroid/hardware/camera2/params/Face;

    return-object v6

    .line 1000
    :cond_80
    :goto_80
    if-eqz v2, :cond_174

    if-nez v3, :cond_86

    goto/16 :goto_174

    .line 1003
    :cond_86
    array-length v6, v2

    array-length v10, v3

    if-eq v6, v10, :cond_a1

    .line 1004
    array-length v6, v2

    .line 1005
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    array-length v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v6, v10}, [Ljava/lang/Object;

    move-result-object v6

    .line 1004
    const-string v10, "Face score size(%d) doesn match face rectangle size(%d)!"

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_a1
    array-length v6, v2

    array-length v10, v3

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1011
    .local v6, "numFaces":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v7, :cond_ed

    .line 1012
    if-eqz v4, :cond_e4

    if-nez v5, :cond_b2

    goto :goto_e4

    .line 1017
    :cond_b2
    array-length v10, v4

    if-ne v10, v6, :cond_ba

    array-length v10, v5

    mul-int/lit8 v11, v6, 0x6

    if-eq v10, v11, :cond_d7

    .line 1019
    :cond_ba
    array-length v10, v4

    .line 1021
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    array-length v11, v5

    mul-int/lit8 v11, v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v10

    .line 1019
    const-string v11, "Face id size(%d), or face landmark size(%d) don\'tmatch face number(%d)!"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_d7
    array-length v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1025
    array-length v8, v5

    div-int/lit8 v8, v8, 0x6

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_ed

    .line 1013
    :cond_e4
    :goto_e4
    const-string v10, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1029
    :cond_ed
    :goto_ed
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v8, "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x64

    if-ne v10, v9, :cond_115

    .line 1031
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_fb
    if-ge v7, v6, :cond_114

    .line 1032
    aget-byte v10, v2, v7

    if-gt v10, v11, :cond_111

    aget-byte v10, v2, v7

    if-lt v10, v9, :cond_111

    .line 1034
    new-instance v10, Landroid/hardware/camera2/params/Face;

    aget-object v12, v3, v7

    aget-byte v13, v2, v7

    invoke-direct {v10, v12, v13}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    :cond_111
    add-int/lit8 v7, v7, 0x1

    goto :goto_fb

    .end local v7    # "i":I
    :cond_114
    goto :goto_16a

    .line 1039
    :cond_115
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_116
    if-ge v10, v6, :cond_16a

    .line 1040
    aget-byte v12, v2, v10

    if-gt v12, v11, :cond_167

    aget-byte v12, v2, v10

    if-lt v12, v9, :cond_167

    aget v12, v4, v10

    if-ltz v12, :cond_167

    .line 1043
    new-instance v12, Landroid/graphics/Point;

    mul-int/lit8 v13, v10, 0x6

    aget v13, v5, v13

    mul-int/lit8 v14, v10, 0x6

    add-int/2addr v14, v9

    aget v14, v5, v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v19, v12

    .line 1045
    .local v19, "leftEye":Landroid/graphics/Point;
    new-instance v12, Landroid/graphics/Point;

    mul-int/lit8 v13, v10, 0x6

    add-int/2addr v13, v7

    aget v13, v5, v13

    mul-int/lit8 v14, v10, 0x6

    add-int/lit8 v14, v14, 0x3

    aget v14, v5, v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v20, v12

    .line 1047
    .local v20, "rightEye":Landroid/graphics/Point;
    new-instance v12, Landroid/graphics/Point;

    mul-int/lit8 v13, v10, 0x6

    add-int/lit8 v13, v13, 0x4

    aget v13, v5, v13

    mul-int/lit8 v14, v10, 0x6

    add-int/lit8 v14, v14, 0x5

    aget v14, v5, v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v12

    .line 1049
    .local v21, "mouth":Landroid/graphics/Point;
    new-instance v15, Landroid/hardware/camera2/params/Face;

    aget-object v16, v3, v10

    aget-byte v17, v2, v10

    aget v18, v4, v10

    invoke-direct/range {v15 .. v21}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1051
    .local v15, "face":Landroid/hardware/camera2/params/Face;
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    .end local v15    # "face":Landroid/hardware/camera2/params/Face;
    .end local v19    # "leftEye":Landroid/graphics/Point;
    .end local v20    # "rightEye":Landroid/graphics/Point;
    .end local v21    # "mouth":Landroid/graphics/Point;
    :cond_167
    add-int/lit8 v10, v10, 0x1

    goto :goto_116

    .line 1055
    .end local v10    # "i":I
    :cond_16a
    :goto_16a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/hardware/camera2/params/Face;

    .line 1056
    .local v7, "faces":[Landroid/hardware/camera2/params/Face;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1057
    return-object v7

    .line 1001
    .end local v6    # "numFaces":I
    .end local v7    # "faces":[Landroid/hardware/camera2/params/Face;
    .end local v8    # "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    :cond_174
    :goto_174
    const-string v7, "Expect face scores and rectangles to be non-null"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    new-array v6, v6, [Landroid/hardware/camera2/params/Face;

    return-object v6
.end method

.method private greylist-max-o getGpsLocation()Landroid/location/Location;
    .registers 10

    .line 1145
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1146
    .local v0, "processingMethod":Ljava/lang/String;
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 1147
    .local v1, "coords":[D
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1149
    .local v2, "timeStamp":Ljava/lang/Long;
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1150
    const/4 v3, 0x0

    return-object v3

    .line 1153
    :cond_24
    new-instance v3, Landroid/location/Location;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v3, "l":Landroid/location/Location;
    const-string v4, "CameraMetadataJV"

    if-eqz v2, :cond_3c

    .line 1156
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Landroid/location/Location;->setTime(J)V

    goto :goto_41

    .line 1158
    :cond_3c
    const-string v5, "getGpsLocation - No timestamp for GPS location."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :goto_41
    if-eqz v1, :cond_56

    .line 1162
    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1163
    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 1164
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_5b

    .line 1166
    :cond_56
    const-string v5, "getGpsLocation - No coordinates for GPS location"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :goto_5b
    return-object v3
.end method

.method private blacklist getLensIntrinsicSamples()[Landroid/hardware/camera2/params/LensIntrinsicsSample;
    .registers 9

    .line 1893
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSIC_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1894
    .local v0, "timestamps":[J
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSIC_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1896
    .local v1, "intrinsics":[F
    if-nez v0, :cond_1e

    .line 1897
    if-nez v1, :cond_16

    .line 1901
    const/4 v2, 0x0

    return-object v2

    .line 1898
    :cond_16
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "timestamps is null but intrinsics is not"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1904
    :cond_1e
    if-eqz v1, :cond_6d

    .line 1906
    array-length v2, v1

    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_65

    .line 1910
    array-length v2, v1

    div-int/lit8 v2, v2, 0x5

    array-length v3, v0

    if-ne v2, v3, :cond_49

    .line 1916
    array-length v2, v0

    new-array v2, v2, [Landroid/hardware/camera2/params/LensIntrinsicsSample;

    .line 1917
    .local v2, "samples":[Landroid/hardware/camera2/params/LensIntrinsicsSample;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    array-length v4, v0

    if-ge v3, v4, :cond_48

    .line 1918
    mul-int/lit8 v4, v3, 0x5

    mul-int/lit8 v5, v3, 0x5

    add-int/lit8 v5, v5, 0x5

    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v4

    .line 1919
    .local v4, "currentIntrinsic":[F
    new-instance v5, Landroid/hardware/camera2/params/LensIntrinsicsSample;

    aget-wide v6, v0, v3

    invoke-direct {v5, v6, v7, v4}, Landroid/hardware/camera2/params/LensIntrinsicsSample;-><init>(J[F)V

    aput-object v5, v2, v3

    .line 1917
    .end local v4    # "currentIntrinsic":[F
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1921
    .end local v3    # "i":I
    :cond_48
    return-object v2

    .line 1911
    .end local v2    # "samples":[Landroid/hardware/camera2/params/LensIntrinsicsSample;
    :cond_49
    new-instance v2, Ljava/lang/AssertionError;

    array-length v3, v0

    .line 1912
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, v1

    div-int/lit8 v4, v4, 0x5

    .line 1913
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 1911
    const-string v4, "timestamps has %d entries but intrinsics has %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1907
    :cond_65
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "intrinsics are not multiple of 5"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1905
    :cond_6d
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "timestamps is not null but intrinsics is"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private greylist-max-o getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;
    .registers 6

    .line 1093
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1094
    .local v0, "lsmArray":[F
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 1097
    .local v1, "s":Landroid/util/Size;
    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 1098
    return-object v2

    .line 1101
    :cond_14
    if-nez v1, :cond_1e

    .line 1102
    const-string v3, "CameraMetadataJV"

    const-string v4, "getLensShadingMap - Lens shading map size was null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-object v2

    .line 1106
    :cond_1e
    new-instance v2, Landroid/hardware/camera2/params/LensShadingMap;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Landroid/hardware/camera2/params/LensShadingMap;-><init>([FII)V

    .line 1107
    .local v2, "map":Landroid/hardware/camera2/params/LensShadingMap;
    return-object v2
.end method

.method private blacklist getMandatory10BitStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1594
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1598
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    if-nez v0, :cond_6

    .line 1599
    const/4 v0, 0x0

    return-object v0

    .line 1601
    :cond_6
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryMaximumResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1605
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isUltraHighResolutionSensor()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1606
    const/4 v0, 0x0

    return-object v0

    .line 1608
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryPreviewStabilizationStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1620
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1612
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 13
    .param p1, "mandatoryStreamsType"    # I

    .line 1553
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1554
    .local v0, "capabilities":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 1555
    .local v6, "caps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v1, v0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1556
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_23

    aget v3, v0, v2

    .line 1557
    .local v3, "c":I
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    .end local v3    # "c":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1559
    :cond_23
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1560
    .local v4, "hwLevel":I
    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;

    iget v3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 1561
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v7

    .line 1562
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMapMaximumResolution()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v8

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isPreviewStabilizationSupported()Z

    move-result v9

    .line 1563
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isCroppedRawSupported()Z

    move-result v10

    invoke-direct/range {v2 .. v10}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;-><init>(IILandroid/util/Size;Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;Landroid/hardware/camera2/params/StreamConfigurationMap;ZZ)V

    .line 1565
    .local v2, "build":Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;
    const/4 v1, 0x0

    .line 1566
    .local v1, "combs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MandatoryStreamCombination;>;"
    packed-switch p1, :pswitch_data_82

    .line 1583
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamCombinations()Ljava/util/List;

    move-result-object v1

    goto :goto_6a

    .line 1580
    :pswitch_51
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryPreviewStabilizedStreamCombinations()Ljava/util/List;

    move-result-object v1

    .line 1581
    goto :goto_6a

    .line 1577
    :pswitch_56
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryStreamUseCaseCombinations()Ljava/util/List;

    move-result-object v1

    .line 1578
    goto :goto_6a

    .line 1574
    :pswitch_5b
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatory10BitStreamCombinations()Ljava/util/List;

    move-result-object v1

    .line 1575
    goto :goto_6a

    .line 1568
    :pswitch_60
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryConcurrentStreamCombinations()Ljava/util/List;

    move-result-object v1

    .line 1569
    goto :goto_6a

    .line 1571
    :pswitch_65
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;->getAvailableMandatoryMaximumResolutionStreamCombinations()Ljava/util/List;

    move-result-object v1

    .line 1572
    nop

    .line 1585
    :goto_6a
    if-eqz v1, :cond_80

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_80

    .line 1586
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    .line 1587
    .local v3, "combArray":[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination;

    .line 1588
    return-object v3

    .line 1590
    .end local v3    # "combArray":[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :cond_80
    const/4 v3, 0x0

    return-object v3

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_65
        :pswitch_60
        :pswitch_5b
        :pswitch_56
        :pswitch_51
    .end packed-switch
.end method

.method private blacklist getMandatoryUseCaseStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination;
    .registers 2

    .line 1616
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMandatoryStreamCombinationsHelper(I)[Landroid/hardware/camera2/params/MandatoryStreamCombination;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;
    .registers 3
    .param p1, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    .line 2518
    .local p0, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTypeReference()Landroid/hardware/camera2/utils/TypeReference;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1791
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v0, 0x0

    .line 1792
    .local v0, "RAW":I
    const/4 v1, 0x1

    .line 1793
    .local v1, "PROC":I
    const/4 v2, 0x2

    .line 1796
    .local v2, "PROC_STALLING":I
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1798
    .local v3, "maxNumOutputs":[I
    if-nez v3, :cond_f

    .line 1799
    const/4 v4, 0x0

    return-object v4

    .line 1802
    :cond_f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1803
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1804
    :cond_1f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1805
    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1806
    :cond_2f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1807
    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1809
    :cond_3f
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private greylist-max-o getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1768
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v0, 0x0

    .line 1769
    .local v0, "AE":I
    const/4 v1, 0x1

    .line 1770
    .local v1, "AWB":I
    const/4 v2, 0x2

    .line 1773
    .local v2, "AF":I
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1775
    .local v3, "maxRegions":[I
    if-nez v3, :cond_f

    .line 1776
    const/4 v4, 0x0

    return-object v4

    .line 1779
    :cond_f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1780
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1781
    :cond_1f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1782
    const/4 v4, 0x1

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1783
    :cond_2f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1784
    const/4 v4, 0x2

    aget v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 1786
    :cond_3f
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static greylist-max-o getNativeType(IJ)I
    .registers 4
    .param p0, "tag"    # I
    .param p1, "vendorId"    # J

    .line 2452
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTag(IJ)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getOisSamples()[Landroid/hardware/camera2/params/OisSample;
    .registers 11

    .line 1831
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1832
    .local v0, "timestamps":[J
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_X_SHIFTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1833
    .local v1, "xShifts":[F
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_Y_SHIFTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 1835
    .local v2, "yShifts":[F
    if-nez v0, :cond_30

    .line 1836
    if-nez v1, :cond_28

    .line 1840
    if-nez v2, :cond_20

    .line 1844
    const/4 v3, 0x0

    return-object v3

    .line 1841
    :cond_20
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "timestamps is null but yShifts is not"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1837
    :cond_28
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "timestamps is null but xShifts is not"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1847
    :cond_30
    if-eqz v1, :cond_90

    .line 1851
    if-eqz v2, :cond_88

    .line 1855
    array-length v3, v1

    array-length v4, v0

    if-ne v3, v4, :cond_6e

    .line 1861
    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_54

    .line 1867
    array-length v3, v0

    new-array v3, v3, [Landroid/hardware/camera2/params/OisSample;

    .line 1868
    .local v3, "samples":[Landroid/hardware/camera2/params/OisSample;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_40
    array-length v5, v0

    if-ge v4, v5, :cond_53

    .line 1869
    new-instance v5, Landroid/hardware/camera2/params/OisSample;

    aget-wide v6, v0, v4

    aget v8, v1, v4

    aget v9, v2, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/hardware/camera2/params/OisSample;-><init>(JFF)V

    aput-object v5, v3, v4

    .line 1868
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1871
    .end local v4    # "i":I
    :cond_53
    return-object v3

    .line 1862
    .end local v3    # "samples":[Landroid/hardware/camera2/params/OisSample;
    :cond_54
    new-instance v3, Ljava/lang/AssertionError;

    array-length v4, v0

    .line 1863
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    array-length v5, v2

    .line 1864
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1862
    const-string v5, "timestamps has %d entries but yShifts has %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1856
    :cond_6e
    new-instance v3, Ljava/lang/AssertionError;

    array-length v4, v0

    .line 1857
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    array-length v5, v1

    .line 1858
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 1856
    const-string v5, "timestamps has %d entries but xShifts has %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1852
    :cond_88
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "timestamps is not null but yShifts is"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1848
    :cond_90
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "timestamps is not null but xShifts is"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private blacklist getSharedSessionConfiguration()Landroid/hardware/camera2/params/SharedSessionConfiguration;
    .registers 5

    .line 1684
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraMultiClient()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1685
    return-object v1

    .line 1687
    :cond_8
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_COLOR_SPACE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1689
    .local v0, "sharedSessionColorSpace":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SHARED_SESSION_OUTPUT_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 1692
    .local v2, "sharedOutputConfigurations":[J
    if-eqz v0, :cond_27

    if-nez v2, :cond_1d

    goto :goto_27

    .line 1696
    :cond_1d
    new-instance v1, Landroid/hardware/camera2/params/SharedSessionConfiguration;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/params/SharedSessionConfiguration;-><init>(I[J)V

    return-object v1

    .line 1693
    :cond_27
    :goto_27
    return-object v1
.end method

.method private greylist-max-o getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 25

    .line 1625
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1627
    .local v3, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1629
    .local v4, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1631
    .local v5, "stallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1633
    .local v6, "depthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1635
    .local v7, "depthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1637
    .local v8, "depthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1639
    .local v9, "dynamicDepthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1641
    .local v10, "dynamicDepthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1643
    .local v11, "dynamicDepthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1645
    .local v12, "heicConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1647
    .local v13, "heicMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1649
    .local v14, "heicStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v1, 0x0

    .line 1650
    .local v1, "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    const/4 v2, 0x0

    .line 1651
    .local v2, "heicUltraHDRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v15, 0x0

    .line 1652
    .local v15, "heicUltraHDRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v16

    if-eqz v16, :cond_9c

    .line 1653
    move-object/from16 v16, v1

    .end local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .local v16, "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1655
    .end local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    move-object/from16 v16, v1

    .end local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1657
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v18, v16

    goto :goto_a4

    .line 1652
    .end local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_9c
    move-object/from16 v16, v1

    .end local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v18, v16

    .line 1660
    .end local v2    # "heicUltraHDRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v15    # "heicUltraHDRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .local v18, "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .local v19, "heicUltraHDRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v20, "heicUltraHDRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :goto_a4
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1662
    .local v15, "jpegRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1664
    .local v16, "jpegRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1666
    .local v17, "jpegRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1668
    .local v21, "highSpeedVideoConfigurations":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 1670
    .local v22, "inputOutputFormatsMap":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isBurstSupported()Z

    move-result v23

    .line 1671
    .local v23, "listHighResolution":Z
    new-instance v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-direct/range {v2 .. v23}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    return-object v2
.end method

.method private blacklist getStreamConfigurationMapMaximumResolution()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 26

    .line 1700
    move-object/from16 v0, p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1702
    .local v3, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1704
    .local v4, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1708
    .local v5, "stallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    if-eqz v3, :cond_e9

    if-eqz v4, :cond_e9

    if-nez v5, :cond_25

    goto/16 :goto_e9

    .line 1714
    :cond_25
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1716
    .local v6, "depthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1718
    .local v7, "depthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1720
    .local v8, "depthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1722
    .local v9, "dynamicDepthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1724
    .local v10, "dynamicDepthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DYNAMIC_DEPTH_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1726
    .local v11, "dynamicDepthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1728
    .local v12, "heicConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1730
    .local v13, "heicMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1732
    .local v14, "heicStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v1, 0x0

    .line 1733
    .local v1, "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    const/4 v2, 0x0

    .line 1734
    .local v2, "heicUltraHDRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/4 v15, 0x0

    .line 1735
    .local v15, "heicUltraHDRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v16

    if-eqz v16, :cond_a4

    .line 1736
    move-object/from16 v16, v1

    .end local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .local v16, "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1738
    .end local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    move-object/from16 v16, v1

    .end local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1740
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->HEIC_AVAILABLE_HEIC_ULTRA_HDR_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v18, v16

    goto :goto_ac

    .line 1735
    .end local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    :cond_a4
    move-object/from16 v16, v1

    .end local v1    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .restart local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    move-object/from16 v19, v2

    move-object/from16 v20, v15

    move-object/from16 v18, v16

    .line 1743
    .end local v2    # "heicUltraHDRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v15    # "heicUltraHDRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v16    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .local v18, "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .local v19, "heicUltraHDRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v20, "heicUltraHDRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :goto_ac
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STREAM_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1745
    .local v15, "jpegRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_MIN_FRAME_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1747
    .local v16, "jpegRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->JPEGR_AVAILABLE_JPEG_R_STALL_DURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1749
    .local v17, "jpegRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1751
    .local v21, "highSpeedVideoConfigurations":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 1754
    .local v22, "inputOutputFormatsMap":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isBurstSupported()Z

    move-result v23

    .line 1755
    .local v23, "listHighResolution":Z
    new-instance v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v24, 0x0

    invoke-direct/range {v2 .. v24}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    return-object v2

    .line 1711
    .end local v6    # "depthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v7    # "depthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v8    # "depthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v9    # "dynamicDepthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v10    # "dynamicDepthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v11    # "dynamicDepthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v12    # "heicConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v13    # "heicMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v14    # "heicStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v15    # "jpegRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v16    # "jpegRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v17    # "jpegRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v18    # "heicUltraHDRConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v19    # "heicUltraHDRMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v20    # "heicUltraHDRStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v21    # "highSpeedVideoConfigurations":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    .end local v22    # "inputOutputFormatsMap":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .end local v23    # "listHighResolution":Z
    :cond_e9
    :goto_e9
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o getTag(Ljava/lang/String;)I
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .line 2427
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getTag(Ljava/lang/String;J)I
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "vendorId"    # J

    .line 2439
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/hardware/camera2/params/TonemapCurve;"
        }
    .end annotation

    .line 1814
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1815
    .local v0, "red":[F
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 1816
    .local v1, "green":[F
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 1818
    .local v2, "blue":[F
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    .line 1819
    return-object v4

    .line 1822
    :cond_24
    if-eqz v0, :cond_31

    if-eqz v1, :cond_31

    if-nez v2, :cond_2b

    goto :goto_31

    .line 1826
    :cond_2b
    new-instance v3, Landroid/hardware/camera2/params/TonemapCurve;

    invoke-direct {v3, v0, v1, v2}, Landroid/hardware/camera2/params/TonemapCurve;-><init>([F[F[F)V

    .line 1827
    .local v3, "tc":Landroid/hardware/camera2/params/TonemapCurve;
    return-object v3

    .line 1823
    .end local v3    # "tc":Landroid/hardware/camera2/params/TonemapCurve;
    :cond_31
    :goto_31
    const-string v3, "CameraMetadataJV"

    const-string v5, "getTonemapCurve - missing tone curve components"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    return-object v4
.end method

.method private blacklist isBurstSupported()Z
    .registers 2

    .line 1512
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isCapabilitySupported(I)Z
    .registers 7
    .param p1, "capabilityRequested"    # I

    .line 1490
    const/4 v0, 0x0

    .line 1492
    .local v0, "ret":Z
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1493
    .local v1, "capabilities":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_16

    aget v4, v1, v3

    .line 1494
    .local v4, "capability":I
    if-ne p1, v4, :cond_13

    .line 1495
    const/4 v0, 0x1

    .line 1496
    goto :goto_16

    .line 1493
    .end local v4    # "capability":I
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1500
    :cond_16
    :goto_16
    return v0
.end method

.method private blacklist isCroppedRawSupported()Z
    .registers 9

    .line 1535
    const/4 v0, 0x0

    .line 1537
    .local v0, "ret":Z
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1538
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1539
    .local v1, "streamUseCases":[J
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 1540
    return v2

    .line 1542
    :cond_d
    array-length v3, v1

    :goto_e
    if-ge v2, v3, :cond_1d

    aget-wide v4, v1, v2

    .line 1543
    .local v4, "useCase":J
    const-wide/16 v6, 0x6

    cmp-long v6, v4, v6

    if-nez v6, :cond_1a

    .line 1544
    const/4 v2, 0x1

    return v2

    .line 1542
    .end local v4    # "useCase":J
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1548
    :cond_1d
    return v0
.end method

.method private blacklist isPreviewStabilizationSupported()Z
    .registers 7

    .line 1517
    const/4 v0, 0x0

    .line 1519
    .local v0, "ret":Z
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1520
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1521
    .local v1, "videoStabilizationModes":[I
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 1522
    return v2

    .line 1524
    :cond_d
    array-length v3, v1

    :goto_e
    if-ge v2, v3, :cond_1a

    aget v4, v1, v2

    .line 1525
    .local v4, "mode":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_17

    .line 1526
    const/4 v0, 0x1

    .line 1527
    goto :goto_1a

    .line 1524
    .end local v4    # "mode":I
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1531
    :cond_1a
    :goto_1a
    return v0
.end method

.method public static greylist-max-o move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2
    .param p0, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 414
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 415
    .local v0, "newObject":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 416
    return-object v0
.end method

.method private static native greylist-max-o nativeAllocate()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeAllocateCopy(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeClose(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeDump(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetAllVendorKeys(JLjava/lang/Class;)Ljava/util/ArrayList;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetBufferSize(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetEntryCount(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetTagFromKey(Ljava/lang/String;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-r nativeGetTagFromKeyLocal(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetTypeFromTag(IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-r nativeGetTypeFromTagLocal(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeIsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReadFromParcel(Landroid/os/Parcel;J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-r nativeReadValues(IJ)[B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSetVendorId(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetupGlobalVendorTagDescriptor()I
.end method

.method private static native blacklist nativeSwap(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeUpdate(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteToParcel(Landroid/os/Parcel;J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteValues(I[BJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private blacklist parseRecommendedConfigurations([Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    .registers 34
    .param p1, "configurations"    # [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .param p2, "fullMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .param p3, "isDepth"    # Z
    .param p7, "supportsPrivate"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/camera2/params/RecommendedStreamConfiguration;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;>;[Z)V"
        }
    .end annotation

    .line 1207
    .local p4, "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .local p5, "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local p6, "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1208
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1209
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1210
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_16
    if-ge v6, v5, :cond_33

    .line 1211
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 1216
    .end local v6    # "i":I
    :cond_33
    array-length v6, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_36
    if-ge v8, v6, :cond_131

    aget-object v9, v0, v8

    .line 1217
    .local v9, "c":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getWidth()I

    move-result v12

    .line 1218
    .local v12, "width":I
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getHeight()I

    move-result v13

    .line 1219
    .local v13, "height":I
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getFormat()I

    move-result v11

    .line 1221
    .local v11, "internalFormat":I
    if-eqz p3, :cond_4d

    invoke-static {v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->depthFormatToPublic(I)I

    move-result v10

    goto :goto_51

    .line 1222
    :cond_4d
    invoke-static {v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v10

    :goto_51
    nop

    .line 1223
    .local v10, "publicFormat":I
    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v12, v13}, Landroid/util/Size;-><init>(II)V

    .line 1224
    .local v14, "sz":Landroid/util/Size;
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->getUsecaseBitmap()I

    move-result v15

    .line 1226
    .local v15, "usecaseBitmap":I
    invoke-virtual {v9}, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->isInput()Z

    move-result v16

    if-nez v16, :cond_fb

    .line 1227
    const/16 v16, 0x0

    .line 1228
    .local v16, "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/16 v18, 0x0

    .line 1230
    .local v18, "stallDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    const/16 v19, 0x1

    new-instance v5, Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-direct {v5, v11, v12, v13, v7}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    .line 1233
    .local v5, "streamConfiguration":Landroid/hardware/camera2/params/StreamConfiguration;
    move-object v7, v14

    move/from16 v20, v15

    .end local v14    # "sz":Landroid/util/Size;
    .end local v15    # "usecaseBitmap":I
    .local v7, "sz":Landroid/util/Size;
    .local v20, "usecaseBitmap":I
    invoke-virtual {v1, v10, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v14

    .line 1234
    .local v14, "minFrameDuration":J
    const-wide/16 v21, 0x0

    cmp-long v23, v14, v21

    if-lez v23, :cond_8d

    .line 1235
    move/from16 v23, v10

    .end local v10    # "publicFormat":I
    .local v23, "publicFormat":I
    new-instance v10, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move/from16 v0, v20

    move/from16 v20, v6

    move v6, v0

    move-object v0, v7

    move/from16 v7, v23

    .end local v20    # "usecaseBitmap":I
    .end local v23    # "publicFormat":I
    .local v0, "sz":Landroid/util/Size;
    .local v6, "usecaseBitmap":I
    .local v7, "publicFormat":I
    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    move-wide/from16 v23, v14

    .end local v14    # "minFrameDuration":J
    .local v23, "minFrameDuration":J
    move-object/from16 v16, v10

    goto :goto_96

    .line 1234
    .end local v0    # "sz":Landroid/util/Size;
    .end local v6    # "usecaseBitmap":I
    .end local v23    # "minFrameDuration":J
    .local v7, "sz":Landroid/util/Size;
    .restart local v10    # "publicFormat":I
    .restart local v14    # "minFrameDuration":J
    .restart local v20    # "usecaseBitmap":I
    :cond_8d
    move/from16 v0, v20

    move/from16 v20, v6

    move v6, v0

    move-object v0, v7

    move v7, v10

    move-wide/from16 v23, v14

    .line 1239
    .end local v10    # "publicFormat":I
    .end local v14    # "minFrameDuration":J
    .end local v20    # "usecaseBitmap":I
    .restart local v0    # "sz":Landroid/util/Size;
    .restart local v6    # "usecaseBitmap":I
    .local v7, "publicFormat":I
    .restart local v23    # "minFrameDuration":J
    :goto_96
    invoke-virtual {v1, v7, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputStallDuration(ILandroid/util/Size;)J

    move-result-wide v14

    .line 1240
    .local v14, "stallDuration":J
    cmp-long v10, v14, v21

    if-lez v10, :cond_aa

    .line 1241
    new-instance v10, Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    .end local v16    # "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v0, "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v25, "sz":Landroid/util/Size;
    invoke-direct/range {v10 .. v15}, Landroid/hardware/camera2/params/StreamConfigurationDuration;-><init>(IIIJ)V

    move-object/from16 v18, v10

    goto :goto_b0

    .line 1240
    .end local v25    # "sz":Landroid/util/Size;
    .local v0, "sz":Landroid/util/Size;
    .restart local v16    # "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :cond_aa
    move-object/from16 v25, v0

    move-object/from16 v0, v16

    .end local v16    # "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v0, "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .restart local v25    # "sz":Landroid/util/Size;
    move-object/from16 v10, v18

    .line 1245
    .end local v18    # "stallDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .local v10, "stallDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    :goto_b0
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "i":I
    :goto_b4
    move/from16 v16, v8

    const/16 v8, 0x20

    if-ge v1, v8, :cond_fa

    .line 1246
    shl-int v17, v19, v1

    and-int v17, v6, v17

    if-eqz v17, :cond_f3

    .line 1247
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Ljava/util/ArrayList;

    .line 1248
    .local v8, "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    cmp-long v17, v23, v21

    if-lez v17, :cond_da

    .line 1251
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Ljava/util/ArrayList;

    .line 1252
    .local v3, "scd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    .end local v3    # "scd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    :cond_da
    cmp-long v3, v14, v21

    if-lez v3, :cond_e7

    .line 1256
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1257
    .local v3, "scs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    .end local v3    # "scs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    :cond_e7
    if-eqz p7, :cond_f3

    aget-boolean v3, p7, v1

    if-nez v3, :cond_f3

    const/16 v3, 0x22

    if-ne v7, v3, :cond_f3

    .line 1262
    aput-boolean v19, p7, v1

    .line 1245
    .end local v8    # "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    :cond_f3
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, p5

    move/from16 v8, v16

    goto :goto_b4

    .line 1266
    .end local v0    # "minDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v1    # "i":I
    .end local v5    # "streamConfiguration":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v10    # "stallDurationConfiguration":Landroid/hardware/camera2/params/StreamConfigurationDuration;
    .end local v14    # "stallDuration":J
    .end local v23    # "minFrameDuration":J
    :cond_fa
    goto :goto_11a

    .line 1267
    .end local v6    # "usecaseBitmap":I
    .end local v7    # "publicFormat":I
    .end local v25    # "sz":Landroid/util/Size;
    .local v10, "publicFormat":I
    .local v14, "sz":Landroid/util/Size;
    .restart local v15    # "usecaseBitmap":I
    :cond_fb
    move/from16 v20, v6

    move/from16 v16, v8

    move v7, v10

    move-object/from16 v25, v14

    move v6, v15

    const/16 v19, 0x1

    .end local v10    # "publicFormat":I
    .end local v14    # "sz":Landroid/util/Size;
    .end local v15    # "usecaseBitmap":I
    .restart local v6    # "usecaseBitmap":I
    .restart local v7    # "publicFormat":I
    .restart local v25    # "sz":Landroid/util/Size;
    const/16 v0, 0x10

    if-ne v6, v0, :cond_129

    .line 1272
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1274
    .local v0, "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    new-instance v1, Landroid/hardware/camera2/params/StreamConfiguration;

    move/from16 v3, v19

    invoke-direct {v1, v11, v12, v13, v3}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    .end local v0    # "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .end local v6    # "usecaseBitmap":I
    .end local v7    # "publicFormat":I
    .end local v9    # "c":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .end local v11    # "internalFormat":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v25    # "sz":Landroid/util/Size;
    :goto_11a
    add-int/lit8 v8, v16, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move/from16 v6, v20

    const/16 v5, 0x20

    const/4 v7, 0x0

    goto/16 :goto_36

    .line 1268
    .restart local v6    # "usecaseBitmap":I
    .restart local v7    # "publicFormat":I
    .restart local v9    # "c":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .restart local v11    # "internalFormat":I
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    .restart local v25    # "sz":Landroid/util/Size;
    :cond_129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Recommended input stream configurations should only be advertised in the ZSL use case!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    .end local v6    # "usecaseBitmap":I
    .end local v7    # "publicFormat":I
    .end local v9    # "c":Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .end local v11    # "internalFormat":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v25    # "sz":Landroid/util/Size;
    :cond_131
    return-void
.end method

.method private static greylist-max-o registerAllMarshalers()V
    .registers 4

    .line 2528
    const/16 v0, 0x15

    new-array v0, v0, [Landroid/hardware/camera2/marshal/MarshalQueryable;

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;-><init>()V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;-><init>()V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;-><init>()V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;-><init>()V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;-><init>()V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;-><init>()V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;-><init>()V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;-><init>()V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;-><init>()V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;-><init>()V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;-><init>()V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;-><init>()V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;-><init>()V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;-><init>()V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;-><init>()V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;-><init>()V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRecommendedStreamConfiguration;-><init>()V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;

    invoke-direct {v1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;-><init>()V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    .line 2559
    .local v0, "queryList":[Landroid/hardware/camera2/marshal/MarshalQueryable;
    array-length v1, v0

    :goto_ba
    if-ge v2, v1, :cond_c4

    aget-object v3, v0, v2

    .line 2560
    .local v3, "query":Landroid/hardware/camera2/marshal/MarshalQueryable;
    invoke-static {v3}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    .line 2559
    .end local v3    # "query":Landroid/hardware/camera2/marshal/MarshalQueryable;
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    .line 2565
    :cond_c4
    return-void
.end method

.method private blacklist setAERegions(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 2195
    .local p1, "aeRegions":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 2196
    const/4 v0, 0x0

    return v0

    .line 2198
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2199
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2200
    return v1
.end method

.method private blacklist setAFRegions(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 2183
    .local p1, "afRegions":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 2184
    const/4 v0, 0x0

    return v0

    .line 2186
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2190
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2191
    return v1
.end method

.method private blacklist setAWBRegions(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 2204
    .local p1, "awbRegions":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 2205
    const/4 v0, 0x0

    return v0

    .line 2207
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2208
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2209
    return v1
.end method

.method private greylist-max-o setAvailableFormats([I)Z
    .registers 7
    .param p1, "value"    # [I

    .line 2107
    move-object v0, p1

    .line 2108
    .local v0, "availableFormat":[I
    if-nez p1, :cond_5

    .line 2110
    const/4 v1, 0x0

    return v1

    .line 2113
    :cond_5
    array-length v1, v0

    new-array v1, v1, [I

    .line 2114
    .local v1, "newValues":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_1d

    .line 2115
    aget v3, v0, v2

    aput v3, v1, v2

    .line 2116
    aget v3, v0, v2

    const/16 v4, 0x100

    if-ne v3, v4, :cond_1a

    .line 2117
    const/16 v3, 0x21

    aput v3, v1, v2

    .line 2114
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2121
    .end local v2    # "i":I
    :cond_1d
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 2122
    const/4 v2, 0x1

    return v2
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1980
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 1981
    return-void
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1988
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 1989
    return-void
.end method

.method private greylist-max-o setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1984
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 1985
    return-void
.end method

.method private declared-synchronized greylist-max-o setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 1997
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1998
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    move-result v0

    .local v0, "tag":I
    goto :goto_19

    .line 2000
    .end local v0    # "tag":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_c
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(JLjava/lang/String;)I

    move-result v0

    .line 2001
    .restart local v0    # "tag":I
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->cacheTag(I)V

    .line 2003
    :goto_19
    if-nez p2, :cond_21

    .line 2005
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_45

    .line 2006
    monitor-exit p0

    return-void

    .line 2009
    :cond_21
    :try_start_21
    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v1, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(JI)I

    move-result v1

    .line 2010
    .local v1, "nativeType":I
    invoke-static {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v2

    .line 2011
    .local v2, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    invoke-virtual {v2, p2}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v3

    .line 2014
    .local v3, "size":I
    new-array v4, v3, [B

    .line 2016
    .local v4, "values":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2017
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p2, v5}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 2019
    invoke-virtual {p0, v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_45

    .line 2020
    monitor-exit p0

    return-void

    .line 1996
    .end local v0    # "tag":I
    .end local v1    # "nativeType":I
    .end local v2    # "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    .end local v3    # "size":I
    .end local v4    # "values":[B
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_45
    move-exception p1

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method

.method private greylist-max-o setFaceRectangles([Landroid/graphics/Rect;)Z
    .registers 10
    .param p1, "faceRects"    # [Landroid/graphics/Rect;

    .line 2138
    if-nez p1, :cond_4

    .line 2139
    const/4 v0, 0x0

    return v0

    .line 2142
    :cond_4
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 2143
    .local v0, "newFaceRects":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 2144
    new-instance v2, Landroid/graphics/Rect;

    aget-object v3, p1, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    aget-object v4, p1, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aget-object v6, p1, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    aget-object v6, p1, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, v0, v1

    .line 2143
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2151
    .end local v1    # "i":I
    :cond_2f
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 2152
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o setFaces([Landroid/hardware/camera2/params/Face;)Z
    .registers 15
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;

    .line 908
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 909
    return v0

    .line 912
    :cond_4
    array-length v1, p1

    .line 915
    .local v1, "numFaces":I
    const/4 v2, 0x1

    .line 916
    .local v2, "fullMode":Z
    array-length v3, p1

    move v4, v0

    :goto_8
    if-ge v4, v3, :cond_23

    aget-object v5, p1, v4

    .line 917
    .local v5, "face":Landroid/hardware/camera2/params/Face;
    if-nez v5, :cond_18

    .line 918
    add-int/lit8 v1, v1, -0x1

    .line 919
    const-string v6, "CameraMetadataJV"

    const-string v7, "setFaces - null face detected, skipping"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    goto :goto_20

    .line 923
    :cond_18
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_20

    .line 924
    const/4 v2, 0x0

    .line 916
    .end local v5    # "face":Landroid/hardware/camera2/params/Face;
    :cond_20
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 928
    :cond_23
    new-array v3, v1, [Landroid/graphics/Rect;

    .line 929
    .local v3, "faceRectangles":[Landroid/graphics/Rect;
    new-array v4, v1, [B

    .line 930
    .local v4, "faceScores":[B
    const/4 v5, 0x0

    .line 931
    .local v5, "faceIds":[I
    const/4 v6, 0x0

    .line 933
    .local v6, "faceLandmarks":[I
    if-eqz v2, :cond_31

    .line 934
    new-array v5, v1, [I

    .line 935
    mul-int/lit8 v7, v1, 0x6

    new-array v6, v7, [I

    .line 938
    :cond_31
    const/4 v7, 0x0

    .line 939
    .local v7, "i":I
    array-length v8, p1

    :goto_33
    if-ge v0, v8, :cond_a3

    aget-object v9, p1, v0

    .line 940
    .local v9, "face":Landroid/hardware/camera2/params/Face;
    if-nez v9, :cond_3a

    .line 941
    goto :goto_a0

    .line 944
    :cond_3a
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    aput-object v10, v3, v7

    .line 945
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v4, v7

    .line 947
    if-eqz v2, :cond_9e

    .line 948
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v10

    aput v10, v5, v7

    .line 950
    const/4 v10, 0x0

    .line 952
    .local v10, "j":I
    mul-int/lit8 v11, v7, 0x6

    add-int/lit8 v12, v10, 0x1

    .end local v10    # "j":I
    .local v12, "j":I
    add-int/2addr v11, v10

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    aput v10, v6, v11

    .line 953
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .local v11, "j":I
    add-int/2addr v10, v12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v6, v10

    .line 954
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    add-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    aput v11, v6, v10

    .line 955
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    add-int/2addr v10, v12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v6, v10

    .line 956
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "j":I
    .restart local v12    # "j":I
    add-int/2addr v10, v11

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    aput v11, v6, v10

    .line 957
    mul-int/lit8 v10, v7, 0x6

    add-int/lit8 v11, v12, 0x1

    .end local v12    # "j":I
    .restart local v11    # "j":I
    add-int/2addr v10, v12

    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    aput v12, v6, v10

    .line 960
    .end local v11    # "j":I
    :cond_9e
    add-int/lit8 v7, v7, 0x1

    .line 939
    .end local v9    # "face":Landroid/hardware/camera2/params/Face;
    :goto_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 963
    :cond_a3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 964
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 965
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 966
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 968
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o setGpsLocation(Landroid/location/Location;)Z
    .registers 10
    .param p1, "l"    # Landroid/location/Location;

    .line 1173
    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 1177
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1178
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1179
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1180
    return v0

    .line 1183
    :cond_14
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    const/4 v7, 0x3

    new-array v7, v7, [D

    aput-wide v1, v7, v0

    const/4 v0, 0x1

    aput-wide v3, v7, v0

    const/4 v1, 0x2

    aput-wide v5, v7, v1

    .line 1184
    .local v7, "coords":[D
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, "processMethod":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1188
    .local v2, "timestamp":J
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1189
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v4, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1191
    if-nez v1, :cond_52

    .line 1192
    const-string v4, "CameraMetadataJV"

    const-string v5, "setGpsLocation - No process method, Location is not from a GPS or NETWORKprovider"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1195
    :cond_52
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v4, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1197
    :goto_57
    return v0
.end method

.method private blacklist setLensIntrinsicsSamples([Landroid/hardware/camera2/params/LensIntrinsicsSample;)Z
    .registers 9
    .param p1, "samples"    # [Landroid/hardware/camera2/params/LensIntrinsicsSample;

    .line 1875
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1876
    return v0

    .line 1879
    :cond_4
    array-length v1, p1

    new-array v1, v1, [J

    .line 1880
    .local v1, "tsArray":[J
    array-length v2, p1

    const/4 v3, 0x5

    mul-int/2addr v2, v3

    new-array v2, v2, [F

    .line 1881
    .local v2, "intrinsicsArray":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    array-length v5, p1

    if-ge v4, v5, :cond_26

    .line 1882
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/LensIntrinsicsSample;->getTimestampNanos()J

    move-result-wide v5

    aput-wide v5, v1, v4

    .line 1883
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/LensIntrinsicsSample;->getLensIntrinsics()[F

    move-result-object v5

    mul-int/lit8 v6, v4, 0x5

    invoke-static {v5, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1881
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1886
    .end local v4    # "i":I
    :cond_26
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSIC_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1887
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_INTRINSIC_TIMESTAMPS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1889
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist setLensShadingMap(Landroid/hardware/camera2/params/LensShadingMap;)Z
    .registers 6
    .param p1, "lensShadingMap"    # Landroid/hardware/camera2/params/LensShadingMap;

    .line 1080
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1081
    return v0

    .line 1083
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/camera2/params/LensShadingMap;->getGainFactorCount()I

    move-result v1

    new-array v1, v1, [F

    .line 1084
    .local v1, "lsmArray":[F
    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/params/LensShadingMap;->copyGainFactors([FI)V

    .line 1085
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1087
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/LensShadingMap;->getRowCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/LensShadingMap;->getColumnCount()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1088
    .local v0, "s":Landroid/util/Size;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 1089
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist setScalerCropRegion(Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "cropRegion"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 2174
    if-nez p1, :cond_4

    .line 2175
    const/4 v0, 0x0

    return v0

    .line 2177
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION_SET:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2178
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2179
    return v1
.end method

.method private greylist-max-o setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z
    .registers 7
    .param p1, "tc"    # Landroid/hardware/camera2/params/TonemapCurve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ")Z"
        }
    .end annotation

    .line 2156
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2157
    return v0

    .line 2160
    :cond_4
    const/4 v1, 0x3

    new-array v1, v1, [[F

    .line 2161
    .local v1, "curve":[[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x2

    if-gt v2, v3, :cond_1d

    .line 2162
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    move-result v3

    .line 2163
    .local v3, "pointCount":I
    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [F

    aput-object v4, v1, v2

    .line 2164
    aget-object v4, v1, v2

    invoke-virtual {p1, v2, v4, v0}, Landroid/hardware/camera2/params/TonemapCurve;->copyColorCurve(I[FI)V

    .line 2161
    .end local v3    # "pointCount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2166
    .end local v2    # "i":I
    :cond_1d
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v0, v1, v0

    invoke-direct {p0, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2167
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    aget-object v4, v1, v2

    invoke-direct {p0, v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2168
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    aget-object v3, v1, v3

    invoke-direct {p0, v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2170
    return v2
.end method

.method public static greylist-max-o setupGlobalVendorTagDescriptor()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 508
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    move-result v0

    .line 509
    .local v0, "err":I
    if-nez v0, :cond_7

    .line 512
    return-void

    .line 510
    :cond_7
    new-instance v1, Landroid/os/ServiceSpecificException;

    const-string v2, "Failure to set up global vendor tags"

    invoke-direct {v1, v0, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "provider"    # Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 346
    return-object v0

    .line 348
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2c

    :cond_b
    goto :goto_20

    :sswitch_c
    const-string v1, "network"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_21

    :sswitch_16
    const-string v1, "gps"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_21

    :goto_20
    const/4 v1, -0x1

    :goto_21
    packed-switch v1, :pswitch_data_36

    .line 354
    return-object v0

    .line 352
    :pswitch_25
    const-string v0, "CELLID"

    return-object v0

    .line 350
    :pswitch_28
    const-string v0, "GPS"

    return-object v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x190aa -> :sswitch_16
        0x6de15a2e -> :sswitch_c
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method private static greylist-max-o translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "process"    # Ljava/lang/String;

    .line 359
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 360
    return-object v0

    .line 362
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2c

    :cond_b
    goto :goto_20

    :sswitch_c
    const-string v1, "CELLID"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_21

    :sswitch_16
    const-string v1, "GPS"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_21

    :goto_20
    const/4 v1, -0x1

    :goto_21
    packed-switch v1, :pswitch_data_36

    .line 368
    return-object v0

    .line 366
    :pswitch_25
    const-string v0, "network"

    return-object v0

    .line 364
    :pswitch_28
    const-string v0, "gps"

    return-object v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x1148a -> :sswitch_16
        0x7644b9fd -> :sswitch_c
    .end sparse-switch

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method public static blacklist update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 6
    .param p0, "dst"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p1, "src"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 429
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeUpdate(JJ)V

    .line 430
    return-void
.end method

.method private declared-synchronized blacklist updateNativeAllocation()V
    .registers 9

    monitor-enter p0

    .line 2213
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetBufferSize(J)J

    move-result-wide v0

    .line 2215
    .local v0, "currentBufferSize":J
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2f

    .line 2216
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    .line 2217
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-wide v6, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    invoke-virtual {v2, v6, v7}, Ldalvik/system/VMRuntime;->registerNativeFree(J)V

    .line 2220
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_1e
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    .line 2222
    iget-wide v2, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    .line 2223
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mBufferSize:J

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->registerNativeAllocation(J)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 2226
    :cond_2f
    monitor-exit p0

    return-void

    .line 2212
    .end local v0    # "currentBufferSize":J
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized greylist-max-o dumpToLog()V
    .registers 4

    monitor-enter p0

    .line 2496
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeDump(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    .line 2499
    goto :goto_11

    .line 2495
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_7
    move-exception v0

    goto :goto_13

    .line 2497
    :catch_9
    move-exception v0

    .line 2498
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    const-string v1, "CameraMetadataJV"

    const-string v2, "Dump logging failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_7

    .line 2500
    .end local v0    # "e":Ljava/io/IOException;
    :goto_11
    monitor-exit p0

    return-void

    .line 2495
    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_7

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2505
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 2507
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2508
    nop

    .line 2509
    return-void

    .line 2507
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2508
    throw v0
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 461
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 475
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 468
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 485
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const-string v0, "key must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/GetCommand;

    .line 489
    .local v0, "g":Landroid/hardware/camera2/impl/GetCommand;
    if-eqz v0, :cond_14

    .line 490
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/impl/GetCommand;->getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 492
    :cond_14
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized greylist-max-o getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    monitor-enter p0

    .line 2412
    if-eqz p1, :cond_d

    .line 2415
    :try_start_3
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetAllVendorKeys(JLjava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 2411
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p1    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    :catchall_b
    move-exception p1

    goto :goto_13

    .line 2413
    .restart local p1    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2411
    .end local p1    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_b

    throw p1
.end method

.method public declared-synchronized greylist-max-o getEntryCount()I
    .registers 3

    monitor-enter p0

    .line 2384
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetEntryCount(J)I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 2384
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public blacklist getMetadataPtr()J
    .registers 3

    .line 2403
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    return-wide v0
.end method

.method public blacklist getMultiResolutionStreamConfigurationMap()Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    .registers 2

    .line 2289
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    return-object v0
.end method

.method public blacklist getPhysicalCameraIds()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2588
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2589
    .local v0, "availableCapabilities":[I
    if-eqz v0, :cond_45

    .line 2594
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2596
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 2598
    :cond_17
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LOGICAL_MULTI_CAMERA_PHYSICAL_IDS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 2600
    .local v1, "physicalCamIds":[B
    const/4 v2, 0x0

    .line 2602
    .local v2, "physicalCamIdString":Ljava/lang/String;
    :try_start_20
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_27} :catch_3c

    .line 2605
    .end local v2    # "physicalCamIdString":Ljava/lang/String;
    .local v3, "physicalCamIdString":Ljava/lang/String;
    nop

    .line 2606
    const-string v2, "\u0000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2608
    .local v2, "physicalCameraIdArray":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    .line 2609
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2608
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 2603
    .end local v3    # "physicalCamIdString":Ljava/lang/String;
    .local v2, "physicalCamIdString":Ljava/lang/String;
    :catch_3c
    move-exception v3

    .line 2604
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "android.logicalCam.physicalIds must be UTF-8 string"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 2590
    .end local v1    # "physicalCamIds":[B
    .end local v2    # "physicalCamIdString":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_45
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "android.request.availableCapabilities must be non-null in the characteristics"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public blacklist getRecommendedStreamConfigurations()Ljava/util/ArrayList;
    .registers 83
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;",
            ">;"
        }
    .end annotation

    .line 1319
    move-object/from16 v1, p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    .line 1321
    .local v2, "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_RECOMMENDED_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    .line 1323
    .local v9, "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    const/4 v10, 0x0

    if-nez v2, :cond_1a

    if-nez v9, :cond_1a

    .line 1324
    return-object v10

    .line 1327
    :cond_1a
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v3

    .line 1328
    .local v3, "fullMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1331
    .local v11, "recommendedConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v5, "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v6, "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v7, "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    const/16 v0, 0x20

    new-array v8, v0, [Z

    .line 1340
    .local v8, "supportsPrivate":[Z
    const-string v12, "CameraMetadataJV"

    if-eqz v2, :cond_51

    .line 1341
    const/4 v4, 0x0

    :try_start_3c
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->parseRecommendedConfigurations([Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3f} :catch_45

    move-object v13, v2

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v8

    .end local v2    # "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .end local v5    # "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .end local v6    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v8    # "supportsPrivate":[Z
    .local v13, "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .local v14, "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .local v15, "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v16, "supportsPrivate":[Z
    goto :goto_56

    .line 1344
    .end local v13    # "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .end local v14    # "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .end local v15    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v16    # "supportsPrivate":[Z
    .restart local v2    # "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .restart local v5    # "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .restart local v6    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v8    # "supportsPrivate":[Z
    :catch_45
    move-exception v0

    move-object v13, v2

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v8

    .line 1345
    .end local v2    # "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .end local v5    # "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .end local v6    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v8    # "supportsPrivate":[Z
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .restart local v14    # "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .restart local v15    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v16    # "supportsPrivate":[Z
    const-string v1, "Failed parsing the recommended stream configurations!"

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-object v10

    .line 1340
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .end local v14    # "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .end local v15    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v16    # "supportsPrivate":[Z
    .restart local v2    # "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .restart local v5    # "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .restart local v6    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v8    # "supportsPrivate":[Z
    :cond_51
    move-object v13, v2

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v8

    .line 1347
    .end local v2    # "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .end local v5    # "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .end local v6    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .end local v8    # "supportsPrivate":[Z
    .restart local v13    # "configurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .restart local v14    # "streamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    .restart local v15    # "streamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v16    # "supportsPrivate":[Z
    :goto_56
    nop

    .line 1349
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    .local v5, "depthStreamConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    .local v6, "depthStreamDurationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    .local v1, "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    if-eqz v9, :cond_7a

    .line 1357
    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v2, v9

    move-object v9, v7

    move-object v7, v1

    move-object/from16 v1, p0

    .end local v1    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v2, "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .local v7, "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v9, "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    :try_start_6f
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->parseRecommendedConfigurations([Landroid/hardware/camera2/params/RecommendedStreamConfiguration;Landroid/hardware/camera2/params/StreamConfigurationMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_72} :catch_73

    .line 1363
    goto :goto_7f

    .line 1360
    :catch_73
    move-exception v0

    .line 1361
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "Failed parsing the recommended depth stream configurations!"

    invoke-static {v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return-object v10

    .line 1355
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .restart local v1    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v7, "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v9, "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    :cond_7a
    move-object v2, v9

    move-object v9, v7

    move-object v7, v1

    move-object/from16 v1, p0

    .line 1366
    .end local v1    # "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .restart local v2    # "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .local v7, "depthStreamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    .local v9, "streamStallList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;>;"
    :goto_7f
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_RECOMMENDED_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v37, v4

    check-cast v37, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 1368
    .local v37, "inputOutputFormatsMap":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v57, v4

    check-cast v57, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 1370
    .local v57, "highSpeedVideoConfigurations":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isBurstSupported()Z

    move-result v79

    .line 1371
    .local v79, "listHighResolution":Z
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1373
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9b
    if-ge v4, v0, :cond_207

    .line 1374
    new-instance v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;

    invoke-direct {v8, v1, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative-IA;)V

    .line 1375
    .local v8, "scData":Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    if-eqz v13, :cond_bd

    .line 1376
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 1377
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Ljava/util/ArrayList;

    .line 1376
    invoke-virtual {v1, v12, v0, v10, v8}, Landroid/hardware/camera2/impl/CameraMetadataNative;->initializeStreamConfigurationData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;)V

    .line 1380
    :cond_bd
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;

    const/4 v10, 0x0

    invoke-direct {v0, v1, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative-IA;)V

    .line 1381
    .local v0, "depthScData":Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    if-eqz v2, :cond_df

    .line 1382
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1383
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v81, v2

    .end local v2    # "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .local v81, "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    move-object/from16 v2, v17

    check-cast v2, Ljava/util/ArrayList;

    .line 1382
    invoke-virtual {v1, v10, v12, v2, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->initializeStreamConfigurationData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;)V

    goto :goto_e1

    .line 1381
    .end local v81    # "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .restart local v2    # "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    :cond_df
    move-object/from16 v81, v2

    .line 1386
    .end local v2    # "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .restart local v81    # "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    :goto_e1
    iget-object v2, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v2, :cond_ea

    iget-object v2, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v2, v2

    if-nez v2, :cond_f5

    :cond_ea
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v2, :cond_1f8

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    array-length v2, v2

    if-nez v2, :cond_f5

    goto/16 :goto_1f8

    .line 1396
    :cond_f5
    const/4 v2, 0x0

    .line 1397
    .local v2, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    packed-switch v4, :pswitch_data_208

    .line 1462
    :pswitch_f9
    new-instance v58, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v10, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v12, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v59, v1

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v62, v1

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v63, v1

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v78, 0x0

    aget-boolean v80, v16, v4

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v64, v1

    move-object/from16 v60, v10

    move-object/from16 v61, v12

    invoke-direct/range {v58 .. v80}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    move-object/from16 v17, v58

    move-object/from16 v1, v17

    .end local v2    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .local v17, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    goto/16 :goto_1ec

    .line 1442
    .end local v17    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v2    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :pswitch_13a
    new-instance v17, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object v10, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v12, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v36, 0x0

    aget-boolean v39, v16, v4

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v23, v1

    move-object/from16 v18, v10

    move-object/from16 v19, v12

    move/from16 v38, v79

    .end local v79    # "listHighResolution":Z
    .local v38, "listHighResolution":Z
    invoke-direct/range {v17 .. v39}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .line 1460
    .end local v2    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v38    # "listHighResolution":Z
    .restart local v17    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v79    # "listHighResolution":Z
    move-object/from16 v1, v17

    goto/16 :goto_1ec

    .line 1422
    .end local v17    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v2    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :pswitch_179
    new-instance v38, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v10, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v12, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v58, 0x0

    aget-boolean v60, v16, v4

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v39, v1

    move-object/from16 v40, v10

    move-object/from16 v41, v12

    move/from16 v59, v79

    .end local v79    # "listHighResolution":Z
    .local v59, "listHighResolution":Z
    invoke-direct/range {v38 .. v60}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    .end local v59    # "listHighResolution":Z
    .restart local v79    # "listHighResolution":Z
    move-object/from16 v17, v38

    .line 1440
    .end local v2    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v17    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    move-object/from16 v1, v17

    goto :goto_1ec

    .line 1402
    .end local v17    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v2    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :pswitch_1b3
    new-instance v58, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object v1, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    iget-object v10, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iget-object v12, v8, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    const/16 v78, 0x0

    aget-boolean v80, v16, v4

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    move-object/from16 v59, v1

    move-object/from16 v60, v10

    move-object/from16 v61, v12

    invoke-direct/range {v58 .. v80}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;ZZ)V

    move-object/from16 v17, v58

    .line 1420
    .end local v2    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v17    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    move-object/from16 v1, v17

    .line 1482
    .end local v17    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .local v1, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :goto_1ec
    new-instance v2, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;

    aget-boolean v10, v16, v4

    invoke-direct {v2, v1, v4, v10}, Landroid/hardware/camera2/params/RecommendedStreamConfigurationMap;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;IZ)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    goto :goto_1fd

    .line 1390
    .end local v1    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_1f8
    :goto_1f8
    const/4 v10, 0x0

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    nop

    .line 1373
    .end local v0    # "depthScData":Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    .end local v8    # "scData":Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    :goto_1fd
    add-int/lit8 v4, v4, 0x1

    const/16 v0, 0x20

    move-object/from16 v1, p0

    move-object/from16 v2, v81

    goto/16 :goto_9b

    .line 1486
    .end local v4    # "i":I
    .end local v81    # "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    .local v2, "depthConfigurations":[Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
    :cond_207
    return-object v11

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_1b3
        :pswitch_179
        :pswitch_1b3
        :pswitch_f9
        :pswitch_13a
        :pswitch_1b3
        :pswitch_1b3
    .end packed-switch
.end method

.method public blacklist initializeStreamConfigurationData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;)V
    .registers 7
    .param p4, "scData"    # Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;",
            ")V"
        }
    .end annotation

    .line 1289
    .local p1, "sc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .local p2, "scd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    .local p3, "scs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/StreamConfigurationDuration;>;"
    if-eqz p4, :cond_57

    if-nez p1, :cond_5

    goto :goto_57

    .line 1293
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1294
    iget-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfiguration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->streamConfigurationArray:[Landroid/hardware/camera2/params/StreamConfiguration;

    .line 1296
    const/4 v0, 0x0

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1297
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1298
    iget-object v1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_37

    .line 1300
    :cond_33
    new-array v1, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v1, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->minDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1303
    :goto_37
    if-eqz p3, :cond_52

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    .line 1304
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1305
    iget-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    goto :goto_56

    .line 1307
    :cond_52
    new-array v0, v0, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    iput-object v0, p4, Landroid/hardware/camera2/impl/CameraMetadataNative$StreamConfigurationData;->stallDurationArray:[Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 1309
    :goto_56
    return-void

    .line 1290
    :cond_57
    :goto_57
    return-void
.end method

.method public declared-synchronized greylist-max-o isEmpty()Z
    .registers 3

    monitor-enter p0

    .line 2393
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeIsEmpty(J)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 2393
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public blacklist isUltraHighResolutionSensor()Z
    .registers 2

    .line 1507
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isCapabilitySupported(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    monitor-enter p0

    .line 496
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadFromParcel(Landroid/os/Parcel;J)V

    .line 497
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 498
    monitor-exit p0

    return-void

    .line 495
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p1    # "in":Landroid/os/Parcel;
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized greylist-max-o readValues(I)[B
    .registers 4
    .param p1, "tag"    # I

    monitor-enter p0

    .line 2483
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(IJ)[B

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 2483
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p1    # "tag":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 551
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 543
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 544
    return-void
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 547
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 548
    return-void
.end method

.method public greylist-max-o set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 533
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/SetCommand;

    .line 534
    .local v0, "s":Landroid/hardware/camera2/impl/SetCommand;
    if-eqz v0, :cond_e

    .line 535
    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/impl/SetCommand;->setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V

    .line 536
    return-void

    .line 539
    :cond_e
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    .line 540
    return-void
.end method

.method public blacklist setCameraId(I)V
    .registers 2
    .param p1, "cameraId"    # I

    .line 2242
    iput p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2243
    return-void
.end method

.method public blacklist setDisplaySize(Landroid/util/Size;)V
    .registers 2
    .param p1, "displaySize"    # Landroid/util/Size;

    .line 2265
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2266
    return-void
.end method

.method public blacklist setHasMandatoryConcurrentStreams(Z)V
    .registers 2
    .param p1, "hasMandatoryConcurrentStreams"    # Z

    .line 2254
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2255
    return-void
.end method

.method public blacklist setMultiResolutionStreamConfigurationMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 2277
    .local p1, "multiResolutionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    new-instance v0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 2279
    return-void
.end method

.method public declared-synchronized blacklist setVendorId(J)V
    .registers 5
    .param p1, "vendorId"    # J

    monitor-enter p0

    .line 2377
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetVendorId(JJ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2378
    monitor-exit p0

    return-void

    .line 2376
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p1    # "vendorId":J
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized greylist-max-o swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 6
    .param p1, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    monitor-enter p0

    .line 2362
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    iget-wide v2, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSwap(JJ)V

    .line 2363
    iget v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    iput v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mCameraId:I

    .line 2364
    iget-boolean v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mHasMandatoryConcurrentStreams:Z

    .line 2365
    iget-object v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mDisplaySize:Landroid/util/Size;

    .line 2366
    iget-object v0, p1, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMultiResolutionStreamConfigurationMap:Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 2367
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V

    .line 2368
    invoke-direct {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->updateNativeAllocation()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 2369
    monitor-exit p0

    return-void

    .line 2361
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p1    # "other":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public declared-synchronized whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    monitor-enter p0

    .line 454
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteToParcel(Landroid/os/Parcel;J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 455
    monitor-exit p0

    return-void

    .line 453
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p1    # "dest":Landroid/os/Parcel;
    .end local p2    # "flags":I
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized greylist-max-o writeValues(I[B)V
    .registers 5
    .param p1, "tag"    # I
    .param p2, "src"    # [B

    monitor-enter p0

    .line 2467
    :try_start_1
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    invoke-static {p1, p2, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteValues(I[BJ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2468
    monitor-exit p0

    return-void

    .line 2466
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p1    # "tag":I
    .end local p2    # "src":[B
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method
