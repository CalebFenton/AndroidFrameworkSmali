.class public Landroid/hardware/camera2/impl/CameraMetadataNative;
.super Ljava/lang/Object;
.source "CameraMetadataNative.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraMetadataNative$10;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$11;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$12;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$13;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$14;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$15;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$16;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$17;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$18;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$19;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$1;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$2;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$3;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$4;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$5;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$6;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$7;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$8;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$9;,
        Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    }
.end annotation


# static fields
.field private static final CELLID_PROCESS:Ljava/lang/String; = "CELLID"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final FACE_LANDMARK_SIZE:I = 0x6

.field private static final GPS_PROCESS:Ljava/lang/String; = "GPS"

.field public static final NATIVE_JPEG_FORMAT:I = 0x21

.field public static final NUM_TYPES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CameraMetadataJV"

.field public static final TYPE_BYTE:I = 0x0

.field public static final TYPE_DOUBLE:I = 0x4

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_INT32:I = 0x1

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_RATIONAL:I = 0x5

.field private static final sGetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<*>;",
            "Landroid/hardware/camera2/impl/GetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<*>;",
            "Landroid/hardware/camera2/impl/SetCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMetadataPtr:J


# direct methods
.method static synthetic -wrap0(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/graphics/Rect;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaceRectangles()[Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/Face;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaces()[Landroid/hardware/camera2/params/Face;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/params/TonemapCurve;)Z
    .locals 1
    .param p1, "tc"    # Landroid/hardware/camera2/params/TonemapCurve;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(Landroid/hardware/camera2/impl/CameraMetadataNative;)[I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAvailableFormats()[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap12(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap13(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/LensShadingMap;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap3(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/TonemapCurve;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/location/Location;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getGpsLocation()Landroid/location/Location;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap6(Landroid/hardware/camera2/impl/CameraMetadataNative;[I)Z
    .locals 1
    .param p1, "value"    # [I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAvailableFormats([I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "faceRects"    # [Landroid/graphics/Rect;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaceRectangles([Landroid/graphics/Rect;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/hardware/camera2/params/Face;)Z
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaces([Landroid/hardware/camera2/params/Face;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/location/Location;)Z
    .locals 1
    .param p1, "l"    # Landroid/location/Location;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setGpsLocation(Landroid/location/Location;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 297
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;-><init>()V

    #@5
    .line 296
    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 480
    new-instance v0, Ljava/util/HashMap;

    #@9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@c
    .line 479
    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@e
    .line 482
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@10
    .line 483
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@12
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@15
    move-result-object v1

    #@16
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$2;

    #@18
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$2;-><init>()V

    #@1b
    .line 482
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 490
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@20
    .line 491
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    #@22
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@25
    move-result-object v1

    #@26
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$3;

    #@28
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$3;-><init>()V

    #@2b
    .line 490
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 498
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@30
    .line 499
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    #@32
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@35
    move-result-object v1

    #@36
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$4;

    #@38
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$4;-><init>()V

    #@3b
    .line 498
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    .line 506
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@40
    .line 507
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@42
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@45
    move-result-object v1

    #@46
    .line 508
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$5;

    #@48
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$5;-><init>()V

    #@4b
    .line 506
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 515
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@50
    .line 516
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@52
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@55
    move-result-object v1

    #@56
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$6;

    #@58
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$6;-><init>()V

    #@5b
    .line 515
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 523
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@60
    .line 524
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@62
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@65
    move-result-object v1

    #@66
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$7;

    #@68
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$7;-><init>()V

    #@6b
    .line 523
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 531
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@70
    .line 532
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@72
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@75
    move-result-object v1

    #@76
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$8;

    #@78
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$8;-><init>()V

    #@7b
    .line 531
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 539
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@80
    .line 540
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@82
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@85
    move-result-object v1

    #@86
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$9;

    #@88
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$9;-><init>()V

    #@8b
    .line 539
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    .line 547
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@90
    .line 548
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@92
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@95
    move-result-object v1

    #@96
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$10;

    #@98
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$10;-><init>()V

    #@9b
    .line 547
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 555
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@a0
    .line 556
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@a2
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@a5
    move-result-object v1

    #@a6
    .line 557
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$11;

    #@a8
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$11;-><init>()V

    #@ab
    .line 555
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ae
    .line 564
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@b0
    .line 565
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@b2
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@b5
    move-result-object v1

    #@b6
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$12;

    #@b8
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$12;-><init>()V

    #@bb
    .line 564
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 572
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@c0
    .line 573
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    #@c2
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@c5
    move-result-object v1

    #@c6
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$13;

    #@c8
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$13;-><init>()V

    #@cb
    .line 572
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    .line 580
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@d0
    .line 581
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    #@d2
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@d5
    move-result-object v1

    #@d6
    .line 582
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$14;

    #@d8
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$14;-><init>()V

    #@db
    .line 580
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@de
    .line 971
    new-instance v0, Ljava/util/HashMap;

    #@e0
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e3
    .line 970
    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    #@e5
    .line 973
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    #@e7
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@e9
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@ec
    move-result-object v1

    #@ed
    .line 974
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$15;

    #@ef
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$15;-><init>()V

    #@f2
    .line 973
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 980
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    #@f7
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    #@f9
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@fc
    move-result-object v1

    #@fd
    .line 981
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$16;

    #@ff
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$16;-><init>()V

    #@102
    .line 980
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@105
    .line 987
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    #@107
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    #@109
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@10c
    move-result-object v1

    #@10d
    .line 988
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$17;

    #@10f
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$17;-><init>()V

    #@112
    .line 987
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@115
    .line 994
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    #@117
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@119
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@11c
    move-result-object v1

    #@11d
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$18;

    #@11f
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$18;-><init>()V

    #@122
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@125
    .line 1000
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    #@127
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    #@129
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@12c
    move-result-object v1

    #@12d
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$19;

    #@12f
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$19;-><init>()V

    #@132
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@135
    .line 1293
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClassInit()V

    #@138
    .line 1294
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerAllMarshalers()V

    #@13b
    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 265
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocate()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    #@9
    .line 266
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    #@b
    const-wide/16 v2, 0x0

    #@d
    cmp-long v0, v0, v2

    #@f
    if-nez v0, :cond_0

    #@11
    .line 267
    new-instance v0, Ljava/lang/OutOfMemoryError;

    #@13
    const-string/jumbo v1, "Failed to allocate native CameraMetadata"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 263
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 4
    .param p1, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@0
    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 276
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    #@9
    .line 277
    iget-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    #@b
    const-wide/16 v2, 0x0

    #@d
    cmp-long v0, v0, v2

    #@f
    if-nez v0, :cond_0

    #@11
    .line 278
    new-instance v0, Ljava/lang/OutOfMemoryError;

    #@13
    const-string/jumbo v1, "Failed to allocate native CameraMetadata"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 274
    :cond_0
    return-void
.end method

.method private static varargs areValuesAllNull([Ljava/lang/Object;)Z
    .locals 4
    .param p0, "objs"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1283
    array-length v3, p0

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget-object v0, p0, v1

    #@7
    .line 1284
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@9
    return v2

    #@a
    .line 1283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@c
    goto :goto_0

    #@d
    .line 1286
    .end local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x1

    #@e
    return v1
.end method

.method private close()V
    .locals 2

    #@0
    .prologue
    .line 449
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClose()V

    #@3
    .line 450
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    #@7
    .line 447
    return-void
.end method

.method public static getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)",
            "Ljava/util/ArrayList",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1136
    .local p0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    if-nez p0, :cond_0

    #@2
    .line 1137
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1139
    :cond_0
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private getAvailableFormats()[I
    .locals 4

    #@0
    .prologue
    .line 592
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@2
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [I

    #@8
    .line 593
    .local v0, "availableFormats":[I
    if-eqz v0, :cond_1

    #@a
    .line 594
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@c
    if-ge v1, v2, :cond_1

    #@e
    .line 596
    aget v2, v0, v1

    #@10
    const/16 v3, 0x21

    #@12
    if-ne v2, v3, :cond_0

    #@14
    .line 597
    const/16 v2, 0x100

    #@16
    aput v2, v0, v1

    #@18
    .line 594
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 602
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 454
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
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
    .line 462
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 458
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 466
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    #@4
    move-result v2

    #@5
    .line 467
    .local v2, "tag":I
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    #@8
    move-result-object v3

    #@9
    .line 468
    .local v3, "values":[B
    if-nez v3, :cond_0

    #@b
    .line 469
    return-object v4

    #@c
    .line 472
    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Landroid/hardware/camera2/marshal/Marshaler;

    #@f
    move-result-object v1

    #@10
    .line 473
    .local v1, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@13
    move-result-object v4

    #@14
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@1b
    move-result-object v0

    #@1c
    .line 474
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    return-object v4
.end method

.method private getFaceRectangles()[Landroid/graphics/Rect;
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 760
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    #@3
    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [Landroid/graphics/Rect;

    #@9
    .line 761
    .local v0, "faceRectangles":[Landroid/graphics/Rect;
    if-nez v0, :cond_0

    #@b
    return-object v4

    #@c
    .line 763
    :cond_0
    array-length v3, v0

    #@d
    new-array v1, v3, [Landroid/graphics/Rect;

    #@f
    .line 764
    .local v1, "fixedFaceRectangles":[Landroid/graphics/Rect;
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    #@11
    if-ge v2, v3, :cond_1

    #@13
    .line 765
    new-instance v3, Landroid/graphics/Rect;

    #@15
    .line 766
    aget-object v4, v0, v2

    #@17
    iget v4, v4, Landroid/graphics/Rect;->left:I

    #@19
    .line 767
    aget-object v5, v0, v2

    #@1b
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@1d
    .line 768
    aget-object v6, v0, v2

    #@1f
    iget v6, v6, Landroid/graphics/Rect;->right:I

    #@21
    aget-object v7, v0, v2

    #@23
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@25
    sub-int/2addr v6, v7

    #@26
    .line 769
    aget-object v7, v0, v2

    #@28
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@2a
    aget-object v8, v0, v2

    #@2c
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@2e
    sub-int/2addr v7, v8

    #@2f
    .line 765
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    #@32
    aput-object v3, v1, v2

    #@34
    .line 764
    add-int/lit8 v2, v2, 0x1

    #@36
    goto :goto_0

    #@37
    .line 771
    :cond_1
    return-object v1
.end method

.method private getFaces()[Landroid/hardware/camera2/params/Face;
    .locals 19

    #@0
    .prologue
    .line 670
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    #@2
    move-object/from16 v0, p0

    #@4
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@7
    move-result-object v8

    #@8
    check-cast v8, Ljava/lang/Integer;

    #@a
    .line 671
    .local v8, "faceDetectMode":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    #@c
    move-object/from16 v0, p0

    #@e
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@11
    move-result-object v13

    #@12
    check-cast v13, [B

    #@14
    .line 672
    .local v13, "faceScores":[B
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    #@16
    move-object/from16 v0, p0

    #@18
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@1b
    move-result-object v12

    #@1c
    check-cast v12, [Landroid/graphics/Rect;

    #@1e
    .line 673
    .local v12, "faceRectangles":[Landroid/graphics/Rect;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@25
    move-result-object v9

    #@26
    check-cast v9, [I

    #@28
    .line 674
    .local v9, "faceIds":[I
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    #@2a
    move-object/from16 v0, p0

    #@2c
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@2f
    move-result-object v10

    #@30
    check-cast v10, [I

    #@32
    .line 676
    .local v10, "faceLandmarks":[I
    const/4 v2, 0x5

    #@33
    new-array v2, v2, [Ljava/lang/Object;

    #@35
    const/4 v3, 0x0

    #@36
    aput-object v8, v2, v3

    #@38
    const/4 v3, 0x1

    #@39
    aput-object v13, v2, v3

    #@3b
    const/4 v3, 0x2

    #@3c
    aput-object v12, v2, v3

    #@3e
    const/4 v3, 0x3

    #@3f
    aput-object v9, v2, v3

    #@41
    const/4 v3, 0x4

    #@42
    aput-object v10, v2, v3

    #@44
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_0

    #@4a
    .line 677
    const/4 v2, 0x0

    #@4b
    return-object v2

    #@4c
    .line 680
    :cond_0
    if-nez v8, :cond_3

    #@4e
    .line 681
    const-string/jumbo v2, "CameraMetadataJV"

    #@51
    const-string/jumbo v3, "Face detect mode metadata is null, assuming the mode is SIMPLE"

    #@54
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 682
    const/4 v2, 0x1

    #@58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object v8

    #@5c
    .line 695
    :cond_1
    if-eqz v13, :cond_2

    #@5e
    if-nez v12, :cond_5

    #@60
    .line 696
    :cond_2
    const-string/jumbo v2, "CameraMetadataJV"

    #@63
    const-string/jumbo v3, "Expect face scores and rectangles to be non-null"

    #@66
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    .line 697
    const/4 v2, 0x0

    #@6a
    new-array v2, v2, [Landroid/hardware/camera2/params/Face;

    #@6c
    return-object v2

    #@6d
    .line 684
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@70
    move-result v2

    #@71
    if-nez v2, :cond_4

    #@73
    .line 685
    const/4 v2, 0x0

    #@74
    new-array v2, v2, [Landroid/hardware/camera2/params/Face;

    #@76
    return-object v2

    #@77
    .line 687
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@7a
    move-result v2

    #@7b
    const/4 v3, 0x1

    #@7c
    if-eq v2, v3, :cond_1

    #@7e
    .line 688
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@81
    move-result v2

    #@82
    const/4 v3, 0x2

    #@83
    if-eq v2, v3, :cond_1

    #@85
    .line 689
    const-string/jumbo v2, "CameraMetadataJV"

    #@88
    new-instance v3, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v4, "Unknown face detect mode: "

    #@90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v3

    #@98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v3

    #@9c
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 690
    const/4 v2, 0x0

    #@a0
    new-array v2, v2, [Landroid/hardware/camera2/params/Face;

    #@a2
    return-object v2

    #@a3
    .line 698
    :cond_5
    array-length v2, v13

    #@a4
    array-length v3, v12

    #@a5
    if-eq v2, v3, :cond_6

    #@a7
    .line 699
    const-string/jumbo v2, "CameraMetadataJV"

    #@aa
    const-string/jumbo v3, "Face score size(%d) doesn match face rectangle size(%d)!"

    #@ad
    const/4 v4, 0x2

    #@ae
    new-array v4, v4, [Ljava/lang/Object;

    #@b0
    .line 700
    array-length v0, v13

    #@b1
    move/from16 v17, v0

    #@b3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v17

    #@b7
    const/16 v18, 0x0

    #@b9
    aput-object v17, v4, v18

    #@bb
    array-length v0, v12

    #@bc
    move/from16 v17, v0

    #@be
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c1
    move-result-object v17

    #@c2
    const/16 v18, 0x1

    #@c4
    aput-object v17, v4, v18

    #@c6
    .line 699
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c9
    move-result-object v3

    #@ca
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    .line 704
    :cond_6
    array-length v2, v13

    #@ce
    array-length v3, v12

    #@cf
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@d2
    move-result v16

    #@d3
    .line 706
    .local v16, "numFaces":I
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@d6
    move-result v2

    #@d7
    const/4 v3, 0x2

    #@d8
    if-ne v2, v3, :cond_8

    #@da
    .line 707
    if-eqz v9, :cond_7

    #@dc
    if-nez v10, :cond_a

    #@de
    .line 708
    :cond_7
    const-string/jumbo v2, "CameraMetadataJV"

    #@e1
    const-string/jumbo v3, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode"

    #@e4
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e7
    .line 710
    const/4 v2, 0x1

    #@e8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@eb
    move-result-object v8

    #@ec
    .line 724
    :cond_8
    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    #@ee
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@f1
    .line 725
    .local v11, "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@f4
    move-result v2

    #@f5
    const/4 v3, 0x1

    #@f6
    if-ne v2, v3, :cond_d

    #@f8
    .line 726
    const/4 v15, 0x0

    #@f9
    .local v15, "i":I
    :goto_1
    move/from16 v0, v16

    #@fb
    if-ge v15, v0, :cond_f

    #@fd
    .line 727
    aget-byte v2, v13, v15

    #@ff
    const/16 v3, 0x64

    #@101
    if-gt v2, v3, :cond_9

    #@103
    .line 728
    aget-byte v2, v13, v15

    #@105
    const/4 v3, 0x1

    #@106
    if-lt v2, v3, :cond_9

    #@108
    .line 729
    new-instance v2, Landroid/hardware/camera2/params/Face;

    #@10a
    aget-object v3, v12, v15

    #@10c
    aget-byte v4, v13, v15

    #@10e
    invoke-direct {v2, v3, v4}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    #@111
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@114
    .line 726
    :cond_9
    add-int/lit8 v15, v15, 0x1

    #@116
    goto :goto_1

    #@117
    .line 712
    .end local v11    # "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    .end local v15    # "i":I
    :cond_a
    array-length v2, v9

    #@118
    move/from16 v0, v16

    #@11a
    if-ne v2, v0, :cond_b

    #@11c
    .line 713
    array-length v2, v10

    #@11d
    mul-int/lit8 v3, v16, 0x6

    #@11f
    if-eq v2, v3, :cond_c

    #@121
    .line 714
    :cond_b
    const-string/jumbo v2, "CameraMetadataJV"

    #@124
    const-string/jumbo v3, "Face id size(%d), or face landmark size(%d) don\'tmatch face number(%d)!"

    #@127
    const/4 v4, 0x3

    #@128
    new-array v4, v4, [Ljava/lang/Object;

    #@12a
    .line 716
    array-length v0, v9

    #@12b
    move/from16 v17, v0

    #@12d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@130
    move-result-object v17

    #@131
    const/16 v18, 0x0

    #@133
    aput-object v17, v4, v18

    #@135
    array-length v0, v10

    #@136
    move/from16 v17, v0

    #@138
    mul-int/lit8 v17, v17, 0x6

    #@13a
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13d
    move-result-object v17

    #@13e
    const/16 v18, 0x1

    #@140
    aput-object v17, v4, v18

    #@142
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@145
    move-result-object v17

    #@146
    const/16 v18, 0x2

    #@148
    aput-object v17, v4, v18

    #@14a
    .line 714
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@14d
    move-result-object v3

    #@14e
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@151
    .line 719
    :cond_c
    array-length v2, v9

    #@152
    move/from16 v0, v16

    #@154
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@157
    move-result v16

    #@158
    .line 720
    array-length v2, v10

    #@159
    div-int/lit8 v2, v2, 0x6

    #@15b
    move/from16 v0, v16

    #@15d
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@160
    move-result v16

    #@161
    goto :goto_0

    #@162
    .line 734
    .restart local v11    # "faceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/Face;>;"
    :cond_d
    const/4 v15, 0x0

    #@163
    .restart local v15    # "i":I
    :goto_2
    move/from16 v0, v16

    #@165
    if-ge v15, v0, :cond_f

    #@167
    .line 735
    aget-byte v2, v13, v15

    #@169
    const/16 v3, 0x64

    #@16b
    if-gt v2, v3, :cond_e

    #@16d
    .line 736
    aget-byte v2, v13, v15

    #@16f
    const/4 v3, 0x1

    #@170
    if-lt v2, v3, :cond_e

    #@172
    .line 737
    aget v2, v9, v15

    #@174
    if-ltz v2, :cond_e

    #@176
    .line 738
    new-instance v5, Landroid/graphics/Point;

    #@178
    mul-int/lit8 v2, v15, 0x6

    #@17a
    aget v2, v10, v2

    #@17c
    .line 739
    mul-int/lit8 v3, v15, 0x6

    #@17e
    add-int/lit8 v3, v3, 0x1

    #@180
    aget v3, v10, v3

    #@182
    .line 738
    invoke-direct {v5, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    #@185
    .line 740
    .local v5, "leftEye":Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Point;

    #@187
    mul-int/lit8 v2, v15, 0x6

    #@189
    add-int/lit8 v2, v2, 0x2

    #@18b
    aget v2, v10, v2

    #@18d
    .line 741
    mul-int/lit8 v3, v15, 0x6

    #@18f
    add-int/lit8 v3, v3, 0x3

    #@191
    aget v3, v10, v3

    #@193
    .line 740
    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    #@196
    .line 742
    .local v6, "rightEye":Landroid/graphics/Point;
    new-instance v7, Landroid/graphics/Point;

    #@198
    mul-int/lit8 v2, v15, 0x6

    #@19a
    add-int/lit8 v2, v2, 0x4

    #@19c
    aget v2, v10, v2

    #@19e
    .line 743
    mul-int/lit8 v3, v15, 0x6

    #@1a0
    add-int/lit8 v3, v3, 0x5

    #@1a2
    aget v3, v10, v3

    #@1a4
    .line 742
    invoke-direct {v7, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    #@1a7
    .line 744
    .local v7, "mouth":Landroid/graphics/Point;
    new-instance v1, Landroid/hardware/camera2/params/Face;

    #@1a9
    aget-object v2, v12, v15

    #@1ab
    aget-byte v3, v13, v15

    #@1ad
    aget v4, v9, v15

    #@1af
    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    #@1b2
    .line 746
    .local v1, "face":Landroid/hardware/camera2/params/Face;
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b5
    .line 734
    .end local v1    # "face":Landroid/hardware/camera2/params/Face;
    .end local v5    # "leftEye":Landroid/graphics/Point;
    .end local v6    # "rightEye":Landroid/graphics/Point;
    .end local v7    # "mouth":Landroid/graphics/Point;
    :cond_e
    add-int/lit8 v15, v15, 0x1

    #@1b7
    goto :goto_2

    #@1b8
    .line 750
    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@1bb
    move-result v2

    #@1bc
    new-array v14, v2, [Landroid/hardware/camera2/params/Face;

    #@1be
    .line 751
    .local v14, "faces":[Landroid/hardware/camera2/params/Face;
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1c1
    .line 752
    return-object v14
.end method

.method private getGpsLocation()Landroid/location/Location;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    .line 793
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    #@6
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/lang/String;

    #@c
    .line 794
    .local v2, "processingMethod":Ljava/lang/String;
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    #@e
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [D

    #@14
    .line 795
    .local v0, "coords":[D
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    #@16
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Ljava/lang/Long;

    #@1c
    .line 797
    .local v3, "timeStamp":Ljava/lang/Long;
    const/4 v4, 0x3

    #@1d
    new-array v4, v4, [Ljava/lang/Object;

    #@1f
    aput-object v2, v4, v6

    #@21
    aput-object v0, v4, v7

    #@23
    aput-object v3, v4, v8

    #@25
    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 798
    return-object v5

    #@2c
    .line 801
    :cond_0
    new-instance v1, Landroid/location/Location;

    #@2e
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-direct {v1, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    #@35
    .line 802
    .local v1, "l":Landroid/location/Location;
    if-eqz v3, :cond_1

    #@37
    .line 803
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@3a
    move-result-wide v4

    #@3b
    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setTime(J)V

    #@3e
    .line 808
    :goto_0
    if-eqz v0, :cond_2

    #@40
    .line 809
    aget-wide v4, v0, v6

    #@42
    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    #@45
    .line 810
    aget-wide v4, v0, v7

    #@47
    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    #@4a
    .line 811
    aget-wide v4, v0, v8

    #@4c
    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    #@4f
    .line 816
    :goto_1
    return-object v1

    #@50
    .line 805
    :cond_1
    const-string/jumbo v4, "CameraMetadataJV"

    #@53
    const-string/jumbo v5, "getGpsLocation - No timestamp for GPS location."

    #@56
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@59
    goto :goto_0

    #@5a
    .line 813
    :cond_2
    const-string/jumbo v4, "CameraMetadataJV"

    #@5d
    const-string/jumbo v5, "getGpsLocation - No coordinates for GPS location"

    #@60
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    goto :goto_1
.end method

.method private getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 775
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    #@3
    invoke-direct {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [F

    #@9
    .line 776
    .local v0, "lsmArray":[F
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@b
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/util/Size;

    #@11
    .line 779
    .local v2, "s":Landroid/util/Size;
    if-nez v0, :cond_0

    #@13
    .line 780
    return-object v5

    #@14
    .line 783
    :cond_0
    if-nez v2, :cond_1

    #@16
    .line 784
    const-string/jumbo v3, "CameraMetadataJV"

    #@19
    const-string/jumbo v4, "getLensShadingMap - Lens shading map size was null."

    #@1c
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 785
    return-object v5

    #@20
    .line 788
    :cond_1
    new-instance v1, Landroid/hardware/camera2/params/LensShadingMap;

    #@22
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    #@25
    move-result v3

    #@26
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    #@29
    move-result v4

    #@2a
    invoke-direct {v1, v0, v3, v4}, Landroid/hardware/camera2/params/LensShadingMap;-><init>([FII)V

    #@2d
    .line 789
    .local v1, "map":Landroid/hardware/camera2/params/LensShadingMap;
    return-object v1
.end method

.method private static getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1229
    .local p0, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTypeReference()Landroid/hardware/camera2/utils/TypeReference;

    #@3
    move-result-object v0

    #@4
    .line 1230
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    #@7
    move-result v1

    #@8
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getNativeType(I)I

    #@b
    move-result v1

    #@c
    .line 1229
    invoke-static {v0, v1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 896
    const/4 v2, 0x0

    #@2
    .line 897
    .local v2, "RAW":I
    const/4 v0, 0x1

    #@3
    .line 898
    .local v0, "PROC":I
    const/4 v1, 0x2

    #@4
    .line 901
    .local v1, "PROC_STALLING":I
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@6
    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, [I

    #@c
    .line 903
    .local v3, "maxNumOutputs":[I
    if-nez v3, :cond_0

    #@e
    .line 904
    return-object v5

    #@f
    .line 907
    :cond_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@11
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 908
    const/4 v4, 0x0

    #@18
    aget v4, v3, v4

    #@1a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v4

    #@1e
    return-object v4

    #@1f
    .line 909
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@21
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 910
    const/4 v4, 0x1

    #@28
    aget v4, v3, v4

    #@2a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    return-object v4

    #@2f
    .line 911
    :cond_2
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@31
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_3

    #@37
    .line 912
    const/4 v4, 0x2

    #@38
    aget v4, v3, v4

    #@3a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v4

    #@3e
    return-object v4

    #@3f
    .line 914
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "Invalid key "

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@58
    throw v4
.end method

.method private getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const/4 v5, 0x0

    #@1
    .line 873
    const/4 v0, 0x0

    #@2
    .line 874
    .local v0, "AE":I
    const/4 v2, 0x1

    #@3
    .line 875
    .local v2, "AWB":I
    const/4 v1, 0x2

    #@4
    .line 878
    .local v1, "AF":I
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@6
    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    check-cast v3, [I

    #@c
    .line 880
    .local v3, "maxRegions":[I
    if-nez v3, :cond_0

    #@e
    .line 881
    return-object v5

    #@f
    .line 884
    :cond_0
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@11
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 885
    const/4 v4, 0x0

    #@18
    aget v4, v3, v4

    #@1a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v4

    #@1e
    return-object v4

    #@1f
    .line 886
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@21
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_2

    #@27
    .line 887
    const/4 v4, 0x1

    #@28
    aget v4, v3, v4

    #@2a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    return-object v4

    #@2f
    .line 888
    :cond_2
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@31
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_3

    #@37
    .line 889
    const/4 v4, 0x2

    #@38
    aget v4, v3, v4

    #@3a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3d
    move-result-object v4

    #@3e
    return-object v4

    #@3f
    .line 891
    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    #@41
    new-instance v5, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v6, "Invalid key "

    #@49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@58
    throw v4
.end method

.method public static getNativeType(I)I
    .locals 1
    .param p0, "tag"    # I

    #@0
    .prologue
    .line 1163
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTag(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 14

    #@0
    .prologue
    .line 842
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@2
    .line 841
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, [Landroid/hardware/camera2/params/StreamConfiguration;

    #@8
    .line 844
    .local v1, "configurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@a
    .line 843
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@10
    .line 846
    .local v2, "minFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@12
    .line 845
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@18
    .line 848
    .local v3, "stallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1a
    .line 847
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, [Landroid/hardware/camera2/params/StreamConfiguration;

    #@20
    .line 850
    .local v4, "depthConfigurations":[Landroid/hardware/camera2/params/StreamConfiguration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@22
    .line 849
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@28
    .line 852
    .local v5, "depthMinFrameDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@2a
    .line 851
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@2d
    move-result-object v6

    #@2e
    check-cast v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    #@30
    .line 854
    .local v6, "depthStallDurations":[Landroid/hardware/camera2/params/StreamConfigurationDuration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@32
    .line 853
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@35
    move-result-object v7

    #@36
    check-cast v7, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    #@38
    .line 856
    .local v7, "highSpeedVideoConfigurations":[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@3a
    .line 855
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@3d
    move-result-object v8

    #@3e
    check-cast v8, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    #@40
    .line 857
    .local v8, "inputOutputFormatsMap":Landroid/hardware/camera2/params/ReprocessFormatsMap;
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@42
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    #@45
    move-result-object v10

    #@46
    check-cast v10, [I

    #@48
    .line 858
    .local v10, "capabilities":[I
    const/4 v9, 0x0

    #@49
    .line 859
    .local v9, "listHighResolution":Z
    const/4 v0, 0x0

    #@4a
    array-length v12, v10

    #@4b
    :goto_0
    if-ge v0, v12, :cond_0

    #@4d
    aget v11, v10, v0

    #@4f
    .line 860
    .local v11, "capability":I
    const/4 v13, 0x6

    #@50
    if-ne v11, v13, :cond_1

    #@52
    .line 861
    const/4 v9, 0x1

    #@53
    .line 865
    .end local v11    # "capability":I
    :cond_0
    new-instance v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    #@55
    invoke-direct/range {v0 .. v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    #@58
    return-object v0

    #@59
    .line 859
    .restart local v11    # "capability":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_0
.end method

.method public static getTag(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1151
    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/hardware/camera2/params/TonemapCurve;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 919
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    #@3
    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, [F

    #@9
    .line 920
    .local v2, "red":[F
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    #@b
    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, [F

    #@11
    .line 921
    .local v1, "green":[F
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@13
    invoke-direct {p0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [F

    #@19
    .line 923
    .local v0, "blue":[F
    const/4 v4, 0x3

    #@1a
    new-array v4, v4, [Ljava/lang/Object;

    #@1c
    const/4 v5, 0x0

    #@1d
    aput-object v2, v4, v5

    #@1f
    const/4 v5, 0x1

    #@20
    aput-object v1, v4, v5

    #@22
    const/4 v5, 0x2

    #@23
    aput-object v0, v4, v5

    #@25
    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 924
    return-object v6

    #@2c
    .line 927
    :cond_0
    if-eqz v2, :cond_1

    #@2e
    if-nez v1, :cond_2

    #@30
    .line 928
    :cond_1
    const-string/jumbo v4, "CameraMetadataJV"

    #@33
    const-string/jumbo v5, "getTonemapCurve - missing tone curve components"

    #@36
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 929
    return-object v6

    #@3a
    .line 927
    :cond_2
    if-eqz v0, :cond_1

    #@3c
    .line 931
    new-instance v3, Landroid/hardware/camera2/params/TonemapCurve;

    #@3e
    invoke-direct {v3, v2, v1, v0}, Landroid/hardware/camera2/params/TonemapCurve;-><init>([F[F[F)V

    #@41
    .line 932
    .local v3, "tc":Landroid/hardware/camera2/params/TonemapCurve;
    return-object v3
.end method

.method public static move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .param p0, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@0
    .prologue
    .line 291
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@2
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    #@5
    .line 292
    .local v0, "newObject":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@8
    .line 293
    return-object v0
.end method

.method private native nativeAllocate()J
.end method

.method private native nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose()V
.end method

.method private synchronized native declared-synchronized nativeDump()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeGetAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
.end method

.method private synchronized native declared-synchronized nativeGetEntryCount()I
.end method

.method private static native nativeGetTagFromKey(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private static native nativeGetTypeFromTag(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeIsEmpty()Z
.end method

.method private synchronized native declared-synchronized nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native declared-synchronized nativeReadValues(I)[B
.end method

.method private static native nativeSetupGlobalVendorTagDescriptor()I
.end method

.method private synchronized native declared-synchronized nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native declared-synchronized nativeWriteValues(I[B)V
.end method

.method private static registerAllMarshalers()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1239
    const/16 v3, 0x14

    #@3
    new-array v1, v3, [Landroid/hardware/camera2/marshal/MarshalQueryable;

    #@5
    .line 1241
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;

    #@7
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;-><init>()V

    #@a
    aput-object v3, v1, v2

    #@c
    .line 1242
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    #@e
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;-><init>()V

    #@11
    const/4 v4, 0x1

    #@12
    aput-object v3, v1, v4

    #@14
    .line 1243
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    #@16
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;-><init>()V

    #@19
    const/4 v4, 0x2

    #@1a
    aput-object v3, v1, v4

    #@1c
    .line 1246
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;

    #@1e
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;-><init>()V

    #@21
    const/4 v4, 0x3

    #@22
    aput-object v3, v1, v4

    #@24
    .line 1247
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;

    #@26
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;-><init>()V

    #@29
    const/4 v4, 0x4

    #@2a
    aput-object v3, v1, v4

    #@2c
    .line 1250
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;

    #@2e
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;-><init>()V

    #@31
    const/4 v4, 0x5

    #@32
    aput-object v3, v1, v4

    #@34
    .line 1251
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;

    #@36
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;-><init>()V

    #@39
    const/4 v4, 0x6

    #@3a
    aput-object v3, v1, v4

    #@3c
    .line 1252
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;

    #@3e
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;-><init>()V

    #@41
    const/4 v4, 0x7

    #@42
    aput-object v3, v1, v4

    #@44
    .line 1253
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;

    #@46
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;-><init>()V

    #@49
    const/16 v4, 0x8

    #@4b
    aput-object v3, v1, v4

    #@4d
    .line 1254
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    #@4f
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;-><init>()V

    #@52
    const/16 v4, 0x9

    #@54
    aput-object v3, v1, v4

    #@56
    .line 1255
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    #@58
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;-><init>()V

    #@5b
    const/16 v4, 0xa

    #@5d
    aput-object v3, v1, v4

    #@5f
    .line 1256
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;

    #@61
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;-><init>()V

    #@64
    const/16 v4, 0xb

    #@66
    aput-object v3, v1, v4

    #@68
    .line 1257
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;

    #@6a
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;-><init>()V

    #@6d
    const/16 v4, 0xc

    #@6f
    aput-object v3, v1, v4

    #@71
    .line 1258
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;

    #@73
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;-><init>()V

    #@76
    const/16 v4, 0xd

    #@78
    aput-object v3, v1, v4

    #@7a
    .line 1259
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;

    #@7c
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;-><init>()V

    #@7f
    const/16 v4, 0xe

    #@81
    aput-object v3, v1, v4

    #@83
    .line 1260
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;

    #@85
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;-><init>()V

    #@88
    const/16 v4, 0xf

    #@8a
    aput-object v3, v1, v4

    #@8c
    .line 1261
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

    #@8e
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;-><init>()V

    #@91
    const/16 v4, 0x10

    #@93
    aput-object v3, v1, v4

    #@95
    .line 1262
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;

    #@97
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;-><init>()V

    #@9a
    const/16 v4, 0x11

    #@9c
    aput-object v3, v1, v4

    #@9e
    .line 1263
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;

    #@a0
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;-><init>()V

    #@a3
    const/16 v4, 0x12

    #@a5
    aput-object v3, v1, v4

    #@a7
    .line 1266
    new-instance v3, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;

    #@a9
    invoke-direct {v3}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;-><init>()V

    #@ac
    const/16 v4, 0x13

    #@ae
    aput-object v3, v1, v4

    #@b0
    .line 1269
    .local v1, "queryList":[Landroid/hardware/camera2/marshal/MarshalQueryable;
    array-length v3, v1

    #@b1
    :goto_0
    if-ge v2, v3, :cond_0

    #@b3
    aget-object v0, v1, v2

    #@b5
    .line 1270
    .local v0, "query":Landroid/hardware/camera2/marshal/MarshalQueryable;
    invoke-static {v0}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    #@b8
    .line 1269
    add-int/lit8 v2, v2, 0x1

    #@ba
    goto :goto_0

    #@bb
    .line 1234
    .end local v0    # "query":Landroid/hardware/camera2/marshal/MarshalQueryable;
    :cond_0
    return-void
.end method

.method private setAvailableFormats([I)Z
    .locals 5
    .param p1, "value"    # [I

    #@0
    .prologue
    .line 1009
    move-object v0, p1

    #@1
    .line 1010
    .local v0, "availableFormat":[I
    if-nez p1, :cond_0

    #@3
    .line 1012
    const/4 v3, 0x0

    #@4
    return v3

    #@5
    .line 1015
    :cond_0
    array-length v3, p1

    #@6
    new-array v2, v3, [I

    #@8
    .line 1016
    .local v2, "newValues":[I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@a
    if-ge v1, v3, :cond_2

    #@c
    .line 1017
    aget v3, p1, v1

    #@e
    aput v3, v2, v1

    #@10
    .line 1018
    aget v3, p1, v1

    #@12
    const/16 v4, 0x100

    #@14
    if-ne v3, v4, :cond_1

    #@16
    .line 1019
    const/16 v3, 0x21

    #@18
    aput v3, v2, v1

    #@1a
    .line 1016
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1023
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    #@1f
    invoke-direct {p0, v3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    #@22
    .line 1024
    const/4 v3, 0x1

    #@23
    return v3
.end method

.method private setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 936
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    #@7
    .line 935
    return-void
.end method

.method private setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 944
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    #@7
    .line 943
    return-void
.end method

.method private setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 940
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    #@7
    .line 939
    return-void
.end method

.method private setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    #@1
    .line 948
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTag()I

    #@4
    move-result v3

    #@5
    .line 950
    .local v3, "tag":I
    if-nez p2, :cond_0

    #@7
    .line 952
    invoke-virtual {p0, v3, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    #@a
    .line 953
    return-void

    #@b
    .line 956
    :cond_0
    invoke-static {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Landroid/hardware/camera2/marshal/Marshaler;

    #@e
    move-result-object v1

    #@f
    .line 957
    .local v1, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    invoke-virtual {v1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    #@12
    move-result v2

    #@13
    .line 960
    .local v2, "size":I
    new-array v4, v2, [B

    #@15
    .line 962
    .local v4, "values":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@18
    move-result-object v5

    #@19
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@20
    move-result-object v0

    #@21
    .line 963
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p2, v0}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    #@24
    .line 965
    invoke-virtual {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    #@27
    .line 947
    return-void
.end method

.method private setFaceRectangles([Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "faceRects"    # [Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1040
    if-nez p1, :cond_0

    #@2
    .line 1041
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 1044
    :cond_0
    array-length v2, p1

    #@5
    new-array v1, v2, [Landroid/graphics/Rect;

    #@7
    .line 1045
    .local v1, "newFaceRects":[Landroid/graphics/Rect;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_1

    #@b
    .line 1046
    new-instance v2, Landroid/graphics/Rect;

    #@d
    .line 1047
    aget-object v3, p1, v0

    #@f
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@11
    .line 1048
    aget-object v4, p1, v0

    #@13
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@15
    .line 1049
    aget-object v5, p1, v0

    #@17
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@19
    aget-object v6, p1, v0

    #@1b
    iget v6, v6, Landroid/graphics/Rect;->left:I

    #@1d
    add-int/2addr v5, v6

    #@1e
    .line 1050
    aget-object v6, p1, v0

    #@20
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@22
    aget-object v7, p1, v0

    #@24
    iget v7, v7, Landroid/graphics/Rect;->top:I

    #@26
    add-int/2addr v6, v7

    #@27
    .line 1046
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2a
    aput-object v2, v1, v0

    #@2c
    .line 1045
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1053
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    #@31
    invoke-direct {p0, v2, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@34
    .line 1054
    const/4 v2, 0x1

    #@35
    return v2
.end method

.method private setFaces([Landroid/hardware/camera2/params/Face;)Z
    .locals 14
    .param p1, "faces"    # [Landroid/hardware/camera2/params/Face;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 606
    if-nez p1, :cond_0

    #@3
    .line 607
    return v9

    #@4
    .line 610
    :cond_0
    array-length v8, p1

    #@5
    .line 613
    .local v8, "numFaces":I
    const/4 v5, 0x1

    #@6
    .line 614
    .local v5, "fullMode":Z
    array-length v11, p1

    #@7
    move v10, v9

    #@8
    :goto_0
    if-ge v10, v11, :cond_3

    #@a
    aget-object v0, p1, v10

    #@c
    .line 615
    .local v0, "face":Landroid/hardware/camera2/params/Face;
    if-nez v0, :cond_2

    #@e
    .line 616
    add-int/lit8 v8, v8, -0x1

    #@10
    .line 617
    const-string/jumbo v12, "CameraMetadataJV"

    #@13
    const-string/jumbo v13, "setFaces - null face detected, skipping"

    #@16
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 614
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 621
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getId()I

    #@1f
    move-result v12

    #@20
    const/4 v13, -0x1

    #@21
    if-ne v12, v13, :cond_1

    #@23
    .line 622
    const/4 v5, 0x0

    #@24
    goto :goto_1

    #@25
    .line 626
    .end local v0    # "face":Landroid/hardware/camera2/params/Face;
    :cond_3
    new-array v3, v8, [Landroid/graphics/Rect;

    #@27
    .line 627
    .local v3, "faceRectangles":[Landroid/graphics/Rect;
    new-array v4, v8, [B

    #@29
    .line 628
    .local v4, "faceScores":[B
    const/4 v1, 0x0

    #@2a
    .line 629
    .local v1, "faceIds":[I
    const/4 v2, 0x0

    #@2b
    .line 631
    .local v2, "faceLandmarks":[I
    if-eqz v5, :cond_4

    #@2d
    .line 632
    new-array v1, v8, [I

    #@2f
    .line 633
    .local v1, "faceIds":[I
    mul-int/lit8 v10, v8, 0x6

    #@31
    new-array v2, v10, [I

    #@33
    .line 636
    .end local v1    # "faceIds":[I
    .end local v2    # "faceLandmarks":[I
    :cond_4
    const/4 v6, 0x0

    #@34
    .line 637
    .local v6, "i":I
    array-length v10, p1

    #@35
    :goto_2
    if-ge v9, v10, :cond_7

    #@37
    aget-object v0, p1, v9

    #@39
    .line 638
    .restart local v0    # "face":Landroid/hardware/camera2/params/Face;
    if-nez v0, :cond_5

    #@3b
    .line 637
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@3d
    goto :goto_2

    #@3e
    .line 642
    :cond_5
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    #@41
    move-result-object v11

    #@42
    aput-object v11, v3, v6

    #@44
    .line 643
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getScore()I

    #@47
    move-result v11

    #@48
    int-to-byte v11, v11

    #@49
    aput-byte v11, v4, v6

    #@4b
    .line 645
    if-eqz v5, :cond_6

    #@4d
    .line 646
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getId()I

    #@50
    move-result v11

    #@51
    aput v11, v1, v6

    #@53
    .line 650
    mul-int/lit8 v11, v6, 0x6

    #@55
    const/4 v7, 0x1

    #@56
    .local v7, "j":I
    add-int/lit8 v11, v11, 0x0

    #@58
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    #@5b
    move-result-object v12

    #@5c
    iget v12, v12, Landroid/graphics/Point;->x:I

    #@5e
    aput v12, v2, v11

    #@60
    .line 651
    mul-int/lit8 v11, v6, 0x6

    #@62
    add-int/lit8 v7, v7, 0x1

    #@64
    add-int/lit8 v11, v11, 0x1

    #@66
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    #@69
    move-result-object v12

    #@6a
    iget v12, v12, Landroid/graphics/Point;->y:I

    #@6c
    aput v12, v2, v11

    #@6e
    .line 652
    mul-int/lit8 v11, v6, 0x6

    #@70
    add-int/lit8 v7, v7, 0x1

    #@72
    add-int/lit8 v11, v11, 0x2

    #@74
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    #@77
    move-result-object v12

    #@78
    iget v12, v12, Landroid/graphics/Point;->x:I

    #@7a
    aput v12, v2, v11

    #@7c
    .line 653
    mul-int/lit8 v11, v6, 0x6

    #@7e
    add-int/lit8 v7, v7, 0x1

    #@80
    add-int/lit8 v11, v11, 0x3

    #@82
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    #@85
    move-result-object v12

    #@86
    iget v12, v12, Landroid/graphics/Point;->y:I

    #@88
    aput v12, v2, v11

    #@8a
    .line 654
    mul-int/lit8 v11, v6, 0x6

    #@8c
    add-int/lit8 v7, v7, 0x1

    #@8e
    add-int/lit8 v11, v11, 0x4

    #@90
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    #@93
    move-result-object v12

    #@94
    iget v12, v12, Landroid/graphics/Point;->x:I

    #@96
    aput v12, v2, v11

    #@98
    .line 655
    mul-int/lit8 v11, v6, 0x6

    #@9a
    add-int/lit8 v7, v7, 0x1

    #@9c
    add-int/lit8 v11, v11, 0x5

    #@9e
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    #@a1
    move-result-object v12

    #@a2
    iget v12, v12, Landroid/graphics/Point;->y:I

    #@a4
    aput v12, v2, v11

    #@a6
    .line 658
    .end local v7    # "j":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    #@a8
    goto :goto_3

    #@a9
    .line 661
    .end local v0    # "face":Landroid/hardware/camera2/params/Face;
    :cond_7
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    #@ab
    invoke-virtual {p0, v9, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@ae
    .line 662
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    #@b0
    invoke-virtual {p0, v9, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@b3
    .line 663
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    #@b5
    invoke-virtual {p0, v9, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@b8
    .line 664
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    #@ba
    invoke-virtual {p0, v9, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    #@bd
    .line 666
    const/4 v9, 0x1

    #@be
    return v9
.end method

.method private setGpsLocation(Landroid/location/Location;)Z
    .locals 8
    .param p1, "l"    # Landroid/location/Location;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 820
    if-nez p1, :cond_0

    #@4
    .line 821
    return v6

    #@5
    .line 824
    :cond_0
    const/4 v4, 0x3

    #@6
    new-array v0, v4, [D

    #@8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    #@b
    move-result-wide v4

    #@c
    aput-wide v4, v0, v6

    #@e
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    #@11
    move-result-wide v4

    #@12
    aput-wide v4, v0, v7

    #@14
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    #@17
    move-result-wide v4

    #@18
    const/4 v6, 0x2

    #@19
    aput-wide v4, v0, v6

    #@1b
    .line 825
    .local v0, "coords":[D
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 826
    .local v1, "processMethod":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    #@26
    move-result-wide v2

    #@27
    .line 828
    .local v2, "timestamp":J
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    #@29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {p0, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@30
    .line 829
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    #@32
    invoke-virtual {p0, v4, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@35
    .line 831
    if-nez v1, :cond_1

    #@37
    .line 832
    const-string/jumbo v4, "CameraMetadataJV"

    #@3a
    const-string/jumbo v5, "setGpsLocation - No process method, Location is not from a GPS or NETWORKprovider"

    #@3d
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 837
    :goto_0
    return v7

    #@41
    .line 835
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    #@43
    invoke-direct {p0, v4, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@46
    goto :goto_0
.end method

.method private setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z
    .locals 7
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

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 1058
    if-nez p1, :cond_0

    #@5
    .line 1059
    return v4

    #@6
    .line 1062
    :cond_0
    const/4 v3, 0x3

    #@7
    new-array v0, v3, [[F

    #@9
    .line 1063
    .local v0, "curve":[[F
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-gt v1, v6, :cond_1

    #@c
    .line 1064
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    #@f
    move-result v2

    #@10
    .line 1065
    .local v2, "pointCount":I
    mul-int/lit8 v3, v2, 0x2

    #@12
    new-array v3, v3, [F

    #@14
    aput-object v3, v0, v1

    #@16
    .line 1066
    aget-object v3, v0, v1

    #@18
    invoke-virtual {p1, v1, v3, v4}, Landroid/hardware/camera2/params/TonemapCurve;->copyColorCurve(I[FI)V

    #@1b
    .line 1063
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1068
    .end local v2    # "pointCount":I
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    #@20
    aget-object v4, v0, v4

    #@22
    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@25
    .line 1069
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    #@27
    aget-object v4, v0, v5

    #@29
    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@2c
    .line 1070
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    #@2e
    aget-object v4, v0, v6

    #@30
    invoke-direct {p0, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    #@33
    .line 1072
    return v5
.end method

.method public static setupGlobalVendorTagDescriptor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    #@3
    move-result v0

    #@4
    .line 372
    .local v0, "err":I
    if-eqz v0, :cond_0

    #@6
    .line 373
    new-instance v1, Landroid/os/ServiceSpecificException;

    #@8
    const-string/jumbo v2, "Failure to set up global vendor tags"

    #@b
    invoke-direct {v1, v0, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 370
    :cond_0
    return-void
.end method

.method private static translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 236
    if-nez p0, :cond_0

    #@3
    .line 237
    return-object v1

    #@4
    .line 239
    :cond_0
    const-string/jumbo v0, "gps"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 241
    const-string/jumbo v0, "GPS"

    #@10
    return-object v0

    #@11
    .line 239
    :cond_1
    const-string/jumbo v0, "network"

    #@14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 243
    const-string/jumbo v0, "CELLID"

    #@1d
    return-object v0

    #@1e
    .line 245
    :cond_2
    return-object v1
.end method

.method private static translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "process"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 250
    if-nez p0, :cond_0

    #@3
    .line 251
    return-object v1

    #@4
    .line 253
    :cond_0
    const-string/jumbo v0, "GPS"

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 255
    const-string/jumbo v0, "gps"

    #@10
    return-object v0

    #@11
    .line 253
    :cond_1
    const-string/jumbo v0, "CELLID"

    #@14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 257
    const-string/jumbo v0, "network"

    #@1d
    return-object v0

    #@1e
    .line 259
    :cond_2
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 313
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dumpToLog()V
    .locals 3

    #@0
    .prologue
    .line 1207
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeDump()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 1205
    :goto_0
    return-void

    #@4
    .line 1208
    :catch_0
    move-exception v0

    #@5
    .line 1209
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "CameraMetadataJV"

    #@8
    const-string/jumbo v2, "Dump logging failed"

    #@b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 1216
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 1218
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 1214
    return-void

    #@7
    .line 1217
    :catchall_0
    move-exception v0

    #@8
    .line 1218
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 1217
    throw v0
.end method

.method public get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 325
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
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
    .line 339
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 332
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 349
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    const-string/jumbo v1, "key must not be null"

    #@3
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 352
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/hardware/camera2/impl/GetCommand;

    #@e
    .line 353
    .local v0, "g":Landroid/hardware/camera2/impl/GetCommand;
    if-eqz v0, :cond_0

    #@10
    .line 354
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/impl/GetCommand;->getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 356
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public getEntryCount()I
    .locals 1

    #@0
    .prologue
    .line 1117
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetEntryCount()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 1126
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeIsEmpty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 360
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadFromParcel(Landroid/os/Parcel;)V

    #@3
    .line 359
    return-void
.end method

.method public readValues(I)[B
    .locals 1
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 1194
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(I)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 414
    .local p1, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    #@7
    .line 413
    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 406
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    #@7
    .line 405
    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 410
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    #@7
    .line 409
    return-void
.end method

.method public set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 396
    .local p1, "key":Landroid/hardware/camera2/impl/CameraMetadataNative$Key;, "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v1, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/hardware/camera2/impl/SetCommand;

    #@8
    .line 397
    .local v0, "s":Landroid/hardware/camera2/impl/SetCommand;
    if-eqz v0, :cond_0

    #@a
    .line 398
    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/impl/SetCommand;->setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V

    #@d
    .line 399
    return-void

    #@e
    .line 402
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    #@11
    .line 395
    return-void
.end method

.method public swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0
    .param p1, "other"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    #@0
    .prologue
    .line 1110
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    #@3
    .line 1109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 318
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteToParcel(Landroid/os/Parcel;)V

    #@3
    .line 317
    return-void
.end method

.method public writeValues(I[B)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "src"    # [B

    #@0
    .prologue
    .line 1178
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteValues(I[B)V

    #@3
    .line 1177
    return-void
.end method
