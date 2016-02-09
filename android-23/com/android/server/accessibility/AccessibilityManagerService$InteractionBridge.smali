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
    .line 3227
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3228
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    #@7
    invoke-direct {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    #@a
    .line 3229
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, 0x1

    #@b
    invoke-virtual {v1, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    #@e
    .line 3230
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@10
    or-int/lit8 v3, v3, 0x40

    #@12
    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@14
    .line 3231
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@16
    or-int/lit8 v3, v3, 0x2

    #@18
    iput v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    #@1a
    .line 3232
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@1c
    .line 3233
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16()Landroid/content/ComponentName;

    #@1f
    move-result-object v3

    #@20
    .line 3232
    const/16 v4, -0x2710

    #@22
    invoke-direct {v2, p1, v4, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    #@25
    .line 3235
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    #@27
    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    #@29
    .line 3237
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    #@2c
    move-result-object v3

    #@2d
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    #@2f
    .line 3238
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    #@31
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    #@33
    invoke-virtual {v3, v4, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V

    #@36
    .line 3242
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
    .line 3241
    check-cast v0, Landroid/hardware/display/DisplayManager;

    #@43
    .line 3243
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v3, 0x0

    #@44
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    #@47
    move-result-object v3

    #@48
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    #@4a
    .line 3227
    return-void
.end method

.method private getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    #@0
    .prologue
    .line 3292
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 3293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@9
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    #@c
    move-result-object v1

    #@d
    iget v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 3294
    .local v0, "focusedWindowId":I
    const/4 v1, -0x1

    #@10
    if-ne v0, v1, :cond_0

    #@12
    .line 3295
    const/4 v1, 0x0

    #@13
    monitor-exit v2

    #@14
    return-object v1

    #@15
    :cond_0
    monitor-exit v2

    #@16
    .line 3298
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@19
    move-result-object v1

    #@1a
    return-object v1

    #@1b
    .line 3292
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
    .line 3302
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mClient:Landroid/view/accessibility/AccessibilityInteractionClient;

    #@2
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    #@4
    .line 3303
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    #@6
    .line 3304
    const/4 v6, 0x2

    #@7
    move v3, p1

    #@8
    .line 3302
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
    .line 3247
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    .line 3248
    .local v0, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    #@6
    .line 3249
    const/16 v1, 0x80

    #@8
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    #@b
    .line 3246
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
    .line 3254
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@4
    move-result-object v1

    #@5
    .line 3255
    .local v1, "focus":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_0

    #@7
    .line 3256
    return v10

    #@8
    .line 3259
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@a
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    #@d
    move-result-object v6

    #@e
    monitor-enter v6

    #@f
    .line 3260
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@11
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    #@14
    move-result-object v0

    #@15
    .line 3261
    .local v0, "boundsInScreen":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@18
    .line 3264
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@1a
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get12(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    #@1d
    move-result-object v4

    #@1e
    .line 3265
    .local v4, "windowBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@20
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    #@23
    move-result v7

    #@24
    invoke-virtual {v5, v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowBounds(ILandroid/graphics/Rect;)Z

    #@27
    .line 3266
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_1

    #@2d
    monitor-exit v6

    #@2e
    .line 3267
    return v10

    #@2f
    .line 3271
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@31
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    #@34
    move-result v7

    #@35
    invoke-static {v5, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    #@38
    move-result-object v3

    #@39
    .line 3272
    .local v3, "spec":Landroid/view/MagnificationSpec;
    if-eqz v3, :cond_2

    #@3b
    invoke-virtual {v3}, Landroid/view/MagnificationSpec;->isNop()Z

    #@3e
    move-result v5

    #@3f
    if-eqz v5, :cond_3

    #@41
    .line 3278
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #@43
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;

    #@46
    move-result-object v2

    #@47
    .line 3279
    .local v2, "screenSize":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    #@49
    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    #@4c
    .line 3280
    iget v5, v2, Landroid/graphics/Point;->x:I

    #@4e
    iget v7, v2, Landroid/graphics/Point;->y:I

    #@50
    const/4 v8, 0x0

    #@51
    const/4 v9, 0x0

    #@52
    invoke-virtual {v0, v8, v9, v5, v7}, Landroid/graphics/Rect;->intersect(IIII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    move-result v5

    #@56
    if-nez v5, :cond_4

    #@58
    monitor-exit v6

    #@59
    .line 3281
    return v10

    #@5a
    .line 3273
    .end local v2    # "screenSize":Landroid/graphics/Point;
    :cond_3
    :try_start_2
    iget v5, v3, Landroid/view/MagnificationSpec;->offsetX:F

    #@5c
    neg-float v5, v5

    #@5d
    float-to-int v5, v5

    #@5e
    iget v7, v3, Landroid/view/MagnificationSpec;->offsetY:F

    #@60
    neg-float v7, v7

    #@61
    float-to-int v7, v7

    #@62
    invoke-virtual {v0, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    #@65
    .line 3274
    iget v5, v3, Landroid/view/MagnificationSpec;->scale:F

    #@67
    const/high16 v7, 0x3f800000    # 1.0f

    #@69
    div-float v5, v7, v5

    #@6b
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->scale(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6e
    goto :goto_0

    #@6f
    .line 3259
    .end local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v3    # "spec":Landroid/view/MagnificationSpec;
    .end local v4    # "windowBounds":Landroid/graphics/Rect;
    :catchall_0
    move-exception v5

    #@70
    monitor-exit v6

    #@71
    throw v5

    #@72
    .line 3284
    .restart local v0    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v2    # "screenSize":Landroid/graphics/Point;
    .restart local v3    # "spec":Landroid/view/MagnificationSpec;
    .restart local v4    # "windowBounds":Landroid/graphics/Rect;
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
    .line 3287
    const/4 v5, 0x1

    #@7f
    return v5
.end method
