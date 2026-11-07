.class public final Landroid/hardware/camera2/params/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/OutputConfiguration$MirrorMode;,
        Landroid/hardware/camera2/params/OutputConfiguration$StreamUseCase;,
        Landroid/hardware/camera2/params/OutputConfiguration$SensorPixelMode;,
        Landroid/hardware/camera2/params/OutputConfiguration$TimestampBase;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_SURFACES_COUNT:I = 0x4

.field public static final whitelist MIRROR_MODE_AUTO:I = 0x0

.field public static final whitelist MIRROR_MODE_H:I = 0x2

.field public static final whitelist MIRROR_MODE_NONE:I = 0x1

.field public static final whitelist MIRROR_MODE_V:I = 0x3

.field public static final whitelist ROTATION_0:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_180:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_270:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ROTATION_90:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SURFACE_GROUP_ID_NONE:I = -0x1

.field private static final blacklist SURFACE_TYPE_IMAGE_READER:I = 0x4

.field private static final blacklist SURFACE_TYPE_MEDIA_CODEC:I = 0x3

.field private static final blacklist SURFACE_TYPE_MEDIA_RECORDER:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OutputConfiguration"

.field public static final whitelist TIMESTAMP_BASE_CHOREOGRAPHER_SYNCED:I = 0x4

.field public static final whitelist TIMESTAMP_BASE_DEFAULT:I = 0x0

.field public static final whitelist TIMESTAMP_BASE_MONOTONIC:I = 0x2

.field public static final blacklist TIMESTAMP_BASE_READOUT_SENSOR:I = 0x5

.field public static final whitelist TIMESTAMP_BASE_REALTIME:I = 0x3

.field public static final whitelist TIMESTAMP_BASE_SENSOR:I = 0x1

.field private static blacklist sNextMultiResolutionGroupId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final greylist-max-o SURFACE_TYPE_SURFACE_TEXTURE:I

.field private final greylist-max-o SURFACE_TYPE_SURFACE_VIEW:I

.field private final greylist-max-o SURFACE_TYPE_UNKNOWN:I

.field private blacklist mColorSpace:I

.field private final greylist-max-o mConfiguredDataspace:I

.field private final greylist-max-o mConfiguredFormat:I

.field private final greylist-max-o mConfiguredGenerationId:I

.field private final greylist-max-o mConfiguredSize:Landroid/util/Size;

.field private blacklist mDynamicRangeProfile:J

.field private final greylist-max-o mIsDeferredConfig:Z

.field private blacklist mIsMultiResolution:Z

.field private blacklist mIsReadoutSensorTimestampBase:Z

.field private greylist-max-o mIsShared:Z

.field private blacklist mMirrorMode:I

.field private blacklist mMirrorModeForSurfaces:Landroid/util/IntArray;

.field private greylist-max-o mPhysicalCameraId:Ljava/lang/String;

.field private blacklist mReadoutTimestampEnabled:Z

.field private final greylist-max-o mRotation:I

.field private blacklist mSensorPixelModesUsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStreamUseCase:J

.field private final greylist-max-o mSurfaceGroupId:I

.field private final greylist-max-o mSurfaceType:I

.field private greylist-max-o mSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimestampBase:I

.field private blacklist mUsage:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1832
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/OutputConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2016
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->sNextMultiResolutionGroupId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor whitelist <init>(IILandroid/util/Size;)V
    .registers 12
    .param p1, "surfaceGroupId"    # I
    .param p2, "format"    # I
    .param p3, "surfaceSize"    # Landroid/util/Size;

    .line 904
    nop

    .line 905
    const/16 v0, 0x22

    if-ne p2, v0, :cond_8

    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x3

    :goto_a
    move-wide v6, v0

    .line 904
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .end local p1    # "surfaceGroupId":I
    .end local p2    # "format":I
    .end local p3    # "surfaceSize":Landroid/util/Size;
    .local v3, "surfaceGroupId":I
    .local v4, "format":I
    .local v5, "surfaceSize":Landroid/util/Size;
    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(IILandroid/util/Size;J)V

    .line 906
    return-void
.end method

.method public constructor whitelist <init>(IILandroid/util/Size;J)V
    .registers 10
    .param p1, "surfaceGroupId"    # I
    .param p2, "format"    # I
    .param p3, "surfaceSize"    # Landroid/util/Size;
    .param p4, "usage"    # J

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 365
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 370
    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 960
    const-string v2, "surfaceSize must not be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eqz v2, :cond_67

    .line 965
    const/4 v2, 0x4

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 966
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 967
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 968
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 969
    iput-object p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 970
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 971
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 972
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 973
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 974
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 975
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 976
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 977
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 978
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 979
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 980
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 981
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 982
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 983
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 984
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 985
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    .line 986
    iput-wide p4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 987
    return-void

    .line 962
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface size needs to be non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(ILandroid/util/Size;)V
    .registers 5
    .param p1, "format"    # I
    .param p2, "surfaceSize"    # Landroid/util/Size;

    .line 876
    nop

    .line 877
    const/16 v0, 0x22

    if-ne p1, v0, :cond_8

    const-wide/16 v0, 0x0

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x3

    .line 876
    :goto_a
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/util/Size;J)V

    .line 878
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/util/Size;J)V
    .registers 11
    .param p1, "format"    # I
    .param p2, "surfaceSize"    # Landroid/util/Size;
    .param p3, "usage"    # J

    .line 931
    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    .end local p1    # "format":I
    .end local p2    # "surfaceSize":Landroid/util/Size;
    .end local p3    # "usage":J
    .local v2, "format":I
    .local v3, "surfaceSize":Landroid/util/Size;
    .local v4, "usage":J
    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(IILandroid/util/Size;J)V

    .line 932
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/Surface;)V
    .registers 4
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 429
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/Surface;I)V
    .registers 9
    .param p1, "surfaceGroupId"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "rotation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 365
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 370
    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 580
    const-string v2, "Surface must not be null"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const/4 v2, 0x3

    const-string v3, "Rotation constant"

    invoke-static {p3, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 582
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 583
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 584
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 585
    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iput p3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 587
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 588
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 589
    invoke-static {p2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 590
    invoke-virtual {p2}, Landroid/view/Surface;->getGenerationId()I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 591
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 592
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 593
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 594
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 595
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 596
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 597
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 598
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 599
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 600
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 601
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 602
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->mirrorModeSharedSurfaces()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 603
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    .line 605
    :cond_73
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 606
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    .line 607
    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 608
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 4
    .param p1, "other"    # Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 370
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 1566
    if-eqz p1, :cond_67

    .line 1570
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 1571
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 1572
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 1573
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 1574
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1575
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1576
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1577
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 1578
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 1579
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 1580
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1581
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 1582
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 1583
    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 1584
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 1585
    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 1586
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1587
    iget v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 1588
    iget-object v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 1589
    iget-boolean v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 1590
    iget-wide v0, p1, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    iput-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 1591
    return-void

    .line 1567
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OutputConfiguration shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 30
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1596
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 365
    const/4 v2, 0x0

    iput v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 370
    const/4 v3, 0x1

    iput v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 1597
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1598
    .local v4, "rotation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1599
    .local v5, "surfaceSetId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1600
    .local v6, "surfaceType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1601
    .local v7, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1602
    .local v8, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v3, :cond_2a

    move v9, v3

    goto :goto_2b

    :cond_2a
    move v9, v2

    .line 1603
    .local v9, "isDeferred":Z
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v3, :cond_33

    move v10, v3

    goto :goto_34

    :cond_33
    move v10, v2

    .line 1604
    .local v10, "isShared":Z
    :goto_34
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    .local v11, "surfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    sget-object v12, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v13, p1

    invoke-virtual {v13, v11, v12}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 1606
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1607
    .local v12, "physicalCameraId":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-ne v14, v3, :cond_4c

    move v14, v3

    goto :goto_4d

    :cond_4c
    move v14, v2

    .line 1608
    .local v14, "isMultiResolutionOutput":Z
    :goto_4d
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 1610
    .local v15, "sensorPixelModesUsed":[I
    const/4 v1, 0x3

    const-string v3, "Rotation constant"

    invoke-static {v4, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1611
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1612
    .local v2, "dynamicRangeProfile":J
    invoke-static {v2, v3}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->checkProfileValue(J)V

    .line 1613
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1614
    .local v1, "colorSpace":I
    move-wide/from16 v18, v2

    move v3, v1

    .end local v1    # "colorSpace":I
    .end local v2    # "dynamicRangeProfile":J
    .local v3, "colorSpace":I
    .local v18, "dynamicRangeProfile":J
    invoke-virtual {v13}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1616
    .local v1, "streamUseCase":J
    move/from16 v20, v3

    .end local v3    # "colorSpace":I
    .local v20, "colorSpace":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1617
    .local v3, "timestampBase":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1618
    .local v13, "mirrorMode":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    .line 1619
    .local v21, "mirrorModeForSurfaces":[I
    move-object/from16 v22, v15

    .end local v15    # "sensorPixelModesUsed":[I
    .local v22, "sensorPixelModesUsed":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move/from16 v23, v13

    const/4 v13, 0x1

    .end local v13    # "mirrorMode":I
    .local v23, "mirrorMode":I
    if-ne v15, v13, :cond_83

    goto :goto_84

    :cond_83
    const/4 v13, 0x0

    .line 1620
    .local v13, "readoutTimestampEnabled":Z
    :goto_84
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1621
    .local v15, "format":I
    move/from16 v16, v13

    .end local v13    # "readoutTimestampEnabled":Z
    .local v16, "readoutTimestampEnabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1622
    .local v13, "dataSpace":I
    move-wide/from16 v24, v1

    .end local v1    # "streamUseCase":J
    .local v24, "streamUseCase":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1624
    .local v1, "usage":J
    iput v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 1625
    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 1626
    iput-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 1627
    move/from16 v26, v4

    .end local v4    # "rotation":I
    .local v26, "rotation":I
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v7, v8}, Landroid/util/Size;-><init>(II)V

    iput-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1628
    iput-boolean v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 1629
    iput-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 1630
    move/from16 v27, v5

    .end local v5    # "surfaceSetId":I
    .local v27, "surfaceSetId":I
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 1631
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e4

    .line 1632
    const/4 v4, -0x1

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 1633
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1634
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1635
    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    goto :goto_104

    .line 1637
    :cond_e4
    iput v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 1638
    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_fb

    .line 1639
    const/16 v4, 0x22

    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v5

    iput v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1641
    nop

    .line 1642
    invoke-static {v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    goto :goto_101

    .line 1644
    :cond_fb
    iput v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 1645
    iput v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1646
    iput-wide v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 1648
    :goto_101
    const/4 v5, 0x0

    iput v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 1650
    :goto_104
    iput-object v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1651
    iput-boolean v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 1652
    invoke-static/range {v22 .. v22}, Landroid/hardware/camera2/params/OutputConfiguration;->convertIntArrayToIntegerList([I)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 1653
    move-wide/from16 v4, v18

    .end local v18    # "dynamicRangeProfile":J
    .local v4, "dynamicRangeProfile":J
    iput-wide v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 1654
    move-wide/from16 v17, v1

    move/from16 v1, v20

    .end local v20    # "colorSpace":I
    .local v1, "colorSpace":I
    .local v17, "usage":J
    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 1655
    move-wide/from16 v1, v24

    .end local v24    # "streamUseCase":J
    .local v1, "streamUseCase":J
    .restart local v20    # "colorSpace":I
    iput-wide v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 1656
    iput v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1657
    move/from16 v1, v23

    .end local v23    # "mirrorMode":I
    .local v1, "mirrorMode":I
    .restart local v24    # "streamUseCase":J
    iput v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 1658
    invoke-static/range {v21 .. v21}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 1659
    move/from16 v2, v16

    .end local v16    # "readoutTimestampEnabled":Z
    .local v2, "readoutTimestampEnabled":Z
    iput-boolean v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 1660
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/OutputConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/util/Size;Ljava/lang/Class;)V
    .registers 7
    .param p1, "surfaceSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Size;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 810
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_UNKNOWN:I

    .line 365
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_VIEW:I

    .line 370
    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->SURFACE_TYPE_SURFACE_TEXTURE:I

    .line 811
    const-string v3, "surfaceSize must not be null"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string v3, "klass must not be null"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-class v3, Landroid/view/SurfaceHolder;

    if-ne p2, v3, :cond_1f

    .line 814
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 815
    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_3b

    .line 816
    :cond_1f
    const-class v3, Landroid/graphics/SurfaceTexture;

    if-ne p2, v3, :cond_28

    .line 817
    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 818
    iput-boolean v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_3b

    .line 819
    :cond_28
    const-class v2, Landroid/media/MediaRecorder;

    if-ne p2, v2, :cond_32

    .line 820
    const/4 v2, 0x2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 821
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    goto :goto_3b

    .line 822
    :cond_32
    const-class v2, Landroid/media/MediaCodec;

    if-ne p2, v2, :cond_92

    .line 823
    const/4 v2, 0x3

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 824
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    .line 830
    :goto_3b
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_8a

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eqz v2, :cond_8a

    .line 834
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    .line 835
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 836
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 837
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    .line 838
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 839
    const/16 v2, 0x22

    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v3

    iput v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    .line 840
    invoke-static {v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToDataspace(I)I

    move-result v2

    iput v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 841
    iput v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    .line 842
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 843
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 844
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 845
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 846
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 847
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 848
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 849
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 850
    iput-boolean v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    .line 851
    iput-wide v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 852
    return-void

    .line 831
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface size needs to be non-zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_92
    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    .line 827
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown surface source class type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 354
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 355
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;I)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "rotation"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 554
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;I)V

    .line 555
    return-void
.end method

.method private static blacklist convertIntArrayToIntegerList([I)Ljava/util/ArrayList;
    .registers 4
    .param p0, "intArray"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1860
    .local v0, "integerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_8

    .line 1861
    return-object v0

    .line 1863
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 1864
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1863
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1866
    .end local v1    # "i":I
    :cond_18
    return-object v0
.end method

.method private static blacklist convertIntegerToIntList(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1851
    .local p0, "integerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1852
    .local v0, "integerArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1853
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1852
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1855
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static whitelist createInstancesForMultiResolutionOutput(Landroid/hardware/camera2/MultiResolutionImageReader;)Ljava/util/Collection;
    .registers 8
    .param p0, "multiResolutionImageReader"    # Landroid/hardware/camera2/MultiResolutionImageReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/MultiResolutionImageReader;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 622
    const-string v0, "Multi-resolution image reader must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    invoke-static {}, Landroid/hardware/camera2/params/OutputConfiguration;->getAndIncreaseMultiResolutionGroupId()I

    move-result v0

    .line 625
    .local v0, "groupId":I
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->getReaders()[Landroid/media/ImageReader;

    move-result-object v1

    .line 626
    .local v1, "imageReaders":[Landroid/media/ImageReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    array-length v4, v1

    if-ge v3, v4, :cond_37

    .line 628
    aget-object v4, v1, v3

    .line 629
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/MultiResolutionImageReader;->getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    move-result-object v4

    .line 631
    .local v4, "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    aget-object v6, v1, v3

    .line 632
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 633
    .local v5, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->setMultiResolutionOutput()V

    .line 635
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .end local v4    # "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    .end local v5    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 642
    .end local v3    # "i":I
    :cond_37
    return-object v2
.end method

.method public static whitelist createInstancesForMultiResolutionOutput(Ljava/util/Collection;I)Ljava/util/List;
    .registers 9
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    .line 682
    .local p0, "streams":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    if-eqz p0, :cond_4f

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4f

    .line 686
    const/16 v0, 0x11

    if-eq p1, v0, :cond_47

    .line 691
    invoke-static {}, Landroid/hardware/camera2/params/OutputConfiguration;->getAndIncreaseMultiResolutionGroupId()I

    move-result v0

    .line 692
    .local v0, "groupId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 694
    .local v3, "stream":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    new-instance v4, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 695
    .local v4, "surfaceSize":Landroid/util/Size;
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v5, v0, p1, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(IILandroid/util/Size;)V

    .line 697
    .local v5, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v5}, Landroid/hardware/camera2/params/OutputConfiguration;->setMultiResolutionOutput()V

    .line 699
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v3    # "stream":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    .end local v4    # "surfaceSize":Landroid/util/Size;
    .end local v5    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_1a

    .line 706
    :cond_46
    return-object v1

    .line 687
    .end local v0    # "groupId":I
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The streams list must contain at least 2 entries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getAndIncreaseMultiResolutionGroupId()I
    .registers 2

    .line 1976
    sget-object v0, Landroid/hardware/camera2/params/OutputConfiguration;->sNextMultiResolutionGroupId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/hardware/camera2/params/OutputConfiguration$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndUpdate(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getAndIncreaseMultiResolutionGroupId$0(I)I
    .registers 3
    .param p0, "i"    # I

    .line 1977
    add-int/lit8 v0, p0, 0x1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    add-int/lit8 v0, p0, 0x2

    goto :goto_a

    :cond_8
    add-int/lit8 v0, p0, 0x1

    :goto_a
    return v0
.end method

.method public static whitelist setSurfacesForMultiResolutionOutput(Ljava/util/Collection;Landroid/hardware/camera2/MultiResolutionImageReader;)V
    .registers 6
    .param p1, "multiResolutionImageReader"    # Landroid/hardware/camera2/MultiResolutionImageReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/MultiResolutionImageReader;",
            ")V"
        }
    .end annotation

    .line 738
    .local p0, "outputConfigurations":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const-string v0, "outputConfigurations must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v0, "multiResolutionImageReader must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/camera2/MultiResolutionImageReader;->getReaders()[Landroid/media/ImageReader;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_3a

    .line 745
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 746
    .local v1, "config":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "physicalCameraId":Ljava/lang/String;
    if-nez v2, :cond_2d

    .line 748
    const-string v2, ""

    .line 750
    :cond_2d
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getConfiguredSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/hardware/camera2/MultiResolutionImageReader;->getSurface(Landroid/util/Size;Ljava/lang/String;)Landroid/view/Surface;

    move-result-object v3

    .line 752
    .local v3, "surface":Landroid/view/Surface;
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 753
    .end local v1    # "config":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v2    # "physicalCameraId":Ljava/lang/String;
    .end local v3    # "surface":Landroid/view/Surface;
    goto :goto_19

    .line 754
    :cond_39
    return-void

    .line 741
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputConfigurations and multiResolutionImageReader sizes must match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addSensorPixelModeUsed(I)V
    .registers 5
    .param p1, "sensorPixelModeUsed"    # I

    .line 1115
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 1117
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid sensor pixel mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_1f
    :goto_1f
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1123
    return-void

    .line 1125
    :cond_2c
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    return-void
.end method

.method public whitelist addSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1221
    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 1225
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 1226
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have 2 surfaces for a non-sharing configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    :cond_23
    :goto_23
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_9d

    .line 1233
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 1234
    .local v0, "surfaceSize":Landroid/util/Size;
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added surface size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is different than pre-configured size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", the pre-configured size will be used."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OutputConfiguration"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_63
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    if-ne v1, v2, :cond_95

    .line 1246
    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_82

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    .line 1247
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v2

    if-ne v1, v2, :cond_7a

    goto :goto_82

    .line 1248
    :cond_7a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The dataspace of added surface doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1251
    :cond_82
    :goto_82
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->mirrorModeSharedSurfaces()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1253
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    iget v2, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->add(I)V

    .line 1255
    :cond_94
    return-void

    .line 1241
    :cond_95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The format of added surface format doesn\'t match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1229
    .end local v0    # "surfaceSize":Landroid/util/Size;
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exceeds maximum number of surfaces"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1223
    :cond_a5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Surface is already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clearColorSpace()V
    .registers 2

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 516
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1847
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableSurfaceSharing()V
    .registers 3

    .line 1031
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-nez v0, :cond_8

    .line 1035
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    .line 1036
    return-void

    .line 1032
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enable surface sharing on multi-resolution output configurations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1909
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1910
    return v0

    .line 1911
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 1912
    return v1

    .line 1913
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v2, :cond_125

    .line 1914
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1915
    .local v2, "other":Landroid/hardware/camera2/params/OutputConfiguration;
    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    if-ne v3, v4, :cond_124

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1916
    invoke-virtual {v3, v4}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    if-ne v3, v4, :cond_124

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    if-ne v3, v4, :cond_124

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    if-ne v3, v4, :cond_124

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-ne v3, v4, :cond_124

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-ne v3, v4, :cond_124

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    if-ne v3, v4, :cond_124

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    if-ne v3, v4, :cond_124

    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1924
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-ne v3, v4, :cond_124

    iget-wide v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_124

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    if-ne v3, v4, :cond_124

    iget v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    iget v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    if-ne v3, v4, :cond_124

    iget-boolean v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    if-ne v3, v4, :cond_124

    iget-wide v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    iget-wide v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7d

    goto/16 :goto_124

    .line 1933
    :cond_7d
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_8c

    .line 1934
    return v0

    .line 1936
    :cond_8c
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_8d
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_ab

    .line 1937
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    .line 1938
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1937
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 1939
    return v0

    .line 1936
    :cond_a8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 1942
    .end local v3    # "j":I
    :cond_ab
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->mirrorModeSharedSurfaces()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 1943
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_c0

    .line 1944
    return v0

    .line 1946
    :cond_c0
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_c1
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_db

    .line 1947
    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    iget-object v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v5, v3}, Landroid/util/IntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_d8

    .line 1948
    return v0

    .line 1946
    :cond_d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 1952
    .end local v3    # "j":I
    :cond_db
    iget-object v3, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1953
    .local v3, "minLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ec
    if-ge v4, v3, :cond_100

    .line 1954
    iget-object v5, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_fd

    .line 1955
    return v0

    .line 1953
    :cond_fd
    add-int/lit8 v4, v4, 0x1

    goto :goto_ec

    .line 1957
    .end local v4    # "i":I
    :cond_100
    iget-boolean v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    if-nez v4, :cond_113

    iget-object v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_113

    return v0

    .line 1958
    :cond_113
    iget-wide v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    iget-wide v6, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11c

    .line 1959
    return v0

    .line 1961
    :cond_11c
    iget v4, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    iget v5, v2, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    if-eq v4, v5, :cond_123

    .line 1962
    return v0

    .line 1965
    :cond_123
    return v1

    .line 1931
    .end local v3    # "minLen":I
    :cond_124
    :goto_124
    return v0

    .line 1967
    .end local v2    # "other":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_125
    return v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 527
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 528
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    .line 530
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfiguredDataspace()I
    .registers 2

    .line 1802
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    return v0
.end method

.method public blacklist getConfiguredFormat()I
    .registers 2

    .line 1741
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    return v0
.end method

.method public blacklist getConfiguredSize()Landroid/util/Size;
    .registers 2

    .line 1729
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist getDynamicRangeProfile()J
    .registers 3

    .line 488
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    return-wide v0
.end method

.method public whitelist getMaxSharedSurfaceCount()I
    .registers 2

    .line 1670
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist getMirrorMode()I
    .registers 2

    .line 1455
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    return v0
.end method

.method public whitelist getMirrorMode(Landroid/view/Surface;)I
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1515
    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1518
    .local v0, "surfaceIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 1521
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    return v1

    .line 1519
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface not part of the OutputConfiguration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getPhysicalCameraId()Ljava/lang/String;
    .registers 2

    .line 1829
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRotation()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1708
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    return v0
.end method

.method public blacklist getSensorPixelModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1780
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getStreamUseCase()J
    .registers 3

    .line 1358
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    return-wide v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 3

    .line 1680
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1681
    const/4 v0, 0x0

    return-object v0

    .line 1684
    :cond_a
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getSurfaceGroupId()I
    .registers 2

    .line 1718
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    return v0
.end method

.method public blacklist getSurfaceType()I
    .registers 2

    .line 1769
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    return v0
.end method

.method public whitelist getSurfaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1695
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimestampBase()I
    .registers 2

    .line 1407
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    if-eqz v0, :cond_6

    .line 1408
    const/4 v0, 0x5

    return v0

    .line 1410
    :cond_6
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    return v0
.end method

.method public blacklist getUsage()J
    .registers 3

    .line 1752
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 41

    .line 1988
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    if-eqz v1, :cond_c6

    .line 1989
    iget v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    int-to-float v1, v1

    const/16 v23, 0x11

    iget-object v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 1990
    invoke-virtual {v3}, Landroid/util/Size;->hashCode()I

    move-result v3

    int-to-float v3, v3

    const/16 v24, 0x10

    iget v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    int-to-float v4, v4

    const/16 v25, 0xf

    iget v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    int-to-float v5, v5

    const/16 v26, 0xe

    iget v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    int-to-float v6, v6

    const/16 v27, 0xd

    iget v7, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    int-to-float v7, v7

    .line 1991
    const/16 v28, 0xc

    iget-boolean v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v8, :cond_3d

    move/from16 v8, v21

    goto :goto_3f

    :cond_3d
    move/from16 v8, v22

    .line 1992
    :goto_3f
    const/16 v29, 0xb

    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v9, :cond_48

    move/from16 v9, v22

    goto :goto_4f

    :cond_48
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    int-to-float v9, v9

    .line 1993
    :goto_4f
    const/16 v30, 0xa

    iget-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-eqz v10, :cond_58

    move/from16 v10, v21

    goto :goto_5a

    :cond_58
    move/from16 v10, v22

    :goto_5a
    const/16 v31, 0x9

    iget-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->hashCode()I

    move-result v11

    int-to-float v11, v11

    const/16 v32, 0x8

    const/16 v33, 0x7

    iget-wide v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    long-to-float v12, v12

    iget v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    int-to-float v13, v13

    const/16 v34, 0x6

    const/16 v35, 0x5

    iget-wide v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    long-to-float v14, v14

    iget v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    int-to-float v15, v15

    iget v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    int-to-float v2, v2

    move/from16 v37, v1

    iget-object v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 1996
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v1

    int-to-float v1, v1

    .line 1997
    move/from16 v38, v1

    iget-boolean v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    if-eqz v1, :cond_8e

    goto :goto_90

    :cond_8e
    move/from16 v21, v22

    :goto_90
    move/from16 v39, v2

    iget-wide v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x12

    new-array v2, v2, [F

    aput v37, v2, v20

    aput v3, v2, v19

    aput v4, v2, v18

    aput v5, v2, v17

    aput v6, v2, v16

    aput v7, v2, v35

    aput v8, v2, v34

    aput v9, v2, v33

    aput v10, v2, v32

    aput v11, v2, v31

    aput v12, v2, v30

    aput v13, v2, v29

    aput v14, v2, v28

    aput v15, v2, v27

    aput v39, v2, v26

    aput v38, v2, v25

    aput v21, v2, v24

    aput v1, v2, v23

    .line 1989
    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v1

    return v1

    .line 2000
    :cond_c6
    const/16 v23, 0x11

    const/16 v24, 0x10

    const/16 v25, 0xf

    const/16 v26, 0xe

    const/16 v27, 0xd

    const/16 v28, 0xc

    const/16 v29, 0xb

    const/16 v30, 0xa

    const/16 v31, 0x9

    const/16 v32, 0x8

    const/16 v33, 0x7

    const/16 v34, 0x6

    const/16 v35, 0x5

    iget v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    int-to-float v1, v1

    iget-object v2, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    .line 2001
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredGenerationId:I

    int-to-float v3, v3

    iget-object v4, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    .line 2002
    invoke-virtual {v4}, Landroid/util/Size;->hashCode()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    int-to-float v5, v5

    iget v6, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    int-to-float v6, v6

    iget v7, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    int-to-float v7, v7

    .line 2003
    iget-boolean v8, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-eqz v8, :cond_104

    move/from16 v8, v21

    goto :goto_106

    :cond_104
    move/from16 v8, v22

    .line 2004
    :goto_106
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v9, :cond_10d

    move/from16 v9, v22

    goto :goto_114

    :cond_10d
    iget-object v9, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    int-to-float v9, v9

    .line 2005
    :goto_114
    iget-boolean v10, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    if-eqz v10, :cond_11b

    move/from16 v10, v21

    goto :goto_11d

    :cond_11b
    move/from16 v10, v22

    :goto_11d
    iget-object v11, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->hashCode()I

    move-result v11

    int-to-float v11, v11

    iget-wide v12, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    long-to-float v12, v12

    iget v13, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    int-to-float v13, v13

    iget-wide v14, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    long-to-float v14, v14

    iget v15, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    int-to-float v15, v15

    move/from16 v37, v1

    iget v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    int-to-float v1, v1

    move/from16 v38, v1

    iget-object v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    .line 2007
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v1

    int-to-float v1, v1

    .line 2008
    move/from16 v39, v1

    iget-boolean v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    if-eqz v1, :cond_149

    goto :goto_14b

    :cond_149
    move/from16 v21, v22

    :goto_14b
    move/from16 v22, v2

    iget-wide v1, v0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    .line 2009
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x13

    new-array v2, v2, [F

    aput v37, v2, v20

    aput v22, v2, v19

    aput v3, v2, v18

    aput v4, v2, v17

    aput v5, v2, v16

    aput v6, v2, v35

    aput v7, v2, v34

    aput v8, v2, v33

    aput v9, v2, v32

    aput v10, v2, v31

    aput v11, v2, v30

    aput v12, v2, v29

    aput v13, v2, v28

    aput v14, v2, v27

    aput v15, v2, v26

    aput v38, v2, v25

    aput v39, v2, v24

    aput v21, v2, v23

    const/16 v36, 0x12

    aput v1, v2, v36

    .line 2000
    invoke-static {v2}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v1

    return v1
.end method

.method public greylist-max-o isDeferredConfiguration()Z
    .registers 2

    .line 1170
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    return v0
.end method

.method public greylist-max-o isForPhysicalCamera()Z
    .registers 2

    .line 1155
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isMultiResolution()Z
    .registers 2

    .line 1815
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    return v0
.end method

.method public whitelist isReadoutTimestampEnabled()Z
    .registers 2

    .line 1554
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    return v0
.end method

.method public blacklist isShared()Z
    .registers 2

    .line 1791
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    return v0
.end method

.method public whitelist removeSensorPixelModeUsed(I)V
    .registers 5
    .param p1, "sensorPixelModeUsed"    # I

    .line 1141
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1145
    return-void

    .line 1142
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorPixelMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not part of this output configuration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1277
    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eq v0, p1, :cond_2d

    .line 1283
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1284
    .local v0, "surfaceIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 1288
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1289
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->mirrorModeSharedSurfaces()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1290
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 1292
    :cond_24
    return-void

    .line 1285
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface is not part of this output configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1279
    .end local v0    # "surfaceIndex":I
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove surface associated with this output configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setColorSpace(Landroid/graphics/ColorSpace$Named;)V
    .registers 3
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace$Named;

    .line 505
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    .line 506
    return-void
.end method

.method public whitelist setDynamicRangeProfile(J)V
    .registers 3
    .param p1, "profile"    # J

    .line 479
    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    .line 480
    return-void
.end method

.method public whitelist setMirrorMode(I)V
    .registers 5
    .param p1, "mirrorMode"    # I

    .line 1436
    if-ltz p1, :cond_19

    const/4 v0, 0x3

    if-gt p1, v0, :cond_19

    .line 1440
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    .line 1441
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_8
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1442
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/IntArray;->set(II)V

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1444
    .end local v0    # "j":I
    :cond_18
    return-void

    .line 1438
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid mirror mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMirrorMode(Landroid/view/Surface;I)V
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "mirrorMode"    # I

    .line 1485
    const-string v0, "Surface must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    if-ltz p2, :cond_21

    const/4 v0, 0x3

    if-gt p2, v0, :cond_21

    .line 1490
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1491
    .local v0, "surfaceIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 1495
    iget-object v1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/IntArray;->set(II)V

    .line 1496
    return-void

    .line 1492
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface not part of the OutputConfiguration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1488
    .end local v0    # "surfaceIndex":I
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid mirror mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMultiResolutionOutput()V
    .registers 3

    .line 446
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    if-nez v0, :cond_15

    .line 450
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    .line 456
    return-void

    .line 451
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multi-resolution output flag should only be set for surface with non-negative group ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multi-resolution output flag must not be set for configuration with surface sharing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPhysicalCameraId(Ljava/lang/String;)V
    .registers 2
    .param p1, "physicalCameraId"    # Ljava/lang/String;

    .line 1069
    iput-object p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    .line 1070
    return-void
.end method

.method public whitelist setReadoutTimestampEnabled(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 1546
    iput-boolean p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 1547
    return-void
.end method

.method public whitelist setStreamUseCase(J)V
    .registers 8
    .param p1, "streamUseCase"    # J

    .line 1339
    const-wide/16 v0, 0x6

    .line 1340
    .local v0, "maxUseCaseValue":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_27

    const-wide/32 v2, 0x10000

    cmp-long v2, p1, v2

    if-ltz v2, :cond_e

    goto :goto_27

    .line 1342
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a valid stream use case value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1346
    :cond_27
    :goto_27
    iput-wide p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    .line 1347
    return-void
.end method

.method public whitelist setTimestampBase(I)V
    .registers 5
    .param p1, "timestampBase"    # I

    .line 1382
    if-ltz p1, :cond_15

    const/4 v0, 0x5

    if-gt p1, v0, :cond_15

    .line 1388
    if-ne p1, v0, :cond_f

    .line 1389
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1390
    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    .line 1391
    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    goto :goto_14

    .line 1393
    :cond_f
    iput p1, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    .line 1394
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsReadoutSensorTimestampBase:Z

    .line 1396
    :goto_14
    return-void

    .line 1384
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid timestamp base value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1871
    if-eqz p1, :cond_7c

    .line 1874
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsDeferredConfig:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsShared:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1881
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSurfaces:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1882
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1883
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mIsMultiResolution:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mSensorPixelModesUsed:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->convertIntegerToIntList(Ljava/util/List;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1886
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mDynamicRangeProfile:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1887
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mColorSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1888
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mStreamUseCase:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1889
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mTimestampBase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1890
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1891
    iget-object v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mMirrorModeForSurfaces:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1892
    iget-boolean v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mReadoutTimestampEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1893
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    iget v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mConfiguredDataspace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    iget-wide v0, p0, Landroid/hardware/camera2/params/OutputConfiguration;->mUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1896
    return-void

    .line 1872
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
