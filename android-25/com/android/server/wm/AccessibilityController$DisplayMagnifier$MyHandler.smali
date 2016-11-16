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
.field public static final MESSAGE_NOTIFY_MAGNIFICATION_REGION_CHANGED:I = 0x1

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
    .line 886
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@2
    .line 887
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 886
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 892
    iget v7, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v7, :pswitch_data_0

    #@5
    .line 891
    :goto_0
    return-void

    #@6
    .line 894
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@8
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@a
    .line 895
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@c
    check-cast v3, Landroid/graphics/Region;

    #@e
    .line 896
    .local v3, "magnifiedBounds":Landroid/graphics/Region;
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@10
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@13
    move-result-object v7

    #@14
    invoke-interface {v7, v3}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    #@17
    .line 897
    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    #@1a
    goto :goto_0

    #@1b
    .line 901
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "magnifiedBounds":Landroid/graphics/Region;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1d
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@1f
    .line 902
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@21
    .line 903
    .local v2, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@23
    .line 904
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@25
    .line 905
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    #@27
    .line 906
    .local v1, "bottom":I
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@29
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@2c
    move-result-object v7

    #@2d
    invoke-interface {v7, v2, v6, v4, v1}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    #@30
    .line 907
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@33
    goto :goto_0

    #@34
    .line 911
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@36
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@39
    move-result-object v7

    #@3a
    invoke-interface {v7}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onUserContextChanged()V

    #@3d
    goto :goto_0

    #@3e
    .line 915
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@40
    .line 916
    .local v5, "rotation":I
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@42
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get0(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    #@45
    move-result-object v7

    #@46
    invoke-interface {v7, v5}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRotationChanged(I)V

    #@49
    goto :goto_0

    #@4a
    .line 920
    .end local v5    # "rotation":I
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@4c
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@4f
    move-result-object v7

    #@50
    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    #@52
    monitor-enter v8

    #@53
    .line 921
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@55
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get4(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    #@5c
    move-result v7

    #@5d
    if-eqz v7, :cond_0

    #@5f
    .line 922
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@61
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get4(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    #@64
    move-result-object v7

    #@65
    const/4 v9, 0x1

    #@66
    const/4 v10, 0x1

    #@67
    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    #@6a
    .line 923
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    #@6c
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->-get10(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    #@6f
    move-result-object v7

    #@70
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@73
    :cond_0
    monitor-exit v8

    #@74
    goto :goto_0

    #@75
    .line 920
    :catchall_0
    move-exception v7

    #@76
    monitor-exit v8

    #@77
    throw v7

    #@78
    .line 892
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
