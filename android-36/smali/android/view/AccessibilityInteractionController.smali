.class public final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;,
        Landroid/view/AccessibilityInteractionController$MessageHolder;,
        Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$VirtualNode;,
        Landroid/view/AccessibilityInteractionController$ViewNode;,
        Landroid/view/AccessibilityInteractionController$DequeNode;,
        Landroid/view/AccessibilityInteractionController$PrefetchDeque;
    }
.end annotation


# static fields
.field private static final greylist-max-o CONSIDER_REQUEST_PREPARERS:Z = false

.field private static final greylist-max-o ENFORCE_NODE_TREE_CONSISTENT:Z = false

.field private static final blacklist FLAGS_AFFECTING_REPORTED_DATA:I = 0x380

.field private static final greylist-max-o IGNORE_REQUEST_PREPARERS:Z = true

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionController"

.field private static final greylist-max-o REQUEST_PREPARER_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final greylist-max-o mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private greylist-max-o mActiveRequestPreparerId:I

.field private greylist-max-o mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final blacklist mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mMessagesWaitingForRequestPreparer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/AccessibilityInteractionController$MessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMyLooperThreadId:J

.field private final greylist-max-o mMyProcessId:I

.field private greylist-max-o mNumActiveRequestPreparers:I

.field private blacklist mPendingFindNodeByIdMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final greylist-max-o mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempRectF:Landroid/graphics/RectF;

.field private final greylist-max-o mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$Rjg_OPdy_5ZedB6yPc2apMyWfwM(Landroid/view/AccessibilityInteractionController;Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->attachAccessibilityOverlayToWindowUiThread(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oFlRaXFPJ-FW6XWPk2XCxvRC-T4(Landroid/view/AccessibilityInteractionController;Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->getWindowSurfaceInfoUiThread(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yE7CpOJ2SFkAuPSRk2j6T8A-Eqc(Landroid/view/AccessibilityInteractionController;ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->takeScreenshotOfWindowUiThread(ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$PrivateHandler;
    .registers 1

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrefetcher(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    .registers 1

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAccessibilityFocusUiThread(Landroid/view/AccessibilityInteractionController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->clearAccessibilityFocusUiThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfosByTextUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAccessibilityNodeInfosByViewIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindFocusUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfocusSearchUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misVisibleToAccessibilityService(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyOutsideTouchUiThread(Landroid/view/AccessibilityInteractionController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->notifyOutsideTouchUiThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformAccessibilityActionUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprepareForExtraDataRequestUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->prepareForExtraDataRequestUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPreparerDoneUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->requestPreparerDoneUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPreparerTimeoutUiThread(Landroid/view/AccessibilityInteractionController;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->requestPreparerTimeoutUiThread()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/ViewRootImpl;)V
    .registers 5
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 136
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 137
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    .line 138
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    .line 139
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    .line 140
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 141
    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController-IA;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 142
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    .line 144
    return-void
.end method

.method private blacklist adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;
    .param p3, "spec"    # Landroid/view/MagnificationSpec;

    .line 988
    if-eqz p2, :cond_36

    if-nez p1, :cond_5

    goto :goto_36

    .line 991
    :cond_5
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 992
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 993
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    if-nez v1, :cond_25

    .line 994
    iget v1, p3, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, p3, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 995
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p3, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 998
    :cond_25
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAdjustIsVisible()Z

    move-result v1

    if-nez v1, :cond_35

    .line 999
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1001
    :cond_35
    return-void

    .line 989
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    :cond_36
    :goto_36
    return-void
.end method

.method private blacklist applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1017
    if-eqz p1, :cond_2f

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassApplyWindowMatrix()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2f

    .line 1020
    :cond_9
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1021
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 1022
    .local v1, "transformedBounds":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 1024
    .local v2, "windowMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1025
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1026
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1027
    iget v3, v1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1029
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1030
    return-void

    .line 1018
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v1    # "transformedBounds":Landroid/graphics/RectF;
    .end local v2    # "windowMatrix":Landroid/graphics/Matrix;
    :cond_2f
    :goto_2f
    return-void
.end method

.method private blacklist applyTransformMatrixToBoundsInParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Matrix;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "transformMatrix"    # Landroid/graphics/Matrix;

    .line 1138
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1139
    .local v0, "screenMatrixValues":[F
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1140
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1141
    .local v1, "scaleMatrix":Landroid/graphics/Matrix;
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1143
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1144
    return-void

    .line 1146
    :cond_1b
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1147
    .local v2, "boundsInParent":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 1148
    .local v3, "transformedBounds":Landroid/graphics/RectF;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 1149
    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1150
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1151
    invoke-static {v3, v2}, Landroid/view/AccessibilityInteractionController;->roundRectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1152
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1153
    return-void
.end method

.method private blacklist associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1038
    if-eqz p1, :cond_2c

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->shouldBypassAssociateLeashedParent()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2c

    .line 1043
    :cond_9
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1044
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 1045
    return-void

    .line 1047
    :cond_1c
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLeashedParent(Landroid/os/IBinder;I)V

    .line 1049
    return-void

    .line 1039
    :cond_2c
    :goto_2c
    return-void
.end method

.method private blacklist attachAccessibilityOverlayToWindowUiThread(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "interactionId"    # I
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 2019
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2020
    .local v0, "parent":Landroid/view/SurfaceControl;
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2022
    const/4 v1, 0x1

    :try_start_d
    invoke-interface {p3, v1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    .line 2024
    return-void

    .line 2025
    :catch_11
    move-exception v1

    .line 2029
    :cond_12
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2030
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v1, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2031
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 2033
    const/4 v2, 0x0

    :try_start_22
    invoke-interface {p3, v2, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    .line 2037
    goto :goto_27

    .line 2035
    :catch_26
    move-exception v2

    .line 2038
    :goto_27
    return-void
.end method

.method private blacklist clearAccessibilityFocusUiThread()V
    .registers 8

    .line 894
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_d

    goto :goto_64

    .line 900
    :cond_d
    const/16 v0, 0x280

    :try_start_f
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 903
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_5a

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 905
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 908
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_56

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_56

    .line 911
    :cond_2b
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 912
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 914
    .local v3, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v4, 0x0

    if-eqz v2, :cond_4c

    if-eqz v3, :cond_4c

    .line 915
    nop

    .line 916
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    .line 915
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 917
    .local v5, "virtualNodeId":I
    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 918
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    .line 917
    invoke-virtual {v2, v5, v6, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 920
    nop

    .end local v5    # "virtualNodeId":I
    goto :goto_5a

    .line 921
    :cond_4c
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 922
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v5

    .line 921
    invoke-virtual {v1, v5, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_5f

    goto :goto_5a

    .line 927
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v3    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_56
    :goto_56
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 909
    return-void

    .line 927
    .end local v0    # "root":Landroid/view/View;
    .end local v1    # "host":Landroid/view/View;
    :cond_5a
    :goto_5a
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 928
    nop

    .line 929
    return-void

    .line 927
    :catchall_5f
    move-exception v0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 928
    throw v0

    .line 895
    :cond_64
    :goto_64
    return-void
.end method

.method private greylist-max-o findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .registers 20
    .param p1, "message"    # Landroid/os/Message;

    .line 342
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-object v2, v1, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 343
    :try_start_7
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 344
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_149

    .line 345
    iget v9, v8, Landroid/os/Message;->arg1:I

    .line 347
    .local v9, "flags":I
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/internal/os/SomeArgs;

    .line 348
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    iget v11, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 349
    .local v11, "accessibilityViewId":I
    iget v12, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 350
    .local v12, "virtualDescendantId":I
    iget v4, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 351
    .local v4, "interactionId":I
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 353
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/view/MagnificationSpec;

    .line 354
    .local v5, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/graphics/Region;

    .line 355
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/Bundle;

    .line 356
    .local v13, "arguments":Landroid/os/Bundle;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [F

    .line 358
    .local v6, "matrixValues":[F
    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 360
    const/4 v14, 0x0

    .line 361
    .local v14, "requestedView":Landroid/view/View;
    const/4 v15, 0x0

    .line 362
    .local v15, "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    and-int/lit8 v0, v9, 0x20

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    move v2, v0

    .line 365
    .local v2, "interruptPrefetch":Z
    move-object/from16 v16, v3

    .end local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v16, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v3, v1, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 366
    .local v3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 368
    :try_start_47
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_f0

    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_5a

    move-object v8, v3

    move-object/from16 v3, v16

    move/from16 v16, v2

    goto/16 :goto_f5

    .line 371
    :cond_5a
    invoke-direct {v1, v9}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 372
    invoke-direct {v1, v11}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0
    :try_end_61
    .catchall {:try_start_47 .. :try_end_61} :catchall_115

    move-object v14, v0

    .line 373
    if-eqz v14, :cond_9b

    :try_start_64
    invoke-direct {v1, v14}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 374
    invoke-direct {v1, v14, v13, v12}, Landroid/view/AccessibilityInteractionController;->populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v15, v0

    .line 376
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    invoke-static {v0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmInterruptPrefetch(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;Z)V

    .line 377
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    and-int/lit8 v8, v9, 0x3f

    invoke-static {v0, v8}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->-$$Nest$fputmFetchFlags(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;I)V

    .line 379
    if-nez v2, :cond_9b

    .line 380
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 382
    if-nez v15, :cond_86

    const/4 v8, 0x0

    goto :goto_8b

    :cond_86
    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v8, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 381
    :goto_8b
    invoke-virtual {v0, v14, v8, v3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 384
    invoke-direct {v1}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V
    :try_end_91
    .catchall {:try_start_64 .. :try_end_91} :catchall_92

    goto :goto_9b

    .line 388
    :catchall_92
    move-exception v0

    move-object v8, v3

    move-object/from16 v3, v16

    move/from16 v16, v2

    const/4 v2, 0x0

    goto/16 :goto_11c

    :cond_9b
    :goto_9b
    if-nez v2, :cond_b4

    .line 390
    move v8, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .end local v16    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v8, "interruptPrefetch":Z
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 393
    nop

    .line 394
    if-nez v15, :cond_a9

    const/4 v0, 0x0

    goto :goto_aa

    :cond_a9
    move-object v0, v15

    :goto_aa
    invoke-direct {v1, v0, v2, v9}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v0

    .line 396
    .local v0, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    if-eqz v0, :cond_b3

    .line 397
    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 399
    :cond_b3
    return-void

    .line 402
    .end local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    .end local v8    # "interruptPrefetch":Z
    .local v2, "interruptPrefetch":Z
    .local v3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v16    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :cond_b4
    move v8, v2

    move-object v2, v3

    move-object/from16 v3, v16

    .line 403
    .end local v16    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v8    # "interruptPrefetch":Z
    if-nez v15, :cond_bc

    const/4 v0, 0x0

    goto :goto_c1

    :cond_bc
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 402
    :goto_c1
    move/from16 v16, v8

    move-object v8, v2

    move-object v2, v0

    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v8, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v16, "interruptPrefetch":Z
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 406
    nop

    .line 407
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    .line 408
    if-nez v15, :cond_cf

    const/4 v2, 0x0

    goto :goto_d4

    :cond_cf
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v2, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 407
    :goto_d4
    invoke-virtual {v0, v14, v2, v8}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V

    .line 409
    invoke-direct {v1}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 410
    invoke-direct {v1, v8, v5, v6, v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 411
    nop

    .line 412
    if-nez v15, :cond_e2

    const/4 v0, 0x0

    goto :goto_e3

    :cond_e2
    move-object v0, v15

    :goto_e3
    invoke-direct {v1, v0, v8, v9}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v0

    .line 416
    .restart local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    invoke-direct {v1, v4, v8, v3}, Landroid/view/AccessibilityInteractionController;->returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V

    .line 418
    if-eqz v0, :cond_ef

    .line 419
    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 421
    :cond_ef
    return-void

    .line 368
    .end local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v2, "interruptPrefetch":Z
    .local v3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v16, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :cond_f0
    move-object v8, v3

    move-object/from16 v3, v16

    move/from16 v16, v2

    .line 388
    .end local v2    # "interruptPrefetch":Z
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v16, "interruptPrefetch":Z
    :goto_f5
    if-nez v16, :cond_107

    .line 390
    move-object v2, v8

    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 393
    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    nop

    .line 394
    const/4 v2, 0x0

    invoke-direct {v1, v2, v8, v9}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v0

    .line 396
    .restart local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    if-eqz v0, :cond_106

    .line 397
    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 399
    :cond_106
    return-void

    .line 402
    .end local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    :cond_107
    const/4 v2, 0x0

    .line 403
    if-nez v15, :cond_10b

    goto :goto_111

    :cond_10b
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v0

    .line 402
    :goto_111
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 369
    return-void

    .line 388
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v2, "interruptPrefetch":Z
    .local v3, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v16, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_115
    move-exception v0

    move-object v8, v3

    move-object/from16 v3, v16

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "interruptPrefetch":Z
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v16, "interruptPrefetch":Z
    :goto_11c
    if-nez v16, :cond_137

    .line 390
    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v8

    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 393
    .end local v2    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    nop

    .line 394
    if-nez v15, :cond_12c

    move-object/from16 v0, v17

    goto :goto_12d

    :cond_12c
    move-object v0, v15

    :goto_12d
    invoke-direct {v1, v0, v8, v9}, Landroid/view/AccessibilityInteractionController;->getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    move-result-object v0

    .line 396
    .restart local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    if-eqz v0, :cond_136

    .line 397
    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V

    .line 399
    :cond_136
    return-void

    .line 402
    .end local v0    # "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    :cond_137
    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .line 403
    if-nez v15, :cond_140

    move-object/from16 v2, v17

    goto :goto_145

    :cond_140
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v2, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 402
    :goto_145
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 406
    throw v0

    .line 344
    .end local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v4    # "interactionId":I
    .end local v5    # "spec":Landroid/view/MagnificationSpec;
    .end local v6    # "matrixValues":[F
    .end local v7    # "interactiveRegion":Landroid/graphics/Region;
    .end local v8    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v9    # "flags":I
    .end local v10    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v11    # "accessibilityViewId":I
    .end local v12    # "virtualDescendantId":I
    .end local v13    # "arguments":Landroid/os/Bundle;
    .end local v14    # "requestedView":Landroid/view/View;
    .end local v15    # "requestedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v16    # "interruptPrefetch":Z
    :catchall_149
    move-exception v0

    :try_start_14a
    monitor-exit v2
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    throw v0
.end method

.method private greylist-max-o findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .registers 24
    .param p1, "message"    # Landroid/os/Message;

    .line 536
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    .line 538
    .local v9, "flags":I
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/internal/os/SomeArgs;

    .line 539
    .local v10, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 540
    .local v11, "text":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 542
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/view/MagnificationSpec;

    .line 543
    .local v5, "spec":Landroid/view/MagnificationSpec;
    iget v12, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 544
    .local v12, "accessibilityViewId":I
    iget v13, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 545
    .local v13, "virtualDescendantId":I
    iget v4, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 546
    .local v4, "interactionId":I
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/graphics/Region;

    .line 547
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [F

    .line 548
    .local v6, "matrixValues":[F
    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 550
    const/4 v2, 0x0

    .line 552
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_2e
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_107

    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_3e

    move-object/from16 v17, v2

    goto/16 :goto_109

    .line 555
    :cond_3e
    invoke-direct {v1, v9}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 556
    invoke-direct {v1, v12}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_114

    .line 557
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_f5

    :try_start_47
    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_f5

    .line 558
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_ef

    .line 559
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v14, :cond_5f

    .line 560
    :try_start_53
    invoke-virtual {v14, v11, v13}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v15
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_5c

    move-object v2, v15

    move-object/from16 v20, v3

    goto/16 :goto_fd

    .line 592
    .end local v0    # "root":Landroid/view/View;
    .end local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :catchall_5c
    move-exception v0

    goto/16 :goto_117

    .line 562
    .restart local v0    # "root":Landroid/view/View;
    .restart local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_5f
    const/4 v15, -0x1

    if-ne v13, v15, :cond_e8

    .line 563
    :try_start_62
    iget-object v15, v1, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    .line 564
    .local v15, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_ef

    .line 565
    move-object/from16 v17, v2

    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v17, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v2, 0x7

    :try_start_6a
    invoke-virtual {v0, v15, v11, v2}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 568
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_dd

    .line 569
    iget-object v2, v1, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_e2

    .line 570
    .end local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_75
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 571
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_d9

    move/from16 v18, v17

    .line 572
    .local v18, "viewCount":I
    const/16 v17, 0x0

    move-object/from16 v19, v0

    move/from16 v0, v17

    .local v0, "i":I
    .local v19, "root":Landroid/view/View;
    :goto_84
    move-object/from16 v20, v3

    move/from16 v3, v18

    .end local v18    # "viewCount":I
    .local v3, "viewCount":I
    .local v20, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    if-ge v0, v3, :cond_d6

    .line 573
    :try_start_8a
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v18, v17

    .line 574
    .local v18, "foundView":Landroid/view/View;
    move/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "foundView":Landroid/view/View;
    .local v0, "foundView":Landroid/view/View;
    .local v17, "i":I
    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_c9

    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_c9

    .line 575
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v18

    move-object/from16 v14, v18

    .line 576
    if-eqz v14, :cond_bf

    .line 577
    nop

    .line 578
    move-object/from16 v18, v0

    const/4 v0, -0x1

    .end local v0    # "foundView":Landroid/view/View;
    .restart local v18    # "foundView":Landroid/view/View;
    invoke-virtual {v14, v11, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    move-object/from16 v21, v16

    .line 580
    .local v21, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v21, :cond_bc

    .line 581
    move-object/from16 v0, v21

    .end local v21    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v0, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_be

    .line 580
    .end local v0    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v21    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_bc
    move-object/from16 v0, v21

    .line 583
    .end local v21    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_be
    goto :goto_cb

    .line 584
    .end local v18    # "foundView":Landroid/view/View;
    .local v0, "foundView":Landroid/view/View;
    :cond_bf
    move-object/from16 v18, v0

    .end local v0    # "foundView":Landroid/view/View;
    .restart local v18    # "foundView":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c8
    .catchall {:try_start_8a .. :try_end_c8} :catchall_d2

    goto :goto_cb

    .line 574
    .end local v18    # "foundView":Landroid/view/View;
    .restart local v0    # "foundView":Landroid/view/View;
    :cond_c9
    move-object/from16 v18, v0

    .line 572
    .end local v0    # "foundView":Landroid/view/View;
    :goto_cb
    add-int/lit8 v0, v17, 0x1

    move/from16 v18, v3

    move-object/from16 v3, v20

    .end local v17    # "i":I
    .local v0, "i":I
    goto :goto_84

    .line 592
    .end local v0    # "i":I
    .end local v3    # "viewCount":I
    .end local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v15    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v19    # "root":Landroid/view/View;
    :catchall_d2
    move-exception v0

    move-object/from16 v3, v20

    goto :goto_117

    .line 572
    .restart local v0    # "i":I
    .restart local v3    # "viewCount":I
    .restart local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .restart local v15    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v19    # "root":Landroid/view/View;
    :cond_d6
    move/from16 v17, v0

    .end local v0    # "i":I
    .restart local v17    # "i":I
    goto :goto_fd

    .line 592
    .end local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v15    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v17    # "i":I
    .end local v19    # "root":Landroid/view/View;
    .end local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_d9
    move-exception v0

    move-object/from16 v20, v3

    .end local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    goto :goto_117

    .line 568
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v0, "root":Landroid/view/View;
    .restart local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .restart local v15    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v17, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_dd
    move-object/from16 v19, v0

    move-object/from16 v20, v3

    .end local v0    # "root":Landroid/view/View;
    .end local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v19    # "root":Landroid/view/View;
    .restart local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    goto :goto_fb

    .line 592
    .end local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v15    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v19    # "root":Landroid/view/View;
    .end local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_e2
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v2, v17

    .end local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    goto :goto_117

    .line 562
    .end local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v0    # "root":Landroid/view/View;
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_e8
    move-object/from16 v19, v0

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    .end local v0    # "root":Landroid/view/View;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v19    # "root":Landroid/view/View;
    .restart local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    goto :goto_fb

    .line 592
    .end local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v19    # "root":Landroid/view/View;
    .end local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_ef
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    goto :goto_117

    .line 557
    .end local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v0    # "root":Landroid/view/View;
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :cond_f5
    move-object/from16 v19, v0

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    .line 592
    .end local v0    # "root":Landroid/view/View;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :goto_fb
    move-object/from16 v2, v17

    .end local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_fd
    invoke-direct {v1}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 593
    move-object/from16 v3, v20

    .end local v20    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 595
    nop

    .line 596
    return-void

    .line 552
    :cond_107
    move-object/from16 v17, v2

    .line 592
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_109
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 593
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    .end local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 553
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    return-void

    .line 592
    .end local v17    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_114
    move-exception v0

    move-object/from16 v17, v2

    :goto_117
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 593
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 595
    throw v0
.end method

.method private greylist-max-o findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .registers 18
    .param p1, "message"    # Landroid/os/Message;

    .line 471
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    .line 472
    .local v9, "flags":I
    iget v10, v8, Landroid/os/Message;->arg2:I

    .line 474
    .local v10, "accessibilityViewId":I
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 475
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 476
    .local v4, "interactionId":I
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 478
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/view/MagnificationSpec;

    .line 479
    .local v5, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 480
    .local v12, "viewId":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/graphics/Region;

    .line 481
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [F

    .line 482
    .local v6, "matrixValues":[F
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 484
    iget-object v2, v1, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    .line 485
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 487
    :try_start_30
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_80

    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_80

    if-nez v12, :cond_3f

    goto :goto_80

    .line 491
    :cond_3f
    invoke-direct {v1, v9}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 492
    invoke-direct {v1, v10}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 493
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_78

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 495
    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13
    :try_end_55
    .catchall {:try_start_30 .. :try_end_55} :catchall_89

    .line 496
    .local v13, "resolvedViewId":I
    if-gtz v13, :cond_5e

    .line 507
    invoke-direct {v1}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 508
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 497
    return-void

    .line 499
    :cond_5e
    :try_start_5e
    iget-object v15, v1, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v15, :cond_69

    .line 500
    new-instance v15, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-direct {v15, v1, v14}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController-IA;)V

    iput-object v15, v1, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    .line 502
    :cond_69
    iget-object v14, v1, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v14, v13, v2}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    .line 503
    iget-object v14, v1, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 504
    iget-object v14, v1, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v14}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_78
    .catchall {:try_start_5e .. :try_end_78} :catchall_89

    .line 507
    .end local v0    # "root":Landroid/view/View;
    .end local v13    # "resolvedViewId":I
    :cond_78
    invoke-direct {v1}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 508
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 510
    nop

    .line 511
    return-void

    .line 507
    :cond_80
    :goto_80
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 508
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 489
    return-void

    .line 507
    :catchall_89
    move-exception v0

    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 508
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 510
    throw v0
.end method

.method private greylist-max-o findFocusUiThread(Landroid/os/Message;)V
    .registers 21
    .param p1, "message"    # Landroid/os/Message;

    .line 677
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    .line 678
    .local v9, "flags":I
    iget v10, v8, Landroid/os/Message;->arg2:I

    .line 680
    .local v10, "focusType":I
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 681
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 682
    .local v4, "interactionId":I
    iget v12, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 683
    .local v12, "accessibilityViewId":I
    iget v13, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 684
    .local v13, "virtualDescendantId":I
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 686
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/view/MagnificationSpec;

    .line 687
    .local v5, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/graphics/Region;

    .line 688
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [F

    .line 689
    .local v6, "matrixValues":[F
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 691
    const/4 v2, 0x0

    .line 693
    .local v2, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_2b
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_ee

    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_39

    goto/16 :goto_ee

    .line 696
    :cond_39
    invoke-direct {v1, v9}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 697
    invoke-direct {v1, v12}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 698
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_e4

    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_e4

    .line 699
    packed-switch v10, :pswitch_data_102

    .line 746
    move-object/from16 v16, v0

    .end local v0    # "root":Landroid/view/View;
    .local v16, "root":Landroid/view/View;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_cd

    .line 701
    .end local v16    # "root":Landroid/view/View;
    .restart local v0    # "root":Landroid/view/View;
    :pswitch_51
    iget-object v14, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 704
    .local v14, "host":Landroid/view/View;
    if-eqz v14, :cond_a3

    invoke-static {v14, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v15

    if-nez v15, :cond_5f

    .line 705
    goto/16 :goto_e6

    .line 708
    :cond_5f
    invoke-direct {v1, v14}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v15

    if-nez v15, :cond_67

    .line 709
    goto/16 :goto_e6

    .line 711
    :cond_67
    invoke-direct {v1, v14}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v15

    if-nez v15, :cond_6f

    .line 712
    goto/16 :goto_e6

    .line 716
    :cond_6f
    invoke-virtual {v14}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v15

    .line 717
    .local v15, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v15, :cond_96

    .line 718
    move-object/from16 v16, v0

    .end local v0    # "root":Landroid/view/View;
    .restart local v16    # "root":Landroid/view/View;
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 720
    .local v0, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_93

    .line 721
    nop

    .line 722
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v17

    move/from16 v18, v17

    .line 723
    .local v18, "virtualNodeId":I
    move-object/from16 v17, v0

    move/from16 v0, v18

    .end local v18    # "virtualNodeId":I
    .local v0, "virtualNodeId":I
    .local v17, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v15, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v18

    move-object/from16 v2, v18

    goto :goto_a1

    .line 720
    .end local v17    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_93
    move-object/from16 v17, v0

    .end local v0    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v17    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_a1

    .line 725
    .end local v16    # "root":Landroid/view/View;
    .end local v17    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "root":Landroid/view/View;
    :cond_96
    move-object/from16 v16, v0

    .end local v0    # "root":Landroid/view/View;
    .restart local v16    # "root":Landroid/view/View;
    const/4 v0, -0x1

    if-ne v13, v0, :cond_a1

    .line 726
    invoke-virtual {v14}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    move-object v2, v0

    .end local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_a2

    .line 725
    .end local v0    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_a1
    :goto_a1
    nop

    .line 728
    .end local v14    # "host":Landroid/view/View;
    .end local v15    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_a2
    goto :goto_e6

    .line 704
    .end local v16    # "root":Landroid/view/View;
    .local v0, "root":Landroid/view/View;
    .restart local v14    # "host":Landroid/view/View;
    :cond_a3
    move-object/from16 v16, v0

    .end local v0    # "root":Landroid/view/View;
    .restart local v16    # "root":Landroid/view/View;
    goto :goto_e6

    .line 730
    .end local v14    # "host":Landroid/view/View;
    .end local v16    # "root":Landroid/view/View;
    .restart local v0    # "root":Landroid/view/View;
    :pswitch_a6
    move-object/from16 v16, v0

    .end local v0    # "root":Landroid/view/View;
    .restart local v16    # "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 731
    .local v0, "target":Landroid/view/View;
    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v14

    if-nez v14, :cond_b3

    .line 732
    goto :goto_e6

    .line 734
    :cond_b3
    invoke-direct {v1, v0}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v14

    if-nez v14, :cond_ba

    .line 735
    goto :goto_e6

    .line 737
    :cond_ba
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14

    .line 738
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v14, :cond_c5

    .line 739
    invoke-virtual {v14, v10}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    move-object v2, v15

    .line 741
    :cond_c5
    if-nez v2, :cond_cc

    .line 742
    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    move-object v2, v15

    .line 744
    .end local v0    # "target":Landroid/view/View;
    .end local v14    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_cc
    goto :goto_e6

    .line 746
    :goto_cd
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown focus type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v4    # "interactionId":I
    .end local v5    # "spec":Landroid/view/MagnificationSpec;
    .end local v6    # "matrixValues":[F
    .end local v7    # "interactiveRegion":Landroid/graphics/Region;
    .end local v9    # "flags":I
    .end local v10    # "focusType":I
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v12    # "accessibilityViewId":I
    .end local v13    # "virtualDescendantId":I
    .end local p0    # "this":Landroid/view/AccessibilityInteractionController;
    .end local p1    # "message":Landroid/os/Message;
    throw v0
    :try_end_e4
    .catchall {:try_start_2b .. :try_end_e4} :catchall_f7

    .line 698
    .end local v16    # "root":Landroid/view/View;
    .local v0, "root":Landroid/view/View;
    .restart local v2    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v3    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .restart local v4    # "interactionId":I
    .restart local v5    # "spec":Landroid/view/MagnificationSpec;
    .restart local v6    # "matrixValues":[F
    .restart local v7    # "interactiveRegion":Landroid/graphics/Region;
    .restart local v9    # "flags":I
    .restart local v10    # "focusType":I
    .restart local v11    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v12    # "accessibilityViewId":I
    .restart local v13    # "virtualDescendantId":I
    .restart local p0    # "this":Landroid/view/AccessibilityInteractionController;
    .restart local p1    # "message":Landroid/os/Message;
    :cond_e4
    move-object/from16 v16, v0

    .line 750
    .end local v0    # "root":Landroid/view/View;
    :goto_e6
    invoke-direct {v1}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 751
    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 753
    nop

    .line 754
    return-void

    .line 750
    :cond_ee
    :goto_ee
    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 751
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 694
    return-void

    .line 750
    :catchall_f7
    move-exception v0

    invoke-direct/range {p0 .. p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 751
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 753
    throw v0

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_51
    .end packed-switch
.end method

.method private greylist-max-o findViewByAccessibilityId(I)Landroid/view/View;
    .registers 3
    .param p1, "accessibilityId"    # I

    .line 959
    const v0, 0x7ffffffe

    if-ne p1, v0, :cond_a

    .line 960
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 962
    :cond_a
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeIdManager;->getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeIdManager;->findView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o focusSearchUiThread(Landroid/os/Message;)V
    .registers 15
    .param p1, "message"    # Landroid/os/Message;

    .line 779
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 780
    .local v1, "flags":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 782
    .local v2, "accessibilityViewId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 783
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 784
    .local v4, "direction":I
    iget v8, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 785
    .local v8, "interactionId":I
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 787
    .local v7, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/view/MagnificationSpec;

    .line 788
    .local v9, "spec":Landroid/view/MagnificationSpec;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/graphics/Region;

    .line 789
    .local v11, "interactiveRegion":Landroid/graphics/Region;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, [F

    .line 790
    .local v10, "matrixValues":[F
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 792
    const/4 v6, 0x0

    .line 794
    .local v6, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_25
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_32

    goto :goto_55

    .line 797
    :cond_32
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 798
    invoke-direct {p0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v0

    .line 799
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_4c

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 800
    invoke-virtual {v0, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v5

    .line 801
    .local v5, "nextView":Landroid/view/View;
    if-eqz v5, :cond_4c

    .line 802
    invoke-virtual {v5}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_5d

    move-object v6, v12

    .line 806
    .end local v0    # "root":Landroid/view/View;
    .end local v5    # "nextView":Landroid/view/View;
    :cond_4c
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 807
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 809
    nop

    .line 810
    return-void

    .line 806
    :cond_55
    :goto_55
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 807
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 795
    return-void

    .line 806
    :catchall_5d
    move-exception v0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 807
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 809
    throw v0
.end method

.method private blacklist getRootView()Landroid/view/View;
    .registers 2

    .line 967
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 968
    const/4 v0, 0x0

    return-object v0

    .line 970
    :cond_c
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method private blacklist getSatisfiedRequestInPrefetch(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;I)Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    .registers 16
    .param p1, "requestedNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)",
            "Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;"
        }
    .end annotation

    .line 1201
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v0, 0x0

    .line 1202
    .local v0, "satisfiedRequest":Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1203
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 1204
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1205
    .local v3, "pendingMessage":Landroid/os/Message;
    iget v4, v3, Landroid/os/Message;->arg1:I

    .line 1206
    .local v4, "pendingFlags":I
    and-int/lit16 v5, v4, 0x380

    and-int/lit16 v6, p3, 0x380

    if-eq v5, v6, :cond_1e

    .line 1208
    goto :goto_49

    .line 1210
    :cond_1e
    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/os/SomeArgs;

    .line 1211
    .local v5, "args":Lcom/android/internal/os/SomeArgs;
    iget v6, v5, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1212
    .local v6, "accessibilityViewId":I
    iget v7, v5, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1214
    .local v7, "virtualDescendantId":I
    nop

    .line 1215
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v8

    .line 1214
    invoke-direct {p0, p1, p2, v8, v9}, Landroid/view/AccessibilityInteractionController;->nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 1218
    .local v8, "satisfiedRequestNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_49

    .line 1219
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    iget-object v10, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1222
    iget-object v9, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v9, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 1224
    .local v9, "satisfiedRequestCallback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget v10, v5, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1225
    .local v10, "satisfiedRequestInteractionId":I
    new-instance v11, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    invoke-direct {v11, v8, v9, v10}, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    move-object v0, v11

    .line 1228
    invoke-virtual {v5}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1229
    goto :goto_4c

    .line 1203
    .end local v3    # "pendingMessage":Landroid/os/Message;
    .end local v4    # "pendingFlags":I
    .end local v5    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v6    # "accessibilityViewId":I
    .end local v7    # "virtualDescendantId":I
    .end local v8    # "satisfiedRequestNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "satisfiedRequestCallback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v10    # "satisfiedRequestInteractionId":I
    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1232
    .end local v2    # "i":I
    :cond_4c
    :goto_4c
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1234
    if-eqz v0, :cond_5c

    iget-object v2, v0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v2, p1, :cond_5c

    .line 1236
    iget-object v2, v0, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1238
    :cond_5c
    monitor-exit v1

    return-object v0

    .line 1239
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_5e

    throw v2
.end method

.method private blacklist getWindowSurfaceInfoUiThread(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/view/accessibility/IWindowSurfaceInfoCallback;

    .line 647
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 648
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 647
    invoke-interface {p1, v0, v1, v2}, Landroid/view/accessibility/IWindowSurfaceInfoCallback;->provideWindowSurfaceInfo(IILandroid/view/SurfaceControl;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 651
    goto :goto_15

    .line 649
    :catch_14
    move-exception v0

    .line 652
    :goto_15
    return-void
.end method

.method private greylist-max-o handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1276
    const-string v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1277
    .local v0, "span":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1278
    return v2

    .line 1282
    :cond_c
    const/4 v1, 0x0

    .line 1283
    .local v1, "infoWithSpan":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 1284
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_18

    .line 1285
    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_1f

    .line 1286
    :cond_18
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1f

    .line 1287
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1289
    :cond_1f
    :goto_1f
    if-nez v1, :cond_22

    .line 1290
    return v2

    .line 1294
    :cond_22
    move-object v4, v0

    check-cast v4, Landroid/text/style/AccessibilityClickableSpan;

    .line 1295
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1294
    invoke-virtual {v4, v5}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    .line 1296
    .local v4, "clickableSpan":Landroid/text/style/ClickableSpan;
    if-eqz v4, :cond_34

    .line 1297
    invoke-virtual {v4, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 1298
    const/4 v2, 0x1

    return v2

    .line 1300
    :cond_34
    return v2
.end method

.method private greylist-max-o holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z
    .registers 22
    .param p1, "originalMessage"    # Landroid/os/Message;
    .param p2, "callingPid"    # I
    .param p3, "callingTid"    # J

    .line 220
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    iget-object v8, v1, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 222
    :try_start_7
    iget v0, v1, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v9, 0x1

    if-eqz v0, :cond_11

    .line 223
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 224
    monitor-exit v8

    return v9

    .line 228
    :cond_11
    iget v0, v7, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_19

    .line 230
    monitor-exit v8

    return v3

    .line 232
    :cond_19
    iget-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 233
    .local v0, "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    move-object v10, v2

    .line 234
    .local v10, "requestArguments":Landroid/os/Bundle;
    if-nez v10, :cond_26

    .line 235
    monitor-exit v8

    return v3

    .line 239
    :cond_26
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move v11, v2

    .line 240
    .local v11, "accessibilityViewId":I
    iget-object v2, v1, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 241
    invoke-virtual {v2, v11}, Landroid/view/accessibility/AccessibilityManager;->getRequestPreparersForAccessibilityId(I)Ljava/util/List;

    move-result-object v2

    move-object v12, v2

    .line 242
    .local v12, "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    if-nez v12, :cond_34

    .line 243
    monitor-exit v8

    return v3

    .line 247
    :cond_34
    const-string v2, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    .line 248
    .local v13, "extraDataKey":Ljava/lang/String;
    if-nez v13, :cond_3f

    .line 249
    monitor-exit v8

    return v3

    .line 253
    :cond_3f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 254
    const/4 v2, 0x0

    move v14, v2

    .local v14, "i":I
    :goto_47
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_a0

    .line 255
    iget-object v2, v1, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 257
    .local v2, "requestPreparerMessage":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    move-object v15, v3

    .line 259
    .local v15, "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    nop

    .line 260
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_63

    .line 261
    const/4 v3, -0x1

    goto :goto_65

    :cond_63
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    :goto_65
    iput v3, v15, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 262
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 263
    iput-object v13, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 264
    iput-object v10, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 265
    iget-object v3, v1, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 267
    .local v3, "preparationFinishedMessage":Landroid/os/Message;
    iget v4, v1, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    add-int/2addr v4, v9

    iput v4, v1, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 268
    iput-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 270
    iput-object v15, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    const/4 v6, 0x1

    move-wide/from16 v4, p3

    move-object/from16 v16, v3

    move/from16 v3, p2

    .end local v3    # "preparationFinishedMessage":Landroid/os/Message;
    .local v16, "preparationFinishedMessage":Landroid/os/Message;
    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 273
    iget-object v3, v1, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    .line 274
    iget-object v3, v1, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 254
    nop

    .end local v2    # "requestPreparerMessage":Landroid/os/Message;
    .end local v15    # "requestPreparerArgs":Lcom/android/internal/os/SomeArgs;
    .end local v16    # "preparationFinishedMessage":Landroid/os/Message;
    add-int/lit8 v14, v14, 0x1

    goto :goto_47

    .line 279
    .end local v14    # "i":I
    :cond_a0
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    .line 280
    monitor-exit v8

    return v9

    .line 281
    .end local v0    # "originalMessageArgs":Lcom/android/internal/os/SomeArgs;
    .end local v10    # "requestArguments":Landroid/os/Bundle;
    .end local v11    # "accessibilityViewId":I
    .end local v12    # "preparers":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRequestPreparer;>;"
    .end local v13    # "extraDataKey":Ljava/lang/String;
    :catchall_a5
    move-exception v0

    monitor-exit v8
    :try_end_a7
    .catchall {:try_start_7 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method private greylist-max-o isShown(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 172
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private blacklist isVisibleToAccessibilityService(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 176
    if-eqz p1, :cond_12

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isRequestFromAccessibilityTool()Z

    move-result v0

    if-nez v0, :cond_10

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityDataSensitive()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 176
    :goto_13
    return v0
.end method

.method private blacklist nodeWithIdFromList(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "requestedNode"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "nodeId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)",
            "Landroid/view/accessibility/AccessibilityNodeInfo;"
        }
    .end annotation

    .line 1244
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-nez v0, :cond_b

    .line 1245
    return-object p1

    .line 1247
    :cond_b
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1248
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1249
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_21

    .line 1250
    return-object v1

    .line 1247
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1253
    .end local v0    # "j":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist notifyOutsideTouchUiThread()V
    .registers 11

    .line 943
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_19

    goto :goto_3d

    .line 947
    :cond_19
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 948
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_3c

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 950
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 951
    .local v2, "now":J
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 953
    .local v1, "event":Landroid/view/MotionEvent;
    const/16 v4, 0x1002

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setSource(I)V

    .line 954
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v4, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 956
    .end local v1    # "event":Landroid/view/MotionEvent;
    .end local v2    # "now":J
    :cond_3c
    return-void

    .line 945
    .end local v0    # "root":Landroid/view/View;
    :cond_3d
    :goto_3d
    return-void
.end method

.method private greylist-max-o performAccessibilityActionUiThread(Landroid/os/Message;)V
    .registers 14
    .param p1, "message"    # Landroid/os/Message;

    .line 834
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 835
    .local v0, "flags":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 837
    .local v1, "accessibilityViewId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 838
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 839
    .local v3, "virtualDescendantId":I
    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 840
    .local v4, "action":I
    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 841
    .local v5, "interactionId":I
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 843
    .local v6, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 845
    .local v7, "arguments":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 847
    const/4 v8, 0x0

    .line 849
    .local v8, "succeeded":Z
    :try_start_1a
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v9, :cond_7c

    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_7c

    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v9, v9, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v9, :cond_7c

    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v9, v9, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v9, :cond_33

    goto :goto_7c

    .line 853
    :cond_33
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->setAccessibilityFetchFlags(I)V

    .line 854
    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v9

    .line 855
    .local v9, "target":Landroid/view/View;
    if-eqz v9, :cond_72

    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-direct {p0, v9}, Landroid/view/AccessibilityInteractionController;->isVisibleToAccessibilityService(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 856
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v10, v4}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V

    .line 857
    const v10, 0x10201a9

    if-ne v4, v10, :cond_58

    .line 859
    invoke-direct {p0, v9, v3, v7}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v10

    move v8, v10

    goto :goto_6c

    .line 862
    :cond_58
    invoke-virtual {v9}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v10

    .line 863
    .local v10, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_64

    .line 864
    invoke-virtual {v10, v3, v4, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v11

    move v8, v11

    goto :goto_6c

    .line 866
    :cond_64
    const/4 v11, -0x1

    if-ne v3, v11, :cond_6c

    .line 867
    invoke-virtual {v9, v4, v7}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v11

    move v8, v11

    .line 870
    .end local v10    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_6c
    :goto_6c
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/accessibility/AccessibilityManager;->notifyPerformingAction(I)V
    :try_end_72
    .catchall {:try_start_1a .. :try_end_72} :catchall_85

    .line 874
    .end local v9    # "target":Landroid/view/View;
    :cond_72
    :try_start_72
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 875
    invoke-interface {v6, v8, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_78} :catch_79

    .line 878
    goto :goto_7b

    .line 876
    :catch_79
    move-exception v9

    .line 879
    nop

    .line 880
    :goto_7b
    return-void

    .line 874
    :cond_7c
    :goto_7c
    :try_start_7c
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 875
    invoke-interface {v6, v8, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_82} :catch_83

    .line 878
    goto :goto_84

    .line 876
    :catch_83
    move-exception v9

    .line 851
    :goto_84
    return-void

    .line 873
    :catchall_85
    move-exception v9

    .line 874
    :try_start_86
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->resetAccessibilityFetchFlags()V

    .line 875
    invoke-interface {v6, v8, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8c} :catch_8d

    .line 878
    goto :goto_8e

    .line 876
    :catch_8d
    move-exception v10

    .line 879
    :goto_8e
    throw v9
.end method

.method private blacklist populateAccessibilityNodeInfoForView(Landroid/view/View;Landroid/os/Bundle;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "virtualViewId"    # I

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 427
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez p2, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    .line 428
    :cond_8
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    nop

    .line 429
    .local v1, "extraDataRequested":Ljava/lang/String;
    const/4 v2, 0x0

    .line 430
    .local v2, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v0, :cond_1e

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_29

    .line 433
    if-eqz v1, :cond_29

    .line 434
    invoke-virtual {p1, v2, v1, p2}, Landroid/view/View;->addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_29

    .line 438
    :cond_1e
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 439
    if-eqz v2, :cond_29

    .line 440
    if-eqz v1, :cond_29

    .line 441
    invoke-virtual {v0, p3, v2, v1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 446
    :cond_29
    :goto_29
    return-object v2
.end method

.method private greylist-max-o prepareForExtraDataRequestUiThread(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 285
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 286
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 287
    .local v1, "virtualDescendantId":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 288
    .local v2, "preparer":Landroid/view/accessibility/AccessibilityRequestPreparer;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 289
    .local v3, "extraDataKey":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 290
    .local v4, "requestArguments":Landroid/os/Bundle;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    .line 292
    .local v5, "preparationFinishedMessage":Landroid/os/Message;
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/accessibility/AccessibilityRequestPreparer;->onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V

    .line 294
    return-void
.end method

.method private greylist-max-o queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J

    .line 298
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    if-nez v0, :cond_c

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    .line 301
    :cond_c
    new-instance v0, Landroid/view/AccessibilityInteractionController$MessageHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController$MessageHolder;-><init>(Landroid/os/Message;IJ)V

    .line 303
    .local v0, "messageHolder":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method private greylist-max-o requestPreparerDoneUiThread(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 307
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    if-eq v1, v2, :cond_12

    .line 309
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "Surprising AccessibilityRequestPreparer callback (likely late)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    monitor-exit v0

    return-void

    .line 312
    :cond_12
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 313
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    if-gtz v1, :cond_26

    .line 314
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeMessages(I)V

    .line 315
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 317
    :cond_26
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private greylist-max-o requestPreparerTimeoutUiThread()V
    .registers 4

    .line 321
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_3
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "AccessibilityRequestPreparer timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    .line 324
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist resetAccessibilityFetchFlags()V
    .registers 3

    .line 980
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 981
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setRequestFromAccessibilityTool(Z)V

    .line 982
    return-void
.end method

.method private blacklist returnFindNodeResult(Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;)V
    .registers 5
    .param p1, "satisfiedRequest"    # Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;

    .line 1177
    :try_start_0
    iget-object v0, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1178
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 1180
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget v2, p1, Landroid/view/AccessibilityInteractionController$SatisfiedFindAccessibilityNodeByAccessibilityIdRequest;->mSatisfiedRequestInteractionId:I

    .line 1181
    .local v2, "interactionId":I
    invoke-interface {v1, v0, v2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1184
    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "interactionId":I
    goto :goto_b

    .line 1182
    :catch_a
    move-exception v0

    .line 1185
    :goto_b
    return-void
.end method

.method private blacklist returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I

    .line 1168
    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1171
    goto :goto_5

    .line 1169
    :catch_4
    move-exception v0

    .line 1172
    :goto_5
    return-void
.end method

.method private blacklist returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V
    .registers 5
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I)V"
        }
    .end annotation

    .line 1190
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    .line 1191
    if-eqz p1, :cond_8

    .line 1192
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 1196
    :cond_8
    goto :goto_a

    .line 1194
    :catch_9
    move-exception v0

    .line 1197
    :goto_a
    return-void
.end method

.method private blacklist returnPrefetchResult(ILjava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 5
    .param p1, "interactionId"    # I
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            ")V"
        }
    .end annotation

    .line 1258
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1260
    :try_start_6
    invoke-interface {p3, p2, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1263
    goto :goto_b

    .line 1261
    :catch_a
    move-exception v0

    .line 1265
    :cond_b
    :goto_b
    return-void
.end method

.method private static blacklist roundRectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .registers 9
    .param p0, "sourceRectF"    # Landroid/graphics/RectF;
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 1305
    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v1

    add-double/2addr v4, v2

    double-to-int v1, v4

    iget v4, p0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int v4, v4

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    add-double/2addr v5, v2

    double-to-int v2, v5

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1307
    return-void
.end method

.method private greylist-max-o scheduleAllMessagesWaitingForRequestPreparerLocked()V
    .registers 11

    .line 329
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 330
    .local v0, "numMessages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x0

    if-ge v1, v0, :cond_23

    .line 331
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/AccessibilityInteractionController$MessageHolder;

    .line 332
    .local v3, "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    iget-object v5, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    iget v6, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    iget-wide v7, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    if-nez v1, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    move v9, v2

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 330
    .end local v3    # "request":Landroid/view/AccessibilityInteractionController$MessageHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    move-object v4, p0

    .line 336
    .end local v1    # "i":I
    iget-object v1, v4, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 337
    iput v2, v4, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    .line 338
    const/4 v1, -0x1

    iput v1, v4, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    .line 339
    return-void
.end method

.method private greylist-max-o scheduleMessage(Landroid/os/Message;IJZ)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "interrogatingPid"    # I
    .param p3, "interrogatingTid"    # J
    .param p5, "ignoreRequestPreparers"    # Z

    .line 148
    if-nez p5, :cond_8

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z

    move-result v0

    if-nez v0, :cond_43

    .line 154
    :cond_8
    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p2, v0, :cond_22

    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_22

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    .line 155
    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 156
    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_43

    .line 161
    :cond_22
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasAccessibilityCallback(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3e

    .line 163
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_43

    .line 165
    :cond_3e
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0, p1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    :cond_43
    :goto_43
    return-void
.end method

.method private blacklist setAccessibilityFetchFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 974
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    .line 975
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setRequestFromAccessibilityTool(Z)V

    .line 977
    return-void
.end method

.method private greylist-max-o shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .registers 4
    .param p1, "appScale"    # F
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 1058
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private blacklist shouldBypassAdjustIsVisible()Z
    .registers 3

    .line 1004
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 1005
    .local v0, "windowType":I
    const/16 v1, 0x7db

    if-ne v0, v1, :cond_a

    .line 1006
    const/4 v1, 0x1

    return v1

    .line 1008
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist shouldBypassApplyWindowMatrix()Z
    .registers 3

    .line 1033
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 1034
    .local v0, "windowMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method private blacklist shouldBypassAssociateLeashedParent()Z
    .registers 3

    .line 1052
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private blacklist takeScreenshotOfWindowUiThread(ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 7
    .param p1, "interactionId"    # I
    .param p2, "listener"    # Landroid/window/ScreenCapture$ScreenCaptureListener;
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 618
    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_f

    .line 619
    const/4 v0, 0x6

    invoke-interface {p3, v0, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    .line 621
    return-void

    .line 623
    :cond_f
    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 624
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 625
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v0

    .line 626
    .local v0, "captureArgs":Landroid/window/ScreenCapture$LayerCaptureArgs;
    invoke-static {v0, p2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)I

    move-result v1

    if-eqz v1, :cond_38

    .line 627
    const/4 v1, 0x1

    invoke-interface {p3, v1, p1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_38} :catch_39

    .line 632
    .end local v0    # "captureArgs":Landroid/window/ScreenCapture$LayerCaptureArgs;
    :cond_38
    goto :goto_3a

    .line 630
    :catch_39
    move-exception v0

    .line 633
    :goto_3a
    return-void
.end method

.method private blacklist transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V
    .registers 11
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "matrixValues"    # [F

    .line 1088
    if-eqz p1, :cond_7a

    if-nez p2, :cond_6

    goto/16 :goto_7a

    .line 1091
    :cond_6
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    .line 1092
    .local v0, "boundInScreen":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRectF:Landroid/graphics/RectF;

    .line 1094
    .local v1, "transformedBounds":Landroid/graphics/RectF;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1095
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1097
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1098
    .local v2, "transformMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1099
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1100
    .local v3, "applicationScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_27

    .line 1101
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1106
    :cond_27
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindowMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    if-nez v4, :cond_42

    .line 1107
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1111
    :cond_42
    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1112
    return-void

    .line 1114
    :cond_49
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1115
    invoke-static {v1, v0}, Landroid/view/AccessibilityInteractionController;->roundRectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 1116
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1118
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1119
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1120
    .local v4, "extras":Landroid/os/Bundle;
    const-class v5, Landroid/graphics/RectF;

    .line 1121
    const-string v6, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/RectF;

    .line 1122
    .local v5, "textLocations":[Landroid/graphics/RectF;
    if-eqz v5, :cond_76

    .line 1123
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_69
    array-length v7, v5

    if-ge v6, v7, :cond_76

    .line 1126
    aget-object v7, v5, v6

    .line 1127
    .local v7, "textLocation":Landroid/graphics/RectF;
    if-eqz v7, :cond_73

    .line 1128
    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1123
    .end local v7    # "textLocation":Landroid/graphics/RectF;
    :cond_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    .line 1133
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "textLocations":[Landroid/graphics/RectF;
    .end local v6    # "i":I
    :cond_76
    invoke-direct {p0, p1, v2}, Landroid/view/AccessibilityInteractionController;->applyTransformMatrixToBoundsInParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Matrix;)V

    .line 1134
    return-void

    .line 1089
    .end local v0    # "boundInScreen":Landroid/graphics/Rect;
    .end local v1    # "transformedBounds":Landroid/graphics/RectF;
    .end local v2    # "transformMatrix":Landroid/graphics/Matrix;
    .end local v3    # "applicationScale":F
    :cond_7a
    :goto_7a
    return-void
.end method

.method private blacklist updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .param p3, "matrixValues"    # [F
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;

    .line 1070
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->associateLeashedParentIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1072
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->applyHostWindowMatrixIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1074
    invoke-direct {p0, p1, p3}, Landroid/view/AccessibilityInteractionController;->transformBoundsWithScreenMatrix(Landroid/view/accessibility/AccessibilityNodeInfo;[F)V

    .line 1075
    invoke-direct {p0, p1, p4, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;Landroid/view/MagnificationSpec;)V

    .line 1076
    return-void
.end method

.method private blacklist updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .registers 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "matrixValues"    # [F
    .param p6, "interactiveRegion"    # Landroid/graphics/Region;

    .line 1270
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1271
    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    .line 1272
    return-void
.end method

.method private blacklist updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .registers 7
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .param p3, "matrixValues"    # [F
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            "[F",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 1063
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1064
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewPort(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1066
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private blacklist updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V
    .registers 7
    .param p2, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p3, "interactionId"    # I
    .param p4, "spec"    # Landroid/view/MagnificationSpec;
    .param p5, "matrixValues"    # [F
    .param p6, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I",
            "Landroid/view/MagnificationSpec;",
            "[F",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 1158
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_5

    .line 1159
    invoke-direct {p0, p1, p4, p5, p6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewPort(Ljava/util/List;Landroid/view/MagnificationSpec;[FLandroid/graphics/Region;)V

    .line 1161
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/AccessibilityInteractionController;->returnFindNodesResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;I)V

    .line 1162
    return-void
.end method


# virtual methods
.method public blacklist attachAccessibilityOverlayToWindowClientThread(Landroid/view/SurfaceControl;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 7
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "interactionId"    # I
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 2005
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    new-instance v1, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda1;-><init>()V

    .line 2011
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2006
    invoke-static {v1, p0, p1, v2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2005
    invoke-virtual {v0, v1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2013
    return-void
.end method

.method public blacklist clearAccessibilityFocusClientThread()V
    .registers 8

    .line 886
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 887
    .local v2, "message":Landroid/os/Message;
    const/16 v0, 0x65

    iput v0, v2, Landroid/os/Message;->what:I

    .line 890
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 891
    return-void
.end method

.method public blacklist destroy()V
    .registers 3

    .line 1313
    invoke-static {}, Landroid/view/accessibility/Flags;->preventLeakingViewrootimpl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1314
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1316
    :cond_c
    return-void
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    .registers 29
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;
    .param p11, "matrixValues"    # [F
    .param p12, "arguments"    # Landroid/os/Bundle;

    .line 185
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 186
    .local v2, "message":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v2, Landroid/os/Message;->what:I

    .line 187
    move/from16 v7, p6

    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 189
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v8

    .line 190
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 191
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 192
    move/from16 v9, p4

    iput v9, v8, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 193
    move-object/from16 v10, p5

    iput-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 194
    move-object/from16 v11, p10

    iput-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 195
    move-object/from16 v12, p3

    iput-object v12, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 196
    move-object/from16 v13, p12

    iput-object v13, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 197
    move-object/from16 v14, p11

    iput-object v14, v8, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 198
    iput-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    iget-object v15, v1, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 201
    :try_start_3c
    iget-object v0, v1, Landroid/view/AccessibilityInteractionController;->mPendingFindNodeByIdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    const/4 v6, 0x0

    move/from16 v3, p7

    move-wide/from16 v4, p8

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 204
    monitor-exit v15

    .line 205
    return-void

    .line 204
    :catchall_4b
    move-exception v0

    monitor-exit v15
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public blacklist findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 27
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 517
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 518
    .local v2, "message":Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v2, Landroid/os/Message;->what:I

    .line 519
    move/from16 v0, p7

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 521
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    .line 522
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v8, p3

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 523
    move-object/from16 v9, p6

    iput-object v9, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 524
    move-object/from16 v10, p11

    iput-object v10, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 525
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    iput v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 526
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    iput v1, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 527
    move/from16 v11, p5

    iput v11, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 528
    move-object/from16 v12, p4

    iput-object v12, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 529
    move-object/from16 v13, p12

    iput-object v13, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 530
    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p8

    move-wide/from16 v4, p9

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 533
    return-void
.end method

.method public blacklist findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 27
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 453
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 454
    .local v2, "message":Landroid/os/Message;
    const/4 v0, 0x3

    iput v0, v2, Landroid/os/Message;->what:I

    .line 455
    move/from16 v0, p7

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 456
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 458
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    .line 459
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v8, p5

    iput v8, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 460
    move-object/from16 v9, p6

    iput-object v9, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 461
    move-object/from16 v10, p11

    iput-object v10, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 462
    move-object/from16 v11, p3

    iput-object v11, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 463
    move-object/from16 v12, p4

    iput-object v12, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 464
    move-object/from16 v13, p12

    iput-object v13, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 465
    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 467
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p8

    move-wide/from16 v4, p9

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 468
    return-void
.end method

.method public blacklist findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 27
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 658
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 659
    .local v2, "message":Landroid/os/Message;
    const/4 v0, 0x5

    iput v0, v2, Landroid/os/Message;->what:I

    .line 660
    move/from16 v0, p7

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 661
    move/from16 v7, p3

    iput v7, v2, Landroid/os/Message;->arg2:I

    .line 663
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v8

    .line 664
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v9, p5

    iput v9, v8, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 665
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    iput v1, v8, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 666
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    iput v1, v8, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 667
    move-object/from16 v10, p6

    iput-object v10, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 668
    move-object/from16 v11, p11

    iput-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 669
    move-object/from16 v12, p4

    iput-object v12, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 670
    move-object/from16 v13, p12

    iput-object v13, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 671
    iput-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 673
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p8

    move-wide/from16 v4, p9

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 674
    return-void
.end method

.method public blacklist focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[F)V
    .registers 27
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;
    .param p12, "matrixValues"    # [F

    .line 760
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 761
    .local v2, "message":Landroid/os/Message;
    const/4 v0, 0x6

    iput v0, v2, Landroid/os/Message;->what:I

    .line 762
    move/from16 v0, p7

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 763
    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 765
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    .line 766
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    move/from16 v8, p3

    iput v8, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 767
    move/from16 v9, p5

    iput v9, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 768
    move-object/from16 v10, p6

    iput-object v10, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 769
    move-object/from16 v11, p11

    iput-object v11, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 770
    move-object/from16 v12, p4

    iput-object v12, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 771
    move-object/from16 v13, p12

    iput-object v13, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 773
    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 775
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p8

    move-wide/from16 v4, p9

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 776
    return-void
.end method

.method public blacklist getWindowSurfaceInfoClientThread(Landroid/view/accessibility/IWindowSurfaceInfoCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/accessibility/IWindowSurfaceInfoCallback;

    .line 639
    new-instance v0, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 642
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v1, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    return-void
.end method

.method public blacklist notifyOutsideTouchClientThread()V
    .registers 8

    .line 935
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 936
    .local v2, "message":Landroid/os/Message;
    const/16 v0, 0x66

    iput v0, v2, Landroid/os/Message;->what:I

    .line 939
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 940
    return-void
.end method

.method public greylist-max-o performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 20
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .line 816
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 817
    .local v2, "message":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v2, Landroid/os/Message;->what:I

    .line 818
    move/from16 v0, p7

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 819
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 821
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    .line 822
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    iput v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 823
    iput p3, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 824
    iput p5, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 825
    move-object v8, p6

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 826
    iput-object p4, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 828
    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 830
    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v3, p8

    move-wide/from16 v4, p9

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    .line 831
    return-void
.end method

.method public blacklist takeScreenshotOfWindowClientThread(ILandroid/window/ScreenCapture$ScreenCaptureListener;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;)V
    .registers 6
    .param p1, "interactionId"    # I
    .param p2, "listener"    # Landroid/window/ScreenCapture$ScreenCaptureListener;
    .param p3, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 605
    new-instance v0, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/AccessibilityInteractionController$$ExternalSyntheticLambda2;-><init>()V

    .line 607
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 605
    invoke-static {v0, p0, v1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 611
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-virtual {v1, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 612
    return-void
.end method
