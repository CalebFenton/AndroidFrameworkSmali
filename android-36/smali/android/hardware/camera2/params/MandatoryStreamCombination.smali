.class public final Landroid/hardware/camera2/params/MandatoryStreamCombination;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$Builder;,
        Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
    }
.end annotation


# static fields
.field private static final blacklist STREAM_USE_CASE_CROPPED_RAW:J = 0x6L

.field private static final blacklist STREAM_USE_CASE_PREVIEW:J = 0x1L

.field private static final blacklist STREAM_USE_CASE_PREVIEW_VIDEO_STILL:J = 0x4L

.field private static final blacklist STREAM_USE_CASE_RECORD:J = 0x3L

.field private static final blacklist STREAM_USE_CASE_STILL_CAPTURE:J = 0x2L

.field private static final blacklist STREAM_USE_CASE_VIDEO_CALL:J = 0x5L

.field private static final blacklist TAG:Ljava/lang/String; = "MandatoryStreamCombination"

.field private static blacklist s10BitOutputStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sBurstCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sConcurrentDepthOnlyStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sConcurrentStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sCroppedRawStreamUseCaseCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sFullCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sFullPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sFullYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLegacyCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLevel3Combinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLevel3PrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLevel3YUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLimitedCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLimitedPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sLimitedYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sPreviewStabilizedStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sRAWPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sRAWYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sRawCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sStreamUseCaseCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sUltraHighResolutionPRIVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sUltraHighResolutionReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sUltraHighResolutionStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

.field private static blacklist sUltraHighResolutionYUVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;


# instance fields
.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mIsReprocessable:Z

.field private final blacklist mStreamsInformation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgets10BitOutputStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->s10BitOutputStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBurstCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sBurstCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsConcurrentDepthOnlyStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentDepthOnlyStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsConcurrentStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCroppedRawStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sCroppedRawStreamUseCaseCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFullCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFullPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsFullYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLegacyCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLegacyCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLevel3Combinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3Combinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLevel3PrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3PrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLevel3YUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3YUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLimitedCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLimitedPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLimitedYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsPreviewStabilizedStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sPreviewStabilizedStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsRAWPrivateReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsRAWYUVReprocCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsRawCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRawCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsStreamUseCaseCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sStreamUseCaseCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUltraHighResolutionPRIVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionPRIVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUltraHighResolutionReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUltraHighResolutionStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsUltraHighResolutionYUVReprocStreamCombinations()[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionYUVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 25

    .line 520
    const/16 v0, 0x8

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v7, 0x22

    invoke-direct {v5, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Simple preview, GPU video processing, or no-preview video recording"

    invoke-direct {v2, v4, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v4, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v9, 0x100

    invoke-direct {v5, v9, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v4, v6

    const-string v5, "No-viewfinder still image capture"

    invoke-direct {v2, v4, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v4, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v10, 0x23

    invoke-direct {v5, v10, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v4, v6

    const-string v5, "In-application video/image processing"

    invoke-direct {v2, v4, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v5, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v7, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v5, v6

    new-instance v8, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v8, v9, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v8, v5, v3

    const-string v8, "Standard still imaging"

    invoke-direct {v2, v5, v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v8, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v8, v6

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v8, v3

    const-string v11, "In-app processing plus still capture"

    invoke-direct {v2, v8, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v8, 0x4

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v11, v6

    new-instance v12, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v12, v7, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v12, v11, v3

    const-string v12, "Standard recording"

    invoke-direct {v2, v11, v12}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v11, 0x5

    aput-object v2, v1, v11

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v12, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v12, v6

    new-instance v13, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v13, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v13, v12, v3

    const-string v13, "Preview plus in-app processing"

    invoke-direct {v2, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v12, 0x6

    aput-object v2, v1, v12

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v13, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v6

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v13, v4

    const-string v14, "Still capture plus in-app processing"

    invoke-direct {v2, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v13, 0x7

    aput-object v2, v1, v13

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLegacyCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 553
    new-array v1, v12, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v14, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    move/from16 v16, v6

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v15, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v15, v14, v16

    new-instance v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v6, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v6, v14, v3

    const-string v6, "High-resolution video recording with preview"

    invoke-direct {v2, v14, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "High-resolution in-app video processing with preview"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Two-input in-app video processing"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "High-resolution recording with video snapshot"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "High-resolution in-app processing with video snapshot"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Two-input in-app processing with still capture"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v11

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 583
    new-array v1, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Maximum-resolution GPU processing with preview"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Maximum-resolution in-app processing with preview"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Maximum-resolution two-input in-app processsing"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sBurstCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 598
    new-array v1, v12, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Maximum-resolution GPU processing with preview"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Maximum-resolution in-app processing with preview"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Maximum-resolution two-input in-app processing"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Video recording with maximum-size video snapshot"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Standard video recording plus maximum-resolution in-app processing"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Preview plus two-input maximum-resolution in-app processing"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v11

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 628
    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move/from16 v17, v13

    const/16 v13, 0x20

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    const-string v14, "No-preview DNG capture"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Standard DNG capture"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "In-app processing plus DNG capture"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Video recording with DNG capture"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Preview with in-app processing and DNG capture"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Two-input in-app processing plus DNG capture"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v11

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Still capture with simultaneous JPEG and DNG"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v12

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "In-app processing with simultaneous JPEG and DNG"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v17

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRawCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 667
    new-array v1, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v5

    const-string v14, "In-app viewfinder analysis with dynamic selection of output format"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v5

    const-string v14, "In-app viewfinder analysis with dynamic selection of output format"

    invoke-direct {v2, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3Combinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 682
    new-array v1, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    const-string v14, "No-viewfinder still image reprocessing"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "ZSL(Zero-Shutter-Lag) still imaging"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "ZSL still and in-app processing imaging"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "ZSL in-app processing with still capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v5

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 705
    new-array v1, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    const-string v14, "No-viewfinder still image reprocessing"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "ZSL(Zero-Shutter-Lag) still imaging"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "ZSL still and in-app processing imaging"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "ZSL in-app processing with still capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v5

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLimitedYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 728
    new-array v1, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "High-resolution ZSL in-app video processing with regular preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Maximum-resolution ZSL in-app processing with regular preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Maximum-resolution two-input ZSL in-app processing"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "ZSL still capture and in-app processing"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v5

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 752
    new-array v1, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    const-string v14, "Maximum-resolution multi-frame image fusion in-app processing with regular preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    const-string v14, "Maximum-resolution multi-frame image fusion two-input in-app processing"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "High-resolution ZSL in-app video processing with regular preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "ZSL still capture and in-app processing"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v5

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sFullYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 775
    new-array v1, v11, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Mutually exclusive ZSL in-app processing and DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Mutually exclusive ZSL in-app processing and preview with DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Mutually exclusive ZSL two-input in-app processing and DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Mutually exclusive ZSL still capture and preview with DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Mutually exclusive ZSL in-app processing with still capture and DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v8

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWPrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 807
    new-array v1, v11, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Mutually exclusive ZSL in-app processing and DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Mutually exclusive ZSL in-app processing and preview with DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Mutually exclusive ZSL two-input in-app processing and DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Mutually exclusive ZSL still capture and preview with DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "Mutually exclusive ZSL in-app processing with still capture and DNG capture"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v8

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sRAWYUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 839
    new-array v1, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v5

    const-string v14, "In-app viewfinder analysis with ZSL, RAW, and JPEG reprocessing output"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3PrivateReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 849
    new-array v1, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    const-string v14, "In-app viewfinder analysis with ZSL and RAW"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v4

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v5

    const-string v14, "In-app viewfinder analysis with ZSL, RAW, and JPEG reprocessing output"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sLevel3YUVReprocCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 865
    const/16 v1, 0x9

    new-array v2, v1, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v14, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    move/from16 v18, v1

    sget-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v15, v10, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v15, v14, v16

    const-string v1, "In-app video / image processing"

    invoke-direct {v6, v14, v1}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v6, v2, v16

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    const-string v14, "preview / preview to GPU"

    invoke-direct {v1, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v2, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    const-string v14, "No view-finder still image capture"

    invoke-direct {v1, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Two-input in app video / image processing"

    invoke-direct {v1, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v2, v5

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "High resolution video recording with preview"

    invoke-direct {v1, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v2, v8

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "In-app video / image processing with preview"

    invoke-direct {v1, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v2, v11

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "In-app video / image processing with preview"

    invoke-direct {v1, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v2, v12

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Standard still image capture"

    invoke-direct {v1, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v2, v17

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s720p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v3

    const-string v14, "Standard still image capture"

    invoke-direct {v1, v6, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v2, v0

    sput-object v2, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 901
    new-array v1, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    const v15, 0x44363159

    move/from16 v19, v11

    sget-object v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->VGA:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v15, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v6, v16

    const-string v11, "Depth capture for mesh based object rendering"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v16

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sConcurrentDepthOnlyStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 907
    const/16 v1, 0xf

    new-array v1, v1, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    const-string v11, "Ultra high resolution YUV image capture with preview"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    const-string v11, "Ultra high resolution RAW_SENSOR image capture with preview"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    const-string v11, "Ultra high resolution JPEG image capture with preview"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    const-string v11, "No-viewfinder Ultra high resolution YUV image capture with image analysis"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    const-string v11, "No-viewfinder Ultra high resolution RAW_SENSOR image capture with image analysis"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    const-string v11, "No-viewfinder Ultra high resolution JPEG image capture with image analysis"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v19

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v4

    const-string v11, "Ultra high resolution YUV image capture with preview + app-based image analysis"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v12

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v4

    const-string v11, "Ultra high resolution RAW image capture with preview + app-based image analysis"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v17

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v4

    const-string v11, "Ultra high resolution JPEG image capture with preview + app-based image analysis"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v4

    const-string v11, "Ultra high resolution YUV image capture with preview + app-based image analysis"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v18

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v6, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v13, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v6, v4

    const-string v11, "Ultra high resolution RAW image capture with preview + app-based image analysis"

    invoke-direct {v2, v6, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v6, 0xa

    aput-object v2, v1, v6

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v4

    const-string v14, "Ultra high resolution JPEG image capture with preview + app-based image analysis"

    invoke-direct {v2, v11, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v11, 0xb

    aput-object v2, v1, v11

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v4

    const-string v14, "Ultra high resolution YUV image capture with preview + default"

    invoke-direct {v2, v11, v14, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Z)V

    const/16 v11, 0xc

    aput-object v2, v1, v11

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v13, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v4

    const-string v14, "Ultra high resolution RAW image capture with preview + default"

    invoke-direct {v2, v11, v14, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Z)V

    const/16 v11, 0xd

    aput-object v2, v1, v11

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v4

    const-string v14, "Ultra high resolution JPEG capture with preview + default"

    invoke-direct {v2, v11, v14, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Z)V

    const/16 v11, 0xe

    aput-object v2, v1, v11

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 991
    new-array v1, v12, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    const-string v14, "In-app RAW remosaic reprocessing with separate preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    const-string v14, "In-app RAW remosaic reprocessing with in-app image analysis"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "In-app RAW -> JPEG reprocessing with separate preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "In-app RAW -> YUV reprocessing with separate preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "In-app RAW -> JPEG reprocessing with in-app image analysis"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "In-app RAW -> YUV reprocessing with in-app image analysis"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->REMOSAIC:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v19

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1025
    new-array v1, v8, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "Ultra high resolution YUV -> JPEG reprocessing with separate preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "Ultra high resolution YUV -> JPEG reprocessing with in-app image analysis"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "Ultra high resolution YUV -> YUV reprocessing with separate preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "Ultra high resolution YUV -> YUV reprocessing with in-app image analysis"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->YUV:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v5

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionYUVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1051
    new-array v1, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "Ultra high resolution PRIVATE -> JPEG reprocessing with separate preview"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->FULL_RES:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v10, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "Ultra high resolution PRIVATE -> JPEG reprocessing with in-app image analysis"

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;->PRIVATE:Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;

    invoke-direct {v2, v11, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;Landroid/hardware/camera2/params/MandatoryStreamCombination$ReprocessType;)V

    aput-object v2, v1, v3

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sUltraHighResolutionPRIVReprocStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1064
    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    const-string v14, "Simple preview, GPU video processing, or no-preview video recording"

    invoke-direct {v2, v11, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move/from16 v20, v0

    const/16 v0, 0x36

    invoke-direct {v14, v0, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    const-string v14, "In-application video/image processing"

    invoke-direct {v2, v11, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v9, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "Standard still imaging"

    invoke-direct {v2, v11, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v0, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "Maximum-resolution in-app processing with preview"

    invoke-direct {v2, v11, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v0, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v0, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "Maximum-resolution two-input in-app processing"

    invoke-direct {v2, v11, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v7, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v3

    const-string v14, "High-resolution video recording with preview"

    invoke-direct {v2, v11, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v19

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v11, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v15, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v14, v0, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v14, v11, v16

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v0, v11, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v0, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v0, v11, v4

    const-string v0, "High-resolution recording with in-app snapshot"

    invoke-direct {v2, v11, v0}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v2, v1, v12

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v5, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v9, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v3

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v11, v2, v4

    const-string v11, "High-resolution recording with video snapshot"

    invoke-direct {v0, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v17

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->s10BitOutputStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1099
    const/16 v0, 0x19

    new-array v0, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move v15, v12

    const-wide/16 v12, 0x1

    invoke-direct {v11, v7, v14, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Simple preview"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v16

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Simple in-application image processing"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move/from16 v21, v5

    move/from16 v22, v6

    const-wide/16 v5, 0x3

    invoke-direct {v11, v7, v14, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Simple video recording"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Simple in-application video processing"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v21

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v5, 0x2

    invoke-direct {v11, v9, v14, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Simple JPEG still capture"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Simple YUV still capture"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v19

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v5, 0x4

    invoke-direct {v11, v7, v14, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Multi-purpose stream for preview, video and still capture"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v15

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Multi-purpose YUV stream for preview, video and still capture"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v17

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v5, 0x5

    invoke-direct {v11, v7, v14, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Simple video call"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v20

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v10, v14, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    const-string v11, "Simple YUV video call"

    invoke-direct {v1, v2, v11}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v18

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v11, v7, v14, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v16

    new-instance v11, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v14, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v5, 0x2

    invoke-direct {v11, v9, v14, v5, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v11, v2, v3

    const-string v5, "Preview with JPEG still image capture"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v22

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move v14, v8

    const-wide/16 v8, 0x2

    invoke-direct {v5, v10, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Preview with YUV still image capture"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x3

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Preview with video recording"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x3

    invoke-direct {v5, v10, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Preview with in-application video processing"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Preview with in-application image processing"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x5

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Preview with video call"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x5

    invoke-direct {v5, v10, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Preview with YUV video call"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x4

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x2

    const/16 v11, 0x100

    invoke-direct {v5, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Multi-purpose stream with JPEG still capture"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x4

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x2

    invoke-direct {v5, v10, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Multi-purpose stream with YUV still capture"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x4

    invoke-direct {v5, v10, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x2

    const/16 v11, 0x100

    invoke-direct {v5, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Multi-purpose YUV stream with JPEG still capture"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x4

    invoke-direct {v5, v10, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x2

    invoke-direct {v5, v10, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Multi-purpose YUV stream with YUV still capture"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v5, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "YUV and JPEG concurrent still image capture (for testing)"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    move/from16 v2, v21

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x3

    invoke-direct {v2, v7, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x2

    const/16 v11, 0x100

    invoke-direct {v2, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "Preview, video record and JPEG video snapshot"

    invoke-direct {v1, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v2, 0x3

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x3

    invoke-direct {v2, v10, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->RECORD:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x2

    const/16 v11, 0x100

    invoke-direct {v2, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "Preview, in-application video processing and JPEG video snapshot"

    invoke-direct {v1, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v2, 0x3

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v10, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x2

    const/16 v11, 0x100

    invoke-direct {v2, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "Preview, in-application image processing, and JPEG still image capture"

    invoke-direct {v1, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sStreamUseCaseCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1243
    move/from16 v0, v22

    new-array v1, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v8, 0x6

    const/16 v11, 0x20

    invoke-direct {v5, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    const-string v5, "Cropped RAW still image capture without preview"

    invoke-direct {v0, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v16

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x20

    invoke-direct {v5, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "Cropped RAW still image capture with preview"

    invoke-direct {v0, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v3

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x20

    invoke-direct {v5, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v5, v2, v3

    const-string v5, "In-app image processing with cropped RAW still image capture"

    invoke-direct {v0, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v4

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v2, 0x3

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    move/from16 v24, v14

    move/from16 v23, v15

    const-wide/16 v14, 0x2

    invoke-direct {v2, v10, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x20

    invoke-direct {v2, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "Preview with YUV and RAW still image capture"

    invoke-direct {v0, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v10, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v14, 0x2

    invoke-direct {v2, v10, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x20

    invoke-direct {v2, v11, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "In-app image processing with YUV and RAW still image capture"

    invoke-direct {v0, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v24

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v2, 0x3

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    const-wide/16 v14, 0x2

    invoke-direct {v2, v11, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v14, 0x20

    invoke-direct {v2, v14, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "Preview with JPEG and RAW still image capture"

    invoke-direct {v0, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v19

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v2, 0x3

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v10, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    const-wide/16 v14, 0x2

    invoke-direct {v2, v11, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v14, 0x20

    invoke-direct {v2, v14, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "In-app image processing with JPEG and RAW still image capture"

    invoke-direct {v0, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v23

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v2, 0x3

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const-wide/16 v14, 0x3

    invoke-direct {v2, v7, v6, v14, v15}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v14, 0x20

    invoke-direct {v2, v14, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "Preview with video recording and RAW snapshot"

    invoke-direct {v0, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v17

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v2, 0x3

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v7, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v10, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v14, 0x20

    invoke-direct {v2, v14, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "Preview with in-app image processing and RAW still image capture"

    invoke-direct {v0, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v20

    new-instance v0, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    const/4 v2, 0x3

    new-array v5, v2, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v10, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v16

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v2, v10, v6, v12, v13}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v3

    new-instance v2, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v14, 0x20

    invoke-direct {v2, v14, v6, v8, v9}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;J)V

    aput-object v2, v5, v4

    const-string v2, "Two input in-app processing and RAW still image capture"

    invoke-direct {v0, v5, v2}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v0, v1, v18

    sput-object v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sCroppedRawStreamUseCaseCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    .line 1323
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v16

    const-string v5, "Stabilized preview, GPU video processing, or no-preview stabilized recording"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v16

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v3, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v16

    const-string v5, "Stabilized preview, GPU video processing, or no-preview stabilized recording"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v5, v11, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "Standard JPEG still imaging with stabilized preview"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "Standard YUV still imaging with stabilized preview"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    const/16 v21, 0x3

    aput-object v1, v0, v21

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "Standard YUV still imaging with stabilized in-app image processing stream"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v24

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->MAXIMUM:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    const/16 v11, 0x100

    invoke-direct {v5, v11, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "Standard JPEG still imaging with stabilized in-app image processing stream"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v19

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "High-resolution video recording with preview both streams stabilized"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v23

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v7, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "High-resolution video recording with preview both streams stabilized"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v17

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v16

    new-instance v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v6, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v5, v10, v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v5, v2, v3

    const-string v5, "High-resolution video recording with preview both streams stabilized"

    invoke-direct {v1, v2, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v20

    new-instance v1, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    new-array v2, v4, [Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    new-instance v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->s1440p:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v4, v10, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v4, v2, v16

    new-instance v4, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;

    sget-object v5, Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;->PREVIEW:Landroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;

    invoke-direct {v4, v7, v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;-><init>(ILandroid/hardware/camera2/params/MandatoryStreamCombination$SizeThreshold;)V

    aput-object v4, v2, v3

    const-string v3, "High-resolution video recording with preview both streams stabilized"

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;-><init>([Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamTemplate;Ljava/lang/String;)V

    aput-object v1, v0, v18

    sput-object v0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->sPreviewStabilizedStreamCombinations:[Landroid/hardware/camera2/params/MandatoryStreamCombination$StreamCombinationTemplate;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .registers 6
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isReprocessable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 393
    .local p1, "streamsInformation":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    .line 394
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 397
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 398
    iput-object p2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    .line 399
    iput-boolean p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    .line 400
    return-void

    .line 395
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty stream information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 442
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 443
    return v0

    .line 445
    :cond_4
    if-ne p0, p1, :cond_8

    .line 446
    const/4 v0, 0x1

    return v0

    .line 448
    :cond_8
    instance-of v1, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    if-eqz v1, :cond_34

    .line 449
    move-object v1, p1

    check-cast v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;

    .line 450
    .local v1, "other":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    iget-object v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    if-ne v2, v3, :cond_33

    iget-boolean v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    iget-boolean v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    .line 452
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2a

    goto :goto_33

    .line 456
    :cond_2a
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 453
    :cond_33
    :goto_33
    return v0

    .line 459
    .end local v1    # "other":Landroid/hardware/camera2/params/MandatoryStreamCombination;
    :cond_34
    return v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 407
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStreamsInformation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 467
    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mStreamsInformation:Ljava/util/ArrayList;

    .line 468
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 467
    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist isReprocessable()Z
    .registers 2

    .line 419
    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination;->mIsReprocessable:Z

    return v0
.end method
