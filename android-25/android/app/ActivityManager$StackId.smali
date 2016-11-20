.class public Landroid/app/ActivityManager$StackId;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackId"
.end annotation


# static fields
.field public static final DOCKED_STACK_ID:I = 0x3

.field public static final FIRST_DYNAMIC_STACK_ID:I = 0x5

.field public static final FIRST_STATIC_STACK_ID:I = 0x0

.field public static final FREEFORM_WORKSPACE_STACK_ID:I = 0x2

.field public static final FULLSCREEN_WORKSPACE_STACK_ID:I = 0x1

.field public static final HOME_STACK_ID:I = 0x0

.field public static final INVALID_STACK_ID:I = -0x1

.field public static final LAST_STATIC_STACK_ID:I = 0x4

.field public static final PINNED_STACK_ID:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static activitiesCanRequestVisibleBehind(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 701
    if-ne p0, v0, :cond_0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public static allowTopTaskToReturnHome(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 648
    const/4 v0, 0x4

    #@1
    if-eq p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static canReceiveKeys(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 629
    const/4 v0, 0x4

    #@1
    if-eq p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static hasMovementAnimations(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 717
    const/4 v0, 0x4

    #@1
    if-eq p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static hasWindowDecor(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 545
    const/4 v0, 0x2

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static hasWindowShadow(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 538
    const/4 v1, 0x2

    #@2
    if-eq p0, v1, :cond_0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne p0, v1, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static isAllowedOverLockscreen(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 636
    if-eqz p0, :cond_0

    #@4
    if-ne p0, v0, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    move v0, v1

    #@8
    goto :goto_0
.end method

.method public static isAlwaysOnTop(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 640
    const/4 v0, 0x4

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static isDynamicStacksVisibleBehindAllowed(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 565
    const/4 v0, 0x4

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static isMultiWindowStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 692
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v1, 0x4

    #@8
    if-ne p0, v1, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    .line 693
    :cond_1
    const/4 v1, 0x2

    #@c
    if-eq p0, v1, :cond_0

    #@e
    const/4 v1, 0x3

    #@f
    if-eq p0, v1, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public static isResizeableByDockedStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 581
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 582
    const/4 v1, 0x3

    #@8
    if-eq p0, v1, :cond_0

    #@a
    const/4 v1, 0x4

    #@b
    if-eq p0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 581
    :cond_0
    return v0
.end method

.method public static isStaticStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 530
    if-ltz p0, :cond_0

    #@3
    const/4 v1, 0x4

    #@4
    if-gt p0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public static isTaskResizeAllowed(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 553
    const/4 v0, 0x2

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static isTaskResizeableByDockedStack(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 590
    invoke-static {p0}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v1, 0x2

    #@8
    if-eq p0, v1, :cond_0

    #@a
    .line 591
    const/4 v1, 0x3

    #@b
    if-eq p0, v1, :cond_0

    #@d
    const/4 v1, 0x4

    #@e
    if-eq p0, v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    .line 590
    :cond_0
    return v0
.end method

.method public static keepFocusInStackIfPossible(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 573
    const/4 v1, 0x2

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 574
    const/4 v1, 0x3

    #@5
    if-ne p0, v1, :cond_1

    #@7
    .line 573
    :cond_0
    :goto_0
    return v0

    #@8
    .line 574
    :cond_1
    const/4 v1, 0x4

    #@9
    if-eq p0, v1, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static keepVisibleDeadAppWindowOnScreen(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 664
    const/4 v0, 0x4

    #@1
    if-eq p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static normallyFullscreenWindows(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 682
    const/4 v1, 0x4

    #@2
    if-eq p0, v1, :cond_0

    #@4
    const/4 v1, 0x2

    #@5
    if-eq p0, v1, :cond_0

    #@7
    .line 683
    const/4 v1, 0x3

    #@8
    if-eq p0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 682
    :cond_0
    return v0
.end method

.method public static persistTaskBounds(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 558
    const/4 v0, 0x2

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static replaceWindowsOnTaskMove(II)Z
    .locals 2
    .param p0, "sourceStackId"    # I
    .param p1, "targetStackId"    # I

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v0, 0x1

    #@2
    .line 600
    if-eq p0, v1, :cond_0

    #@4
    .line 601
    if-ne p1, v1, :cond_1

    #@6
    .line 600
    :cond_0
    :goto_0
    return v0

    #@7
    .line 601
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public static resizeStackWithLaunchBounds(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 656
    const/4 v0, 0x4

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method

.method public static tasksAreFloating(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 610
    const/4 v1, 0x2

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 611
    const/4 v1, 0x4

    #@5
    if-ne p0, v1, :cond_1

    #@7
    .line 610
    :cond_0
    :goto_0
    return v0

    #@8
    .line 611
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static useAnimationSpecForAppTransition(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 622
    const/4 v1, 0x2

    #@2
    if-eq p0, v1, :cond_0

    #@4
    .line 623
    if-ne p0, v0, :cond_1

    #@6
    .line 622
    :cond_0
    :goto_0
    return v0

    #@7
    .line 623
    :cond_1
    const/4 v1, 0x3

    #@8
    if-eq p0, v1, :cond_0

    #@a
    .line 624
    const/4 v1, -0x1

    #@b
    if-eq p0, v1, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public static useWindowFrameForBackdrop(I)Z
    .locals 2
    .param p0, "stackId"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 672
    const/4 v1, 0x2

    #@2
    if-eq p0, v1, :cond_0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne p0, v1, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static windowsAreScaleable(I)Z
    .locals 1
    .param p0, "stackId"    # I

    #@0
    .prologue
    .line 709
    const/4 v0, 0x4

    #@1
    if-ne p0, v0, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :goto_0
    return v0

    #@5
    :cond_0
    const/4 v0, 0x0

    #@6
    goto :goto_0
.end method
