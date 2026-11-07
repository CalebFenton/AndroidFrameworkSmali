.class public final Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$Transaction;,
        Landroid/view/SurfaceControl$StaticDisplayInfo;,
        Landroid/view/SurfaceControl$DynamicDisplayInfo;,
        Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;,
        Landroid/view/SurfaceControl$DisplayPrimaries;,
        Landroid/view/SurfaceControl$OnJankDataListenerRegistration;,
        Landroid/view/SurfaceControl$OnJankDataListener;,
        Landroid/view/SurfaceControl$LockDebuggingTransaction;,
        Landroid/view/SurfaceControl$TrustedPresentationCallback;,
        Landroid/view/SurfaceControl$TrustedPresentationThresholds;,
        Landroid/view/SurfaceControl$TransactionStats;,
        Landroid/view/SurfaceControl$TransactionCommittedListener;,
        Landroid/view/SurfaceControl$CieXyz;,
        Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;,
        Landroid/view/SurfaceControl$RefreshRateRanges;,
        Landroid/view/SurfaceControl$RefreshRateRange;,
        Landroid/view/SurfaceControl$DisplayMode;,
        Landroid/view/SurfaceControl$Builder;,
        Landroid/view/SurfaceControl$FrameRateSelectionStrategy;,
        Landroid/view/SurfaceControl$CachingHint;,
        Landroid/view/SurfaceControl$JankData;,
        Landroid/view/SurfaceControl$OnReparentListener;,
        Landroid/view/SurfaceControl$BufferTransform;
    }
.end annotation


# static fields
.field public static final whitelist BUFFER_TRANSFORM_IDENTITY:I = 0x0

.field public static final whitelist BUFFER_TRANSFORM_MIRROR_HORIZONTAL:I = 0x1

.field public static final whitelist BUFFER_TRANSFORM_MIRROR_VERTICAL:I = 0x2

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_180:I = 0x3

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_270:I = 0x7

.field public static final whitelist BUFFER_TRANSFORM_ROTATE_90:I = 0x4

.field public static final blacklist CACHING_DISABLED:I = 0x0

.field public static final blacklist CACHING_ENABLED:I = 0x1

.field public static final blacklist CAN_OCCLUDE_PRESENTATION:I = 0x1000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o CURSOR_WINDOW:I = 0x2000

.field public static final blacklist DISPLAY_DECORATION:I = 0x200

.field public static final blacklist DISPLAY_RECEIVES_INPUT:I = 0x1

.field public static final blacklist ENABLE_BACKPRESSURE:I = 0x100

.field public static final blacklist FRAME_RATE_SELECTION_STRATEGY_OVERRIDE_CHILDREN:I = 0x1

.field public static final blacklist FRAME_RATE_SELECTION_STRATEGY_PROPAGATE:I = 0x0

.field public static final blacklist FRAME_RATE_SELECTION_STRATEGY_SELF:I = 0x2

.field public static final blacklist FX_SURFACE_BLAST:I = 0x40000

.field public static final blacklist FX_SURFACE_CONTAINER:I = 0x80000

.field public static final blacklist FX_SURFACE_EFFECT:I = 0x20000

.field public static final greylist-max-o FX_SURFACE_MASK:I = 0xf0000

.field public static final greylist-max-o FX_SURFACE_NORMAL:I = 0x0

.field public static final greylist-max-r HIDDEN:I = 0x4

.field public static final blacklist IGNORE_DESTINATION_FRAME:I = 0x400

.field public static final blacklist LAYER_IS_REFRESH_RATE_INDICATOR:I = 0x800

.field public static final blacklist METADATA_ACCESSIBILITY_ID:I = 0x5

.field public static final blacklist METADATA_GAME_MODE:I = 0x8

.field public static final blacklist METADATA_MOUSE_CURSOR:I = 0x4

.field public static final blacklist METADATA_OWNER_PID:I = 0x6

.field public static final blacklist METADATA_OWNER_UID:I = 0x1

.field public static final blacklist METADATA_TASK_ID:I = 0x3

.field public static final blacklist METADATA_WINDOW_TYPE:I = 0x2

.field public static final greylist-max-o NON_PREMULTIPLIED:I = 0x100

.field public static final blacklist NO_COLOR_FILL:I = 0x4000

.field public static final greylist-max-o OPAQUE:I = 0x400

.field public static final greylist-max-o POWER_MODE_DOZE:I = 0x1

.field public static final greylist-max-o POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final greylist-max-o POWER_MODE_NORMAL:I = 0x2

.field public static final greylist-max-o POWER_MODE_OFF:I = 0x0

.field public static final greylist-max-o POWER_MODE_ON_SUSPEND:I = 0x4

.field public static final greylist-max-o PROTECTED_APP:I = 0x800

.field public static final blacklist RECOVERABLE_FROM_BUFFER_STUFFING:I = 0x2000

.field public static final greylist-max-o SECURE:I = 0x80

.field public static final blacklist SKIP_SCREENSHOT:I = 0x40

.field private static final greylist-max-o SURFACE_HIDDEN:I = 0x1

.field private static final greylist-max-o SURFACE_OPAQUE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceControl"

.field private static volatile blacklist sDebugUsageAfterRelease:Z

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mCallsite:Ljava/lang/String;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private final blacklist mChoreographerLock:Ljava/lang/Object;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mFreeNativeResources:Ljava/lang/Runnable;

.field private greylist-max-o mHeight:I

.field private blacklist mLocalOwnerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist-max-o mName:Ljava/lang/String;

.field private blacklist mNativeHandle:J

.field public greylist-max-o mNativeObject:J

.field private blacklist mReleaseStack:Ljava/lang/Throwable;

.field private blacklist mReparentListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl$OnReparentListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/view/SurfaceControl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReparentListeners(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTrustedPresentationCallback(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$TrustedPresentationCallback;
    .registers 1

    iget-object p0, p0, Landroid/view/SurfaceControl;->mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTrustedPresentationCallback(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$TrustedPresentationCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/view/SurfaceControl;->mTrustedPresentationCallback:Landroid/view/SurfaceControl$TrustedPresentationCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckNotReleased(Landroid/view/SurfaceControl;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNativeTrustedPresentationCallbackFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->getNativeTrustedPresentationCallbackFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeApplyTransaction(JZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeApplyTransaction(JZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeClearTransaction(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeClearTransaction(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeClearTrustedPresentationCallback(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeClearTrustedPresentationCallback(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateJankDataListenerWrapper(JLandroid/view/SurfaceControl$OnJankDataListener;)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeCreateJankDataListenerWrapper(JLandroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateTransaction()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeCreateTransaction()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeEnableDebugLogCallPoints(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeEnableDebugLogCallPoints(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeFlushJankData(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeFlushJankData(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetDefaultApplyToken()Landroid/os/IBinder;
    .registers 1

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetDefaultApplyToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetJankDataListenerWrapperFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetJankDataListenerWrapperFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNativeTransactionFinalizer()J
    .registers 2

    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetTransactionId(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetTransactionId(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeMergeTransaction(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeMergeTransaction(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReadTransactionFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeReadTransactionFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeRemoveCurrentInputFocus(JI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeRemoveCurrentInputFocus(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeRemoveJankDataListener(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeRemoveJankDataListener(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeReparent(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeReparent(JJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSanitize(JII)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSanitize(JII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetAlpha(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetAlpha(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetAnimationTransaction(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBackgroundBlurRadius(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBackgroundBlurRadius(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBlurRegions(JJ[[FI)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetBlurRegions(JJ[[FI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBorderSettings(JJLandroid/os/Parcel;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBorderSettings(JJLandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetBufferTransform(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetBufferTransform(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetCachingHint(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCachingHint(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetClientDrawnCornerRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetClientDrawnCornerRadius(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetColor(JJ[F)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetColorSpaceAgnostic(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetColorSpaceAgnostic(JJZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetColorTransform(JJ[F[F)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetColorTransform(JJ[F[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetContentPriority(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetContentPriority(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetCornerRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetCornerRadius(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetCrop(JJFFFF)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetCrop(JJFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDamageRegion(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDamageRegion(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDataSpace(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDataSpace(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDefaultApplyToken(Landroid/os/IBinder;)V
    .registers 1

    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeSetDefaultApplyToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDefaultFrameRateCompatibility(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDefaultFrameRateCompatibility(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDesiredHdrHeadroom(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDesiredHdrHeadroom(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDesiredPresentTimeNanos(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDesiredPresentTimeNanos(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDestinationFrame(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetDestinationFrame(JJIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDimmingEnabled(JJZ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDimmingEnabled(JJZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayFlags(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayFlags(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplaySize(JLandroid/os/IBinder;II)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(JLandroid/os/IBinder;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDisplaySurface(JLandroid/os/IBinder;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetDropInputMode(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDropInputMode(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetEarlyWakeupEnd(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupEnd(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetEarlyWakeupStart(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetEarlyWakeupStart(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetEdgeExtensionEffect(JJZZZZ)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetEdgeExtensionEffect(JJZZZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetExtendedRangeBrightness(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetExtendedRangeBrightness(JJFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFixedTransformHint(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFixedTransformHint(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFlags(JJII)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRate(JJFII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetFrameRate(JJFII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateCategory(JJIZ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetFrameRateCategory(JJIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateSelectionPriority(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionPriority(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameRateSelectionStrategy(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionStrategy(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetFrameTimelineVsync(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetFrameTimelineVsync(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetLayer(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayer(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetLayerStack(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetLuts(JJ[F[I[I[I[I)V
    .registers 9

    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeSetLuts(JJ[F[I[I[I[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetMatrix(JJFFFF)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetMatrix(JJFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetMetadata(JJILandroid/os/Parcel;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetMetadata(JJILandroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetPictureProfileId(JJJ)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPictureProfileId(JJJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetPosition(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetPosition(JJFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetRelativeLayer(JJJI)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JJJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetScale(JJFF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/view/SurfaceControl;->nativeSetScale(JJFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetShadowRadius(JJF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetShadowRadius(JJF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetStretchEffect(JJFFFFFFFFFF)V
    .registers 14

    invoke-static/range {p0 .. p13}, Landroid/view/SurfaceControl;->nativeSetStretchEffect(JJFFFFFFFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTrustedOverlay(JJI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetTrustedOverlay(JJI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->nativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSetWindowCrop(JJIIII)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeSurfaceFlushJankData(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSurfaceFlushJankData(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeUnsetBuffer(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeUnsetBuffer(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 690
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    .line 692
    nop

    .line 693
    const-class v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 694
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetNativeSurfaceControlFinalizer()J

    move-result-wide v1

    .line 693
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControl;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1713
    new-instance v0, Landroid/view/SurfaceControl$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 669
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 674
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1536
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 669
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 674
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1526
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 1527
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 4
    .param p1, "other"    # Landroid/view/SurfaceControl;
    .param p2, "callsite"    # Ljava/lang/String;

    .line 1521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 669
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 674
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1522
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 1523
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 29
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .param p7, "parent"    # Landroid/view/SurfaceControl;
    .param p8, "metadata"    # Landroid/util/SparseIntArray;
    .param p10, "callsite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceSession;",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/view/SurfaceControl;",
            "Landroid/util/SparseIntArray;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1478
    .local p9, "localOwnerView":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 658
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, v1, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 669
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    .line 674
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    .line 686
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1479
    if-eqz v3, :cond_af

    .line 1483
    iput-object v3, v1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 1484
    move/from16 v4, p3

    iput v4, v1, Landroid/view/SurfaceControl;->mWidth:I

    .line 1485
    move/from16 v5, p4

    iput v5, v1, Landroid/view/SurfaceControl;->mHeight:I

    .line 1486
    move-object/from16 v13, p9

    iput-object v13, v1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    .line 1487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 1488
    .local v10, "metaParcel":Landroid/os/Parcel;
    const-wide/16 v14, 0x0

    .line 1490
    .local v14, "nativeObject":J
    if-eqz v12, :cond_7e

    :try_start_3a
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_7e

    .line 1491
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_48
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_75

    .line 1493
    invoke-virtual {v12, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    nop

    .line 1495
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1496
    invoke-virtual {v12, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1494
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1492
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 1498
    .end local v0    # "i":I
    :cond_75
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_7e

    .line 1503
    :catchall_7a
    move-exception v0

    move-object/from16 v2, p10

    goto :goto_ab

    .line 1500
    :cond_7e
    :goto_7e
    nop

    .line 1501
    const-wide/16 v16, 0x0

    if-eqz v11, :cond_87

    iget-wide v6, v11, Landroid/view/SurfaceControl;->mNativeObject:J

    move-wide v8, v6

    goto :goto_89

    :cond_87
    move-wide/from16 v8, v16

    .line 1500
    :goto_89
    move-object/from16 v2, p1

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v2 .. v10}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J

    move-result-wide v8
    :try_end_93
    .catchall {:try_start_3a .. :try_end_93} :catchall_7a

    .line 1503
    .end local v14    # "nativeObject":J
    .local v8, "nativeObject":J
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1504
    nop

    .line 1505
    cmp-long v0, v8, v16

    if-eqz v0, :cond_a1

    .line 1509
    move-object/from16 v2, p10

    invoke-direct {v1, v8, v9, v2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 1510
    return-void

    .line 1506
    :cond_a1
    move-object/from16 v2, p10

    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v3, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v3}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1503
    .end local v8    # "nativeObject":J
    .restart local v14    # "nativeObject":J
    :goto_ab
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1504
    throw v0

    .line 1480
    .end local v10    # "metaParcel":Landroid/os/Parcel;
    .end local v14    # "nativeObject":J
    :cond_af
    move-object/from16 v13, p9

    move-object/from16 v2, p10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "name must not be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/view/SurfaceControl-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist assignNativeObject(JLjava/lang/String;)V
    .registers 8
    .param p1, "nativeObject"    # J
    .param p3, "callsite"    # Ljava/lang/String;

    .line 996
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 997
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 999
    :cond_b
    cmp-long v0, p1, v2

    if-eqz v0, :cond_17

    .line 1000
    sget-object v0, Landroid/view/SurfaceControl;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 1001
    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 1003
    :cond_17
    iput-wide p1, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 1004
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->nativeGetHandle(J)J

    move-result-wide v0

    goto :goto_25

    :cond_24
    move-wide v0, v2

    :goto_25
    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    .line 1005
    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz v0, :cond_3b

    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3b

    .line 1006
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Assigned invalid nativeObject"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    goto :goto_3e

    .line 1008
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1010
    :goto_3e
    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 1011
    cmp-long v0, p1, v2

    if-eqz v0, :cond_4c

    .line 1014
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->add(Landroid/view/SurfaceControl;)V

    .line 1016
    :cond_4c
    return-void
.end method

.method public static blacklist bootFinished()Z
    .registers 1

    .line 2855
    invoke-static {}, Landroid/view/SurfaceControl;->nativeBootFinished()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o checkNotReleased()V
    .registers 5

    .line 1783
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    .line 1784
    iget-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    if-eqz v0, :cond_27

    .line 1785
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid usage after release of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1788
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNativeObject of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null. Have you called release() already?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1792
    :cond_46
    return-void
.end method

.method public static greylist-max-o clearAnimationFrameStats()Z
    .registers 1

    .line 1851
    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static blacklist clearBootDisplayMode(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2642
    if-eqz p0, :cond_6

    .line 2646
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeClearBootDisplayMode(Landroid/os/IBinder;)V

    .line 2647
    return-void

    .line 2643
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist closeTransaction()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1829
    return-void
.end method

.method public static greylist-max-o getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .registers 2
    .param p0, "outStats"    # Landroid/view/WindowAnimationFrameStats;

    .line 1858
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getBootDisplayModeSupport()Z
    .registers 1

    .line 2623
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetBootDisplayModeSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist getCompositionColorSpaces()[Landroid/graphics/ColorSpace;
    .registers 6

    .line 2597
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetCompositionDataspaces()[I

    move-result-object v0

    .line 2598
    .local v0, "dataspaces":[I
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 2599
    .local v1, "srgb":Landroid/graphics/ColorSpace;
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/ColorSpace;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 2600
    .local v3, "colorSpaces":[Landroid/graphics/ColorSpace;
    if-eqz v0, :cond_28

    array-length v4, v0

    if-ne v4, v2, :cond_28

    .line 2601
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v2, :cond_28

    .line 2602
    aget v5, v0, v4

    invoke-static {v5}, Landroid/graphics/ColorSpace;->getFromDataSpace(I)Landroid/graphics/ColorSpace;

    move-result-object v5

    .line 2603
    .local v5, "cs":Landroid/graphics/ColorSpace;
    if-eqz v5, :cond_25

    .line 2604
    aput-object v5, v3, v4

    .line 2601
    .end local v5    # "cs":Landroid/graphics/ColorSpace;
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 2608
    .end local v4    # "i":I
    :cond_28
    return-object v3
.end method

.method public static blacklist getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2507
    if-eqz p0, :cond_7

    .line 2511
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v0

    return-object v0

    .line 2508
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .registers 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2690
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public static blacklist getDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2829
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2574
    if-eqz p0, :cond_7

    .line 2578
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v0

    return-object v0

    .line 2575
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 7
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "maxFrames"    # J
    .param p3, "timestamp"    # J

    .line 2127
    if-eqz p0, :cond_7

    .line 2130
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    return-object v0

    .line 2128
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .line 2100
    if-eqz p0, :cond_7

    .line 2103
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    return-object v0

    .line 2101
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .registers 3
    .param p0, "displayId"    # J

    .line 2092
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getGPUContextPriority()I
    .registers 1

    .line 2847
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetGPUContextPriority()I

    move-result v0

    return v0
.end method

.method public static blacklist getMaxPictureProfiles()I
    .registers 1

    .line 2882
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetMaxPictureProfiles()I

    move-result v0

    return v0
.end method

.method private static native blacklist getNativeTrustedPresentationCallbackFinalizer()J
.end method

.method public static blacklist getOverlaySupport()Landroid/hardware/OverlayProperties;
    .registers 1

    .line 2616
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getProtectedContentSupport()Z
    .registers 1

    .line 2676
    invoke-static {}, Landroid/view/SurfaceControl;->nativeGetProtectedContentSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist getStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;
    .registers 2
    .param p0, "pid"    # I

    .line 5388
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .registers 3
    .param p0, "displayId"    # J

    .line 2085
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist invokeReleaseCallback(Ljava/util/function/Consumer;J)V
    .registers 4
    .param p1, "nativeFencePtr"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;J)V"
        }
    .end annotation

    .line 5380
    .local p0, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/hardware/SyncFence;>;"
    new-instance v0, Landroid/hardware/SyncFence;

    invoke-direct {v0, p1, p2}, Landroid/hardware/SyncFence;-><init>(J)V

    .line 5381
    .local v0, "fence":Landroid/hardware/SyncFence;
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 5382
    return-void
.end method

.method public static blacklist mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 6
    .param p0, "mirrorOf"    # Landroid/view/SurfaceControl;

    .line 2773
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeMirrorSurface(J)J

    move-result-wide v0

    .line 2774
    .local v0, "nativeObj":J
    new-instance v2, Landroid/view/SurfaceControl;

    invoke-direct {v2}, Landroid/view/SurfaceControl;-><init>()V

    .line 2775
    .local v2, "sc":Landroid/view/SurfaceControl;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (mirror)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 2776
    const-string v3, "mirrorSurface"

    invoke-direct {v2, v0, v1, v3}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 2777
    return-object v2
.end method

.method private static native blacklist nativeAddJankDataListener(J)V
.end method

.method private static native blacklist nativeAddTransactionCommittedListener(JLandroid/view/SurfaceControl$TransactionCommittedListener;)V
.end method

.method private static native blacklist nativeAddTransactionCompletedListener(JLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$TransactionStats;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeAddWindowInfosReportedListener(JLjava/lang/Runnable;)V
.end method

.method private static native blacklist nativeApplyTransaction(JZZ)V
.end method

.method private static native blacklist nativeBootFinished()Z
.end method

.method private static native greylist-max-o nativeClearAnimationFrameStats()Z
.end method

.method private static native blacklist nativeClearBootDisplayMode(Landroid/os/IBinder;)V
.end method

.method private static native greylist-max-o nativeClearContentFrameStats(J)Z
.end method

.method private static native blacklist nativeClearTransaction(J)V
.end method

.method private static native blacklist nativeClearTrustedPresentationCallback(JJ)V
.end method

.method private static native blacklist nativeCopyFromSurfaceControl(J)J
.end method

.method private static native blacklist nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIJLandroid/os/Parcel;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native blacklist nativeCreateJankDataListenerWrapper(JLandroid/view/SurfaceControl$OnJankDataListener;)J
.end method

.method private static native blacklist nativeCreateTpc(Landroid/view/SurfaceControl$TrustedPresentationCallback;)J
.end method

.method private static native greylist-max-o nativeCreateTransaction()J
.end method

.method private static native greylist-max-o nativeDisconnect(J)V
.end method

.method private static native blacklist nativeEnableDebugLogCallPoints(J)V
.end method

.method private static native blacklist nativeFlushJankData(J)V
.end method

.method private static native greylist-max-o nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native blacklist nativeGetBootDisplayModeSupport()Z
.end method

.method private static native blacklist nativeGetCompositionDataspaces()[I
.end method

.method private static native greylist-max-o nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native blacklist nativeGetDefaultApplyToken()Landroid/os/IBinder;
.end method

.method private static native blacklist nativeGetDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
.end method

.method private static native blacklist nativeGetDisplayBrightnessSupport(Landroid/os/IBinder;)Z
.end method

.method private static native blacklist nativeGetDisplayDecorationSupport(Landroid/os/IBinder;)Landroid/hardware/graphics/common/DisplayDecorationSupport;
.end method

.method private static native blacklist nativeGetDisplayNativePrimaries(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayPrimaries;
.end method

.method private static native blacklist nativeGetDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;
.end method

.method private static native blacklist nativeGetDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;
.end method

.method private static native blacklist nativeGetDynamicDisplayInfo(J)Landroid/view/SurfaceControl$DynamicDisplayInfo;
.end method

.method private static native blacklist nativeGetGPUContextPriority()I
.end method

.method private static native blacklist nativeGetHandle(J)J
.end method

.method private static native blacklist nativeGetJankDataListenerWrapperFinalizer()J
.end method

.method private static native blacklist nativeGetLayerId(J)I
.end method

.method private static native blacklist nativeGetMaxPictureProfiles()I
.end method

.method private static native blacklist nativeGetNativeSurfaceControlFinalizer()J
.end method

.method private static native greylist-max-o nativeGetNativeTransactionFinalizer()J
.end method

.method private static native blacklist nativeGetOverlaySupport()Landroid/hardware/OverlayProperties;
.end method

.method private static native blacklist nativeGetProtectedContentSupport()Z
.end method

.method private static native blacklist nativeGetStalledTransactionInfo(I)Landroid/gui/StalledTransactionInfo;
.end method

.method private static native blacklist nativeGetStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;
.end method

.method private static native blacklist nativeGetTransactionId(J)J
.end method

.method private static native blacklist nativeGetTransformHint(J)I
.end method

.method private static native greylist-max-o nativeMergeTransaction(JJ)V
.end method

.method private static native blacklist nativeMirrorSurface(J)J
.end method

.method private static native blacklist nativeNotifyShutdown()V
.end method

.method private static native greylist-max-o nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeReadTransactionFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native blacklist nativeRemoveCurrentInputFocus(JI)V
.end method

.method private static native blacklist nativeRemoveJankDataListener(JJ)V
.end method

.method private static native blacklist nativeReparent(JJJ)V
.end method

.method private static native blacklist nativeSanitize(JII)V
.end method

.method private static native greylist-max-o nativeSetActiveColorMode(Landroid/os/IBinder;I)Z
.end method

.method private static native greylist-max-o nativeSetAlpha(JJF)V
.end method

.method private static native greylist-max-o nativeSetAnimationTransaction(J)V
.end method

.method private static native blacklist nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V
.end method

.method private static native blacklist nativeSetBackgroundBlurRadius(JJI)V
.end method

.method private static native blacklist nativeSetBlurRegions(JJ[[FI)V
.end method

.method private static native blacklist nativeSetBootDisplayMode(Landroid/os/IBinder;I)V
.end method

.method private static native blacklist nativeSetBorderSettings(JJLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeSetBuffer(JJLandroid/hardware/HardwareBuffer;JLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/hardware/HardwareBuffer;",
            "J",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/SyncFence;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeSetBufferTransform(JJI)V
.end method

.method private static native blacklist nativeSetCachingHint(JJI)V
.end method

.method private static native blacklist nativeSetCanOccludePresentation(JJZ)V
.end method

.method private static native blacklist nativeSetClientDrawnCornerRadius(JJF)V
.end method

.method private static native greylist-max-o nativeSetColor(JJ[F)V
.end method

.method private static native blacklist nativeSetColorSpaceAgnostic(JJZ)V
.end method

.method private static native blacklist nativeSetColorTransform(JJ[F[F)V
.end method

.method private static native blacklist nativeSetContentPriority(JJI)V
.end method

.method private static native blacklist nativeSetCornerRadius(JJF)V
.end method

.method private static native blacklist nativeSetCrop(JJFFFF)V
.end method

.method private static native blacklist nativeSetDamageRegion(JJLandroid/graphics/Region;)V
.end method

.method private static native blacklist nativeSetDataSpace(JJI)V
.end method

.method private static native blacklist nativeSetDefaultApplyToken(Landroid/os/IBinder;)V
.end method

.method private static native blacklist nativeSetDefaultFrameRateCompatibility(JJI)V
.end method

.method private static native blacklist nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
.end method

.method private static native blacklist nativeSetDesiredHdrHeadroom(JJF)V
.end method

.method private static native blacklist nativeSetDesiredPresentTimeNanos(JJ)V
.end method

.method private static native blacklist nativeSetDestinationFrame(JJIIII)V
.end method

.method private static native blacklist nativeSetDimmingEnabled(JJZ)V
.end method

.method private static native blacklist nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z
.end method

.method private static native blacklist nativeSetDisplayFlags(JLandroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native greylist-max-o nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native greylist-max-o nativeSetDisplaySize(JLandroid/os/IBinder;II)V
.end method

.method private static native greylist-max-o nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
.end method

.method private static native blacklist nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
.end method

.method private static native blacklist nativeSetDropInputMode(JJI)V
.end method

.method private static native blacklist nativeSetEarlyWakeupEnd(J)V
.end method

.method private static native blacklist nativeSetEarlyWakeupStart(J)V
.end method

.method private static native blacklist nativeSetEdgeExtensionEffect(JJZZZZ)V
.end method

.method private static native blacklist nativeSetExtendedRangeBrightness(JJFF)V
.end method

.method private static native blacklist nativeSetFixedTransformHint(JJI)V
.end method

.method private static native greylist-max-o nativeSetFlags(JJII)V
.end method

.method private static native blacklist nativeSetFocusedWindow(JLandroid/os/IBinder;Ljava/lang/String;I)V
.end method

.method private static native blacklist nativeSetFrameRate(JJFII)V
.end method

.method private static native blacklist nativeSetFrameRateCategory(JJIZ)V
.end method

.method private static native blacklist nativeSetFrameRateSelectionPriority(JJI)V
.end method

.method private static native blacklist nativeSetFrameRateSelectionStrategy(JJI)V
.end method

.method private static native blacklist nativeSetFrameTimelineVsync(JJ)V
.end method

.method private static native blacklist nativeSetGameContentType(Landroid/os/IBinder;Z)V
.end method

.method private static native blacklist nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
.end method

.method private static native blacklist nativeSetGlobalShadowSettings([F[FFFF)V
.end method

.method private static native blacklist nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
.end method

.method private static native greylist-max-o nativeSetLayer(JJI)V
.end method

.method private static native greylist-max-o nativeSetLayerStack(JJI)V
.end method

.method private static native blacklist nativeSetLuts(JJ[F[I[I[I[I)V
.end method

.method private static native greylist-max-o nativeSetMatrix(JJFFFF)V
.end method

.method private static native blacklist nativeSetMetadata(JJILandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeSetPictureProfileId(JJJ)V
.end method

.method private static native greylist-max-o nativeSetPosition(JJFF)V
.end method

.method private static native blacklist nativeSetRelativeLayer(JJJI)V
.end method

.method private static native blacklist nativeSetScale(JJFF)V
.end method

.method private static native blacklist nativeSetShadowRadius(JJF)V
.end method

.method private static native blacklist nativeSetStretchEffect(JJFFFFFFFFFF)V
.end method

.method private static native blacklist nativeSetTransformHint(JI)V
.end method

.method private static native greylist-max-o nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
.end method

.method private static native blacklist nativeSetTrustedOverlay(JJI)V
.end method

.method private static native blacklist nativeSetTrustedPresentationCallback(JJJLandroid/view/SurfaceControl$TrustedPresentationThresholds;)V
.end method

.method private static native greylist-max-o nativeSetWindowCrop(JJIIII)V
.end method

.method private static native blacklist nativeSurfaceFlushJankData(J)V
.end method

.method private static native blacklist nativeUnsetBuffer(JJ)V
.end method

.method private static native blacklist nativeUpdateDefaultBufferSize(JII)V
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static native blacklist nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
.end method

.method public static blacklist notifyShutdown()V
    .registers 0

    .line 5396
    invoke-static {}, Landroid/view/SurfaceControl;->nativeNotifyShutdown()V

    .line 5397
    return-void
.end method

.method public static greylist openTransaction()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1816
    return-void
.end method

.method public static blacklist rotationToBufferTransform(I)I
    .registers 4
    .param p0, "rotation"    # I

    .line 391
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_24

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to convert unknown rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceControl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return v0

    .line 395
    :pswitch_1d
    const/4 v0, 0x7

    return v0

    .line 394
    :pswitch_1f
    const/4 v0, 0x3

    return v0

    .line 393
    :pswitch_21
    const/4 v0, 0x4

    return v0

    .line 392
    :pswitch_23
    return v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method public static greylist-max-o setActiveColorMode(Landroid/os/IBinder;I)Z
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "colorMode"    # I

    .line 2585
    if-eqz p0, :cond_7

    .line 2588
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    .line 2586
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "on"    # Z

    .line 2653
    if-eqz p0, :cond_6

    .line 2657
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    .line 2658
    return-void

    .line 2654
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setBootDisplayMode(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "displayModeId"    # I

    .line 2631
    if-eqz p0, :cond_6

    .line 2635
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetBootDisplayMode(Landroid/os/IBinder;I)V

    .line 2636
    return-void

    .line 2632
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setDebugUsageAfterRelease(Z)V
    .registers 2
    .param p0, "debug"    # Z

    .line 1585
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1586
    return-void

    .line 1588
    :cond_7
    sput-boolean p0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    .line 1589
    return-void
.end method

.method public static blacklist setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "desiredDisplayModeSpecs"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 2489
    if-eqz p0, :cond_1d

    .line 2492
    if-eqz p1, :cond_15

    .line 2495
    iget v0, p1, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    if-ltz v0, :cond_d

    .line 2499
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    return v0

    .line 2496
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "defaultMode must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2493
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "desiredDisplayModeSpecs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2490
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setDisplayBrightness(Landroid/os/IBinder;F)Z
    .registers 3
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "brightness"    # F

    .line 2711
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, p1, v0, p1, v0}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0
.end method

.method public static blacklist setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .registers 9
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "sdrBrightness"    # F
    .param p2, "sdrBrightnessNits"    # F
    .param p3, "displayBrightness"    # F
    .param p4, "displayBrightnessNits"    # F

    .line 2742
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2743
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_4b

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    const/high16 v3, -0x40800000    # -1.0f

    if-gez v2, :cond_1a

    cmpl-float v2, p3, v3

    if-nez v2, :cond_4b

    .line 2748
    :cond_1a
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_31

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_31

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2c

    cmpl-float v0, p1, v3

    if-nez v0, :cond_31

    .line 2753
    :cond_2c
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0

    .line 2750
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sdrBrightness must be a number between 0.0f and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2745
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayBrightness must be a number between 0.0f  and 1.0f, or -1 to turn the backlight off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o setDisplayPowerMode(Landroid/os/IBinder;I)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    .line 2075
    if-eqz p0, :cond_6

    .line 2078
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 2079
    return-void

    .line 2076
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z
    .registers 7
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "enable"    # Z
    .param p2, "componentMask"    # I
    .param p3, "maxFrames"    # I

    .line 2111
    if-eqz p0, :cond_14

    .line 2114
    const/4 v0, 0x4

    .line 2115
    .local v0, "maxColorComponents":I
    shr-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_c

    .line 2118
    invoke-static {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->nativeSetDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result v1

    return v1

    .line 2116
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid componentMask when enabling sampling"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2112
    .end local v0    # "maxColorComponents":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setGameContentType(Landroid/os/IBinder;Z)V
    .registers 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "on"    # Z

    .line 2664
    if-eqz p0, :cond_6

    .line 2668
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetGameContentType(Landroid/os/IBinder;Z)V

    .line 2669
    return-void

    .line 2665
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setGlobalShadowSettings([F[FFFF)V
    .registers 5
    .param p0, "ambientColor"    # [F
    .param p1, "spotColor"    # [F
    .param p2, "lightPosY"    # F
    .param p3, "lightPosZ"    # F
    .param p4, "lightRadius"    # F

    .line 2811
    invoke-static {p0}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    .line 2812
    invoke-static {p1}, Landroid/view/SurfaceControl;->validateColorArg([F)V

    .line 2813
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->nativeSetGlobalShadowSettings([F[FFFF)V

    .line 2814
    return-void
.end method

.method private static blacklist validateColorArg([F)V
    .registers 7
    .param p0, "color"    # [F

    .line 2781
    const-string v0, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    .line 2783
    .local v0, "msg":Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x4

    const-string v3, "Color must be specified as a float array with four values to represent r, g, b, a in range [0..1]"

    if-ne v1, v2, :cond_23

    .line 2786
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_22

    aget v4, p0, v2

    .line 2787
    .local v4, "c":F
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_1c

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_1c

    .line 2786
    .end local v4    # "c":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2788
    .restart local v4    # "c":F
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2791
    .end local v4    # "c":F
    :cond_22
    return-void

    .line 2784
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist addOnJankDataListener(Landroid/view/SurfaceControl$OnJankDataListener;)Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
    .registers 3
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnJankDataListener;

    .line 2839
    new-instance v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    invoke-direct {v0, p0, p1}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$OnJankDataListener;)V

    return-object v0
.end method

.method public blacklist addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnReparentListener;

    .line 707
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 709
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    .line 711
    :cond_f
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 712
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public greylist-max-o clearContentFrameStats()Z
    .registers 3

    .line 1835
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1836
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public blacklist copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 5
    .param p1, "other"    # Landroid/view/SurfaceControl;
    .param p2, "callsite"    # Ljava/lang/String;

    .line 1022
    iget-object v0, p1, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 1023
    iget v0, p1, Landroid/view/SurfaceControl;->mWidth:I

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 1024
    iget v0, p1, Landroid/view/SurfaceControl;->mHeight:I

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 1025
    iget-object v0, p1, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    .line 1026
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeCopyFromSurfaceControl(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 1027
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1556
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o disconnect()V
    .registers 5

    .line 1777
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 1778
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDisconnect(J)V

    .line 1780
    :cond_d
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1706
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1707
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1708
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1709
    const-wide v2, 0x10500000003L

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1710
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1711
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1730
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 1731
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1733
    :cond_9
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->remove(Landroid/view/SurfaceControl;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_15

    .line 1735
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1736
    nop

    .line 1737
    return-void

    .line 1735
    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1736
    throw v0
.end method

.method blacklist getCallsite()Ljava/lang/String;
    .registers 2

    .line 1611
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCallsite:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getChoreographer()Landroid/view/Choreographer;
    .registers 3

    .line 1646
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1647
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1648
    :try_start_6
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_14

    .line 1649
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl;->getChoreographer(Landroid/os/Looper;)Landroid/view/Choreographer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1651
    :cond_14
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    monitor-exit v0

    return-object v1

    .line 1652
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist getChoreographer(Landroid/os/Looper;)Landroid/view/Choreographer;
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1670
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1671
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1672
    :try_start_6
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_13

    .line 1673
    iget-wide v1, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    invoke-static {v1, v2, p1}, Landroid/view/Choreographer;->getInstanceForSurfaceControl(JLandroid/os/Looper;)Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    goto :goto_1b

    .line 1674
    :cond_13
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1}, Landroid/view/Choreographer;->isTheLooperSame(Landroid/os/Looper;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1678
    :goto_1b
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    monitor-exit v0

    return-object v1

    .line 1675
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Choreographer already exists with a different looper"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/SurfaceControl;
    .end local p1    # "looper":Landroid/os/Looper;
    throw v1

    .line 1679
    .restart local p0    # "this":Landroid/view/SurfaceControl;
    .restart local p1    # "looper":Landroid/os/Looper;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public greylist-max-o getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 4
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .line 1843
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1844
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getHeight()I
    .registers 3

    .line 1874
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1875
    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mHeight:I

    monitor-exit v0

    return v1

    .line 1876
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getLayerId()I
    .registers 5

    .line 5371
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 5372
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetLayerId(J)I

    move-result v0

    return v0

    .line 5375
    :cond_f
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getLocalOwnerView()Landroid/view/View;
    .registers 2

    .line 1887
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/SurfaceControl;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method blacklist getName()Ljava/lang/String;
    .registers 2

    .line 1619
    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTransformHint()I
    .registers 3

    .line 5350
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 5351
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeGetTransformHint(J)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getWidth()I
    .registers 3

    .line 1865
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1866
    :try_start_3
    iget v1, p0, Landroid/view/SurfaceControl;->mWidth:I

    monitor-exit v0

    return v1

    .line 1867
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public greylist hasChoreographer()Z
    .registers 3

    .line 1692
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1693
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 1694
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist isSameSurface(Landroid/view/SurfaceControl;)Z
    .registers 6
    .param p1, "other"    # Landroid/view/SurfaceControl;

    .line 1631
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeHandle:J

    iget-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isValid()Z
    .registers 5

    .line 1802
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1539
    if-eqz p1, :cond_27

    .line 1543
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 1544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 1545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 1547
    const-wide/16 v0, 0x0

    .line 1548
    .local v0, "object":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_20

    .line 1549
    invoke-static {p1}, Landroid/view/SurfaceControl;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    .line 1551
    :cond_20
    const-string/jumbo v2, "readFromParcel"

    invoke-direct {p0, v0, v1, v2}, Landroid/view/SurfaceControl;->assignNativeObject(JLjava/lang/String;)V

    .line 1552
    return-void

    .line 1540
    .end local v0    # "object":J
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist release()V
    .registers 6

    .line 1750
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4c

    .line 1751
    sget-boolean v0, Landroid/view/SurfaceControlRegistry;->sCallStackDebuggingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 1752
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    const-string/jumbo v4, "release"

    invoke-virtual {v0, v4, v1, p0, v1}, Landroid/view/SurfaceControlRegistry;->checkCallStackDebugging(Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 1755
    :cond_17
    iget-object v0, p0, Landroid/view/SurfaceControl;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1756
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 1757
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeHandle:J

    .line 1758
    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz v0, :cond_2d

    .line 1759
    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/SurfaceControl;->mReleaseStack:Ljava/lang/Throwable;

    .line 1761
    :cond_2d
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1762
    iget-object v0, p0, Landroid/view/SurfaceControl;->mChoreographerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1763
    :try_start_35
    iget-object v2, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v2, :cond_40

    .line 1764
    iget-object v2, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->invalidate()V

    .line 1765
    iput-object v1, p0, Landroid/view/SurfaceControl;->mChoreographer:Landroid/view/Choreographer;

    .line 1767
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_49

    .line 1768
    invoke-static {}, Landroid/view/SurfaceControlRegistry;->getProcessInstance()Landroid/view/SurfaceControlRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControlRegistry;->remove(Landroid/view/SurfaceControl;)V

    goto :goto_4c

    .line 1767
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1

    .line 1770
    :cond_4c
    :goto_4c
    return-void
.end method

.method public blacklist removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z
    .registers 5
    .param p1, "listener"    # Landroid/view/SurfaceControl$OnReparentListener;

    .line 724
    iget-object v0, p0, Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 726
    .local v1, "removed":Z
    iget-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 727
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;

    .line 729
    :cond_14
    monitor-exit v0

    return v1

    .line 730
    .end local v1    # "removed":Z
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public blacklist resize(II)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 5341
    iput p1, p0, Landroid/view/SurfaceControl;->mWidth:I

    .line 5342
    iput p2, p0, Landroid/view/SurfaceControl;->mHeight:I

    .line 5343
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeUpdateDefaultBufferSize(JII)V

    .line 5344
    return-void
.end method

.method public blacklist setTransformHint(I)V
    .registers 4
    .param p1, "transformHint"    # I

    .line 5364
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransformHint(JI)V

    .line 5365
    return-void
.end method

.method public blacklist setUnreleasedWarningCallSite(Ljava/lang/String;)V
    .registers 4
    .param p1, "callsite"    # Ljava/lang/String;

    .line 1599
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1600
    return-void

    .line 1602
    :cond_7
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1, p1}, Ldalvik/system/CloseGuard;->openWithCallSite(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iput-object p1, p0, Landroid/view/SurfaceControl;->mCallsite:Ljava/lang/String;

    .line 1604
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1893
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1892
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1561
    sget-boolean v0, Landroid/view/SurfaceControl;->sDebugUsageAfterRelease:Z

    if-eqz v0, :cond_7

    .line 1562
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 1564
    :cond_7
    iget-object v0, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1565
    iget v0, p0, Landroid/view/SurfaceControl;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1566
    iget v0, p0, Landroid/view/SurfaceControl;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1567
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 1568
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 1570
    :cond_23
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    :goto_27
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    .line 1574
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_33

    .line 1575
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    .line 1577
    :cond_33
    return-void
.end method
