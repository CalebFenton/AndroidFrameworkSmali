.class Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field public static final MESSAGE_NOTIFY_ROTATION_CHANGED:I = 0x4

.field public static final MESSAGE_NOTIFY_USER_CONTEXT_CHANGED:I = 0x3

.field public static final MESSAGE_SHOW_MAGNIFIED_REGION_BOUNDS_IF_NEEDED:I = 0x5


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    .line 863
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 862
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 868
    iget v7, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v7, :pswitch_data_0

    #@5
    .line 867
    :goto_0
    return-void

    #@6
    .line 870
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v2, Landroid/graphics/Region;

    #@a
    .line 871
    .local v2, "bounds":Landroid/graphics/Region;
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@c
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@f
    move-result-object v7

    #@10
    invoke-interface {v7, v2}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onMagnifedBoundsChanged(Landroid/graphics/Region;)V

    #@13
    .line 872
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    #@16
    goto :goto_0

    #@17
    .line 876
    .end local v2    # "bounds":Landroid/graphics/Region;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@19
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1b
    .line 877
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@1d
    .line 878
    .local v3, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@1f
    .line 879
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@21
    .line 880
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    #@23
    .line 881
    .local v1, "bottom":I
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@25
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@28
    move-result-object v7

    #@29
    invoke-interface {v7, v3, v6, v4, v1}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    #@2c
    .line 882
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@2f
    goto :goto_0

    #@30
    .line 886
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@32
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@35
    move-result-object v7

    #@36
    invoke-interface {v7}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onUserContextChanged()V

    #@39
    goto :goto_0

    #@3a
    .line 890
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@3c
    .line 891
    .local v5, "rotation":I
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@3e
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@41
    move-result-object v7

    #@42
    invoke-interface {v7, v5}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRotationChanged(I)V

    #@45
    goto :goto_0

    #@46
    .line 895
    .end local v5    # "rotation":I
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@48
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@4b
    move-result-object v7

    #@4c
    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@4e
    monitor-enter v8

    #@4f
    .line 896
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@51
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get4(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_0

    #@5b
    .line 897
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@5d
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get4(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@60
    move-result-object v7

    #@61
    const/4 v9, 0x1

    #@62
    const/4 v10, 0x1

    #@63
    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    #@66
    .line 898
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@68
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@6b
    move-result-object v7

    #@6c
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6f
    :cond_0
    monitor-exit v8

    #@70
    goto :goto_0

    #@71
    .line 895
    :catchall_0
    move-exception v7

    #@72
    monitor-exit v8

    #@73
    throw v7

    #@74
    .line 868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
