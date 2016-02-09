.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;
    }
.end annotation


# static fields
.field private static final ENFORCE_NODE_TREE_CONSISTENT:Z


# instance fields
.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static synthetic -get0(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 4
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 58
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    #@a
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    #@c
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    #@11
    .line 73
    new-instance v1, Landroid/graphics/Point;

    #@13
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    #@16
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    #@18
    .line 74
    new-instance v1, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@1d
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    #@1f
    .line 75
    new-instance v1, Landroid/graphics/Rect;

    #@21
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@24
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    #@26
    .line 76
    new-instance v1, Landroid/graphics/Rect;

    #@28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@2b
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    #@2d
    .line 81
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    #@2f
    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    #@32
    move-result-object v0

    #@33
    .line 82
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    #@3a
    move-result-wide v2

    #@3b
    iput-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    #@3d
    .line 83
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@40
    move-result v1

    #@41
    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    #@43
    .line 84
    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    #@45
    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    #@48
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@4a
    .line 85
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@4c
    .line 86
    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    #@4e
    const/4 v2, 0x0

    #@4f
    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;)V

    #@52
    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    #@54
    .line 80
    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 722
    if-eqz p2, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 723
    :cond_0
    return-void

    #@5
    .line 725
    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    #@7
    .line 726
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@a
    .line 727
    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 728
    const/4 v1, 0x0

    #@11
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    #@14
    .line 721
    :cond_2
    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V
    .locals 3
    .param p2, "interactiveRegion"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 710
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p2, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 711
    :cond_0
    return-void

    #@5
    .line 713
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@8
    move-result v2

    #@9
    .line 714
    .local v2, "infoCount":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@c
    .line 715
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@12
    .line 716
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    #@15
    .line 714
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 709
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/graphics/Point;Landroid/view/MagnificationSpec;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 734
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4
    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@6
    .line 735
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 736
    return-void

    #@d
    .line 739
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    #@f
    cmpl-float v1, v0, v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 740
    iget v1, p1, Landroid/graphics/Point;->x:I

    #@15
    int-to-float v1, v1

    #@16
    mul-float/2addr v1, v0

    #@17
    float-to-int v1, v1

    #@18
    iput v1, p1, Landroid/graphics/Point;->x:I

    #@1a
    .line 741
    iget v1, p1, Landroid/graphics/Point;->y:I

    #@1c
    int-to-float v1, v1

    #@1d
    mul-float/2addr v1, v0

    #@1e
    float-to-int v1, v1

    #@1f
    iput v1, p1, Landroid/graphics/Point;->y:I

    #@21
    .line 744
    :cond_1
    if-eqz p2, :cond_2

    #@23
    .line 745
    iget v1, p1, Landroid/graphics/Point;->x:I

    #@25
    int-to-float v1, v1

    #@26
    iget v2, p2, Landroid/view/MagnificationSpec;->scale:F

    #@28
    mul-float/2addr v1, v2

    #@29
    float-to-int v1, v1

    #@2a
    iput v1, p1, Landroid/graphics/Point;->x:I

    #@2c
    .line 746
    iget v1, p1, Landroid/graphics/Point;->y:I

    #@2e
    int-to-float v1, v1

    #@2f
    iget v2, p2, Landroid/view/MagnificationSpec;->scale:F

    #@31
    mul-float/2addr v1, v2

    #@32
    float-to-int v1, v1

    #@33
    iput v1, p1, Landroid/graphics/Point;->y:I

    #@35
    .line 747
    iget v1, p1, Landroid/graphics/Point;->x:I

    #@37
    iget v2, p2, Landroid/view/MagnificationSpec;->offsetX:F

    #@39
    float-to-int v2, v2

    #@3a
    add-int/2addr v1, v2

    #@3b
    iput v1, p1, Landroid/graphics/Point;->x:I

    #@3d
    .line 748
    iget v1, p1, Landroid/graphics/Point;->y:I

    #@3f
    iget v2, p2, Landroid/view/MagnificationSpec;->offsetY:F

    #@41
    float-to-int v2, v2

    #@42
    add-int/2addr v1, v2

    #@43
    iput v1, p1, Landroid/graphics/Point;->y:I

    #@45
    .line 733
    :cond_2
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 13
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 754
    if-nez p1, :cond_0

    #@2
    .line 755
    return-void

    #@3
    .line 758
    :cond_0
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@5
    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget v0, v9, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@9
    .line 759
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    #@c
    move-result v9

    #@d
    if-nez v9, :cond_1

    #@f
    .line 760
    return-void

    #@10
    .line 763
    :cond_1
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    #@12
    .line 764
    .local v2, "boundsInParent":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    #@14
    .line 766
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@17
    .line 767
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@1a
    .line 768
    const/high16 v9, 0x3f800000    # 1.0f

    #@1c
    cmpl-float v9, v0, v9

    #@1e
    if-eqz v9, :cond_2

    #@20
    .line 769
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    #@23
    .line 770
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->scale(F)V

    #@26
    .line 772
    :cond_2
    if-eqz p2, :cond_3

    #@28
    .line 773
    iget v9, p2, Landroid/view/MagnificationSpec;->scale:F

    #@2a
    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->scale(F)V

    #@2d
    .line 775
    iget v9, p2, Landroid/view/MagnificationSpec;->scale:F

    #@2f
    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->scale(F)V

    #@32
    .line 776
    iget v9, p2, Landroid/view/MagnificationSpec;->offsetX:F

    #@34
    float-to-int v9, v9

    #@35
    iget v10, p2, Landroid/view/MagnificationSpec;->offsetY:F

    #@37
    float-to-int v10, v10

    #@38
    invoke-virtual {v3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    #@3b
    .line 778
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@3e
    .line 779
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@41
    .line 781
    if-eqz p2, :cond_6

    #@43
    .line 782
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@45
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@47
    .line 783
    .local v1, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v9, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    #@49
    if-nez v9, :cond_4

    #@4b
    .line 784
    return-void

    #@4c
    .line 787
    :cond_4
    iget v9, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@4e
    iget v10, p2, Landroid/view/MagnificationSpec;->scale:F

    #@50
    mul-float v6, v9, v10

    #@52
    .line 789
    .local v6, "scale":F
    iget-object v8, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    #@54
    .line 790
    .local v8, "visibleWinFrame":Landroid/graphics/Rect;
    iget v9, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    #@56
    int-to-float v9, v9

    #@57
    mul-float/2addr v9, v6

    #@58
    iget v10, p2, Landroid/view/MagnificationSpec;->offsetX:F

    #@5a
    add-float/2addr v9, v10

    #@5b
    float-to-int v9, v9

    #@5c
    iput v9, v8, Landroid/graphics/Rect;->left:I

    #@5e
    .line 791
    iget v9, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    #@60
    int-to-float v9, v9

    #@61
    mul-float/2addr v9, v6

    #@62
    iget v10, p2, Landroid/view/MagnificationSpec;->offsetY:F

    #@64
    add-float/2addr v9, v10

    #@65
    float-to-int v9, v9

    #@66
    iput v9, v8, Landroid/graphics/Rect;->top:I

    #@68
    .line 792
    iget v9, v8, Landroid/graphics/Rect;->left:I

    #@6a
    int-to-float v9, v9

    #@6b
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@6d
    iget v10, v10, Landroid/view/ViewRootImpl;->mWidth:I

    #@6f
    int-to-float v10, v10

    #@70
    mul-float/2addr v10, v6

    #@71
    add-float/2addr v9, v10

    #@72
    float-to-int v9, v9

    #@73
    iput v9, v8, Landroid/graphics/Rect;->right:I

    #@75
    .line 793
    iget v9, v8, Landroid/graphics/Rect;->top:I

    #@77
    int-to-float v9, v9

    #@78
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@7a
    iget v10, v10, Landroid/view/ViewRootImpl;->mHeight:I

    #@7c
    int-to-float v10, v10

    #@7d
    mul-float/2addr v10, v6

    #@7e
    add-float/2addr v9, v10

    #@7f
    float-to-int v9, v9

    #@80
    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    #@82
    .line 795
    iget-object v9, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    #@84
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    #@86
    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@89
    .line 796
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    #@8b
    iget v5, v9, Landroid/graphics/Point;->x:I

    #@8d
    .line 797
    .local v5, "displayWidth":I
    iget-object v9, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    #@8f
    iget v4, v9, Landroid/graphics/Point;->y:I

    #@91
    .line 799
    .local v4, "displayHeight":I
    iget-object v7, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    #@93
    .line 800
    .local v7, "visibleDisplayFrame":Landroid/graphics/Rect;
    const/4 v9, 0x0

    #@94
    const/4 v10, 0x0

    #@95
    invoke-virtual {v7, v9, v10, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@98
    .line 802
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    #@9b
    move-result v9

    #@9c
    if-nez v9, :cond_5

    #@9e
    .line 804
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    #@a1
    .line 807
    :cond_5
    iget v9, v3, Landroid/graphics/Rect;->left:I

    #@a3
    iget v10, v3, Landroid/graphics/Rect;->top:I

    #@a5
    .line 808
    iget v11, v3, Landroid/graphics/Rect;->right:I

    #@a7
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    #@a9
    .line 807
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->intersects(IIII)Z

    #@ac
    move-result v9

    #@ad
    if-nez v9, :cond_6

    #@af
    .line 809
    const/4 v9, 0x0

    #@b0
    invoke-virtual {p1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    #@b3
    .line 753
    .end local v1    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local v4    # "displayHeight":I
    .end local v5    # "displayWidth":I
    .end local v6    # "scale":F
    .end local v7    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .end local v8    # "visibleWinFrame":Landroid/graphics/Rect;
    :cond_6
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V
    .locals 5
    .param p2, "spec"    # Landroid/view/MagnificationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 695
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez p1, :cond_0

    #@2
    .line 696
    return-void

    #@3
    .line 698
    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@5
    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget v0, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    #@9
    .line 699
    .local v0, "applicationScale":F
    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    .line 700
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@12
    move-result v3

    #@13
    .line 701
    .local v3, "infoCount":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@16
    .line 702
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1c
    .line 703
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    #@1f
    .line 701
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 694
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "infoCount":I
    :cond_1
    return-void
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 129
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@2
    .line 131
    .local v3, "flags":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    #@6
    .line 132
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@8
    .line 133
    .local v0, "accessibilityViewId":I
    iget v10, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@a
    .line 134
    .local v10, "virtualDescendantId":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@c
    .line 136
    .local v5, "interactionId":I
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@e
    check-cast v2, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@10
    .line 137
    .local v2, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v9, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@12
    check-cast v9, Landroid/view/MagnificationSpec;

    #@14
    .line 138
    .local v9, "spec":Landroid/view/MagnificationSpec;
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@16
    check-cast v6, Landroid/graphics/Region;

    #@18
    .line 140
    .local v6, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1b
    .line 142
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    #@1d
    .line 143
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@20
    .line 145
    :try_start_0
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@22
    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@24
    if-eqz v11, :cond_0

    #@26
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@28
    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    if-nez v11, :cond_3

    #@2c
    .line 160
    :cond_0
    :try_start_1
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2e
    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@30
    const/4 v12, 0x0

    #@31
    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@33
    .line 161
    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@36
    .line 164
    if-eqz v9, :cond_1

    #@38
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3b
    move-result v11

    #@3c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@3f
    move-result v12

    #@40
    if-eq v11, v12, :cond_1

    #@42
    .line 165
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    #@45
    .line 167
    :cond_1
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@48
    .line 168
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    #@4b
    .line 169
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@4e
    .line 176
    :goto_0
    if-eqz v6, :cond_2

    #@50
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@53
    move-result v11

    #@54
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@57
    move-result v12

    #@58
    if-ne v11, v12, :cond_2

    #@5a
    .line 177
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    #@5d
    .line 146
    :cond_2
    return-void

    #@5e
    .line 148
    :cond_3
    :try_start_2
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@60
    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@62
    iput v3, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@64
    .line 149
    const/4 v8, 0x0

    #@65
    .line 150
    .local v8, "root":Landroid/view/View;
    const v11, 0x7fffffff

    #@68
    if-ne v0, v11, :cond_7

    #@6a
    .line 151
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@6c
    iget-object v8, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@6e
    .line 155
    .local v8, "root":Landroid/view/View;
    :goto_1
    if-eqz v8, :cond_4

    #@70
    invoke-direct {p0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    #@73
    move-result v11

    #@74
    if-eqz v11, :cond_4

    #@76
    .line 156
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    #@78
    invoke-virtual {v11, v8, v10, v3, v4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7b
    .line 160
    :cond_4
    :try_start_3
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@7d
    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7f
    const/4 v12, 0x0

    #@80
    iput v12, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@82
    .line 161
    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@85
    .line 164
    if-eqz v9, :cond_5

    #@87
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@8a
    move-result v11

    #@8b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@8e
    move-result v12

    #@8f
    if-eq v11, v12, :cond_5

    #@91
    .line 165
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    #@94
    .line 167
    :cond_5
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@97
    .line 168
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    #@9a
    .line 169
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@9d
    .line 176
    :goto_2
    if-eqz v6, :cond_6

    #@9f
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@a2
    move-result v11

    #@a3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a6
    move-result v12

    #@a7
    if-ne v11, v12, :cond_6

    #@a9
    .line 177
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    #@ac
    .line 128
    :cond_6
    return-void

    #@ad
    .line 153
    .local v8, "root":Landroid/view/View;
    :cond_7
    :try_start_4
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b0
    move-result-object v8

    #@b1
    .local v8, "root":Landroid/view/View;
    goto :goto_1

    #@b2
    .line 158
    .end local v8    # "root":Landroid/view/View;
    :catchall_0
    move-exception v11

    #@b3
    .line 160
    :try_start_5
    iget-object v12, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@b5
    iget-object v12, v12, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@b7
    const/4 v13, 0x0

    #@b8
    iput v13, v12, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@ba
    .line 161
    invoke-direct {p0, v4, v9}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@bd
    .line 164
    if-eqz v9, :cond_8

    #@bf
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@c2
    move-result v12

    #@c3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@c6
    move-result v13

    #@c7
    if-eq v12, v13, :cond_8

    #@c9
    .line 165
    invoke-virtual {v9}, Landroid/view/MagnificationSpec;->recycle()V

    #@cc
    .line 167
    :cond_8
    invoke-direct {p0, v4, v6}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@cf
    .line 168
    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    #@d2
    .line 169
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@d5
    .line 176
    :goto_3
    if-eqz v6, :cond_9

    #@d7
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@da
    move-result v12

    #@db
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@de
    move-result v13

    #@df
    if-ne v12, v13, :cond_9

    #@e1
    .line 177
    invoke-virtual {v6}, Landroid/graphics/Region;->recycle()V

    #@e4
    .line 158
    :cond_9
    throw v11

    #@e5
    .line 170
    :catch_0
    move-exception v7

    #@e6
    .local v7, "re":Landroid/os/RemoteException;
    goto :goto_3

    #@e7
    .end local v7    # "re":Landroid/os/RemoteException;
    .restart local v8    # "root":Landroid/view/View;
    :catch_1
    move-exception v7

    #@e8
    .restart local v7    # "re":Landroid/os/RemoteException;
    goto :goto_2

    #@e9
    .end local v7    # "re":Landroid/os/RemoteException;
    .end local v8    # "root":Landroid/view/View;
    :catch_2
    move-exception v7

    #@ea
    .restart local v7    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 23
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 306
    move-object/from16 v0, p1

    #@2
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@4
    .line 308
    .local v5, "flags":I
    move-object/from16 v0, p1

    #@6
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    #@a
    .line 309
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    move-object/from16 v17, v0

    #@e
    check-cast v17, Ljava/lang/String;

    #@10
    .line 311
    .local v17, "text":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@12
    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@14
    .line 312
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@16
    move-object/from16 v16, v0

    #@18
    check-cast v16, Landroid/view/MagnificationSpec;

    #@1a
    .line 313
    .local v16, "spec":Landroid/view/MagnificationSpec;
    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1c
    .line 314
    .local v2, "accessibilityViewId":I
    iget v0, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@1e
    move/from16 v19, v0

    #@20
    .line 315
    .local v19, "virtualDescendantId":I
    iget v11, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@22
    .line 316
    .local v11, "interactionId":I
    iget-object v12, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@24
    check-cast v12, Landroid/graphics/Region;

    #@26
    .line 317
    .local v12, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@29
    .line 319
    const/4 v9, 0x0

    #@2a
    .line 321
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    #@2c
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2e
    move-object/from16 v20, v0

    #@30
    move-object/from16 v0, v20

    #@32
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@34
    move-object/from16 v20, v0

    #@36
    if-eqz v20, :cond_0

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@3c
    move-object/from16 v20, v0

    #@3e
    move-object/from16 v0, v20

    #@40
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@42
    move-object/from16 v20, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    if-nez v20, :cond_3

    #@46
    .line 372
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@4a
    move-object/from16 v20, v0

    #@4c
    move-object/from16 v0, v20

    #@4e
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@50
    move-object/from16 v20, v0

    #@52
    const/16 v21, 0x0

    #@54
    move/from16 v0, v21

    #@56
    move-object/from16 v1, v20

    #@58
    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@5a
    .line 373
    move-object/from16 v0, p0

    #@5c
    move-object/from16 v1, v16

    #@5e
    invoke-direct {v0, v9, v1}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@61
    .line 376
    if-eqz v16, :cond_1

    #@63
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@66
    move-result v20

    #@67
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@6a
    move-result v21

    #@6b
    move/from16 v0, v20

    #@6d
    move/from16 v1, v21

    #@6f
    if-eq v0, v1, :cond_1

    #@71
    .line 377
    invoke-virtual/range {v16 .. v16}, Landroid/view/MagnificationSpec;->recycle()V

    #@74
    .line 379
    :cond_1
    move-object/from16 v0, p0

    #@76
    invoke-direct {v0, v9, v12}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@79
    .line 380
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@7c
    .line 387
    :goto_0
    if-eqz v12, :cond_2

    #@7e
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@81
    move-result v20

    #@82
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@85
    move-result v21

    #@86
    move/from16 v0, v20

    #@88
    move/from16 v1, v21

    #@8a
    if-ne v0, v1, :cond_2

    #@8c
    .line 388
    invoke-virtual {v12}, Landroid/graphics/Region;->recycle()V

    #@8f
    .line 322
    :cond_2
    return-void

    #@90
    .line 324
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@94
    move-object/from16 v20, v0

    #@96
    move-object/from16 v0, v20

    #@98
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9a
    move-object/from16 v20, v0

    #@9c
    move-object/from16 v0, v20

    #@9e
    iput v5, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@a0
    .line 325
    const/4 v15, 0x0

    #@a1
    .line 326
    .local v15, "root":Landroid/view/View;
    const v20, 0x7fffffff

    #@a4
    move/from16 v0, v20

    #@a6
    if-eq v2, v0, :cond_7

    #@a8
    .line 327
    move-object/from16 v0, p0

    #@aa
    invoke-direct {v0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    #@ad
    move-result-object v15

    #@ae
    .line 331
    .local v15, "root":Landroid/view/View;
    :goto_1
    if-eqz v15, :cond_4

    #@b0
    move-object/from16 v0, p0

    #@b2
    invoke-direct {v0, v15}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    #@b5
    move-result v20

    #@b6
    if-eqz v20, :cond_4

    #@b8
    .line 332
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@bb
    move-result-object v13

    #@bc
    .line 333
    .local v13, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v13, :cond_9

    #@be
    .line 334
    const v20, 0x7fffffff

    #@c1
    move/from16 v0, v19

    #@c3
    move/from16 v1, v20

    #@c5
    if-eq v0, v1, :cond_8

    #@c7
    .line 335
    move-object/from16 v0, v17

    #@c9
    move/from16 v1, v19

    #@cb
    invoke-virtual {v13, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ce
    move-result-object v9

    #@cf
    .line 372
    .end local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v13    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    #@d1
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@d3
    move-object/from16 v20, v0

    #@d5
    move-object/from16 v0, v20

    #@d7
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d9
    move-object/from16 v20, v0

    #@db
    const/16 v21, 0x0

    #@dd
    move/from16 v0, v21

    #@df
    move-object/from16 v1, v20

    #@e1
    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@e3
    .line 373
    move-object/from16 v0, p0

    #@e5
    move-object/from16 v1, v16

    #@e7
    invoke-direct {v0, v9, v1}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@ea
    .line 376
    if-eqz v16, :cond_5

    #@ec
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@ef
    move-result v20

    #@f0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@f3
    move-result v21

    #@f4
    move/from16 v0, v20

    #@f6
    move/from16 v1, v21

    #@f8
    if-eq v0, v1, :cond_5

    #@fa
    .line 377
    invoke-virtual/range {v16 .. v16}, Landroid/view/MagnificationSpec;->recycle()V

    #@fd
    .line 379
    :cond_5
    move-object/from16 v0, p0

    #@ff
    invoke-direct {v0, v9, v12}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@102
    .line 380
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@105
    .line 387
    :goto_3
    if-eqz v12, :cond_6

    #@107
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@10a
    move-result v20

    #@10b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@10e
    move-result v21

    #@10f
    move/from16 v0, v20

    #@111
    move/from16 v1, v21

    #@113
    if-ne v0, v1, :cond_6

    #@115
    .line 388
    invoke-virtual {v12}, Landroid/graphics/Region;->recycle()V

    #@118
    .line 305
    :cond_6
    return-void

    #@119
    .line 329
    .restart local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .local v15, "root":Landroid/view/View;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@11d
    move-object/from16 v20, v0

    #@11f
    move-object/from16 v0, v20

    #@121
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@123
    .local v15, "root":Landroid/view/View;
    goto :goto_1

    #@124
    .line 339
    .restart local v13    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_8
    const/16 v20, -0x1

    #@126
    .line 338
    move-object/from16 v0, v17

    #@128
    move/from16 v1, v20

    #@12a
    invoke-virtual {v13, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    #@12d
    move-result-object v9

    #@12e
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    goto :goto_2

    #@12f
    .line 341
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_9
    const v20, 0x7fffffff

    #@132
    move/from16 v0, v19

    #@134
    move/from16 v1, v20

    #@136
    if-ne v0, v1, :cond_4

    #@138
    .line 342
    move-object/from16 v0, p0

    #@13a
    iget-object v7, v0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    #@13c
    .line 343
    .local v7, "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    #@13f
    .line 344
    const/16 v20, 0x7

    #@141
    move-object/from16 v0, v17

    #@143
    move/from16 v1, v20

    #@145
    invoke-virtual {v15, v7, v0, v1}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    #@148
    .line 347
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@14b
    move-result v20

    #@14c
    if-nez v20, :cond_4

    #@14e
    .line 348
    move-object/from16 v0, p0

    #@150
    iget-object v9, v0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    #@152
    .line 349
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->clear()V

    #@155
    .line 350
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@158
    move-result v18

    #@159
    .line 351
    .local v18, "viewCount":I
    const/4 v8, 0x0

    #@15a
    .local v8, "i":I
    :goto_4
    move/from16 v0, v18

    #@15c
    if-ge v8, v0, :cond_4

    #@15e
    .line 352
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@161
    move-result-object v6

    #@162
    check-cast v6, Landroid/view/View;

    #@164
    .line 353
    .local v6, "foundView":Landroid/view/View;
    move-object/from16 v0, p0

    #@166
    invoke-direct {v0, v6}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    #@169
    move-result v20

    #@16a
    if-eqz v20, :cond_a

    #@16c
    .line 354
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@16f
    move-result-object v13

    #@170
    .line 355
    if-eqz v13, :cond_b

    #@172
    .line 358
    const/16 v20, -0x1

    #@174
    .line 357
    move-object/from16 v0, v17

    #@176
    move/from16 v1, v20

    #@178
    invoke-virtual {v13, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    #@17b
    move-result-object v10

    #@17c
    .line 359
    .local v10, "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v10, :cond_a

    #@17e
    .line 360
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@181
    .line 351
    .end local v10    # "infosFromProvider":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    #@183
    goto :goto_4

    #@184
    .line 363
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@187
    move-result-object v20

    #@188
    move-object/from16 v0, v20

    #@18a
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@18d
    goto :goto_5

    #@18e
    .line 370
    .end local v6    # "foundView":Landroid/view/View;
    .end local v7    # "foundViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v8    # "i":I
    .end local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v13    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v15    # "root":Landroid/view/View;
    .end local v18    # "viewCount":I
    :catchall_0
    move-exception v20

    #@18f
    .line 372
    :try_start_5
    move-object/from16 v0, p0

    #@191
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@193
    move-object/from16 v21, v0

    #@195
    move-object/from16 v0, v21

    #@197
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@199
    move-object/from16 v21, v0

    #@19b
    const/16 v22, 0x0

    #@19d
    move/from16 v0, v22

    #@19f
    move-object/from16 v1, v21

    #@1a1
    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@1a3
    .line 373
    move-object/from16 v0, p0

    #@1a5
    move-object/from16 v1, v16

    #@1a7
    invoke-direct {v0, v9, v1}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@1aa
    .line 376
    if-eqz v16, :cond_c

    #@1ac
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@1af
    move-result v21

    #@1b0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1b3
    move-result v22

    #@1b4
    move/from16 v0, v21

    #@1b6
    move/from16 v1, v22

    #@1b8
    if-eq v0, v1, :cond_c

    #@1ba
    .line 377
    invoke-virtual/range {v16 .. v16}, Landroid/view/MagnificationSpec;->recycle()V

    #@1bd
    .line 379
    :cond_c
    move-object/from16 v0, p0

    #@1bf
    invoke-direct {v0, v9, v12}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@1c2
    .line 380
    invoke-interface {v4, v9, v11}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@1c5
    .line 387
    :goto_6
    if-eqz v12, :cond_d

    #@1c7
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@1ca
    move-result v21

    #@1cb
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1ce
    move-result v22

    #@1cf
    move/from16 v0, v21

    #@1d1
    move/from16 v1, v22

    #@1d3
    if-ne v0, v1, :cond_d

    #@1d5
    .line 388
    invoke-virtual {v12}, Landroid/graphics/Region;->recycle()V

    #@1d8
    .line 370
    :cond_d
    throw v20

    #@1d9
    .line 381
    :catch_0
    move-exception v14

    #@1da
    .local v14, "re":Landroid/os/RemoteException;
    goto :goto_6

    #@1db
    .end local v14    # "re":Landroid/os/RemoteException;
    .restart local v15    # "root":Landroid/view/View;
    :catch_1
    move-exception v14

    #@1dc
    .restart local v14    # "re":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@1de
    .end local v14    # "re":Landroid/os/RemoteException;
    .end local v15    # "root":Landroid/view/View;
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catch_2
    move-exception v14

    #@1df
    .restart local v14    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 16
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 213
    move-object/from16 v0, p1

    #@2
    iget v4, v0, Landroid/os/Message;->arg1:I

    #@4
    .line 214
    .local v4, "flags":I
    move-object/from16 v0, p1

    #@6
    iget v1, v0, Landroid/os/Message;->arg2:I

    #@8
    .line 216
    .local v1, "accessibilityViewId":I
    move-object/from16 v0, p1

    #@a
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@e
    .line 217
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@10
    .line 219
    .local v6, "interactionId":I
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@12
    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@14
    .line 220
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v11, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@16
    check-cast v11, Landroid/view/MagnificationSpec;

    #@18
    .line 221
    .local v11, "spec":Landroid/view/MagnificationSpec;
    iget-object v12, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@1a
    check-cast v12, Ljava/lang/String;

    #@1c
    .line 222
    .local v12, "viewId":Ljava/lang/String;
    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@1e
    check-cast v7, Landroid/graphics/Region;

    #@20
    .line 224
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@23
    .line 226
    move-object/from16 v0, p0

    #@25
    iget-object v5, v0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    #@27
    .line 227
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    #@2a
    .line 229
    :try_start_0
    move-object/from16 v0, p0

    #@2c
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2e
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@30
    if-eqz v13, :cond_0

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@36
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    if-nez v13, :cond_3

    #@3a
    .line 254
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@3c
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@3e
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@40
    const/4 v14, 0x0

    #@41
    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@43
    .line 255
    move-object/from16 v0, p0

    #@45
    invoke-direct {v0, v5, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@48
    .line 258
    if-eqz v11, :cond_1

    #@4a
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@4d
    move-result v13

    #@4e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@51
    move-result v14

    #@52
    if-eq v13, v14, :cond_1

    #@54
    .line 259
    invoke-virtual {v11}, Landroid/view/MagnificationSpec;->recycle()V

    #@57
    .line 261
    :cond_1
    move-object/from16 v0, p0

    #@59
    invoke-direct {v0, v5, v7}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@5c
    .line 262
    invoke-interface {v3, v5, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    #@5f
    .line 269
    :goto_0
    if-eqz v7, :cond_2

    #@61
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@64
    move-result v13

    #@65
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@68
    move-result v14

    #@69
    if-ne v13, v14, :cond_2

    #@6b
    .line 270
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@6e
    .line 230
    :cond_2
    return-void

    #@6f
    .line 232
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    #@71
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@73
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@75
    iput v4, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@77
    .line 233
    const/4 v10, 0x0

    #@78
    .line 234
    .local v10, "root":Landroid/view/View;
    const v13, 0x7fffffff

    #@7b
    if-eq v1, v13, :cond_6

    #@7d
    .line 235
    move-object/from16 v0, p0

    #@7f
    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    #@82
    move-result-object v10

    #@83
    .line 239
    .local v10, "root":Landroid/view/View;
    :goto_1
    if-eqz v10, :cond_9

    #@85
    .line 240
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@88
    move-result-object v13

    #@89
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8c
    move-result-object v13

    #@8d
    .line 241
    const/4 v14, 0x0

    #@8e
    const/4 v15, 0x0

    #@8f
    .line 240
    invoke-virtual {v13, v12, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@92
    move-result v9

    #@93
    .line 242
    .local v9, "resolvedViewId":I
    if-gtz v9, :cond_7

    #@95
    .line 254
    :try_start_3
    move-object/from16 v0, p0

    #@97
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@99
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@9b
    const/4 v14, 0x0

    #@9c
    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@9e
    .line 255
    move-object/from16 v0, p0

    #@a0
    invoke-direct {v0, v5, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@a3
    .line 258
    if-eqz v11, :cond_4

    #@a5
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@a8
    move-result v13

    #@a9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@ac
    move-result v14

    #@ad
    if-eq v13, v14, :cond_4

    #@af
    .line 259
    invoke-virtual {v11}, Landroid/view/MagnificationSpec;->recycle()V

    #@b2
    .line 261
    :cond_4
    move-object/from16 v0, p0

    #@b4
    invoke-direct {v0, v5, v7}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@b7
    .line 262
    invoke-interface {v3, v5, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@ba
    .line 269
    :goto_2
    if-eqz v7, :cond_5

    #@bc
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@bf
    move-result v13

    #@c0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@c3
    move-result v14

    #@c4
    if-ne v13, v14, :cond_5

    #@c6
    .line 270
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@c9
    .line 243
    :cond_5
    return-void

    #@ca
    .line 237
    .end local v9    # "resolvedViewId":I
    .local v10, "root":Landroid/view/View;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    #@cc
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@ce
    iget-object v10, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@d0
    .local v10, "root":Landroid/view/View;
    goto :goto_1

    #@d1
    .line 245
    .restart local v9    # "resolvedViewId":I
    :cond_7
    move-object/from16 v0, p0

    #@d3
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    #@d5
    if-nez v13, :cond_8

    #@d7
    .line 246
    new-instance v13, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    #@d9
    const/4 v14, 0x0

    #@da
    move-object/from16 v0, p0

    #@dc
    invoke-direct {v13, v0, v14}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;)V

    #@df
    move-object/from16 v0, p0

    #@e1
    iput-object v13, v0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    #@e3
    .line 248
    :cond_8
    move-object/from16 v0, p0

    #@e5
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    #@e7
    invoke-virtual {v13, v9, v5}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    #@ea
    .line 249
    move-object/from16 v0, p0

    #@ec
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    #@ee
    invoke-virtual {v10, v13}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    #@f1
    .line 250
    move-object/from16 v0, p0

    #@f3
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    #@f5
    invoke-virtual {v13}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@f8
    .line 254
    .end local v9    # "resolvedViewId":I
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    #@fa
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@fc
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@fe
    const/4 v14, 0x0

    #@ff
    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@101
    .line 255
    move-object/from16 v0, p0

    #@103
    invoke-direct {v0, v5, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@106
    .line 258
    if-eqz v11, :cond_a

    #@108
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@10b
    move-result v13

    #@10c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@10f
    move-result v14

    #@110
    if-eq v13, v14, :cond_a

    #@112
    .line 259
    invoke-virtual {v11}, Landroid/view/MagnificationSpec;->recycle()V

    #@115
    .line 261
    :cond_a
    move-object/from16 v0, p0

    #@117
    invoke-direct {v0, v5, v7}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@11a
    .line 262
    invoke-interface {v3, v5, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@11d
    .line 269
    :goto_3
    if-eqz v7, :cond_b

    #@11f
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@122
    move-result v13

    #@123
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@126
    move-result v14

    #@127
    if-ne v13, v14, :cond_b

    #@129
    .line 270
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@12c
    .line 212
    :cond_b
    return-void

    #@12d
    .line 252
    .end local v10    # "root":Landroid/view/View;
    :catchall_0
    move-exception v13

    #@12e
    .line 254
    :try_start_6
    move-object/from16 v0, p0

    #@130
    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@132
    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@134
    const/4 v15, 0x0

    #@135
    iput v15, v14, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@137
    .line 255
    move-object/from16 v0, p0

    #@139
    invoke-direct {v0, v5, v11}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    #@13c
    .line 258
    if-eqz v11, :cond_c

    #@13e
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@141
    move-result v14

    #@142
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@145
    move-result v15

    #@146
    if-eq v14, v15, :cond_c

    #@148
    .line 259
    invoke-virtual {v11}, Landroid/view/MagnificationSpec;->recycle()V

    #@14b
    .line 261
    :cond_c
    move-object/from16 v0, p0

    #@14d
    invoke-direct {v0, v5, v7}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    #@150
    .line 262
    invoke-interface {v3, v5, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    #@153
    .line 269
    :goto_4
    if-eqz v7, :cond_d

    #@155
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@158
    move-result v14

    #@159
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@15c
    move-result v15

    #@15d
    if-ne v14, v15, :cond_d

    #@15f
    .line 270
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@162
    .line 252
    :cond_d
    throw v13

    #@163
    .line 263
    :catch_0
    move-exception v8

    #@164
    .local v8, "re":Landroid/os/RemoteException;
    goto :goto_4

    #@165
    .end local v8    # "re":Landroid/os/RemoteException;
    .restart local v10    # "root":Landroid/view/View;
    :catch_1
    move-exception v8

    #@166
    .restart local v8    # "re":Landroid/os/RemoteException;
    goto :goto_3

    #@167
    .end local v8    # "re":Landroid/os/RemoteException;
    .restart local v9    # "resolvedViewId":I
    :catch_2
    move-exception v8

    #@168
    .restart local v8    # "re":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@16a
    .end local v8    # "re":Landroid/os/RemoteException;
    .end local v9    # "resolvedViewId":I
    .end local v10    # "root":Landroid/view/View;
    :catch_3
    move-exception v8

    #@16b
    .restart local v8    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 20
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 425
    move-object/from16 v0, p1

    #@2
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@4
    .line 426
    .local v5, "flags":I
    move-object/from16 v0, p1

    #@6
    iget v6, v0, Landroid/os/Message;->arg2:I

    #@8
    .line 428
    .local v6, "focusType":I
    move-object/from16 v0, p1

    #@a
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    #@e
    .line 429
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget v9, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@10
    .line 430
    .local v9, "interactionId":I
    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@12
    .line 431
    .local v2, "accessibilityViewId":I
    iget v0, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@14
    move/from16 v16, v0

    #@16
    .line 433
    .local v16, "virtualDescendantId":I
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@18
    check-cast v4, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@1a
    .line 434
    .local v4, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v14, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1c
    check-cast v14, Landroid/view/MagnificationSpec;

    #@1e
    .line 435
    .local v14, "spec":Landroid/view/MagnificationSpec;
    iget-object v10, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@20
    check-cast v10, Landroid/graphics/Region;

    #@22
    .line 436
    .local v10, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@25
    .line 438
    const/4 v7, 0x0

    #@26
    .line 440
    .local v7, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    move-object/from16 v0, p0

    #@28
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2a
    move-object/from16 v17, v0

    #@2c
    move-object/from16 v0, v17

    #@2e
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@30
    move-object/from16 v17, v0

    #@32
    if-eqz v17, :cond_0

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@38
    move-object/from16 v17, v0

    #@3a
    move-object/from16 v0, v17

    #@3c
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3e
    move-object/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    if-nez v17, :cond_3

    #@42
    .line 494
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@46
    move-object/from16 v17, v0

    #@48
    move-object/from16 v0, v17

    #@4a
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@4c
    move-object/from16 v17, v0

    #@4e
    const/16 v18, 0x0

    #@50
    move/from16 v0, v18

    #@52
    move-object/from16 v1, v17

    #@54
    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@56
    .line 495
    move-object/from16 v0, p0

    #@58
    invoke-direct {v0, v7, v14}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    #@5b
    .line 498
    if-eqz v14, :cond_1

    #@5d
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@60
    move-result v17

    #@61
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@64
    move-result v18

    #@65
    move/from16 v0, v17

    #@67
    move/from16 v1, v18

    #@69
    if-eq v0, v1, :cond_1

    #@6b
    .line 499
    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->recycle()V

    #@6e
    .line 501
    :cond_1
    move-object/from16 v0, p0

    #@70
    invoke-direct {v0, v7, v10}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    #@73
    .line 502
    invoke-interface {v4, v7, v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@76
    .line 509
    :goto_0
    if-eqz v10, :cond_2

    #@78
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@7b
    move-result v17

    #@7c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@7f
    move-result v18

    #@80
    move/from16 v0, v17

    #@82
    move/from16 v1, v18

    #@84
    if-ne v0, v1, :cond_2

    #@86
    .line 510
    invoke-virtual {v10}, Landroid/graphics/Region;->recycle()V

    #@89
    .line 441
    :cond_2
    return-void

    #@8a
    .line 443
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@8e
    move-object/from16 v17, v0

    #@90
    move-object/from16 v0, v17

    #@92
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@94
    move-object/from16 v17, v0

    #@96
    move-object/from16 v0, v17

    #@98
    iput v5, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@9a
    .line 444
    const/4 v13, 0x0

    #@9b
    .line 445
    .local v13, "root":Landroid/view/View;
    const v17, 0x7fffffff

    #@9e
    move/from16 v0, v17

    #@a0
    if-eq v2, v0, :cond_6

    #@a2
    .line 446
    move-object/from16 v0, p0

    #@a4
    invoke-direct {v0, v2}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    #@a7
    move-result-object v13

    #@a8
    .line 450
    .local v13, "root":Landroid/view/View;
    :goto_1
    if-eqz v13, :cond_7

    #@aa
    move-object/from16 v0, p0

    #@ac
    invoke-direct {v0, v13}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    #@af
    move-result v17

    #@b0
    if-eqz v17, :cond_7

    #@b2
    .line 451
    packed-switch v6, :pswitch_data_0

    #@b5
    .line 489
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@b7
    new-instance v18, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v19, "Unknown focus type: "

    #@bf
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v18

    #@c3
    move-object/from16 v0, v18

    #@c5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v18

    #@c9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v18

    #@cd
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d0
    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d1
    .line 492
    .end local v7    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v13    # "root":Landroid/view/View;
    :catchall_0
    move-exception v17

    #@d2
    .line 494
    :try_start_3
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@d6
    move-object/from16 v18, v0

    #@d8
    move-object/from16 v0, v18

    #@da
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@dc
    move-object/from16 v18, v0

    #@de
    const/16 v19, 0x0

    #@e0
    move/from16 v0, v19

    #@e2
    move-object/from16 v1, v18

    #@e4
    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@e6
    .line 495
    move-object/from16 v0, p0

    #@e8
    invoke-direct {v0, v7, v14}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    #@eb
    .line 498
    if-eqz v14, :cond_4

    #@ed
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@f0
    move-result v18

    #@f1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@f4
    move-result v19

    #@f5
    move/from16 v0, v18

    #@f7
    move/from16 v1, v19

    #@f9
    if-eq v0, v1, :cond_4

    #@fb
    .line 499
    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->recycle()V

    #@fe
    .line 501
    :cond_4
    move-object/from16 v0, p0

    #@100
    invoke-direct {v0, v7, v10}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    #@103
    .line 502
    invoke-interface {v4, v7, v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@106
    .line 509
    :goto_2
    if-eqz v10, :cond_5

    #@108
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@10b
    move-result v18

    #@10c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@10f
    move-result v19

    #@110
    move/from16 v0, v18

    #@112
    move/from16 v1, v19

    #@114
    if-ne v0, v1, :cond_5

    #@116
    .line 510
    invoke-virtual {v10}, Landroid/graphics/Region;->recycle()V

    #@119
    .line 492
    :cond_5
    throw v17

    #@11a
    .line 448
    .restart local v7    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v13, "root":Landroid/view/View;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    #@11c
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@11e
    move-object/from16 v17, v0

    #@120
    move-object/from16 v0, v17

    #@122
    iget-object v13, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@124
    .local v13, "root":Landroid/view/View;
    goto :goto_1

    #@125
    .line 453
    :pswitch_0
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@129
    move-object/from16 v17, v0

    #@12b
    move-object/from16 v0, v17

    #@12d
    iget-object v8, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    #@12f
    .line 456
    .local v8, "host":Landroid/view/View;
    if-eqz v8, :cond_7

    #@131
    invoke-static {v8, v13}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@134
    move-result v17

    #@135
    if-eqz v17, :cond_7

    #@137
    .line 460
    move-object/from16 v0, p0

    #@139
    invoke-direct {v0, v8}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@13c
    move-result v17

    #@13d
    if-nez v17, :cond_a

    #@13f
    .line 494
    .end local v7    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "host":Landroid/view/View;
    :cond_7
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    #@141
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@143
    move-object/from16 v17, v0

    #@145
    move-object/from16 v0, v17

    #@147
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@149
    move-object/from16 v17, v0

    #@14b
    const/16 v18, 0x0

    #@14d
    move/from16 v0, v18

    #@14f
    move-object/from16 v1, v17

    #@151
    iput v0, v1, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@153
    .line 495
    move-object/from16 v0, p0

    #@155
    invoke-direct {v0, v7, v14}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    #@158
    .line 498
    if-eqz v14, :cond_8

    #@15a
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@15d
    move-result v17

    #@15e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@161
    move-result v18

    #@162
    move/from16 v0, v17

    #@164
    move/from16 v1, v18

    #@166
    if-eq v0, v1, :cond_8

    #@168
    .line 499
    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->recycle()V

    #@16b
    .line 501
    :cond_8
    move-object/from16 v0, p0

    #@16d
    invoke-direct {v0, v7, v10}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    #@170
    .line 502
    invoke-interface {v4, v7, v9}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    #@173
    .line 509
    :goto_4
    if-eqz v10, :cond_9

    #@175
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@178
    move-result v17

    #@179
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@17c
    move-result v18

    #@17d
    move/from16 v0, v17

    #@17f
    move/from16 v1, v18

    #@181
    if-ne v0, v1, :cond_9

    #@183
    .line 510
    invoke-virtual {v10}, Landroid/graphics/Region;->recycle()V

    #@186
    .line 424
    :cond_9
    return-void

    #@187
    .line 465
    .restart local v7    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v8    # "host":Landroid/view/View;
    :cond_a
    :try_start_6
    invoke-virtual {v8}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@18a
    move-result-object v11

    #@18b
    .line 466
    .local v11, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v11, :cond_b

    #@18d
    .line 467
    move-object/from16 v0, p0

    #@18f
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@191
    move-object/from16 v17, v0

    #@193
    move-object/from16 v0, v17

    #@195
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@197
    move-object/from16 v17, v0

    #@199
    if-eqz v17, :cond_7

    #@19b
    .line 469
    move-object/from16 v0, p0

    #@19d
    iget-object v0, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@19f
    move-object/from16 v17, v0

    #@1a1
    move-object/from16 v0, v17

    #@1a3
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1a5
    move-object/from16 v17, v0

    #@1a7
    .line 468
    invoke-static/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1aa
    move-result-object v7

    #@1ab
    .local v7, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_3

    #@1ac
    .line 471
    .local v7, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_b
    const v17, 0x7fffffff

    #@1af
    move/from16 v0, v16

    #@1b1
    move/from16 v1, v17

    #@1b3
    if-ne v0, v1, :cond_7

    #@1b5
    .line 472
    invoke-virtual {v8}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1b8
    move-result-object v7

    #@1b9
    .local v7, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_3

    #@1ba
    .line 476
    .end local v8    # "host":Landroid/view/View;
    .end local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .local v7, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@1bd
    move-result-object v15

    #@1be
    .line 477
    .local v15, "target":Landroid/view/View;
    if-eqz v15, :cond_7

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    invoke-direct {v0, v15}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    #@1c5
    move-result v17

    #@1c6
    if-eqz v17, :cond_7

    #@1c8
    .line 480
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@1cb
    move-result-object v11

    #@1cc
    .line 481
    .restart local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v11, :cond_c

    #@1ce
    .line 482
    invoke-virtual {v11, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@1d1
    move-result-object v7

    #@1d2
    .line 484
    .end local v7    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_c
    if-nez v7, :cond_7

    #@1d4
    .line 485
    invoke-virtual {v15}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1d7
    move-result-object v7

    #@1d8
    .local v7, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto/16 :goto_3

    #@1da
    .line 503
    .end local v7    # "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v11    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v13    # "root":Landroid/view/View;
    .end local v15    # "target":Landroid/view/View;
    :catch_0
    move-exception v12

    #@1db
    .local v12, "re":Landroid/os/RemoteException;
    goto/16 :goto_2

    #@1dd
    .end local v12    # "re":Landroid/os/RemoteException;
    .restart local v13    # "root":Landroid/view/View;
    :catch_1
    move-exception v12

    #@1de
    .restart local v12    # "re":Landroid/os/RemoteException;
    goto :goto_4

    #@1df
    .end local v12    # "re":Landroid/os/RemoteException;
    .end local v13    # "root":Landroid/view/View;
    .local v7, "focused":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catch_2
    move-exception v12

    #@1e0
    .restart local v12    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0

    #@1e2
    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4
    .param p1, "accessibilityId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 682
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@3
    iget-object v1, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@5
    .line 683
    .local v1, "root":Landroid/view/View;
    if-nez v1, :cond_0

    #@7
    .line 684
    return-object v3

    #@8
    .line 686
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    .line 687
    .local v0, "foundView":Landroid/view/View;
    if-eqz v0, :cond_1

    #@e
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 690
    :cond_1
    return-object v0

    #@15
    .line 688
    :cond_2
    return-object v3
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 16
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 546
    move-object/from16 v0, p1

    #@2
    iget v5, v0, Landroid/os/Message;->arg1:I

    #@4
    .line 547
    .local v5, "flags":I
    move-object/from16 v0, p1

    #@6
    iget v1, v0, Landroid/os/Message;->arg2:I

    #@8
    .line 549
    .local v1, "accessibilityViewId":I
    move-object/from16 v0, p1

    #@a
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@e
    .line 550
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@10
    .line 551
    .local v4, "direction":I
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@12
    .line 553
    .local v6, "interactionId":I
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@14
    check-cast v3, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@16
    .line 554
    .local v3, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v12, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@18
    check-cast v12, Landroid/view/MagnificationSpec;

    #@1a
    .line 555
    .local v12, "spec":Landroid/view/MagnificationSpec;
    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@1c
    check-cast v7, Landroid/graphics/Region;

    #@1e
    .line 557
    .local v7, "interactiveRegion":Landroid/graphics/Region;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@21
    .line 559
    const/4 v8, 0x0

    #@22
    .line 561
    .local v8, "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    move-object/from16 v0, p0

    #@24
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@26
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@28
    if-eqz v13, :cond_0

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2e
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    if-nez v13, :cond_3

    #@32
    .line 579
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@34
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@36
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@38
    const/4 v14, 0x0

    #@39
    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@3b
    .line 580
    move-object/from16 v0, p0

    #@3d
    invoke-direct {v0, v8, v12}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    #@40
    .line 583
    if-eqz v12, :cond_1

    #@42
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@45
    move-result v13

    #@46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@49
    move-result v14

    #@4a
    if-eq v13, v14, :cond_1

    #@4c
    .line 584
    invoke-virtual {v12}, Landroid/view/MagnificationSpec;->recycle()V

    #@4f
    .line 586
    :cond_1
    move-object/from16 v0, p0

    #@51
    invoke-direct {v0, v8, v7}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    #@54
    .line 587
    invoke-interface {v3, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@57
    .line 594
    :goto_0
    if-eqz v7, :cond_2

    #@59
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@5c
    move-result v13

    #@5d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@60
    move-result v14

    #@61
    if-ne v13, v14, :cond_2

    #@63
    .line 595
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@66
    .line 562
    :cond_2
    return-void

    #@67
    .line 564
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    #@69
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@6b
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@6d
    iput v5, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@6f
    .line 565
    const/4 v11, 0x0

    #@70
    .line 566
    .local v11, "root":Landroid/view/View;
    const v13, 0x7fffffff

    #@73
    if-eq v1, v13, :cond_7

    #@75
    .line 567
    move-object/from16 v0, p0

    #@77
    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    #@7a
    move-result-object v11

    #@7b
    .line 571
    .local v11, "root":Landroid/view/View;
    :goto_1
    if-eqz v11, :cond_4

    #@7d
    move-object/from16 v0, p0

    #@7f
    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    #@82
    move-result v13

    #@83
    if-eqz v13, :cond_4

    #@85
    .line 572
    invoke-virtual {v11, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    #@88
    move-result-object v9

    #@89
    .line 573
    .local v9, "nextView":Landroid/view/View;
    if-eqz v9, :cond_4

    #@8b
    .line 574
    invoke-virtual {v9}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8e
    move-result-object v8

    #@8f
    .line 579
    .end local v8    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v9    # "nextView":Landroid/view/View;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    #@91
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@93
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@95
    const/4 v14, 0x0

    #@96
    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@98
    .line 580
    move-object/from16 v0, p0

    #@9a
    invoke-direct {v0, v8, v12}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    #@9d
    .line 583
    if-eqz v12, :cond_5

    #@9f
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@a2
    move-result v13

    #@a3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@a6
    move-result v14

    #@a7
    if-eq v13, v14, :cond_5

    #@a9
    .line 584
    invoke-virtual {v12}, Landroid/view/MagnificationSpec;->recycle()V

    #@ac
    .line 586
    :cond_5
    move-object/from16 v0, p0

    #@ae
    invoke-direct {v0, v8, v7}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    #@b1
    .line 587
    invoke-interface {v3, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@b4
    .line 594
    :goto_2
    if-eqz v7, :cond_6

    #@b6
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@b9
    move-result v13

    #@ba
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@bd
    move-result v14

    #@be
    if-ne v13, v14, :cond_6

    #@c0
    .line 595
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@c3
    .line 545
    :cond_6
    return-void

    #@c4
    .line 569
    .restart local v8    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v11, "root":Landroid/view/View;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    #@c6
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@c8
    iget-object v11, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ca
    .local v11, "root":Landroid/view/View;
    goto :goto_1

    #@cb
    .line 577
    .end local v11    # "root":Landroid/view/View;
    :catchall_0
    move-exception v13

    #@cc
    .line 579
    :try_start_5
    move-object/from16 v0, p0

    #@ce
    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@d0
    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@d2
    const/4 v15, 0x0

    #@d3
    iput v15, v14, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@d5
    .line 580
    move-object/from16 v0, p0

    #@d7
    invoke-direct {v0, v8, v12}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    #@da
    .line 583
    if-eqz v12, :cond_8

    #@dc
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@df
    move-result v14

    #@e0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@e3
    move-result v15

    #@e4
    if-eq v14, v15, :cond_8

    #@e6
    .line 584
    invoke-virtual {v12}, Landroid/view/MagnificationSpec;->recycle()V

    #@e9
    .line 586
    :cond_8
    move-object/from16 v0, p0

    #@eb
    invoke-direct {v0, v8, v7}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    #@ee
    .line 587
    invoke-interface {v3, v8, v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@f1
    .line 594
    :goto_3
    if-eqz v7, :cond_9

    #@f3
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@f6
    move-result v14

    #@f7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@fa
    move-result v15

    #@fb
    if-ne v14, v15, :cond_9

    #@fd
    .line 595
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    #@100
    .line 577
    :cond_9
    throw v13

    #@101
    .line 588
    :catch_0
    move-exception v10

    #@102
    .local v10, "re":Landroid/os/RemoteException;
    goto :goto_3

    #@103
    .end local v8    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "re":Landroid/os/RemoteException;
    .restart local v11    # "root":Landroid/view/View;
    :catch_1
    move-exception v10

    #@104
    .restart local v10    # "re":Landroid/os/RemoteException;
    goto :goto_2

    #@105
    .end local v10    # "re":Landroid/os/RemoteException;
    .end local v11    # "root":Landroid/view/View;
    .restart local v8    # "next":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catch_2
    move-exception v10

    #@106
    .restart local v10    # "re":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 94
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 95
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@7
    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    #@9
    if-nez v1, :cond_0

    #@b
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    #@e
    move-result v0

    #@f
    .line 94
    :cond_0
    return v0
.end method

.method private performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 16
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 631
    move-object/from16 v0, p1

    #@2
    iget v6, v0, Landroid/os/Message;->arg1:I

    #@4
    .line 632
    .local v6, "flags":I
    move-object/from16 v0, p1

    #@6
    iget v1, v0, Landroid/os/Message;->arg2:I

    #@8
    .line 634
    .local v1, "accessibilityViewId":I
    move-object/from16 v0, p1

    #@a
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@c
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    #@e
    .line 635
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget v12, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@10
    .line 636
    .local v12, "virtualDescendantId":I
    iget v2, v3, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@12
    .line 637
    .local v2, "action":I
    iget v7, v3, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@14
    .line 639
    .local v7, "interactionId":I
    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@16
    check-cast v5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    #@18
    .line 640
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1a
    check-cast v4, Landroid/os/Bundle;

    #@1c
    .line 642
    .local v4, "arguments":Landroid/os/Bundle;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1f
    .line 644
    const/4 v10, 0x0

    #@20
    .line 646
    .local v10, "succeeded":Z
    :try_start_0
    move-object/from16 v0, p0

    #@22
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@24
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@26
    if-eqz v13, :cond_0

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@2c
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    if-nez v13, :cond_1

    #@30
    .line 673
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    #@32
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@34
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@36
    const/4 v14, 0x0

    #@37
    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@39
    .line 674
    invoke-interface {v5, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@3c
    .line 648
    :goto_0
    return-void

    #@3d
    .line 647
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@3f
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@41
    iget-boolean v13, v13, Landroid/view/ViewRootImpl;->mStopped:Z

    #@43
    .line 646
    if-nez v13, :cond_0

    #@45
    .line 647
    move-object/from16 v0, p0

    #@47
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@49
    iget-boolean v13, v13, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    #@4b
    .line 646
    if-nez v13, :cond_0

    #@4d
    .line 650
    move-object/from16 v0, p0

    #@4f
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@51
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@53
    iput v6, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@55
    .line 651
    const/4 v11, 0x0

    #@56
    .line 652
    .local v11, "target":Landroid/view/View;
    const v13, 0x7fffffff

    #@59
    if-eq v1, v13, :cond_3

    #@5b
    .line 653
    move-object/from16 v0, p0

    #@5d
    invoke-direct {v0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    #@60
    move-result-object v11

    #@61
    .line 657
    .local v11, "target":Landroid/view/View;
    :goto_1
    if-eqz v11, :cond_2

    #@63
    move-object/from16 v0, p0

    #@65
    invoke-direct {v0, v11}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    #@68
    move-result v13

    #@69
    if-eqz v13, :cond_2

    #@6b
    .line 658
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@6e
    move-result-object v8

    #@6f
    .line 659
    .local v8, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v8, :cond_5

    #@71
    .line 660
    const v13, 0x7fffffff

    #@74
    if-eq v12, v13, :cond_4

    #@76
    .line 661
    invoke-virtual {v8, v12, v2, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@79
    move-result v10

    #@7a
    .line 673
    .end local v8    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v10    # "succeeded":Z
    :cond_2
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    #@7c
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@7e
    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@80
    const/4 v14, 0x0

    #@81
    iput v14, v13, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@83
    .line 674
    invoke-interface {v5, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@86
    .line 630
    :goto_3
    return-void

    #@87
    .line 655
    .restart local v10    # "succeeded":Z
    .local v11, "target":Landroid/view/View;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    #@89
    iget-object v13, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@8b
    iget-object v11, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    #@8d
    .local v11, "target":Landroid/view/View;
    goto :goto_1

    #@8e
    .line 664
    .restart local v8    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    const/4 v13, -0x1

    #@8f
    invoke-virtual {v8, v13, v2, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    #@92
    move-result v10

    #@93
    .local v10, "succeeded":Z
    goto :goto_2

    #@94
    .line 667
    .local v10, "succeeded":Z
    :cond_5
    const v13, 0x7fffffff

    #@97
    if-ne v12, v13, :cond_2

    #@99
    .line 668
    invoke-virtual {v11, v2, v4}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9c
    move-result v10

    #@9d
    .local v10, "succeeded":Z
    goto :goto_2

    #@9e
    .line 671
    .end local v8    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v11    # "target":Landroid/view/View;
    .local v10, "succeeded":Z
    :catchall_0
    move-exception v13

    #@9f
    .line 673
    :try_start_5
    move-object/from16 v0, p0

    #@a1
    iget-object v14, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    #@a3
    iget-object v14, v14, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    #@a5
    const/4 v15, 0x0

    #@a6
    iput v15, v14, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    #@a8
    .line 674
    invoke-interface {v5, v10, v7}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@ab
    .line 671
    :goto_4
    throw v13

    #@ac
    .line 675
    :catch_0
    move-exception v9

    #@ad
    .local v9, "re":Landroid/os/RemoteException;
    goto :goto_4

    #@ae
    .end local v9    # "re":Landroid/os/RemoteException;
    .end local v10    # "succeeded":Z
    .restart local v11    # "target":Landroid/view/View;
    :catch_1
    move-exception v9

    #@af
    .restart local v9    # "re":Landroid/os/RemoteException;
    goto :goto_3

    #@b0
    .end local v9    # "re":Landroid/os/RemoteException;
    .end local v11    # "target":Landroid/view/View;
    .restart local v10    # "succeeded":Z
    :catch_2
    move-exception v9

    #@b1
    .restart local v9    # "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 3
    .param p1, "appScale"    # F
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 816
    const/high16 v2, 0x3f800000    # 1.0f

    #@4
    cmpl-float v2, p1, v2

    #@6
    if-nez v2, :cond_1

    #@8
    if-eqz p2, :cond_0

    #@a
    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    :cond_0
    move v0, v1

    #@11
    :cond_1
    return v0
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 4
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 103
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    #@5
    move-result-object v1

    #@6
    .line 104
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x2

    #@7
    iput v2, v1, Landroid/os/Message;->what:I

    #@9
    .line 105
    iput p6, v1, Landroid/os/Message;->arg1:I

    #@b
    .line 107
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@e
    move-result-object v0

    #@f
    .line 108
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@12
    move-result v2

    #@13
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@15
    .line 109
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@18
    move-result v2

    #@19
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@1b
    .line 110
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@1d
    .line 111
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1f
    .line 112
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@21
    .line 113
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@23
    .line 114
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25
    .line 120
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    #@27
    if-ne p7, v2, :cond_0

    #@29
    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    #@2b
    cmp-long v2, p8, v2

    #@2d
    if-nez v2, :cond_0

    #@2f
    .line 121
    invoke-static {p8, p9}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    #@36
    .line 102
    :goto_0
    return-void

    #@37
    .line 124
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@39
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@3c
    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 279
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    #@5
    move-result-object v3

    #@6
    .line 280
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x4

    #@7
    iput v4, v3, Landroid/os/Message;->what:I

    #@9
    .line 281
    iput p7, v3, Landroid/os/Message;->arg1:I

    #@b
    .line 283
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@e
    move-result-object v2

    #@f
    .line 284
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@11
    .line 285
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@13
    .line 286
    move-object/from16 v0, p11

    #@15
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@17
    .line 287
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@1a
    move-result v4

    #@1b
    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1d
    .line 288
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@20
    move-result v4

    #@21
    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@23
    .line 289
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@25
    .line 290
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@27
    .line 291
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    .line 297
    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    #@2b
    if-ne p8, v4, :cond_0

    #@2d
    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    #@2f
    cmp-long v4, p9, v4

    #@31
    if-nez v4, :cond_0

    #@33
    .line 298
    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    #@3a
    .line 278
    :goto_0
    return-void

    #@3b
    .line 301
    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@3d
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@40
    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 186
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    #@5
    move-result-object v3

    #@6
    .line 187
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x3

    #@7
    iput v4, v3, Landroid/os/Message;->what:I

    #@9
    .line 188
    iput p7, v3, Landroid/os/Message;->arg1:I

    #@b
    .line 189
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@e
    move-result v4

    #@f
    iput v4, v3, Landroid/os/Message;->arg2:I

    #@11
    .line 191
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@14
    move-result-object v2

    #@15
    .line 192
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@17
    .line 193
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@19
    .line 194
    move-object/from16 v0, p11

    #@1b
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1d
    .line 195
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@1f
    .line 196
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@21
    .line 198
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    .line 204
    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    #@25
    if-ne p8, v4, :cond_0

    #@27
    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    #@29
    cmp-long v4, p9, v4

    #@2b
    if-nez v4, :cond_0

    #@2d
    .line 205
    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    #@34
    .line 185
    :goto_0
    return-void

    #@35
    .line 208
    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@37
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@3a
    goto :goto_0
.end method

.method public findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 397
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    #@5
    move-result-object v3

    #@6
    .line 398
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x5

    #@7
    iput v4, v3, Landroid/os/Message;->what:I

    #@9
    .line 399
    iput p7, v3, Landroid/os/Message;->arg1:I

    #@b
    .line 400
    iput p3, v3, Landroid/os/Message;->arg2:I

    #@d
    .line 402
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@10
    move-result-object v2

    #@11
    .line 403
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@13
    .line 404
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@16
    move-result v4

    #@17
    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@19
    .line 405
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@1c
    move-result v4

    #@1d
    iput v4, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@1f
    .line 406
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@21
    .line 407
    move-object/from16 v0, p11

    #@23
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@25
    .line 408
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@27
    .line 410
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    .line 416
    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    #@2b
    if-ne p8, v4, :cond_0

    #@2d
    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    #@2f
    cmp-long v4, p9, v4

    #@31
    if-nez v4, :cond_0

    #@33
    .line 417
    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    #@3a
    .line 396
    :goto_0
    return-void

    #@3b
    .line 420
    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@3d
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@40
    goto :goto_0
.end method

.method public focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 7
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    #@0
    .prologue
    .line 519
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    #@5
    move-result-object v3

    #@6
    .line 520
    .local v3, "message":Landroid/os/Message;
    const/4 v4, 0x6

    #@7
    iput v4, v3, Landroid/os/Message;->what:I

    #@9
    .line 521
    iput p7, v3, Landroid/os/Message;->arg1:I

    #@b
    .line 522
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@e
    move-result v4

    #@f
    iput v4, v3, Landroid/os/Message;->arg2:I

    #@11
    .line 524
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@14
    move-result-object v2

    #@15
    .line 525
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput p3, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@17
    .line 526
    iput p5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@19
    .line 527
    iput-object p6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@1b
    .line 528
    move-object/from16 v0, p11

    #@1d
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@1f
    .line 529
    iput-object p4, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@21
    .line 531
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@23
    .line 537
    iget v4, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    #@25
    if-ne p8, v4, :cond_0

    #@27
    iget-wide v4, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    #@29
    cmp-long v4, p9, v4

    #@2b
    if-nez v4, :cond_0

    #@2d
    .line 538
    invoke-static/range {p9 .. p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    #@34
    .line 518
    :goto_0
    return-void

    #@35
    .line 541
    :cond_0
    iget-object v4, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@37
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@3a
    goto :goto_0
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 5
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    #@0
    .prologue
    .line 604
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    #@5
    move-result-object v1

    #@6
    .line 605
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    #@7
    iput v2, v1, Landroid/os/Message;->what:I

    #@9
    .line 606
    iput p7, v1, Landroid/os/Message;->arg1:I

    #@b
    .line 607
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    #@e
    move-result v2

    #@f
    iput v2, v1, Landroid/os/Message;->arg2:I

    #@11
    .line 609
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@14
    move-result-object v0

    #@15
    .line 610
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    #@18
    move-result v2

    #@19
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1b
    .line 611
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@1d
    .line 612
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@1f
    .line 613
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@21
    .line 614
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@23
    .line 616
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@25
    .line 622
    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    #@27
    if-ne p8, v2, :cond_0

    #@29
    iget-wide v2, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    #@2b
    cmp-long v2, p9, v2

    #@2d
    if-nez v2, :cond_0

    #@2f
    .line 623
    invoke-static {p9, p10}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    #@36
    .line 603
    :goto_0
    return-void

    #@37
    .line 626
    :cond_0
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    #@39
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@3c
    goto :goto_0
.end method
