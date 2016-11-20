.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsMagnificationCallbackEnabled:Z

.field private mIsSoftKeyboardCallbackEnabled:Z

.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    #@2
    return v0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3454
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@3
    .line 3455
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@8
    .line 3451
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    #@a
    .line 3452
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    #@c
    .line 3454
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3460
    iget v7, p1, Landroid/os/Message;->what:I

    #@2
    .line 3461
    .local v7, "type":I
    packed-switch v7, :pswitch_data_0

    #@5
    .line 3486
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v9, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v10, "Unknown message: "

    #@f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v9

    #@13
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v9

    #@17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v9

    #@1b
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v8

    #@1f
    .line 3463
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@21
    .line 3464
    .local v3, "gestureId":I
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@23
    invoke-static {v8, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    #@26
    .line 3459
    .end local v3    # "gestureId":I
    :goto_0
    return-void

    #@27
    .line 3468
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@29
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    #@2c
    goto :goto_0

    #@2d
    .line 3472
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2f
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@31
    .line 3473
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@33
    check-cast v4, Landroid/graphics/Region;

    #@35
    .line 3474
    .local v4, "region":Landroid/graphics/Region;
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@37
    check-cast v8, Ljava/lang/Float;

    #@39
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    #@3c
    move-result v5

    #@3d
    .line 3475
    .local v5, "scale":F
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@3f
    check-cast v8, Ljava/lang/Float;

    #@41
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    #@44
    move-result v1

    #@45
    .line 3476
    .local v1, "centerX":F
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@47
    check-cast v8, Ljava/lang/Float;

    #@49
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    #@4c
    move-result v2

    #@4d
    .line 3477
    .local v2, "centerY":F
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@4f
    invoke-static {v8, v4, v5, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/graphics/Region;FFF)V

    #@52
    goto :goto_0

    #@53
    .line 3481
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "centerX":F
    .end local v2    # "centerY":F
    .end local v4    # "region":Landroid/graphics/Region;
    .end local v5    # "scale":F
    :pswitch_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@55
    .line 3482
    .local v6, "showState":I
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    #@57
    invoke-static {v8, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap4(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V

    #@5a
    goto :goto_0

    #@5b
    .line 3461
    nop

    #@5c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    #@0
    .prologue
    .line 3493
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 3495
    return-void

    #@5
    .line 3498
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@8
    move-result-object v0

    #@9
    .line 3499
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@b
    .line 3500
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e
    move-result-object v2

    #@f
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@11
    .line 3501
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@14
    move-result-object v2

    #@15
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@17
    .line 3502
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1a
    move-result-object v2

    #@1b
    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@1d
    .line 3504
    const/4 v2, 0x5

    #@1e
    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@21
    move-result-object v1

    #@22
    .line 3505
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@25
    .line 3492
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 3
    .param p1, "showState"    # I

    #@0
    .prologue
    .line 3513
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 3514
    return-void

    #@5
    .line 3517
    :cond_0
    const/4 v1, 0x6

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 3518
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 3512
    return-void
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3509
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    #@2
    .line 3508
    return-void
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3522
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    #@2
    .line 3521
    return-void
.end method
