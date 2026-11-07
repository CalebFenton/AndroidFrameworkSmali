.class public final Landroid/view/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist address:Landroid/view/DisplayAddress;

.field public greylist-max-o appHeight:I

.field public greylist-max-o appVsyncOffsetNanos:J

.field public greylist-max-o appWidth:I

.field public blacklist appsSupportedModes:[Landroid/view/Display$Mode;

.field public blacklist brightnessDefault:F

.field public blacklist brightnessDim:F

.field public blacklist brightnessMaximum:F

.field public blacklist brightnessMinimum:F

.field public blacklist canHostTasks:Z

.field public greylist-max-o colorMode:I

.field public blacklist committedState:I

.field public greylist-max-o defaultModeId:I

.field public blacklist deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

.field public greylist-max-p displayCutout:Landroid/view/DisplayCutout;

.field public blacklist displayGroupId:I

.field public blacklist displayId:I

.field public blacklist displayShape:Landroid/view/DisplayShape;

.field public greylist-max-o flags:I

.field public blacklist frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

.field public blacklist hasArrSupport:Z

.field public greylist-max-o hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public blacklist hdrSdrRatio:F

.field public blacklist installOrientation:I

.field public blacklist isForceSdr:Z

.field public greylist-max-o largestNominalAppHeight:I

.field public greylist-max-o largestNominalAppWidth:I

.field public greylist-max-o layerStack:I

.field public blacklist layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

.field public greylist-max-o logicalDensityDpi:I

.field public greylist logicalHeight:I

.field public greylist logicalWidth:I

.field public blacklist minimalPostProcessingSupported:Z

.field public greylist-max-o modeId:I

.field public greylist-max-o name:Ljava/lang/String;

.field public greylist-max-o ownerPackageName:Ljava/lang/String;

.field public greylist-max-o ownerUid:I

.field public greylist-max-o physicalXDpi:F

.field public greylist-max-o physicalYDpi:F

.field public greylist-max-o presentationDeadlineNanos:J

.field public blacklist refreshRateOverride:F

.field public greylist-max-o removeMode:I

.field public blacklist renderFrameRate:F

.field public greylist rotation:I

.field public blacklist roundedCorners:Landroid/view/RoundedCorners;

.field public greylist-max-o smallestNominalAppHeight:I

.field public greylist-max-o smallestNominalAppWidth:I

.field public greylist-max-o state:I

.field public greylist-max-o supportedColorModes:[I

.field public greylist-max-o supportedModes:[Landroid/view/Display$Mode;

.field public blacklist supportedRefreshRates:[F

.field public blacklist thermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public blacklist thermalRefreshRateThrottling:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o type:I

.field public greylist-max-o uniqueId:Ljava/lang/String;

.field public blacklist userDisabledHdrTypes:[I

.field public blacklist userPreferredModeId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 421
    new-instance v0, Landroid/view/DisplayInfo$1;

    invoke-direct {v0}, Landroid/view/DisplayInfo$1;-><init>()V

    sput-object v0, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-p <init>()V
    .registers 3

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 226
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 231
    sget-object v1, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 237
    sget-object v1, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v1, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 243
    filled-new-array {v0}, [I

    move-result-object v1

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 249
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 341
    iput v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 395
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 400
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 435
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 226
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 231
    sget-object v1, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 237
    sget-object v1, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v1, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 243
    filled-new-array {v0}, [I

    move-result-object v1

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 249
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 341
    iput v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 395
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 400
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 442
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 443
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/DisplayInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/DisplayInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 226
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 231
    sget-object v1, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 237
    sget-object v1, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v1, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 243
    filled-new-array {v0}, [I

    move-result-object v1

    iput-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 249
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 341
    iput v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 395
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 400
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 438
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 439
    return-void
.end method

.method private greylist-max-o findMode(I)Landroid/view/Display$Mode;
    .registers 5
    .param p1, "id"    # I

    .line 788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 789
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 790
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    return-object v1

    .line 788
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 793
    .end local v0    # "i":I
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate mode id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",supportedModes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 794
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o flagsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "flags"    # I

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1089
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_e

    .line 1090
    const-string v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    :cond_e
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_17

    .line 1093
    const-string v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 1096
    const-string v1, ", FLAG_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 1099
    const-string v1, ", FLAG_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_29
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_33

    .line 1102
    const-string v1, ", FLAG_SCALING_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_33
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3c

    .line 1105
    const-string v1, ", FLAG_ROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    :cond_3c
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_45

    .line 1108
    const-string v1, ", FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :cond_45
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_4e

    .line 1111
    const-string v1, ", FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    :cond_4e
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_57

    .line 1114
    const-string v1, ", FLAG_TRUSTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_57
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_60

    .line 1117
    const-string v1, ", FLAG_OWN_DISPLAY_GROUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :cond_60
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_69

    .line 1120
    const-string v1, ", FLAG_ALWAYS_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :cond_69
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_72

    .line 1123
    const-string v1, ", FLAG_TOUCH_FEEDBACK_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    :cond_72
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_7b

    .line 1126
    const-string v1, ", FLAG_REAR_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    :cond_7b
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_86

    .line 1129
    const-string v1, ", FLAG_ALLOWS_CONTENT_MODE_SWITCH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    :cond_86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V
    .registers 8
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 919
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 920
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 922
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 923
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 924
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 926
    if-eqz p3, :cond_2c

    .line 927
    iget-object v0, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 928
    .local v0, "appBounds":Landroid/graphics/Rect;
    :goto_2d
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_35

    :cond_34
    move v1, p4

    .line 929
    .end local p4    # "width":I
    .local v1, "width":I
    :goto_35
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p4

    goto :goto_3d

    :cond_3c
    move p4, p5

    .line 931
    .end local p5    # "height":I
    .local p4, "height":I
    :goto_3d
    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 932
    iput p4, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p4, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 935
    if-eqz p3, :cond_4b

    if-nez v0, :cond_4b

    const/4 p5, 0x1

    goto :goto_4c

    :cond_4b
    const/4 p5, 0x0

    .line 936
    .local p5, "applyToSize":Z
    :goto_4c
    invoke-virtual {p2, p1, p5}, Landroid/content/res/CompatibilityInfo;->applyDisplayMetricsIfNeeded(Landroid/util/DisplayMetrics;Z)V

    .line 937
    return-void
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/view/DisplayInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .line 538
    iget v0, p1, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    .line 539
    iget v0, p1, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    .line 540
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    .line 541
    iget v0, p1, Landroid/view/DisplayInfo;->displayId:I

    iput v0, p0, Landroid/view/DisplayInfo;->displayId:I

    .line 542
    iget v0, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    iput v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 543
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 544
    iget-object v0, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 545
    iget-object v0, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 546
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 547
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 548
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 549
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 550
    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 551
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 552
    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 553
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 554
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 555
    iget-object v0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 556
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 557
    iget v0, p1, Landroid/view/DisplayInfo;->modeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 558
    iget v0, p1, Landroid/view/DisplayInfo;->renderFrameRate:F

    iput v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 559
    iget-boolean v0, p1, Landroid/view/DisplayInfo;->hasArrSupport:Z

    iput-boolean v0, p0, Landroid/view/DisplayInfo;->hasArrSupport:Z

    .line 560
    iget-object v0, p1, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iput-object v0, p0, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 561
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 563
    iget v0, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 564
    iget v0, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 565
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 566
    iget-object v0, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    iget-object v1, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 568
    iget v0, p1, Landroid/view/DisplayInfo;->colorMode:I

    iput v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    .line 569
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 571
    iget-object v0, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 572
    iget-boolean v0, p1, Landroid/view/DisplayInfo;->isForceSdr:Z

    iput-boolean v0, p0, Landroid/view/DisplayInfo;->isForceSdr:Z

    .line 573
    iget-object v0, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iput-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 574
    iget-boolean v0, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iput-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 575
    iget v0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 576
    iget v0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 577
    iget v0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 578
    iget-wide v0, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 579
    iget-wide v0, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 580
    iget v0, p1, Landroid/view/DisplayInfo;->state:I

    iput v0, p0, Landroid/view/DisplayInfo;->state:I

    .line 581
    iget v0, p1, Landroid/view/DisplayInfo;->committedState:I

    iput v0, p0, Landroid/view/DisplayInfo;->committedState:I

    .line 582
    iget v0, p1, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    .line 583
    iget-object v0, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 584
    iget v0, p1, Landroid/view/DisplayInfo;->removeMode:I

    iput v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 585
    iget v0, p1, Landroid/view/DisplayInfo;->refreshRateOverride:F

    iput v0, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 586
    iget v0, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iput v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 587
    iget v0, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iput v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 588
    iget v0, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    iput v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 589
    iget v0, p1, Landroid/view/DisplayInfo;->brightnessDim:F

    iput v0, p0, Landroid/view/DisplayInfo;->brightnessDim:F

    .line 590
    iget-object v0, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 591
    iget v0, p1, Landroid/view/DisplayInfo;->installOrientation:I

    iput v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    .line 592
    iget-object v0, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 593
    iget-object v0, p1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iput-object v0, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 594
    iget v0, p1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    iput v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 595
    iget-object v0, p1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 596
    iget-object v0, p1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 597
    iget-boolean v0, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    iput-boolean v0, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 598
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1073
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1074
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1075
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1076
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1077
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1078
    const-wide v2, 0x10900000005L

    iget-object v4, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1079
    const-wide v2, 0x10500000006L

    iget v4, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1080
    const-wide v2, 0x10500000008L

    iget v4, p0, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1081
    iget-object v2, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v2, :cond_58

    .line 1082
    iget-object v2, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/DisplayCutout;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1084
    :cond_58
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1085
    return-void
.end method

.method public greylist-max-o equals(Landroid/view/DisplayInfo;)Z
    .registers 3
    .param p1, "other"    # Landroid/view/DisplayInfo;

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist equals(Landroid/view/DisplayInfo;Z)Z
    .registers 10
    .param p1, "other"    # Landroid/view/DisplayInfo;
    .param p2, "compareOnlyBasicChanges"    # Z

    .line 464
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v3, p1, Landroid/view/DisplayInfo;->layerStack:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->flags:I

    iget v3, p1, Landroid/view/DisplayInfo;->flags:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->type:I

    iget v3, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p1, Landroid/view/DisplayInfo;->displayId:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    iget v3, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    if-ne v2, v3, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-object v3, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 470
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v3, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 471
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 472
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, p1, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v3, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v3, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v3, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v3, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v3, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v2, v3, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v3, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 481
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v3, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v2, v3, :cond_186

    iget-boolean v2, p0, Landroid/view/DisplayInfo;->hasArrSupport:Z

    iget-boolean v3, p1, Landroid/view/DisplayInfo;->hasArrSupport:Z

    if-ne v2, v3, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v3, p1, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 484
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    iget-object v3, p1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 485
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v3, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    iget v3, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    if-ne v2, v3, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v3, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 488
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    iget-object v3, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 489
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->colorMode:I

    iget v3, p1, Landroid/view/DisplayInfo;->colorMode:I

    if-ne v2, v3, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v3, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 491
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v3, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 492
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-boolean v2, p0, Landroid/view/DisplayInfo;->isForceSdr:Z

    iget-boolean v3, p1, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-ne v2, v3, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-object v3, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 494
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-boolean v2, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iget-boolean v3, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v3, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v3, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->state:I

    iget v3, p1, Landroid/view/DisplayInfo;->state:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v3, p1, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v2, v3, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 501
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->removeMode:I

    iget v3, p1, Landroid/view/DisplayInfo;->removeMode:I

    if-ne v2, v3, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iget v3, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iget v3, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    iget v3, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->brightnessDim:F

    iget v3, p1, Landroid/view/DisplayInfo;->brightnessDim:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v3, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 507
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->installOrientation:I

    iget v3, p1, Landroid/view/DisplayInfo;->installOrientation:I

    if-ne v2, v3, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iget-object v3, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 509
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v3, p1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 510
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget v2, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    iget v3, p1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 511
    invoke-static {v2, v3}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    iget-object v3, p1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 512
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-object v2, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iget-object v3, p1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 513
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_186

    iget-boolean v2, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget-boolean v3, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-ne v2, v3, :cond_186

    move v2, v0

    goto :goto_187

    :cond_186
    move v2, v1

    .line 517
    .local v2, "isEqualWithOnlyBasicChanges":Z
    :goto_187
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->committedStateSeparateEvent()Z

    move-result v3

    if-nez v3, :cond_199

    .line 518
    if-eqz v2, :cond_197

    iget v3, p0, Landroid/view/DisplayInfo;->committedState:I

    iget v4, p1, Landroid/view/DisplayInfo;->committedState:I

    if-ne v3, v4, :cond_197

    move v3, v0

    goto :goto_198

    :cond_197
    move v3, v1

    :goto_198
    move v2, v3

    .line 521
    :cond_199
    if-nez p2, :cond_1c8

    .line 522
    if-eqz v2, :cond_1c6

    .line 523
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1c6

    iget-wide v3, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v5, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c6

    iget-wide v3, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v5, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c6

    iget v3, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v4, p1, Landroid/view/DisplayInfo;->modeId:I

    if-ne v3, v4, :cond_1c6

    iget v3, p0, Landroid/view/DisplayInfo;->committedState:I

    iget v4, p1, Landroid/view/DisplayInfo;->committedState:I

    if-ne v3, v4, :cond_1c6

    goto :goto_1c7

    :cond_1c6
    move v0, v1

    .line 522
    :goto_1c7
    return v0

    .line 529
    :cond_1c8
    return v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 447
    instance-of v0, p1, Landroid/view/DisplayInfo;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayInfo;

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;
    .registers 8
    .param p1, "refreshRate"    # F

    .line 804
    iget-object v0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 805
    .local v0, "modes":[Landroid/view/Display$Mode;
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    .line 806
    .local v1, "defaultMode":Landroid/view/Display$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_20

    .line 807
    aget-object v3, v0, v2

    .line 808
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    .line 807
    invoke-virtual {v3, v4, v5, p1}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 809
    aget-object v3, v0, v2

    return-object v3

    .line 806
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 812
    .end local v2    # "i":I
    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist-max-o getAppMetrics(Landroid/util/DisplayMetrics;)V
    .registers 4
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;

    .line 848
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 849
    return-void
.end method

.method public greylist-max-o getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "ci"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 858
    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local p2    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local p3    # "configuration":Landroid/content/res/Configuration;
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    .local v2, "ci":Landroid/content/res/CompatibilityInfo;
    .local v3, "configuration":Landroid/content/res/Configuration;
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 859
    return-void
.end method

.method public greylist-max-o getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    .registers 9
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "displayAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 852
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 853
    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 852
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "outMetrics":Landroid/util/DisplayMetrics;
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 854
    return-void
.end method

.method public greylist-max-o getDefaultMode()Landroid/view/Display$Mode;
    .registers 2

    .line 784
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDefaultRefreshRates()[F
    .registers 3

    .line 819
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    array-length v0, v0

    if-nez v0, :cond_a

    .line 820
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultRefreshRatesLegacy()[F

    move-result-object v0

    return-object v0

    .line 822
    :cond_a
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultRefreshRatesLegacy()[F
    .registers 10

    .line 829
    iget-object v0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 830
    .local v0, "modes":[Landroid/view/Display$Mode;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 831
    .local v1, "rates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v2

    .line 832
    .local v2, "defaultMode":Landroid/view/Display$Mode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v4, v0

    if-ge v3, v4, :cond_33

    .line 833
    aget-object v4, v0, v3

    .line 834
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    if-ne v5, v6, :cond_30

    .line 835
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-ne v5, v6, :cond_30

    .line 836
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 832
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 839
    .end local v3    # "i":I
    :cond_33
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [F

    .line 840
    .local v3, "result":[F
    const/4 v4, 0x0

    .line 841
    .local v4, "i":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 842
    .local v6, "rate":Ljava/lang/Float;
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v3, v4

    .line 843
    .end local v6    # "rate":Ljava/lang/Float;
    move v4, v7

    goto :goto_3e

    .line 844
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_54
    return-object v3
.end method

.method public greylist-max-o getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 871
    iget v4, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p3    # "configuration":Landroid/content/res/Configuration;
    .local v1, "outMetrics":Landroid/util/DisplayMetrics;
    .local v2, "compatInfo":Landroid/content/res/CompatibilityInfo;
    .local v3, "configuration":Landroid/content/res/Configuration;
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 872
    return-void
.end method

.method public blacklist getMaxBoundsMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .registers 11
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 880
    iget-object v0, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 882
    .local v0, "bounds":Landroid/graphics/Rect;
    nop

    .line 883
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 882
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .local v2, "outMetrics":Landroid/util/DisplayMetrics;
    .local v3, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    .line 884
    return-void
.end method

.method public greylist-max-o getMode()Landroid/view/Display$Mode;
    .registers 2

    .line 780
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNaturalHeight()I
    .registers 3

    .line 892
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_d

    .line 893
    :cond_a
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_f

    :cond_d
    :goto_d
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 892
    :goto_f
    return v0
.end method

.method public greylist-max-o getNaturalWidth()I
    .registers 3

    .line 887
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_d

    .line 888
    :cond_a
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_f

    :cond_d
    :goto_d
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 887
    :goto_f
    return v0
.end method

.method public blacklist getRefreshRate()F
    .registers 3

    .line 767
    iget v0, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 768
    iget v0, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    return v0

    .line 770
    :cond_a
    iget v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    .line 771
    iget v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    return v0

    .line 773
    :cond_13
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v0, v0

    if-nez v0, :cond_19

    .line 774
    return v1

    .line 776
    :cond_19
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method public greylist-max-o hasAccess(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 914
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v2, p0, Landroid/view/DisplayInfo;->displayId:I

    invoke-static {p1, v0, v1, v2}, Landroid/view/Display;->hasAccess(IIII)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isHdr()Z
    .registers 3

    .line 897
    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 898
    .local v0, "types":[I
    :goto_c
    if-eqz v0, :cond_13

    array-length v1, v0

    if-lez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public greylist-max-o isWideColorGamut()Z
    .registers 7

    .line 902
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_15

    aget v4, v0, v3

    .line 903
    .local v4, "colorMode":I
    const/4 v5, 0x6

    if-eq v4, v5, :cond_13

    const/4 v5, 0x7

    if-le v4, v5, :cond_10

    goto :goto_13

    .line 902
    .end local v4    # "colorMode":I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 904
    .restart local v4    # "colorMode":I
    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0

    .line 907
    .end local v4    # "colorMode":I
    :cond_15
    return v2
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->displayId:I

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 606
    const-class v0, Landroid/view/DisplayAddress;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayAddress;

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 607
    const-class v0, Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DeviceProductInfo;

    iput-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 617
    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/DisplayInfo;->hasArrSupport:Z

    .line 622
    const-class v0, Landroid/view/FrameRateCategoryRate;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FrameRateCategoryRate;

    iput-object v0, p0, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 625
    .local v0, "numOfSupportedRefreshRates":I
    new-array v2, v0, [F

    iput-object v2, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 626
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9a
    if-ge v2, v0, :cond_a7

    .line 627
    iget-object v3, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    aput v4, v3, v2

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 629
    .end local v2    # "i":I
    :cond_a7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    .local v2, "nModes":I
    new-array v3, v2, [Landroid/view/Display$Mode;

    iput-object v3, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 633
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_bc
    if-ge v3, v2, :cond_cd

    .line 634
    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    sget-object v5, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    aput-object v5, v4, v3

    .line 633
    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    .line 636
    .end local v3    # "i":I
    :cond_cd
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 637
    .local v3, "nAppModes":I
    new-array v4, v3, [Landroid/view/Display$Mode;

    iput-object v4, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 638
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d6
    if-ge v4, v3, :cond_e7

    .line 639
    iget-object v5, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    sget-object v6, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Display$Mode;

    aput-object v6, v5, v4

    .line 638
    add-int/lit8 v4, v4, 0x1

    goto :goto_d6

    .line 641
    .end local v4    # "i":I
    :cond_e7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/view/DisplayInfo;->colorMode:I

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 643
    .local v4, "nColorModes":I
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 644
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f6
    if-ge v5, v4, :cond_103

    .line 645
    iget-object v6, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    aput v7, v6, v5

    .line 644
    add-int/lit8 v5, v5, 0x1

    goto :goto_f6

    .line 647
    .end local v5    # "i":I
    :cond_103
    const-class v5, Landroid/view/Display$HdrCapabilities;

    invoke-virtual {p1, v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$HdrCapabilities;

    iput-object v5, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/DisplayInfo;->isForceSdr:Z

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->state:I

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->committedState:I

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->ownerUid:I

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->removeMode:I

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/view/DisplayInfo;->brightnessDim:F

    .line 666
    sget-object v5, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/RoundedCorners;

    iput-object v5, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 668
    .local v5, "numUserDisabledFormats":I
    new-array v6, v5, [I

    iput-object v6, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 669
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18c
    if-ge v6, v5, :cond_199

    .line 670
    iget-object v7, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    aput v8, v7, v6

    .line 669
    add-int/lit8 v6, v6, 0x1

    goto :goto_18c

    .line 672
    .end local v6    # "i":I
    :cond_199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/view/DisplayInfo;->installOrientation:I

    .line 673
    sget-object v6, Landroid/view/DisplayShape;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/DisplayShape;

    iput-object v6, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 674
    sget-object v6, Landroid/view/SurfaceControl$RefreshRateRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$RefreshRateRange;

    iput-object v6, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    iput v6, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 676
    const-class v6, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {p1, v1, v6}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 680
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DisplayInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    const-string v1, "\", displayId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    iget v1, p0, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 947
    const-string v1, ", displayGroupId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    iget v1, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 949
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-static {v1}, Landroid/view/DisplayInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    const-string v1, ", real "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    iget v2, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 954
    const-string v2, ", largest app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    iget v2, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    iget v2, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 958
    const-string v2, ", smallest app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    iget v2, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    iget v2, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    const-string v2, ", appVsyncOff "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 964
    const-string v2, ", presDeadline "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 966
    const-string v2, ", mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    iget v2, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 968
    const-string v2, ", renderFrameRate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    iget v2, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 970
    const-string v2, ", hasArrSupport "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    iget-boolean v2, p0, Landroid/view/DisplayInfo;->hasArrSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 972
    const-string v2, ", frameRateCategoryRate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v2, p0, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 974
    const-string v2, ", supportedRefreshRates "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v2, ", defaultMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget v2, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 978
    const-string v2, ", userPreferredModeId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    iget v2, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 980
    const-string v2, ", supportedModes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const-string v2, ", appsSupportedModes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    iget-object v2, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const-string v2, ", hdrCapabilities "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    iget-object v2, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 986
    const-string v2, ", isForceSdr "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget-boolean v2, p0, Landroid/view/DisplayInfo;->isForceSdr:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 988
    const-string v2, ", userDisabledHdrTypes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    iget-object v2, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v2, ", minimalPostProcessingSupported "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    iget-boolean v2, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 992
    const-string v2, ", rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    iget v2, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    const-string v2, ", state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    iget v2, p0, Landroid/view/DisplayInfo;->state:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string v2, ", committedState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    iget v2, p0, Landroid/view/DisplayInfo;->committedState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    const-string/jumbo v4, "}"

    if-eq v2, v3, :cond_143

    .line 1000
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1004
    :cond_143
    const-string v2, ", type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    iget v2, p0, Landroid/view/DisplayInfo;->type:I

    invoke-static {v2}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v2, ", uniqueId \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    iget-object v2, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v2, "\", app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    iget v2, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    iget v2, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1012
    const-string v2, ", density "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    iget v2, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1014
    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    iget v2, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1018
    const-string v1, ") dpi, layerStack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1020
    const-string v1, ", colorMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    iget v1, p0, Landroid/view/DisplayInfo;->colorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1022
    const-string v1, ", supportedColorModes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v1, :cond_1ba

    .line 1025
    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_1ba
    const-string v1, ", deviceProductInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    iget-object v1, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1029
    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    if-nez v1, :cond_1cc

    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1e8

    .line 1030
    :cond_1cc
    const-string v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    :cond_1e8
    const-string v1, ", removeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    iget v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1035
    const-string v1, ", refreshRateOverride "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    iget v1, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1037
    const-string v1, ", brightnessMinimum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    iget v1, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1039
    const-string v1, ", brightnessMaximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    iget v1, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1041
    const-string v1, ", brightnessDefault "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    iget v1, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1043
    const-string v1, ", brightnessDim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget v1, p0, Landroid/view/DisplayInfo;->brightnessDim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1045
    const-string v1, ", installOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    iget v1, p0, Landroid/view/DisplayInfo;->installOrientation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    const-string v1, ", layoutLimitedRefreshRate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    iget-object v1, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1049
    const-string v1, ", hdrSdrRatio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    iget v1, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_24f

    .line 1051
    const-string v1, "not_available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_254

    .line 1053
    :cond_24f
    iget v1, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1055
    :goto_254
    const-string v1, ", thermalRefreshRateThrottling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    iget-object v1, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1057
    const-string v1, ", thermalBrightnessThrottlingDataId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v1, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    const-string v1, ", canHostTasks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    iget-boolean v1, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 684
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 690
    iget-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 691
    iget-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 692
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    .line 701
    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 704
    iget-boolean v0, p0, Landroid/view/DisplayInfo;->hasArrSupport:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 705
    iget-object v0, p0, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 706
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_78
    if-ge v2, v1, :cond_82

    aget v3, v0, v2

    .line 708
    .local v3, "supportedRefreshRate":F
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 707
    .end local v3    # "supportedRefreshRate":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 710
    :cond_82
    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget v0, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_93
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_a2

    .line 714
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/view/Display$Mode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 716
    .end local v0    # "i":I
    :cond_a2
    iget-object v0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a9
    iget-object v1, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_b8

    .line 718
    iget-object v1, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/view/Display$Mode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 720
    .end local v0    # "i":I
    :cond_b8
    iget v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c4
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_d3

    .line 723
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 725
    .end local v0    # "i":I
    :cond_d3
    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 726
    iget-boolean v0, p0, Landroid/view/DisplayInfo;->isForceSdr:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 727
    iget-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 728
    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 730
    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 731
    iget-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 732
    iget-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 733
    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget v0, p0, Landroid/view/DisplayInfo;->committedState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 738
    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    iget v0, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 740
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 741
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 742
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 743
    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDim:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 744
    iget-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 745
    iget-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_13e
    iget-object v1, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14d

    .line 747
    iget-object v1, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_13e

    .line 749
    .end local v0    # "i":I
    :cond_14d
    iget v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget-object v0, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 751
    iget-object v0, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 752
    iget v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 753
    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 754
    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 755
    iget-boolean v0, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 756
    return-void
.end method
