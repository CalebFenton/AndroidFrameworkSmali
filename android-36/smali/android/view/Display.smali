.class public final Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode;,
        Landroid/view/Display$HdrCapabilities;,
        Landroid/view/Display$HdrSdrRatioListenerWrapper;,
        Landroid/view/Display$FrameRateCategory;,
        Landroid/view/Display$ColorMode;,
        Landroid/view/Display$StateReason;
    }
.end annotation


# static fields
.field private static final greylist-max-o CACHED_APP_SIZE_DURATION_MILLIS:I = 0x14

.field public static final greylist-max-o COLOR_MODE_ADOBE_RGB:I = 0x8

.field public static final greylist-max-o COLOR_MODE_BT601_525:I = 0x3

.field public static final greylist-max-o COLOR_MODE_BT601_525_UNADJUSTED:I = 0x4

.field public static final greylist-max-o COLOR_MODE_BT601_625:I = 0x1

.field public static final greylist-max-o COLOR_MODE_BT601_625_UNADJUSTED:I = 0x2

.field public static final greylist-max-o COLOR_MODE_BT709:I = 0x5

.field public static final greylist-max-o COLOR_MODE_DCI_P3:I = 0x6

.field public static final greylist-max-o COLOR_MODE_DEFAULT:I = 0x0

.field public static final greylist-max-o COLOR_MODE_DISPLAY_P3:I = 0x9

.field public static final greylist-max-o COLOR_MODE_INVALID:I = -0x1

.field public static final greylist-max-o COLOR_MODE_SRGB:I = 0x7

.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist DEFAULT_DISPLAY:I = 0x0

.field public static final blacklist DEFAULT_DISPLAY_GROUP:I = 0x0

.field public static final blacklist DISPLAY_MODE_ID_FOR_FRAME_RATE_OVERRIDE:I = 0xff

.field public static final blacklist FLAG_ALLOWS_CONTENT_MODE_SWITCH:I = 0x8000

.field public static final blacklist FLAG_ALWAYS_UNLOCKED:I = 0x200

.field public static final greylist-max-o FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final blacklist FLAG_OWN_DISPLAY_GROUP:I = 0x100

.field public static final blacklist FLAG_OWN_FOCUS:I = 0x800

.field public static final whitelist FLAG_PRESENTATION:I = 0x8

.field public static final whitelist FLAG_PRIVATE:I = 0x4

.field public static final blacklist FLAG_REAR:I = 0x2000

.field public static final blacklist FLAG_ROTATES_WITH_CONTENT:I = 0x4000

.field public static final whitelist FLAG_ROUND:I = 0x10

.field public static final greylist-max-o FLAG_SCALING_DISABLED:I = 0x40000000

.field public static final whitelist FLAG_SECURE:I = 0x2

.field public static final blacklist FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:I = 0x40

.field public static final blacklist FLAG_STEAL_TOP_FOCUS_DISABLED:I = 0x1000

.field public static final whitelist FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x1

.field public static final blacklist FLAG_TOUCH_FEEDBACK_DISABLED:I = 0x400

.field public static final blacklist FLAG_TRUSTED:I = 0x80

.field public static final whitelist FRAME_RATE_CATEGORY_HIGH:I = 0x1

.field public static final whitelist FRAME_RATE_CATEGORY_NORMAL:I = 0x0

.field public static final whitelist INVALID_DISPLAY:I = -0x1

.field public static final blacklist INVALID_DISPLAY_GROUP:I = -0x1

.field public static final blacklist INVALID_DISPLAY_HEIGHT:I = -0x1

.field public static final blacklist INVALID_DISPLAY_REFRESH_RATE:F = 0.0f

.field public static final blacklist INVALID_DISPLAY_WIDTH:I = -0x1

.field public static final greylist-max-o REMOVE_MODE_DESTROY_CONTENT:I = 0x1

.field public static final greylist-max-o REMOVE_MODE_MOVE_CONTENT_TO_PRIMARY:I = 0x0

.field public static final whitelist STATE_DOZE:I = 0x3

.field public static final whitelist STATE_DOZE_SUSPEND:I = 0x4

.field public static final whitelist STATE_OFF:I = 0x1

.field public static final whitelist STATE_ON:I = 0x2

.field public static final whitelist STATE_ON_SUSPEND:I = 0x6

.field public static final blacklist STATE_REASON_DEFAULT_POLICY:I = 0x1

.field public static final blacklist STATE_REASON_DRAW_WAKE_LOCK:I = 0x2

.field public static final blacklist STATE_REASON_DREAM_MANAGER:I = 0x5

.field public static final blacklist STATE_REASON_KEY:I = 0x6

.field public static final blacklist STATE_REASON_MOTION:I = 0x7

.field public static final blacklist STATE_REASON_OFFLOAD:I = 0x3

.field public static final blacklist STATE_REASON_TILT:I = 0x4

.field public static final blacklist STATE_REASON_UNKNOWN:I = 0x0

.field public static final whitelist STATE_UNKNOWN:I = 0x0

.field public static final whitelist STATE_VR:I = 0x5

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Display"

.field public static final greylist-max-r TYPE_EXTERNAL:I = 0x2

.field public static final blacklist TYPE_INTERNAL:I = 0x1

.field public static final blacklist TYPE_MAX:I = 0x5

.field public static final greylist-max-o TYPE_OVERLAY:I = 0x4

.field public static final greylist TYPE_UNKNOWN:I = 0x0

.field public static final greylist TYPE_VIRTUAL:I = 0x5

.field public static final greylist TYPE_WIFI:I = 0x3


# instance fields
.field private greylist-max-o mCachedAppHeightCompat:I

.field private greylist-max-o mCachedAppWidthCompat:I

.field private greylist-max-o mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final greylist-max-o mDisplayId:I

.field private greylist mDisplayInfo:Landroid/view/DisplayInfo;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private blacklist mHdrSdrRatioListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Display$HdrSdrRatioListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIsValid:Z

.field private greylist-max-o mLastCachedAppSizeUpdate:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-o mOwnerPackageName:Ljava/lang/String;

.field private final greylist-max-o mOwnerUid:I

.field private blacklist mRefreshRateChangesRegistered:Z

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mTempMetrics:Landroid/util/DisplayMetrics;

.field private final greylist-max-o mType:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V
    .registers 11
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "res"    # Landroid/content/res/Resources;

    .line 713
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "global":Landroid/hardware/display/DisplayManagerGlobal;
    .end local p2    # "displayId":I
    .end local p3    # "displayInfo":Landroid/view/DisplayInfo;
    .end local p4    # "res":Landroid/content/res/Resources;
    .local v1, "global":Landroid/hardware/display/DisplayManagerGlobal;
    .local v2, "displayId":I
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    .local v5, "res":Landroid/content/res/Resources;
    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    .line 714
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V
    .registers 11
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;

    .line 701
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "global":Landroid/hardware/display/DisplayManagerGlobal;
    .end local p2    # "displayId":I
    .end local p3    # "displayInfo":Landroid/view/DisplayInfo;
    .end local p4    # "daj":Landroid/view/DisplayAdjustments;
    .local v1, "global":Landroid/hardware/display/DisplayManagerGlobal;
    .local v2, "displayId":I
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    .local v4, "daj":Landroid/view/DisplayAdjustments;
    invoke-direct/range {v0 .. v5}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V

    .line 702
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "global"    # Landroid/hardware/display/DisplayManagerGlobal;
    .param p2, "displayId"    # I
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;
    .param p5, "res"    # Landroid/content/res/Resources;

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    .line 718
    iput-object p1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 719
    iput p2, p0, Landroid/view/Display;->mDisplayId:I

    .line 720
    iput-object p3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 721
    iput-object p5, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 722
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_30

    .line 723
    new-instance v0, Landroid/view/DisplayAdjustments;

    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    goto :goto_3b

    .line 724
    :cond_30
    new-instance v0, Landroid/view/DisplayAdjustments;

    if-eqz p4, :cond_38

    invoke-direct {v0, p4}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    goto :goto_3b

    :cond_38
    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    :goto_3b
    iput-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Display;->mIsValid:Z

    .line 728
    iget v0, p3, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/Display;->mFlags:I

    .line 729
    iget v0, p3, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/Display;->mType:I

    .line 730
    iget v0, p3, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/Display;->mOwnerUid:I

    .line 731
    iget-object v0, p3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    .line 732
    return-void
.end method

.method private blacklist adjustMetrics(Landroid/util/DisplayMetrics;II)V
    .registers 6
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "realRotation"    # I
    .param p3, "localRotation"    # I

    .line 2199
    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2200
    :cond_7
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2201
    .local v0, "w":I
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2202
    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2204
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 2205
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 2206
    iput v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 2207
    return-void
.end method

.method private blacklist adjustSize(Landroid/graphics/Point;II)V
    .registers 6
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "realRotation"    # I
    .param p3, "localRotation"    # I

    .line 2187
    invoke-static {p2, p3}, Landroid/view/Display;->noFlip(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2188
    :cond_7
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 2189
    .local v0, "w":I
    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 2190
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 2191
    return-void
.end method

.method private blacklist contains([II)Z
    .registers 8
    .param p1, "disabledHdrTypes"    # [I
    .param p2, "hdrType"    # I

    .line 1515
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_16

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1516
    .local v3, "disabledHdrFormat":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_13

    .line 1517
    const/4 v0, 0x1

    return v0

    .line 1515
    .end local v3    # "disabledHdrFormat":Ljava/lang/Integer;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1520
    :cond_16
    return v1
.end method

.method private blacklist findHdrSdrRatioListenerLocked(Ljava/util/function/Consumer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)I"
        }
    .end annotation

    .line 1581
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/Display;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1582
    iget-object v1, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$HdrSdrRatioListenerWrapper;

    .line 1583
    .local v1, "wrapper":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    iget-object v2, v1, Landroid/view/Display$HdrSdrRatioListenerWrapper;->mListener:Ljava/util/function/Consumer;

    if-ne v2, p1, :cond_16

    .line 1584
    return v0

    .line 1581
    .end local v1    # "wrapper":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1587
    .end local v0    # "i":I
    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getLocalRotation()I
    .registers 3

    .line 2210
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    return v0

    .line 2211
    :cond_9
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 2212
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 2213
    .local v0, "localRotation":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    return v0

    .line 2214
    :cond_19
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    return v1
.end method

.method public static blacklist hasAccess(IIII)Z
    .registers 5
    .param p0, "uid"    # I
    .param p1, "flags"    # I
    .param p2, "ownerUid"    # I
    .param p3, "displayId"    # I

    .line 2103
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_19

    if-eq p0, p2, :cond_19

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_19

    .line 2108
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Landroid/hardware/display/DisplayManagerGlobal;->isUidPresentOnDisplay(II)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 2103
    :goto_1a
    return v0
.end method

.method public static blacklist isActiveState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 2328
    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static greylist-max-o isDozeState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 2318
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static blacklist isHeightValid(I)Z
    .registers 2
    .param p0, "height"    # I

    .line 2363
    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static blacklist isOffState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 2337
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static blacklist isOnState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 2347
    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public static blacklist isRefreshRateValid(F)Z
    .registers 2
    .param p0, "refreshRate"    # F

    .line 2371
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static greylist-max-o isSuspendedState(I)Z
    .registers 3
    .param p0, "state"    # I

    .line 2308
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x4

    if-eq p0, v1, :cond_b

    const/4 v1, 0x6

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method public static blacklist isWidthValid(I)Z
    .registers 2
    .param p0, "width"    # I

    .line 2355
    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private static blacklist noFlip(II)Z
    .registers 3
    .param p0, "realRotation"    # I
    .param p1, "localRotation"    # I

    .line 2178
    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist shouldReportMaxBounds()Z
    .registers 4

    .line 2040
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2041
    return v1

    .line 2043
    :cond_6
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2044
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_1b

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public static blacklist stateReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "reason"    # I

    .line 2279
    packed-switch p0, :pswitch_data_20

    .line 2297
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2295
    :pswitch_8
    const-string v0, "MOTION"

    return-object v0

    .line 2293
    :pswitch_b
    const-string v0, "KEY"

    return-object v0

    .line 2291
    :pswitch_e
    const-string v0, "DREAM_MANAGER"

    return-object v0

    .line 2289
    :pswitch_11
    const-string v0, "TILT"

    return-object v0

    .line 2287
    :pswitch_14
    const-string v0, "OFFLOAD"

    return-object v0

    .line 2285
    :pswitch_17
    const-string v0, "DRAW_WAKE_LOCK"

    return-object v0

    .line 2283
    :pswitch_1a
    const-string v0, "DEFAULT_POLICY"

    return-object v0

    .line 2281
    :pswitch_1d
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 2256
    packed-switch p0, :pswitch_data_1e

    .line 2272
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2270
    :pswitch_8
    const-string v0, "ON_SUSPEND"

    return-object v0

    .line 2268
    :pswitch_b
    const-string v0, "VR"

    return-object v0

    .line 2266
    :pswitch_e
    const-string v0, "DOZE_SUSPEND"

    return-object v0

    .line 2264
    :pswitch_11
    const-string v0, "DOZE"

    return-object v0

    .line 2262
    :pswitch_14
    const-string v0, "ON"

    return-object v0

    .line 2260
    :pswitch_17
    const-string v0, "OFF"

    return-object v0

    .line 2258
    :pswitch_1a
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 2233
    packed-switch p0, :pswitch_data_1a

    .line 2247
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2245
    :pswitch_8
    const-string v0, "VIRTUAL"

    return-object v0

    .line 2243
    :pswitch_b
    const-string v0, "OVERLAY"

    return-object v0

    .line 2241
    :pswitch_e
    const-string v0, "WIFI"

    return-object v0

    .line 2239
    :pswitch_11
    const-string v0, "EXTERNAL"

    return-object v0

    .line 2237
    :pswitch_14
    const-string v0, "INTERNAL"

    return-object v0

    .line 2235
    :pswitch_17
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private greylist-max-o updateCachedAppSizeIfNeededLocked()V
    .registers 7

    .line 2164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2165
    .local v0, "now":J
    iget-wide v2, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_29

    .line 2166
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2167
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 2168
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    .line 2169
    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    .line 2170
    iput-wide v0, p0, Landroid/view/Display;->mLastCachedAppSizeUpdate:J

    .line 2172
    :cond_29
    return-void
.end method

.method private greylist-max-o updateDisplayInfoLocked()V
    .registers 3

    .line 2142
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2143
    .local v0, "newInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_12

    .line 2145
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_1b

    .line 2146
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    goto :goto_1b

    .line 2153
    :cond_12
    iput-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 2154
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-nez v1, :cond_1b

    .line 2155
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    .line 2161
    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public blacklist canHostTasks()Z
    .registers 3

    .line 2086
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2087
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2088
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, v1, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 2089
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist canStealTopFocus()Z
    .registers 2

    .line 2137
    iget v0, p0, Landroid/view/Display;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist clearUserPreferredDisplayMode()V
    .registers 4

    .line 1683
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1684
    return-void
.end method

.method public blacklist getAddress()Landroid/view/DisplayAddress;
    .registers 3

    .line 852
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 854
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    monitor-exit v0

    return-object v1

    .line 855
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist getAppVsyncOffsetNanos()J
    .registers 4

    .line 1801
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1802
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1803
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    monitor-exit v0

    return-wide v1

    .line 1804
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getBrightnessDefault()F
    .registers 3

    .line 925
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 926
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 927
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    monitor-exit v0

    return v1

    .line 928
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .registers 3

    .line 937
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getColorMode()I
    .registers 3

    .line 1440
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1442
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->colorMode:I

    monitor-exit v0

    return v1

    .line 1443
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getCommittedState()I
    .registers 3

    .line 2070
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2071
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2072
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->committedState:I

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 2073
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .param p1, "outSmallestSize"    # Landroid/graphics/Point;
    .param p2, "outLargestSize"    # Landroid/graphics/Point;

    .line 1043
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1045
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1046
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1047
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 1048
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, p2, Landroid/graphics/Point;->y:I

    .line 1049
    monitor-exit v0

    .line 1050
    return-void

    .line 1049
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist getCutout()Landroid/view/DisplayCutout;
    .registers 7

    .line 1158
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1160
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_10

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    monitor-exit v0

    return-object v1

    .line 1161
    :cond_10
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 1162
    .local v1, "localCutout":Landroid/view/DisplayCutout;
    if-nez v1, :cond_19

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1163
    :cond_19
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1164
    .local v2, "rotation":I
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_35

    .line 1165
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1168
    :cond_35
    monitor-exit v0

    return-object v1

    .line 1169
    .end local v1    # "localCutout":Landroid/view/DisplayCutout;
    .end local v2    # "rotation":I
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public blacklist getDefaultMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1293
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1294
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1295
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1296
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist getDeviceProductInfo()Landroid/hardware/display/DeviceProductInfo;
    .registers 3

    .line 1834
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1835
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1836
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    monitor-exit v0

    return-object v1

    .line 1837
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public greylist getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .registers 3

    .line 893
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_19

    .line 894
    iget-object v0, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 895
    .local v0, "currentAdjustments":Landroid/view/DisplayAdjustments;
    iget-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, v0}, Landroid/view/DisplayAdjustments;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 896
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, v0}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    iput-object v1, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 900
    .end local v0    # "currentAdjustments":Landroid/view/DisplayAdjustments;
    :cond_19
    iget-object v0, p0, Landroid/view/Display;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public blacklist getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 3

    .line 2384
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 742
    iget v0, p0, Landroid/view/Display;->mDisplayId:I

    return v0
.end method

.method public greylist-max-p getDisplayInfo(Landroid/view/DisplayInfo;)Z
    .registers 4
    .param p1, "outDisplayInfo"    # Landroid/view/DisplayInfo;

    .line 788
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 790
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 791
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    .line 792
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 822
    iget v0, p0, Landroid/view/Display;->mFlags:I

    return v0
.end method

.method public whitelist getHdrCapabilities()Landroid/view/Display$HdrCapabilities;
    .registers 8

    .line 1482
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1483
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1484
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-eqz v1, :cond_90

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, v1, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-eqz v1, :cond_14

    goto/16 :goto_90

    .line 1488
    :cond_14
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    array-length v1, v1

    if-nez v1, :cond_29

    .line 1489
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v1

    .line 1490
    .local v1, "modeSupportedHdrTypes":[I
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 1492
    .end local v1    # "modeSupportedHdrTypes":[I
    .local v2, "supportedHdrTypes":[I
    goto :goto_71

    .line 1493
    .end local v2    # "supportedHdrTypes":[I
    :cond_29
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1494
    .local v1, "enabledTypesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_50

    aget v5, v2, v4

    .line 1495
    .local v5, "supportedType":I
    iget-object v6, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v6, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    invoke-direct {p0, v6, v5}, Landroid/view/Display;->contains([II)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 1496
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1494
    .end local v5    # "supportedType":I
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 1500
    :cond_50
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1501
    .restart local v2    # "supportedHdrTypes":[I
    const/4 v3, 0x0

    .line 1502
    .local v3, "index":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1503
    .local v5, "enabledType":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    aput v5, v2, v3

    .line 1504
    .end local v5    # "enabledType":I
    move v3, v6

    goto :goto_5b

    .line 1507
    .end local v1    # "enabledTypesSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v6    # "index":I
    :cond_71
    :goto_71
    new-instance v1, Landroid/view/Display$HdrCapabilities;

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v3, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v3}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v3

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v4, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v4}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMaxAverageLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v4

    iget-object v5, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v5}, Landroid/view/Display$HdrCapabilities;->-$$Nest$fgetmMinLuminance(Landroid/view/Display$HdrCapabilities;)F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/Display$HdrCapabilities;-><init>([IFFF)V

    monitor-exit v0

    return-object v1

    .line 1485
    .end local v2    # "supportedHdrTypes":[I
    :cond_90
    :goto_90
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1511
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw v1
.end method

.method public whitelist getHdrSdrRatio()F
    .registers 3

    .line 1573
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1574
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1575
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1576
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_13
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    :goto_17
    monitor-exit v0

    .line 1575
    return v1

    .line 1577
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist getHeight()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1094
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 1096
    iget v1, p0, Landroid/view/Display;->mCachedAppHeightCompat:I

    monitor-exit v0

    return v1

    .line 1097
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist getHighestHdrSdrRatio()F
    .registers 3

    .line 1652
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getHighestHdrSdrRatio(I)F

    move-result v0

    return v0
.end method

.method public blacklist getInstallOrientation()I
    .registers 3

    .line 1134
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1135
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1136
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->installOrientation:I

    monitor-exit v0

    return v1

    .line 1137
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public greylist-max-o getLayerStack()I
    .registers 3

    .line 805
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 807
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    monitor-exit v0

    return v1

    .line 808
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public greylist getMaximumSizeDimension()I
    .registers 4

    .line 1059
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1061
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1062
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist getMetrics(Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1883
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1884
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1885
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1886
    monitor-exit v0

    .line 1887
    return-void

    .line 1886
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist getMinSizeDimensionDp()F
    .registers 5

    .line 1070
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1072
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 1073
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1074
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 1073
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    monitor-exit v0

    return v1

    .line 1075
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist getMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1281
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1282
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1283
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1284
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 3

    .line 912
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 913
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 914
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 915
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist getOrientation()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1147
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public whitelist getOverlaySupport()Landroid/hardware/OverlayProperties;
    .registers 4

    .line 1735
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1736
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1737
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    goto :goto_1b

    .line 1741
    :cond_15
    invoke-static {}, Landroid/hardware/OverlayProperties;->getDefault()Landroid/hardware/OverlayProperties;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1739
    :cond_1b
    :goto_1b
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1742
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public greylist getOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 882
    iget-object v0, p0, Landroid/view/Display;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getOwnerUid()I
    .registers 2

    .line 868
    iget v0, p0, Landroid/view/Display;->mOwnerUid:I

    return v0
.end method

.method public whitelist getPixelFormat()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1225
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;
    .registers 3

    .line 1720
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1721
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1722
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1723
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1725
    :cond_16
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1726
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist getPresentationDeadlineNanos()J
    .registers 4

    .line 1819
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1820
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1821
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v1, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    monitor-exit v0

    return-wide v1

    .line 1822
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist getRealMetrics(Landroid/util/DisplayMetrics;)V
    .registers 6
    .param p1, "outMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2007
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2008
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2009
    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2010
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    .line 2012
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2010
    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getMaxBoundsMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 2018
    monitor-exit v0

    return-void

    .line 2020
    :cond_1b
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 2022
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    .line 2023
    .local v1, "rotation":I
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_34

    .line 2024
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustMetrics(Landroid/util/DisplayMetrics;II)V

    .line 2026
    .end local v1    # "rotation":I
    :cond_34
    monitor-exit v0

    .line 2027
    return-void

    .line 2026
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public whitelist getRealSize(Landroid/graphics/Point;)V
    .registers 5
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1936
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1937
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1938
    invoke-direct {p0}, Landroid/view/Display;->shouldReportMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1939
    iget-object v1, p0, Landroid/view/Display;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1940
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1941
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 1942
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 1948
    monitor-exit v0

    return-void

    .line 1950
    .end local v1    # "bounds":Landroid/graphics/Rect;
    :cond_26
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1951
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1952
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    .line 1953
    .local v1, "rotation":I
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eq v1, v2, :cond_43

    .line 1954
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {p0, p1, v2, v1}, Landroid/view/Display;->adjustSize(Landroid/graphics/Point;II)V

    .line 1956
    .end local v1    # "rotation":I
    :cond_43
    monitor-exit v0

    .line 1957
    return-void

    .line 1956
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public whitelist getRectSize(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outSize"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1005
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1007
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 1008
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1009
    monitor-exit v0

    .line 1010
    return-void

    .line 1009
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist getRefreshRate()F
    .registers 3

    .line 1232
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1233
    :try_start_3
    iget-boolean v1, p0, Landroid/view/Display;->mRefreshRateChangesRegistered:Z

    if-nez v1, :cond_11

    .line 1234
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->registerForRefreshRateChanges()V

    .line 1235
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Display;->mRefreshRateChangesRegistered:Z

    .line 1237
    :cond_11
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1238
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    monitor-exit v0

    return v1

    .line 1239
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public greylist-max-o getRemoveMode()I
    .registers 2

    .line 1460
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->removeMode:I

    return v0
.end method

.method public blacklist getReportedHdrTypes()[I
    .registers 3

    .line 1533
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1534
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1535
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1536
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getRotation()I
    .registers 3

    .line 1122
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1123
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1124
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1125
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .registers 7
    .param p1, "position"    # I

    .line 1182
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1183
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1184
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 1185
    .local v1, "roundedCorners":Landroid/view/RoundedCorners;
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1186
    .local v2, "rotation":I
    if-eqz v1, :cond_21

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_21

    .line 1187
    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/RoundedCorners;->rotate(III)Landroid/view/RoundedCorners;

    .line 1190
    :cond_21
    if-nez v1, :cond_25

    const/4 v3, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v1, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    :goto_29
    monitor-exit v0

    return-object v3

    .line 1191
    .end local v1    # "roundedCorners":Landroid/view/RoundedCorners;
    .end local v2    # "rotation":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public whitelist getShape()Landroid/view/DisplayShape;
    .registers 5

    .line 1205
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1206
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1207
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 1208
    .local v1, "displayShape":Landroid/view/DisplayShape;
    invoke-direct {p0}, Landroid/view/Display;->getLocalRotation()I

    move-result v2

    .line 1209
    .local v2, "rotation":I
    if-eqz v1, :cond_1c

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    if-eq v2, v3, :cond_1c

    .line 1210
    invoke-virtual {v1, v2}, Landroid/view/DisplayShape;->setRotation(I)Landroid/view/DisplayShape;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1212
    :cond_1c
    monitor-exit v0

    return-object v1

    .line 1213
    .end local v1    # "displayShape":Landroid/view/DisplayShape;
    .end local v2    # "rotation":I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist getSize(Landroid/graphics/Point;)V
    .registers 6
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 987
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 989
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 990
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 991
    iget-object v1, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 992
    monitor-exit v0

    .line 993
    return-void

    .line 992
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist getState()I
    .registers 3

    .line 2055
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2056
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2057
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 2058
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist getSuggestedFrameRate(I)F
    .registers 5
    .param p1, "category"    # I

    .line 1389
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1390
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1391
    const/4 v1, 0x1

    if-ne p1, v1, :cond_13

    .line 1392
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-virtual {v1}, Landroid/view/FrameRateCategoryRate;->getHigh()F

    move-result v1

    monitor-exit v0

    return v1

    .line 1393
    :cond_13
    if-nez p1, :cond_1f

    .line 1394
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-virtual {v1}, Landroid/view/FrameRateCategoryRate;->getNormal()F

    move-result v1

    monitor-exit v0

    return v1

    .line 1396
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid FrameRateCategory provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/Display;
    .end local p1    # "category":I
    throw v1

    .line 1398
    .restart local p0    # "this":Landroid/view/Display;
    .restart local p1    # "category":I
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public greylist-max-o getSupportedColorModes()[I
    .registers 4

    .line 1750
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1751
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1752
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 1753
    .local v1, "colorModes":[I
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1754
    .end local v1    # "colorModes":[I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist getSupportedModes()[Landroid/view/Display$Mode;
    .registers 4

    .line 1303
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1304
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1305
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 1306
    .local v1, "modes":[Landroid/view/Display$Mode;
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    return-object v2

    .line 1307
    .end local v1    # "modes":[Landroid/view/Display$Mode;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist getSupportedRefreshRates()[F
    .registers 3

    .line 1255
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1257
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 1258
    .local v1, "refreshRates":[F
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    monitor-exit v0

    return-object v1

    .line 1260
    .end local v1    # "refreshRates":[F
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist getSupportedRefreshRatesLegacy()[F
    .registers 3

    .line 1269
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1270
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1271
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getDefaultRefreshRatesLegacy()[F

    move-result-object v1

    .line 1272
    .local v1, "refreshRates":[F
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    monitor-exit v0

    return-object v1

    .line 1274
    .end local v1    # "refreshRates":[F
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist getSupportedWideColorGamut()[Landroid/graphics/ColorSpace;
    .registers 9

    .line 1767
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1768
    const/4 v1, 0x0

    :try_start_4
    new-array v2, v1, [Landroid/graphics/ColorSpace;

    .line 1769
    .local v2, "defaultColorSpaces":[Landroid/graphics/ColorSpace;
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1770
    invoke-virtual {p0}, Landroid/view/Display;->isWideColorGamut()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1771
    monitor-exit v0

    return-object v2

    .line 1774
    :cond_11
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedColorModes()[I

    move-result-object v3

    .line 1775
    .local v3, "colorModes":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    .local v4, "colorSpaces":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/ColorSpace;>;"
    array-length v5, v3

    :goto_1b
    if-ge v1, v5, :cond_3a

    aget v6, v3, v1

    .line 1778
    .local v6, "colorMode":I
    sparse-switch v6, :sswitch_data_46

    goto :goto_37

    .line 1783
    :sswitch_23
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 1780
    :sswitch_2d
    sget-object v7, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1781
    nop

    .line 1776
    .end local v6    # "colorMode":I
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1787
    :cond_3a
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/ColorSpace;

    monitor-exit v0

    return-object v1

    .line 1788
    .end local v2    # "defaultColorSpaces":[Landroid/graphics/ColorSpace;
    .end local v3    # "colorModes":[I
    .end local v4    # "colorSpaces":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/ColorSpace;>;"
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_42

    throw v1

    nop

    :sswitch_data_46
    .sparse-switch
        0x6 -> :sswitch_2d
        0x9 -> :sswitch_23
    .end sparse-switch
.end method

.method public blacklist getSystemPreferredDisplayMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1473
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemSupportedModes()[Landroid/view/Display$Mode;
    .registers 4

    .line 1316
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1317
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1318
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 1319
    .local v1, "modes":[Landroid/view/Display$Mode;
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    monitor-exit v0

    return-object v2

    .line 1320
    .end local v1    # "modes":[Landroid/view/Display$Mode;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public greylist getType()I
    .registers 2

    .line 841
    iget v0, p0, Landroid/view/Display;->mType:I

    return v0
.end method

.method public blacklist getUniqueId()Ljava/lang/String;
    .registers 2

    .line 756
    iget-object v0, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserPreferredDisplayMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1694
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWidth()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1083
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1084
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateCachedAppSizeIfNeededLocked()V

    .line 1085
    iget v1, p0, Landroid/view/Display;->mCachedAppWidthCompat:I

    monitor-exit v0

    return v1

    .line 1086
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public greylist-max-o hasAccess(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 2098
    iget v0, p0, Landroid/view/Display;->mFlags:I

    iget v1, p0, Landroid/view/Display;->mOwnerUid:I

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-static {p1, v0, v1, v2}, Landroid/view/Display;->hasAccess(IIII)Z

    move-result v0

    return v0
.end method

.method public whitelist hasArrSupport()Z
    .registers 3

    .line 1329
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1330
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1331
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, v1, Landroid/view/DisplayInfo;->hasArrSupport:Z

    monitor-exit v0

    return v1

    .line 1332
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist isHdr()Z
    .registers 5

    .line 1546
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1547
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1548
    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v1

    .line 1549
    .local v1, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 1550
    monitor-exit v0

    return v2

    .line 1552
    :cond_f
    invoke-virtual {v1}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_17

    const/4 v2, 0x1

    :cond_17
    monitor-exit v0

    return v2

    .line 1553
    .end local v1    # "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist isHdrSdrRatioAvailable()Z
    .registers 3

    .line 1561
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1562
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1563
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 1564
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist isMinimalPostProcessingSupported()Z
    .registers 3

    .line 1420
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1421
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1422
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v1, v1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    monitor-exit v0

    return v1

    .line 1423
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public greylist-max-o isPublicPresentation()Z
    .registers 3

    .line 2116
    iget v0, p0, Landroid/view/Display;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isTrusted()Z
    .registers 3

    .line 2127
    iget v0, p0, Landroid/view/Display;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isValid()Z
    .registers 3

    .line 773
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 775
    iget-boolean v1, p0, Landroid/view/Display;->mIsValid:Z

    monitor-exit v0

    return v1

    .line 776
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist isWideColorGamut()Z
    .registers 3

    .line 1705
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1706
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 1707
    iget-object v1, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1708
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist registerHdrSdrRatioChangedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 13
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 1603
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/Display;>;"
    invoke-virtual {p0}, Landroid/view/Display;->isHdrSdrRatioAvailable()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1606
    const/4 v1, 0x0

    .line 1607
    .local v1, "toRegister":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    iget-object v2, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1608
    :try_start_a
    invoke-direct {p0, p2}, Landroid/view/Display;->findHdrSdrRatioListenerLocked(Ljava/util/function/Consumer;)I

    move-result v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_3a

    const/4 v3, -0x1

    if-ne v0, v3, :cond_22

    .line 1609
    :try_start_11
    new-instance v0, Landroid/view/Display$HdrSdrRatioListenerWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p2, v3}, Landroid/view/Display$HdrSdrRatioListenerWrapper;-><init>(Landroid/view/Display;Ljava/util/function/Consumer;Landroid/view/Display-IA;)V

    move-object v1, v0

    .line 1610
    iget-object v0, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1f

    move-object v4, v1

    goto :goto_23

    .line 1612
    :catchall_1f
    move-exception v0

    move-object v5, p1

    goto :goto_3c

    .line 1608
    :cond_22
    move-object v4, v1

    .line 1612
    .end local v1    # "toRegister":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    .local v4, "toRegister":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    :goto_23
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_36

    .line 1613
    if-eqz v4, :cond_34

    .line 1616
    iget-object v3, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 1621
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1616
    const-wide/16 v6, 0x12

    const/4 v9, 0x1

    move-object v5, p1

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .local v5, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JLjava/lang/String;Z)V

    goto :goto_35

    .line 1613
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    :cond_34
    move-object v5, p1

    .line 1624
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    :goto_35
    return-void

    .line 1612
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    :catchall_36
    move-exception v0

    move-object v5, p1

    move-object v1, v4

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    goto :goto_3c

    .end local v4    # "toRegister":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local v1    # "toRegister":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    :catchall_3a
    move-exception v0

    move-object v5, p1

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    :goto_3c
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3e

    throw v0

    :catchall_3e
    move-exception v0

    goto :goto_3c

    .line 1604
    .end local v1    # "toRegister":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    .end local v5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    :cond_40
    move-object v5, p1

    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "HDR/SDR ratio changed not available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o requestColorMode(I)V
    .registers 4
    .param p1, "colorMode"    # I

    .line 1432
    iget-object v0, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v1, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->requestColorMode(II)V

    .line 1433
    return-void
.end method

.method public blacklist setUserPreferredDisplayMode(Landroid/view/Display$Mode;)V
    .registers 6
    .param p1, "mode"    # Landroid/view/Display$Mode;

    .line 1670
    new-instance v0, Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1671
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1672
    .local v0, "preferredMode":Landroid/view/Display$Mode;
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget v2, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1673
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2220
    iget-object v0, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2221
    :try_start_3
    invoke-direct {p0}, Landroid/view/Display;->updateDisplayInfoLocked()V

    .line 2222
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    .line 2223
    .local v1, "adjustments":Landroid/view/DisplayAdjustments;
    iget-object v2, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/Display;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Display;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Display;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isValid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/Display;->mIsValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2226
    .end local v1    # "adjustments":Landroid/view/DisplayAdjustments;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public whitelist unregisterHdrSdrRatioChangedListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 1634
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/Display;>;"
    const/4 v0, 0x0

    .line 1635
    .local v0, "toRemove":Landroid/view/Display$HdrSdrRatioListenerWrapper;
    iget-object v1, p0, Landroid/view/Display;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1636
    :try_start_4
    invoke-direct {p0, p1}, Landroid/view/Display;->findHdrSdrRatioListenerLocked(Ljava/util/function/Consumer;)I

    move-result v2

    .line 1637
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    .line 1638
    iget-object v3, p0, Landroid/view/Display;->mHdrSdrRatioListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$HdrSdrRatioListenerWrapper;

    move-object v0, v3

    .line 1640
    .end local v2    # "index":I
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1d

    .line 1641
    if-eqz v0, :cond_1c

    .line 1642
    iget-object v1, p0, Landroid/view/Display;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1644
    :cond_1c
    return-void

    .line 1640
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2
.end method
