.class final Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionBridge"
.end annotation


# instance fields
.field private final mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

.field private final mConnectionId:I

.field private final mDefaultDisplay:Landroid/view/Display;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    #@0
    .prologue
    .line 3650
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3651
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@7
    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    #@a
    .line 3652
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, 0x1

    #@b
    invoke-virtual {v1, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    #@e
    .line 3653
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@10
    or-int/lit8 v3, v3, 0x40

    #@12
    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@14
    .line 3654
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@16
    or-int/lit8 v3, v3, 0x2

    #@18
    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@1a
    .line 3655
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@1c
    .line 3656
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get18()Landroid/content/ComponentName;

    #@1f
    move-result-object v3

    #@20
    .line 3655
    const/16 v4, -0x2710

    #@22
    invoke-direct {v2, p1, v4, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@25
    .line 3658
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    #@27
    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    #@29
    .line 3660
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@2c
    move-result-object v3

    #@2d
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    #@2f
    .line 3661
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    #@31
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    #@33
    invoke-virtual {v3, v4, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    #@36
    .line 3665
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, "display"

    #@3d
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    .line 3664
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@43
    .line 3666
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    #@44
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@47
    move-result-object v3

    #@48
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    #@4a
    .line 3650
    return-void
.end method

.method private getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    #@0
    .prologue
    .line 3715
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 3716
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@c
    move-result-object v1

    #@d
    iget v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 3717
    .local v0, "focusedWindowId":I
    const/4 v1, -0x1

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 3718
    const/4 v1, 0x0

    #@13
    monitor-exit v2

    #@14
    return-object v1

    #@15
    :cond_0
    monitor-exit v2

    #@16
    .line 3721
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 3715
    .end local v0    # "focusedWindowId":I
    :catchall_0
    move-exception v1

    #@1c
    monitor-exit v2

    #@1d
    throw v1
.end method

.method private getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "windowId"    # I

    #@0
    .prologue
    .line 3725
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    #@2
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    #@4
    .line 3726
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@6
    .line 3727
    const/4 v6, 0x2

    #@7
    move v3, p1

    #@8
    .line 3725
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method public clearAccessibilityFocusNotLocked(I)V
    .locals 2
    .param p1, "windowId"    # I

    #@0
    .prologue
    .line 3670
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    .line 3671
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    #@6
    .line 3672
    const/16 v1, 0x80

    #@8
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    #@b
    .line 3669
    :cond_0
    return-void
.end method

.method public getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z
    .locals 11
    .param p1, "outPoint"    # Landroid/graphics/Point;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 3677
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4
    move-result-object v1

    #@5
    .line 3678
    .local v1, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_0

    #@7
    .line 3679
    return v10

    #@8
    .line 3682
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@a
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@d
    move-result-object v6

    #@e
    monitor-enter v6

    #@f
    .line 3683
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@11
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get13(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    #@14
    move-result-object v0

    #@15
    .line 3684
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@18
    .line 3687
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1a
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    #@1d
    move-result v7

    #@1e
    invoke-static {v5, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    #@21
    move-result-object v3

    #@22
    .line 3688
    .local v3, "spec":Landroid/view/MagnificationSpec;
    if-eqz v3, :cond_1

    #@24
    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->isNop()Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_2

    #@2a
    .line 3694
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2c
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get14(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    #@2f
    move-result-object v4

    #@30
    .line 3695
    .local v4, "windowBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@32
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    #@35
    move-result v7

    #@36
    invoke-virtual {v5, v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowBounds(ILandroid/graphics/Rect;)Z

    #@39
    .line 3696
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_3

    #@3f
    monitor-exit v6

    #@40
    .line 3697
    return v10

    #@41
    .line 3689
    .end local v4    # "windowBounds":Landroid/graphics/Rect;
    :cond_2
    :try_start_1
    iget v5, v3, Landroid/view/MagnificationSpec;->offsetX:F

    #@43
    neg-float v5, v5

    #@44
    float-to-int v5, v5

    #@45
    iget v7, v3, Landroid/view/MagnificationSpec;->offsetY:F

    #@47
    neg-float v7, v7

    #@48
    float-to-int v7, v7

    #@49
    invoke-virtual {v0, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    #@4c
    .line 3690
    iget v5, v3, Landroid/view/MagnificationSpec;->scale:F

    #@4e
    const/high16 v7, 0x3f800000    # 1.0f

    #@50
    div-float v5, v7, v5

    #@52
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->scale(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 3682
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v3    # "spec":Landroid/view/MagnificationSpec;
    :catchall_0
    move-exception v5

    #@57
    monitor-exit v6

    #@58
    throw v5

    #@59
    .line 3701
    .restart local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v3    # "spec":Landroid/view/MagnificationSpec;
    .restart local v4    # "windowBounds":Landroid/graphics/Rect;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@5b
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get12(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;

    #@5e
    move-result-object v2

    #@5f
    .line 3702
    .local v2, "screenSize":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    #@61
    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@64
    .line 3703
    iget v5, v2, Landroid/graphics/Point;->x:I

    #@66
    iget v7, v2, Landroid/graphics/Point;->y:I

    #@68
    const/4 v8, 0x0

    #@69
    const/4 v9, 0x0

    #@6a
    invoke-virtual {v0, v8, v9, v5, v7}, Landroid/graphics/Rect;->intersect(IIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6d
    move-result v5

    #@6e
    if-nez v5, :cond_4

    #@70
    monitor-exit v6

    #@71
    .line 3704
    return v10

    #@72
    .line 3707
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    #@75
    move-result v5

    #@76
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    #@79
    move-result v7

    #@7a
    invoke-virtual {p1, v5, v7}, Landroid/graphics/Point;->set(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7d
    monitor-exit v6

    #@7e
    .line 3710
    const/4 v5, 0x1

    #@7f
    return v5
.end method
